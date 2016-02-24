# -*- coding: utf-8 -*-
"""
Created on Sun Jan 31 22:34:46 2016

@author: jonathan_scholbach
"""

# this script extracts information from a meta.ily formatted
# corresponding to the nun-singet-und-seid-froh standard and writes it into
# a text file that describes a well-formatted MediaWiki infobox

# script needs to be called from the directory the meta.ily is in, the relative
# path (relative to the directory the script is in) to the directory where the
# mediawiki.txt shall be put into must be given as argument

import sys
import os
import re


path = os.getcwd()#<-- absolute dir the script is in, should be [..]\tools
filename = 'meta.ily'

print "processing " + filename

with open(filename,'r') as f: 
  meta = f.read() 

#reading
title = re.search('title.*?=.*?"(.*?)"', meta, flags=0)
if title:
	title = title.group(1)
else:
  print "error: "+ path + " is not well-formatted - no title found!"
  
composerChristianName = re.search('composerChristianName.*?=.*?"(.*?)"', meta, flags=0)
if composerChristianName:
  composerChristianName = composerChristianName.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no composerChristianName found!"
  
composerSurName = re.search('composerSurName.*?=.*?"(.*?)"', meta, flags=0)
if composerSurName:
  composerSurName = composerSurName.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no composerSurName found!"

arrangerChristianName = re.search('arrangerChristianName.*?=.*?"(.*?)"', meta, flags=0)
if arrangerChristianName:
  arrangerChristianName = arrangerChristianName.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no arrangerChristianName found!"
  
arrangerSurName = re.search('arrangerSurName.*?=.*?"(.*?)"', meta, flags=0)
if arrangerSurName:
  arrangerSurName = arrangerSurName.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no arrangerSurName found!"

poetChristianName = re.search('poetChristianName.*?=.*?"(.*?)"', meta, flags=0)
if poetChristianName:
  poetChristianName = poetChristianName.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no poetChristianName found!"
  
poetSurName = re.search('poetSurName.*?=.*?"(.*?)"', meta, flags=0)
if poetSurName:
  poetSurName = poetSurName.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no poetSurName found!"

opus = re.search('opus.*?=.*?"(.*?)"', meta, flags=0)
if opus:
  opus = opus.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no opus found!"
  
epoque = re.search('epoque.*?=.*?"(.*?)"', meta, flags=0)
if epoque:
  epoque = epoque.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no epoque found!"
  
language = re.search('language.*?=.*?"(.*?)"', meta, flags=0)
if language:
  language = language.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no language found!"  
  
instrumentation = re.search('instrumentation.*?=.*?"(.*?)"', meta, flags=0)
if instrumentation:
  instrumentation = instrumentation.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no instrumentation found!"

difficulty = re.search('difficulty.*?=.*?"(.*?)"', meta, flags=0)
if difficulty:
  difficulty = difficulty.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no difficulty found!"

form = re.search('form.*?=.*?"(.*?)"', meta, flags=0)
if form:
  form = form.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no form found!"

root = re.search('root.*?=.*?"(.*?)"', meta, flags=0)
if root:
  root = root.group(1) 
else:
  print "error: "+ path + " is not well-formatted - no root found!"
  
# writing

categories = '' #the string calling the categories of the piece
labels = []
data = []

m = open(os.path.join(path, 'mediawiki.txt'), 'w')

print 'writing ' + os.path.join(path, 'mediawiki.txt') + ' ...'

#creating the infobox
if not(composerSurName == ""):
  if not(composerChristianName == ""):    
    categories = categories + '[[Category:' + composerSurName + ', ' + composerChristianName + ']] '
    labels.append("Komponist")
    data.append(composerSurName + ', ' + composerChristianName)
  else:
    categories = categories + '[[Category:' + composerSurName + ']] '
    labels.append("Komponist")
    data.append(composerSurName + '')

if not(arrangerSurName == ""):
  if not(arrangerChristianName == ""):    
    categories = categories + '[[Category:' + arrangerSurName + ', ' + arrangerChristianName + ']] '
    labels.append("Komponist")
    data.append(arrangerSurName + ', ' + arrangerChristianName)
  else:
    categories = categories + '[[Category:' + arrangerSurName + ']] '
    labels.append("Arrangeur")
    data.append(arrangerSurName)

if not(poetSurName == ""):
  if not(poetChristianName == ""):    
    categories = categories + '[[Category:' + poetSurName + ', ' + poetChristianName + ']] '
    labels.append("Dichter")
    data.append(poetSurName + ', ' + poetChristianName)
  else:
    categories = categories + '[[Category:' + poetSurName + ']] '
    labels.append("Dichter")
    data.append(poetSurName)

if not(root == ""):
  categories = categories + '[[Category:' + root + ']] '
  labels.append("Wurzel")
  data.append(root)

if not(opus == ""):
  categories = categories + '[[Category:' + opus + ']] '
  labels.append("Opus")
  data.append(opus)

if not(language == ""):
  categories = categories + '[[Category:' + language + ']] '
  labels.append("Sprache")
  data.append(language)
  
if not(instrumentation== ""):
  categories = categories + '[[Category:' + instrumentation + ']] '
  labels.append("Besetzung")
  data.append(instrumentation)
    
if not(epoque == ""):
  categories = categories + '[[Category:' + epoque + ']] '
  labels.append("Epoche")
  data.append(epoque)
  
if not(form == ""):
  categories = categories + '[[Category:' + form + ']] '
  labels.append("Typ")
  data.append(form)

if not(difficulty == ""):
  categories = categories + '[[Category:' + difficulty + ']] '
  labels.append("Schwierigkeitsgrad")
  data.append(difficulty)
  

#create and fill the infobox
m.write('{{Infobox\n')
for i in range(0,len(labels)):
  m.write('|label' + str(i+1) + ' = ' + labels[i] + '\n')
m.write('\n')
for i in range(0,len(data)):
  m.write('|data' + str(i+1) + ' = [[:Category:' + data[i] + '|' + data[i] + ']]\n')
m.write('}}\n\n')

#create the content of the article- link to zip, pdf with preview and hyperlink to source code on GitHub
m.write('== pdf und midi mit hervorgehobenen Einzelstimmen ==\n')
m.write('[[Media:' + title.replace(' ','_') + '_(' + arrangerSurName + ',_' + arrangerChristianName + ').zip|Download der midi-Dateien und pdf als zip-Archiv]]\n\n')
m.write('== pdf-Vorschau ==\n<pdf>Datei:' + title.replace(' ','_') + '_(' + arrangerSurName + ',_' + arrangerChristianName + ').pdf</pdf>\n\n')
m.write('== Quellcode ==\n')
m.write('[https://github.com/nun-singet-und-seid-froh/nun-singet-und-seid-froh/tree/master/scores/'+ title.replace(' ','_') +'/' + title.replace(' ','_') + '_(' + arrangerSurName + ',_' + arrangerChristianName + ') in unserem GitHub-Repositorium]\n\n')

#write the categories
m.write(categories)
