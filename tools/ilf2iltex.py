# -*- coding: utf-8 -*-
""""
created on Wed Oct  7 23:37:43 2015
author: jonathan_scholbach
"""

"""
********************************************************************************
*************               CONCEPT OF THE SCRIPT                  *************
********************************************************************************

This python-script takes a representation of an interlinear translation given 
as *.ilf (interlinear file) and outputs a LaTex code that will typeset the 
interlinear translation.

The problem with typesetting interlinear translations is the fact that different 
lines (which represent different languages) do not have the same amount of 
words. For example a declined word in latin can only be translated into english 
by using a preposition, e.g. "filius dei" may be translated as "son of god". 
In this example you would want the words to be aligned something like this:

filius   dei
 son   of god

This script uses a concept of "boxes" to achieve this behaviour: A box can 
contain multiple words, and the boxes of the different languages are aligned 
to each other, so that the first box of each language will be aligned with the
first box of the original language, the second box of each language will be
aligned with the second box of the original language, and so on.


********************************************************************************
*************              DEFINITION OF ilf-INPUT                 *************
********************************************************************************

This said, we only have to define how the input file must be formatted to be 
processed correctly by this script:

1. It has n *rows* and consists of k*(n+1) *lines*. n is the number of 
languages and can be arbitrarily chosen.
2. If l is the line number [be careful to not mix up line and row in this 
sentence ;-)] of the input file, every line l with l= x*(n+1)+1 
contains the original language, every line l with l = x*(n+1)+2 contains the 
first translation language, and so on up to every line l with 
l = (x+1)*(n+1), which has to be an empty line (be aware that this implies 
that the last line of the *.ilf must be empty.) We will call a number of lines 
from l ..l+(n+1) a "block" - a block represents a part of the original text with
all its translations, and the *.ilf consists of k blocks.
4. The first block will not be typeset and contains header-information for 
formatting each row in the LaTex-output
5. A box-break in a row is defined by either a TAB or by starting a new block. 
The fact that TAB can be used as box-delimiter makes input easily readable when 
using a text-editor that works with so-called *elastic tabs*
6. If the original text has linebreaks, every linebreak is marked by a 
 "#"-sign in the first row.

********************************************************************************
*************            SOME ADDITIONAL FEATURES                  *************
********************************************************************************

The script converts all ocurrences of *TEXT* into \emph{TEXT} and all ocurrences
of "TEXT" into \enquote{text}

********************************************************************************
*************              LaTex-PACKAGES NEEDED                   *************
********************************************************************************

For processing the LaTex file, the following packages must be loaded:
  [utf8]{inputenc}
  {stackengine}
  {csquotes}
"""


# the script takes the path of the *.ilf as argument and writes the output in a
# file with the same name and the filename-extension ".iltex"

import os
import re	
import sys
if sys.version_info >= (3, 0):
	import tkinter as tk
	from tkinter import filedialog
else:
	import Tkinter as tk
	from Tkinter import FileDialog as filedialog

import subprocess

# utf-8-encoding
def e(string):
  return string.encode("utf-8")

# returns the number of languages by checking which line is the first empty one
def num_oflangs(filename):
  n = 0  
  ilf = open(filename,'r')
  for line in ilf:  
    if (line == '\n'):
      break
    n = n+1  
  print ("detected " + str(n) + " languages...")
  ilf.close()
  return n+1

def readfile(filename,newBoxDelimiter):
  ilf = open(filename,'r')    
  
