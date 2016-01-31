#conventions concerning meta.ily
The *meta.ily* of a certain piece contains the meta-data of that piece, i.e. information *about* the piece which transcend the pure information on the (musical and lyrical) text of the piece. These data are in part (the data concerning title, composer, arranger and poet) printed on the sheet, in part used for the generation of the generic MediaWiki-article. Enter the meta-data as described:

## title
	title             = ""

just enter the title of the piece. 

## composer, arranger, poet
	composer          = ""
	arranger          = ""

The *composer* is the person who wrote the melody, while the *arranger* is the person who wrote the multiple-part harmony. If both persons are identical, the *arranger*-field shall be left empty.

	poet              = ""
	
The poet is the person who wrote the lyrics. If the lyrics are a translation of a foreign-language text (or are very much inspired by a foreign text) the translator ist named, but the author of the original text is named as well, e. g.:

	poet              = "Martin Luther, nach Ambrosius von Mailand"

	arranger\_lifedata  = "" 
	composer_lifedata   = ""
	poet_lifedata       = "" 

The lifedata shall have the form  *[date of birth]-[date of death]*, e.g.

	composer_lifedata   =	"1685-1750"
	
If the lifedata of composer, poet or arranger are not known, the respective field shall be left empty. If the exact year of birth or death is uncertain, this shall be marked with the term *etwa*, e.g.

	poet_lifedata     = (etwa 1530-1581) 

## opus

	opus_title        = ""
	no\_in\_opus      = ""
	title\_in\_opus   = ""

The opus-fields shall contain the title of the opus, the piece is part of, as well as the number, it has in this opus (no\_in\_opus) and (if different from the title you have entered in the title-field) the title the piece has in this opus, e.g.

	title             = "Fröhlich soll mein Herze springen"
	opus              = "Weihnachtsoratorium (BWV 248)"
	no\_in\_opus      = "33"
	title\_in\_opus	  = "Ich will dich mit Fleiß bewahren"

## last_edited
	last\_edited      = ""

The variable *last_edited* names the date of the last edit of the piece. It shall be of the form "DD Month YYY", e.g.
	
	last\_edited      = "5. Dezember 2015"

## vers	
	vers              = ""

The variable *vers* reflects the version number of the piece in our edition. It helps users to keep the overview of versions in case of changes applied to the piece after publication. Version numbering starts with "0.0.0" - this is the version number you enter when you create the first draft of the piece. Version number "0.1.0" is applied after the first proof-read, "0.2.0" after the second proofread. The number of the first published version is "1.0.0"

After the piece being published a new version number is given after every edit. The first number shall be increased after major changes, i.e. when the piece would be considered to be a different piece. The second number is increased after minor edits of the notes or lyrics - like typos, different spread of the lyrics under the notes, etc. The third number is increased if something is changed which does not concern neither the text of the notes nor the text of the lyrics - for example changes of the layout like linebreaking or changing the number of systems or pages, etc.

 
## epoque
	epoque          = "" 

The variable *epoque* names the epoque the music piece is ascribed to. (The epoque the text is written in does not matter.)

## language
	language          = "" 

The variable *language* names the language of the lyrics. If a piece contains multiple languages, all languages are named, separated by comma.

## instrumnetation
	instrumentation   = ""

The variable *instrumentation* reflects the voices as well as their order. So, for example, while "SSAATTBB" is used for a piece of eight separate voices, "(SATB)(SATB)" is used for a eight-voice-piece whose voices appear as as double-choir.

## difficulty	
	difficulty        = ""

The variable *difficulty* the difficulty of the piece. Categorization of this cannot be sharp-edged, but the following criteria may give some intuition:

+ "sehr leicht" - two or three voices, or homophonic harmonization with easy harmonies
+ "leicht" - four or five voices, homophone
+ "mittelschwer" - polyphony with up to four voices
+ "schwer" - polyphony with many voices
+ "sehr schwer" - polyphony with advanced harmonies and rhythms

## form
	form              = "" 

The *form* is either "Motette", "Strophenlied" or "Durchkomponiertes Lied".
	
## root	
	root              = ""

The *root*-field names the musical root . In many cases a piece will be considered as its own root. Some standard cases:

+ the text is more popular under a (slightly) different title - e.g. the root of "Es ist ein Reis entsprungen" is "Es ist ein Ros entsprungen"
+ the lyrics of the piece are a translation of another piece - e.g. the root of "Herbei, o ihr Gläubigen" is "Adeste Fideles"
+ the piece is a contrafactum of another song or carol
