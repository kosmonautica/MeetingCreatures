require 'squib'

data = Squib.xlsx file: 'MeetingCreatures.xlsx'
layouts = ["hand.yml"]

frontsides = Squib::Deck.new cards: 24, layout: layouts do
  background color: '#999999'
    rect layout: 'cut' # cut line as defined by TheGameCrafter
    rect layout: 'safe' # safe zone as defined by TheGameCrafter
  
  
  text str: data['NumberOfCreature'],
	color: 'white',
	x: 100,
	y: 100
	

text str: data['NameOfCreature'],
	color: 'white',
	font: 'Sans 15',
	width: 800,
	align: :center,
	y: 80
	
	
svg file: './graphics/BombWhite.svg',
	color: 'white',
	width: 250,	height: 250,
	x: 300, y: 250

text str: data['PainPower'],
	color: 'white',
	font: 'Sans 12',
	width: 650, height: 400,
	x: 100,	y: 600
	
text str: 'Meeting Bombs 1.03 by @UdoWiegaertner',
	color: 'white',
	font: 'Sans 6',
	width: 800, height: 20,
	align: :center, y: 1000

save_pdf file:'frontsides.pdf'
end

backsides = Squib::Deck.new cards: 24, layout: layouts do
  background color: '#ffffff'
  rect layout: 'cut' # cut line as defined by TheGameCrafter
  rect layout: 'safe' # safe zone as defined by TheGameCrafter
  
  
  text str: data['NumberOfCreature'],
	color: 'black',
	x: 100,
	y: 100
	

text str: data['NameOfCreature'],
	color: 'black',
	font: 'Sans 15',
	width: 800,
	align: :center,
	y: 80
	
	
svg file: './graphics/bombDisarmBlack.svg',
	color: 'black',
	width: 250,	height: 250,
	x: 300, y: 250

text str: data['HowToDefend'],
	color: 'black',
	font: 'Sans 8',
	width: 650, height: 800,
	x: 100,	y: 600
	
save_pdf file:'backsides.pdf', rtl:true #rtl = right to left reihenfolge für doppelseit-druck
end