################################################################################
#   check interlinear-file for being well-formated: formatting-rules no. 1-3   #
################################################################################

  real = [] # 0 stands for an empty line, 1 for a non-empty line
  supposed = [] # 0 stands for an empty line, 1 for a non-empty line
  num_lines = 0
  interlinear = []
  
  #detect pattern of empty lines in input file
  for line in ilf:
    if line == '\n':
      real.append(0)
    else:
      real.append(1)
    num_lines = num_lines + 1  
  ilf.close()

  num_langs = num_oflangs(filename)
  print('detected ' + str(num_lines/num_langs) + '  blocks...')
  
  if num_lines <= 1:  
    print("ERROR: inter-linear file is empty.")
  else:
    for j in range (1,num_langs):
      supposed.append(1)
    supposed.append(0)
    supposed = (num_lines//num_langs)*supposed    

    # check whether the pattern of empty lines in the input file accords with 
    # the supposed pattern
    if (supposed is not real):
      for i in range(0,min(len(real),len(supposed))-1):
        if real[i]-supposed[i] == 1:
          print( "ERROR: Line " + str(i+1) + " is supposed to be empty.")
        if real[i]-supposed[i] == -1:
          print("ERROR: Line " + str(i+1) + " is NOT supposed to be empty.") 

    if real[-1] == 1:
      print("ERROR: last line of inter-linear file must be empty.")
    
################################################################################
#                          PARSE THE INPUT-FILE                                #
################################################################################

    # create a list of rows: every line of the list represents a 
    # row, every item in each row is a box 
    if (real[-1]==0) and (supposed==real):
      il = open(filename,'r')          
      lines = il.readlines()
      Error = False       
                
      interlinear = []
      for a in range(0, num_langs-1):
        interlinear.append([])
        for b in range(0,(num_lines//num_langs)):
          for x in lines[(b*num_langs)+a].split(newBoxDelimiter):
            ## *TEXT* -> \emph{TEXT}:
          	x = re.sub(r'\*(.*)\*','\emph{' + r'\g<1>}',x)
						## *TEXT* -> \emph{TEXT}:	
          	x = re.sub(r'\"(.*)\"','\enquote{' + r'\g<1>}',x)
          	interlinear[a].append(x.replace('\n','')) 
            
      #check whether all rows have same number of boxes        
      for l in range(0,num_langs-1):
        if (len(interlinear[l]) is not len(interlinear[0])):
          Error = True
          print ("ERROR in row " + str(l+1) + ": row does not have same number of boxes (" + str(len(interlinear[l])) + ") as first row (" + str(len(interlinear[0])) +")")
      if not Error:          
        print("input file is well formated...")
  return interlinear

def texify(array,filename,newBoxDelimiter, newLineDelimiter):  
# the output file
  o = open(os.path.splitext(filename)[0] + '.iltex','w')

	# write tex-preamble to set up the tex-macro     
  o.write("\\setstackEOL{\\cr}\n\\def\\word")
  for i in range(0,len(array)):
    if i < len(array)-1:
    	o.write('#' + str(i+1) +'|')
    else:
      o.write('#'+ str(i+1)+'+++')
  o.write('{\\mbox{\\hspace{2pt}\\Longstack{')

  for i in range(0,len(array)):	
		# set font specifications of each row
    brackets = 0
    if "italics" in array[i][0]:
      o.write('\\textit{')
      brackets += 1
    if "bold" in array[i][0]:
      o.write('\\bfseries{ ')
      brackets += 1
    if "caps" in array[i][0]:
      o.write('\\scshape{ ')
      brackets += 1
    if "tiny" in array[i][0]:
      o.write('\\tiny{')
      brackets += 1
    if "small" in array[i][0]:
      o.write('\\small{')
      brackets += 1
    if "large" in array[i][0]:
      o.write('\\large{')
      brackets += 1
    if "sans" in array[i][0]:
      o.write('\sffamily{')
      brackets += 1
    if "uppercase" in array[i][0]:
    	o.write("\\uppercase{")
    	brackets += 1
    o.write('#'+str(i+1))
    # close all open brackets for this word    
    for i in range(0,brackets):
      o.write('}')
      
    # after last row begin new tex-box
    if  i < len(array)-1:
      o.write('\\cr')
  o.write('}}\\hspace{2pt}}')
  
  # write the input into the tex-boxes
  for word in range (1,max(len(row) for row in array)):
    #check whether there shall be a line break after this word    
    linebreak = False  
    if (array[0][word][-1] == newLineDelimiter):
      linebreak = True
      array[0][word] = array[0][word][0:-1]    
    
    o.write("\n \\word ")
    for row in range(0,len(array)):
      if (word<len(array[row])):     
        o.write(array[row][word])
      else:
        o.write(";")
      if (row==len(array)-1):
        o.write('+++')
        if linebreak == True:
          o.write('\n\\vspace{6pt}\n')
      else:  
        o.write('|')
  
  print('output written to ' + os.path.splitext(filename)[0] + '.iltex')

#still to do: check whether template_begin and template_end exist and give an error if they do not
def create_standalone_tex(filename):
	print('creating standalone .tex...')
	with open('template_begin.tex') as f:
		lines = f.readlines()
		with open(os.path.splitext(filename)[0] + ".tex", "w") as f1:
			f1.writelines(lines)
	with open(os.path.splitext(filename)[0] + '.iltex') as f: 
		lines = f.readlines()
		with open(os.path.splitext(filename)[0] + ".tex", "a") as f1:
			f1.writelines(lines)
	with open('template_end.tex') as f:
		lines = f.readlines()
		with open(os.path.splitext(filename)[0] + ".tex", "a") as f1:
			f1.writelines(lines)
	print('succesfully created standalone ' + os.path.splitext(filename)[0] + ".tex")

def tex2pdf(filename):
	try:
		subprocess.call(["pdflatex", "-aux-directory=" + os.path.dirname(filename) + "/aux", "-output-directory=" + os.path.dirname(filename), os.path.splitext(filename)[0] + ".tex"])
		# clean the auxiliary files needed by pdflatex to produce pdf
		os.remove(os.path.splitext(filename)[0] + ".aux")
		os.remove(os.path.splitext(filename)[0] + ".tex")
		os.remove(os.path.splitext(filename)[0] + ".log")
	  #open the output pdf
		print(sys.platform)
		if sys.platform == 'linux':
			subprocess.call(["xdg-open", os.path.splitext(filename)[0] + ".pdf"])
		else:
			os.startfile(os.path.splitext(filename)[0] + ".pdf")
		  
	except OSError as e:
		  if e.errno == os.errno.ENOENT:
		      print("file not found")
		  else:
		      "Could not find pdflatex on your computer"
		      raise
  
def main():
	root = tk.Tk()
	root.withdraw()
	filename = filedialog.askopenfilename() # get the filename from opendialog
	# filename = sys.argv[1] # take the filepath from the argument given with the call
	newBoxDelimiter = '\t'
	newLineDelimiter = '#'
	texify(readfile(filename,newBoxDelimiter),filename,newBoxDelimiter,newLineDelimiter)
	create_standalone_tex(filename)
	tex2pdf(filename)
main()
