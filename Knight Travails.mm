<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1333249026824" ID="ID_757416660" MODIFIED="1333249035038" TEXT="Knight Travails">
<node CREATED="1333249036202" ID="ID_437956164" MODIFIED="1333249039334" POSITION="right" TEXT="Classes">
<node CREATED="1333249065702" ID="ID_279823825" MODIFIED="1333249087812" TEXT="PathFinder">
<node CREATED="1333249610488" ID="ID_382334570" MODIFIED="1333258111608" TEXT="Constructor: A Board"/>
<node CREATED="1333249233818" ID="ID_1709514601" MODIFIED="1333249626504" TEXT="Input: Start and end square"/>
<node CREATED="1333249626725" ID="ID_730664388" MODIFIED="1333250260176" TEXT="Output: A Path between the squares"/>
</node>
<node CREATED="1333249040342" ID="ID_391892066" MODIFIED="1333249061563" TEXT="Square">
<node CREATED="1333252264918" ID="ID_182014295" MODIFIED="1333252299481" TEXT="Constructor: x and y co-ord of Square"/>
<node CREATED="1333253197541" ID="ID_1583531482" MODIFIED="1333253346036" TEXT="Subclasses">
<node CREATED="1333253346460" ID="ID_470545152" MODIFIED="1333253349535" TEXT="ANSquare">
<node CREATED="1333253351170" ID="ID_1407730877" MODIFIED="1333253355650" TEXT="Constructor: AN for square"/>
</node>
</node>
<node CREATED="1333258186546" ID="ID_875408587" MODIFIED="1333258193770" TEXT="Will be constructed via factory method"/>
</node>
<node CREATED="1333249061800" ID="ID_1828264679" MODIFIED="1333249063436" TEXT="Piece">
<node CREATED="1333249845705" ID="ID_1981613131" MODIFIED="1333249849231" TEXT="Constructor:"/>
<node CREATED="1333249305331" ID="ID_800287169" MODIFIED="1333257373128" TEXT="Input: Square where the piece is sent to a setter"/>
<node CREATED="1333249307825" ID="ID_1721285181" MODIFIED="1333249566112" TEXT="Output: Squares that can be reached from where piece is"/>
</node>
<node CREATED="1333249063639" ID="ID_1015645737" MODIFIED="1333252634217" TEXT="2DBoard">
<node CREATED="1333252642060" ID="ID_1778462169" MODIFIED="1333252656301" TEXT="Interface"/>
<node CREATED="1333252502872" ID="ID_550798003" MODIFIED="1333252551911" TEXT="Subclasses">
<node CREATED="1333252553796" ID="ID_171947293" MODIFIED="1333252640366" TEXT="Rectangular2DBoard">
<node CREATED="1333252560632" ID="ID_1995639603" MODIFIED="1333252600795" TEXT="Constructor: Width and height in squares"/>
</node>
</node>
</node>
<node CREATED="1333249064745" ID="ID_759405544" MODIFIED="1333249065498" TEXT="Move"/>
<node CREATED="1333249067357" ID="ID_721102403" MODIFIED="1333249068091" TEXT="Path">
<node CREATED="1333249784893" ID="ID_671145001" MODIFIED="1333249799186" TEXT="Constructor: A List of Squares"/>
<node CREATED="1333249799635" ID="ID_1500296233" MODIFIED="1333250476834" TEXT="Input: Square to add onto the Path"/>
<node CREATED="1333249803162" ID="ID_157433001" MODIFIED="1333249834060" TEXT="Output: Printed list of squares"/>
<node CREATED="1333250265916" ID="ID_173651953" MODIFIED="1333250268753" TEXT="Notes">
<node CREATED="1333250269786" ID="ID_1811026287" MODIFIED="1333250295909" TEXT="Can make list private so path is less changeable"/>
</node>
</node>
</node>
<node CREATED="1333253714464" ID="ID_487700264" MODIFIED="1333253718977" POSITION="right" TEXT="Remaining questions">
<node CREATED="1333253752743" ID="ID_977626854" MODIFIED="1333253759712" TEXT="How should squares be constructed?">
<node CREATED="1333255699264" ID="ID_1673066218" MODIFIED="1333255703537" TEXT="Use a factory method"/>
<node CREATED="1333255703614" ID="ID_735433345" MODIFIED="1333255721899" TEXT="And create an ANChessBoard that then has a different factory method"/>
<node CREATED="1333255975472" ID="ID_1746182445" MODIFIED="1333255992966" TEXT="Why? Because this way I don&apos;t need Board getters"/>
<node CREATED="1333255993112" ID="ID_1795401729" MODIFIED="1333256108700" TEXT="And it&apos;s cleaner..."/>
</node>
<node CREATED="1333253760278" ID="ID_1022484114" MODIFIED="1333253776165" TEXT="Should Pieces own Boards or should they just be passed in as required?">
<node CREATED="1333257403299" ID="ID_1163148446" MODIFIED="1333257407464" TEXT="If I&apos;m using a setter"/>
<node CREATED="1333257407679" ID="ID_259205259" MODIFIED="1333257487135" TEXT="Then someone shouldn&apos;t be able to change the Board after that..."/>
</node>
<node CREATED="1333257305748" ID="ID_1971157131" MODIFIED="1333257317243" TEXT="Should Pieces be associated with particular boards?">
<node CREATED="1333259278607" ID="ID_1657594003" MODIFIED="1333259288307" TEXT="Yes, then you can have parallel moves for different boards"/>
<node CREATED="1333259289863" ID="ID_1599388948" MODIFIED="1333259613130" TEXT="Wait, does that mean I&apos;m forcing Pieces to be on Rectangular2D or ANChess?"/>
<node CREATED="1333259613607" ID="ID_268735325" MODIFIED="1333259621363" TEXT="That won&apos;t really work and isn&apos;t good either..."/>
</node>
<node CREATED="1333253776402" ID="ID_1566823650" MODIFIED="1333253782794" TEXT="Should PathFinder own a Board?">
<node CREATED="1333257882312" ID="ID_851571828" MODIFIED="1333257886621" TEXT="Why does it need one?"/>
<node CREATED="1333257887880" ID="ID_265757688" MODIFIED="1333257919872" TEXT="You need to make sure that the squares and the piece are on the same board..."/>
<node CREATED="1333258046023" ID="ID_1147522801" MODIFIED="1333258079080" TEXT="Very good point, so the constructor needs a Board"/>
</node>
<node CREATED="1333256694560" ID="ID_506412180" MODIFIED="1333275549063" TEXT="Is Move actually necessary?">
<node CREATED="1333258177661" ID="ID_273075049" MODIFIED="1333258422902" TEXT="Pieces will move based upon the results of some method"/>
<node CREATED="1333258423111" ID="ID_368555588" MODIFIED="1333258437154" TEXT="These need to be passed to the Board to see if they&apos;re valid"/>
<node CREATED="1333258437361" ID="ID_817037670" MODIFIED="1333258903410" TEXT="Which will then create a new square or return null if it&apos;s not"/>
<node CREATED="1333258903861" ID="ID_1021557005" MODIFIED="1333258969332" TEXT="Move is more abstracted, good for an interface, in case there&apos;s something where it isn&apos;t x,y"/>
<node CREATED="1333259027454" ID="ID_89656082" MODIFIED="1333259040021" TEXT="I think Pieces will have factory method for Moves"/>
</node>
<node CREATED="1333275550056" ID="ID_1154857965" MODIFIED="1333275561728" TEXT="I don&apos;t want to force people using Board to have to use x,y">
<node CREATED="1333275563211" ID="ID_465925227" MODIFIED="1333275575003" TEXT="So instead, these should be part of a CartesianBoard class"/>
<node CREATED="1333275575166" ID="ID_1874069447" MODIFIED="1333275816247" TEXT="See you want something generic for a Board, but how to make it so it can be subclassed properly??"/>
<node CREATED="1333275875567" ID="ID_109373749" MODIFIED="1333275890464" TEXT="A Move can be anything, it&apos;ll be something specific for the Cartesian board..."/>
<node CREATED="1333275892506" ID="ID_194602314" MODIFIED="1333276195287" TEXT="Why should the Square be created by a Factory method? Becausae that allows access to width etc."/>
<node CREATED="1333276196220" ID="ID_837861384" MODIFIED="1333276451273" TEXT="So Board, Move, Square all seem to be connected"/>
<node CREATED="1333276451468" ID="ID_1176206736" MODIFIED="1333276461244" TEXT="I don&apos;t really want such a tight coupling though..."/>
<node CREATED="1333277261782" ID="ID_1220480756" MODIFIED="1333277279527" TEXT="I want Board to have an interface so it can createSquares and check moves"/>
<node CREATED="1333277280149" ID="ID_1733311839" MODIFIED="1333277361700" TEXT="But without having to do it on specific subclasses"/>
<node CREATED="1333277362255" ID="ID_679758367" MODIFIED="1333277397520" TEXT="So createSquare is going to create a Square"/>
<node CREATED="1333277397743" ID="ID_1618730243" MODIFIED="1333277409430" TEXT="But when I need to use that Square, I need it to be of a subclass"/>
<node CREATED="1333277659253" ID="ID_1987118571" MODIFIED="1333277679386" TEXT="Problem is that Moves, Squares, Pieces for different types of boards don&apos;t have much in common..."/>
<node CREATED="1333277940740" ID="ID_534152023" MODIFIED="1333277956310" TEXT="In this case, Boards can only use certain types of Moves, Squares, Pieces"/>
<node CREATED="1333277956519" ID="ID_840576160" MODIFIED="1333277959647" TEXT="That&apos;s just the way it is"/>
<node CREATED="1333277959881" ID="ID_1543539078" MODIFIED="1333278134989" TEXT="Hmm, generics?"/>
<node CREATED="1333278135253" ID="ID_222140617" MODIFIED="1333278173216" TEXT="So a Board is a Generic that takes in any extension of square"/>
<node CREATED="1333278173435" ID="ID_1590545063" MODIFIED="1333278297037" TEXT="But generics aren&apos;t meant to be used that way..."/>
<node CREATED="1333278297537" ID="ID_413862551" MODIFIED="1333278297537" TEXT=""/>
</node>
<node CREATED="1333278808292" ID="ID_86726901" MODIFIED="1333278820761" TEXT="So if I had a Cartesian2D board and a Polar3D board">
<node CREATED="1333278822417" ID="ID_474026506" MODIFIED="1333278826500" TEXT="Both would do the same things"/>
<node CREATED="1333278826703" ID="ID_1720218775" MODIFIED="1333278849224" TEXT="Just with different types, so MovePolar3D and MoveCartesian2D"/>
<node CREATED="1333278849421" ID="ID_492008563" MODIFIED="1333278867365" TEXT="The problem is that I can&apos;t create a common interface then it seems"/>
<node CREATED="1333279424239" ID="ID_1661538327" MODIFIED="1333279478613" TEXT="Because if I tried, then you&apos;d have to use a Move, and then how can I access anything from that?"/>
<node CREATED="1333279584508" ID="ID_1272701522" MODIFIED="1333279601995" TEXT="So it seems that I must restrict myself to 2DBoard or maybe Cartesian2DBoard"/>
<node CREATED="1333279673398" ID="ID_1322014231" MODIFIED="1333279732206" TEXT="And then create parallel heirarchies for other "/>
<node CREATED="1333280083259" ID="ID_1792501897" MODIFIED="1333280098881" TEXT="OK, so now Moves are fine, Pieces should be fine, it seems all good now..."/>
</node>
<node CREATED="1333280119463" ID="ID_1415212923" MODIFIED="1333280125863" TEXT="Alright, so what kind of board is this?">
<node CREATED="1333280215265" ID="ID_1036677962" MODIFIED="1333280224278" TEXT="Well, I&apos;m going to be doing it in cartesian coordinates"/>
<node CREATED="1333280352528" ID="ID_896556282" MODIFIED="1333280356070" TEXT="Is there a superclass?"/>
<node CREATED="1333280356257" ID="ID_686737570" MODIFIED="1333280509681" TEXT="It&apos;s definitely a 2D board"/>
<node CREATED="1333280509872" ID="ID_706786893" MODIFIED="1333280544365" TEXT="Cartesian is how I&apos;m representing it"/>
<node CREATED="1333280544557" ID="ID_1633452046" MODIFIED="1333280549292" TEXT="Is there any higher level though?"/>
<node CREATED="1333280549517" ID="ID_1512646715" MODIFIED="1333280597154" TEXT="Well, it&apos;s a square grid board"/>
<node CREATED="1333280597379" ID="ID_291334670" MODIFIED="1333280632281" TEXT="The origin and axes can vary"/>
<node CREATED="1333280667063" ID="ID_1553429129" MODIFIED="1333280674767" TEXT="2D is too general, can&apos;t deal with that"/>
<node CREATED="1333280674939" ID="ID_545739173" MODIFIED="1333280963082" TEXT="So it&apos;s definitely going to be a SquareGridBoard, which contributes a width and height"/>
<node CREATED="1333280684288" ID="ID_738019305" MODIFIED="1333280686574" TEXT="And then?"/>
<node CREATED="1333280686771" ID="ID_730867237" MODIFIED="1333280775627" TEXT="Origin and axes? So a BottomLeftOriginBoard maybe..."/>
<node CREATED="1333280775843" ID="ID_1001107609" MODIFIED="1333280845043" TEXT="SquareGridBoard -&gt; CartesianBoard -&gt; LowerLeftOriginCartesianBoard -&gt; ChessBoard"/>
<node CREATED="1333281012179" ID="ID_73305234" MODIFIED="1333281045405" TEXT="But with a SquareGridBoard, does that allow any moves, any referencing, anything other than size? No..."/>
<node CREATED="1333281046130" ID="ID_516230246" MODIFIED="1333281236412" TEXT="But with a CartesianSquareGridBoard I can do all of that"/>
<node CREATED="1333281236585" ID="ID_1445332536" MODIFIED="1333281260922" TEXT="Then I just need a concrete implementation that maybe chooses the origin and axes too?"/>
<node CREATED="1333281329657" ID="ID_1801854015" MODIFIED="1333281332667" TEXT="Maybe..."/>
<node CREATED="1333281387663" ID="ID_832859844" MODIFIED="1333281403389" TEXT="But couldn&apos;t you just write a flexible class that can do that for you?"/>
<node CREATED="1333281404190" ID="ID_948375006" MODIFIED="1333281455320" TEXT="Would the behaviour change? From one CSGBoard to the next? What about axis direction?"/>
<node CREATED="1333281486186" ID="ID_957500429" MODIFIED="1333281497419" TEXT="Well, aside from that...there&apos;s really nothing else?"/>
<node CREATED="1333281497661" ID="ID_1663151559" MODIFIED="1333281507989" TEXT="And I can create an axis flipper if necessary..."/>
<node CREATED="1333281584237" ID="ID_411096135" MODIFIED="1333281601478" TEXT="So the subclass chooses where it wants its origin to be, for whatever purposes it might have..."/>
<node CREATED="1333282124897" ID="ID_1588931526" MODIFIED="1333282141457" TEXT="And what about moves?">
<node CREATED="1333282130862" ID="ID_884475695" MODIFIED="1333282137897" TEXT="Should that be determined by the subclass?"/>
<node CREATED="1333282142562" ID="ID_1002750806" MODIFIED="1333282155136" TEXT="Suppose there was snakes and ladders, or chess or pacman"/>
<node CREATED="1333282155521" ID="ID_574594650" MODIFIED="1333282161362" TEXT="Each has a different move..."/>
</node>
</node>
<node CREATED="1333282050117" ID="ID_111107925" MODIFIED="1333282059335" TEXT="I suppose since it&apos;s 2D, Pairs make sense..."/>
<node CREATED="1333284022212" ID="ID_733965960" MODIFIED="1333284028634" TEXT="What benefits do moves have?">
<node CREATED="1333284029977" ID="ID_1406151798" MODIFIED="1333284034631" TEXT="Can be subclassed"/>
<node CREATED="1333284034789" ID="ID_1326105164" MODIFIED="1333284042119" TEXT="Can have behaviour, perhaps random"/>
</node>
</node>
</node>
</map>
