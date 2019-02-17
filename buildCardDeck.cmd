rem creates all frontsides and all backsides as PDF
call deck.rb
cd _output
rem Rotates all backsides 180 degrees
call pdftk backsides.pdf cat 1-endsouth output backsidesRotated.pdf
rem pastes frontsides and backsides together alternating for duplex printing
call "C:\Program Files (x86)\PDFtk\bin\Pdftk.exe" A="frontsides.pdf" B="backsidesRotated.pdf" shuffle output "MeetingBombs_doublesided.pdf"





rem call deckNoCutLines.rb
rem cd _output
rem Rotates all backsides 180 degrees
rem call pdftk backsides.pdf cat 1-endsouth output backsidesRotated.pdf
rem pastes frontsides and backsides together alternating for duplex printing
rem call "C:\Program Files (x86)\PDFtk\bin\Pdftk.exe" A="frontsides.pdf" B="backsidesRotated.pdf" shuffle output "MeetingCreateatures_doublesided_NoCutLines.pdf"

cd..