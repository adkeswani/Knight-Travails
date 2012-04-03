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
<node CREATED="1333253714464" FOLDED="true" ID="ID_487700264" MODIFIED="1333284630008" POSITION="right" TEXT="Remaining questions">
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
<node CREATED="1333284044307" ID="ID_1828697064" MODIFIED="1333284046314" TEXT="That&apos;s good."/>
</node>
</node>
<node CREATED="1333285698470" FOLDED="true" ID="ID_122288184" MODIFIED="1333413139115" POSITION="right" TEXT="So what&apos;s the cleanest way to do the AN stuff?">
<node CREATED="1333285707323" ID="ID_919768634" MODIFIED="1333285730032" TEXT="I definitely think factory methods are good because they let me do the whole size check thing inside the board"/>
<node CREATED="1333285730490" ID="ID_960186385" MODIFIED="1333285744449" TEXT="How about a decorator pattern?"/>
<node CREATED="1333285745551" ID="ID_187310705" MODIFIED="1333285748217" TEXT="Sounds funky..."/>
<node CREATED="1333286838643" ID="ID_429519491" MODIFIED="1333286850293" TEXT="So ChessBoard will override createSquare and doMove"/>
<node CREATED="1333286850494" ID="ID_1715116006" MODIFIED="1333287016803" TEXT="And it will still return CSGSquares, but it will actually create ANCSGSquares"/>
<node CREATED="1333286880885" ID="ID_57182250" MODIFIED="1333286902961" TEXT="And ANCSGSquares are really just decorators of CSGSquares..."/>
<node CREATED="1333286903362" ID="ID_1978467201" MODIFIED="1333286966031" TEXT="And yes, it is necessary once we get to PathFinder and stuff"/>
</node>
<node CREATED="1333327670859" ID="ID_990016231" MODIFIED="1333327678712" POSITION="right" TEXT="Now, does the Board also need decorators?">
<node CREATED="1333327691346" ID="ID_203084489" MODIFIED="1333327811923" TEXT="I am basically changing the return value to ChessSquares instead of normal squares"/>
<node CREATED="1333327812328" ID="ID_139350408" MODIFIED="1333328328483" TEXT="I am changing the behaviour, but will I ever need to layer them on top of each other?"/>
<node CREATED="1333328603441" ID="ID_963823659" MODIFIED="1333328630742" TEXT="I don&apos;t think it&apos;s appropriate, as I&apos;ll never need to dynamically change it..."/>
</node>
<node CREATED="1333329284022" FOLDED="true" ID="ID_858815653" MODIFIED="1333413136665" POSITION="right" TEXT="Should the Boards be decorators of a base board?">
<node CREATED="1333329296661" ID="ID_221041235" MODIFIED="1333329298649" TEXT="Maybe..."/>
<node CREATED="1333329299086" ID="ID_379209968" MODIFIED="1333329317142" TEXT="Because you could end up getting a huge heirarchy..."/>
<node CREATED="1333329317361" ID="ID_1550762456" MODIFIED="1333329335968" TEXT="So BoundaryCheck would definitely be a decorator sort of thing, something you could mix and match with others..."/>
<node CREATED="1333329336161" ID="ID_1682422044" MODIFIED="1333329341731" TEXT="ChessBoard not so much though..."/>
<node CREATED="1333329939138" ID="ID_153065579" MODIFIED="1333329949281" TEXT="So ChessBoard can still extend a BoundaryCheck"/>
<node CREATED="1333330389169" ID="ID_1068258968" MODIFIED="1333330414629" TEXT="OK, but now what is DisplaceableBoard going to do?"/>
<node CREATED="1333330414830" ID="ID_809901497" MODIFIED="1333330423963" TEXT="It&apos;s going to have no checks to see if the square is on the board?"/>
<node CREATED="1333330719812" ID="ID_73380173" MODIFIED="1333330732754" TEXT="But then you could have a PiecesBoard and implement more rules that way!"/>
<node CREATED="1333330733889" ID="ID_337251778" MODIFIED="1333330737010" TEXT="That&apos;s pretty shiny..."/>
<node CREATED="1333330805639" ID="ID_301536708" MODIFIED="1333330808861" TEXT="I&apos;ll admit it&apos;s good"/>
<node CREATED="1333330809050" ID="ID_417663593" MODIFIED="1333330813779" TEXT="So how would I go about this?">
<node CREATED="1333330814526" ID="ID_918171619" MODIFIED="1333330832376" TEXT="Displaceable board would make it difficult to tell if piece is on or off the board"/>
<node CREATED="1333330832556" ID="ID_1815227079" MODIFIED="1333331010952" TEXT="What if BoundaryCheck ends up being below displaceable?"/>
<node CREATED="1333331011215" ID="ID_1092140499" MODIFIED="1333331028051" TEXT="So the board is displaced after the boundaries are checked?"/>
<node CREATED="1333331028255" ID="ID_1078810928" MODIFIED="1333331031305" TEXT="That wouldn&apos;t work..."/>
<node CREATED="1333331128099" ID="ID_726172487" MODIFIED="1333331151871" TEXT="I could remove displacement and add it in as a note...ensure it&apos;s the bottom in the chain if it needs to be there..."/>
<node CREATED="1333331154799" ID="ID_1668953050" MODIFIED="1333331382991" TEXT="Would i need some sort of getSize method? We can&apos;t just protect the size, nobody else knows about it..."/>
<node CREATED="1333331411889" ID="ID_496406366" MODIFIED="1333331417526" TEXT="So I&apos;m going to have a simple board"/>
<node CREATED="1333331417750" ID="ID_1930081641" MODIFIED="1333331427093" TEXT="Then I&apos;ll decorate that with a BoundaryCheck board"/>
<node CREATED="1333331427247" ID="ID_1246357974" MODIFIED="1333331444040" TEXT="And then extend that to ChessBoard?"/>
<node CREATED="1333331647959" ID="ID_1522386738" MODIFIED="1333331687142" TEXT="So I will have a concrete BoundaryCheckBoard then?"/>
<node CREATED="1333331687337" ID="ID_1429505740" MODIFIED="1333331878558" TEXT="Yeah, so ChessBoard will definitely be a class"/>
<node CREATED="1333331879022" ID="ID_1273881899" MODIFIED="1333331980505" TEXT="And it will not be another decoration because it will rely upon BoundaryCheck"/>
<node CREATED="1333331981002" ID="ID_281197549" MODIFIED="1333331998309" TEXT="So I&apos;d need to construct a SimpleBoard/BasicBoard"/>
<node CREATED="1333331998512" ID="ID_1240221343" MODIFIED="1333332024665" TEXT="Then pass that into a constructed EmptyChessBoard, which is really an extension of BoundaryCheckBoard"/>
<node CREATED="1333332024861" ID="ID_975636168" MODIFIED="1333332921192" TEXT="Hmm...what about the doMove / createSquare relationship?"/>
</node>
<node CREATED="1333333534600" ID="ID_751003715" MODIFIED="1333333537734" TEXT="What&apos;s in a move?">
<node CREATED="1333333538797" ID="ID_1153203665" MODIFIED="1333333558003" TEXT="A move contains the starting square and how many squares you want to move in either direction"/>
<node CREATED="1333333558550" ID="ID_1520966745" MODIFIED="1333333581957" TEXT="So 2DCGSquare start"/>
<node CREATED="1333333582173" ID="ID_1799134179" MODIFIED="1333333802106" TEXT="And numSquaresToMove?"/>
<node CREATED="1333333802349" ID="ID_1995543521" MODIFIED="1333333805537" TEXT="moveAmount?"/>
<node CREATED="1333333805762" ID="ID_690397169" MODIFIED="1333333808157" TEXT="distance?"/>
<node CREATED="1333333808564" ID="ID_1390653380" MODIFIED="1333333827611" TEXT="distanceInSquares?"/>
<node CREATED="1333333827808" ID="ID_1904263627" MODIFIED="1333333831542" TEXT="Isn&apos;t that implied?"/>
<node CREATED="1333333833978" ID="ID_451305085" MODIFIED="1333333837348" TEXT="I think distance is best"/>
<node CREATED="1333333837986" ID="ID_1850153120" MODIFIED="1333333837986" TEXT=""/>
</node>
</node>
<node CREATED="1333334151513" ID="ID_89687540" MODIFIED="1333334163996" POSITION="right" TEXT="OK, definitely closer to having all of the backing sttructure done..."/>
<node CREATED="1333335374341" FOLDED="true" ID="ID_801504792" MODIFIED="1333413133446" POSITION="right" TEXT="Annoying bits to fix now.">
<node CREATED="1333335377309" ID="ID_1733451171" MODIFIED="1333335383393" TEXT="Immutability of 2DCGPair">
<node CREATED="1333335954418" ID="ID_1506874110" MODIFIED="1333335963453" TEXT="OK, so how do I want to implement 2DCDPair"/>
<node CREATED="1333335963665" ID="ID_1762931633" MODIFIED="1333336169273" TEXT="The interface automatically implies it is immutable"/>
<node CREATED="1333336169491" ID="ID_1107616928" MODIFIED="1333336203383" TEXT="Because there&apos;s no methods for changing it"/>
<node CREATED="1333336760862" ID="ID_447299041" MODIFIED="1333336771988" TEXT="So I can just return size and not have to worry? Yes."/>
</node>
<node CREATED="1333335383582" ID="ID_1636244656" MODIFIED="1333335386488" TEXT="ChessSquare">
<node CREATED="1333336332842" ID="ID_873790917" MODIFIED="1333336339485" TEXT="Should I be casting it etc.?"/>
<node CREATED="1333337193418" ID="ID_612673101" MODIFIED="1333337200116" TEXT="OK, so ChessSquare and ChessBoard"/>
<node CREATED="1333337200294" ID="ID_766924531" MODIFIED="1333337233664" TEXT="Now...a ChessBoard should always be "/>
<node CREATED="1333337453543" ID="ID_1163877117" MODIFIED="1333337469449" TEXT="Definitely shouldn&apos;t downcast because you never know what the lower class might contain"/>
<node CREATED="1333337469657" ID="ID_674066660" MODIFIED="1333337501425" TEXT="Upcasting is fine because you know what&apos;s up there, you know the subclasses have implemented the superclass"/>
<node CREATED="1333337501635" ID="ID_1116072713" MODIFIED="1333337514966" TEXT="But downcasting, no, you don&apos;t know that the superclass works with it"/>
<node CREATED="1333337515133" ID="ID_478084094" MODIFIED="1333337520847" TEXT="Therefore I&apos;m going to need the constructor."/>
<node CREATED="1333337675962" ID="ID_1907694637" MODIFIED="1333337688062" TEXT="So the purpose of all of this is so as to create ChessSquares instead of normal ones"/>
<node CREATED="1333337688713" ID="ID_604848695" MODIFIED="1333338239568" TEXT="But to still have an ordinary board and ordinary squares that will later work with PathFinder etc."/>
<node CREATED="1333338239764" ID="ID_638964157" MODIFIED="1333338329260" TEXT="OK, so what I&apos;m doing is having a constructor that can take in the superclass and generate the subclass"/>
<node CREATED="1333338329479" ID="ID_1827225050" MODIFIED="1333338333700" TEXT="But that seems really messy..."/>
<node CREATED="1333338334326" ID="ID_520211017" MODIFIED="1333338369970" TEXT="ChessSquares have a different constructor and different toString"/>
<node CREATED="1333338370546" ID="ID_946822842" MODIFIED="1333338409085" TEXT="So extending 2DCGSquare seems fine"/>
<node CREATED="1333338409313" ID="ID_1030472579" MODIFIED="1333338490919" TEXT="But now, to have ChessBoard work...">
<node CREATED="1333338492095" ID="ID_402341184" MODIFIED="1333338530200" TEXT="It seems ugly"/>
<node CREATED="1333338530380" ID="ID_799997903" MODIFIED="1333338556448" TEXT="Because I need to use what&apos;s returned by the decorated board"/>
<node CREATED="1333338556809" ID="ID_1312518789" MODIFIED="1333338750643" TEXT="That&apos;s why I&apos;m having to create this strange constructor"/>
<node CREATED="1333338750845" ID="ID_158857906" MODIFIED="1333338761851" TEXT="And why createSquareFromAN is going to be messy..."/>
<node CREATED="1333338762226" ID="ID_323889451" MODIFIED="1333338865069" TEXT="Unless I give ChessSquare a public static IDtoCoord method"/>
<node CREATED="1333338872982" ID="ID_1754572036" MODIFIED="1333338879192" TEXT="Is there any better way of doing this?"/>
<node CREATED="1333338879626" ID="ID_49693183" MODIFIED="1333338960180" TEXT="Decorator doesn&apos;t make sense"/>
<node CREATED="1333338960380" ID="ID_1726451135" MODIFIED="1333339201060" TEXT="But it just seems as though the constructor is adding no new data at all"/>
</node>
<node CREATED="1333339819393" ID="ID_1718447733" MODIFIED="1333339836317" TEXT="OK, first off, I think ChessBoard should become Algebraic Notation board"/>
<node CREATED="1333339879405" ID="ID_35952427" MODIFIED="1333339917609" TEXT="Then remove the createSquareFromAN and force people to just use hte interface">
<node CREATED="1333340910256" ID="ID_1473495169" MODIFIED="1333340922540" TEXT="Because I never should know what concrete class is underneath"/>
</node>
<node CREATED="1333339917787" ID="ID_1962887674" MODIFIED="1333339925879" TEXT="And have the conversion method as part of ChessSquare static"/>
<node CREATED="1333339982040" ID="ID_770561591" MODIFIED="1333340010443" TEXT="Maybe..."/>
<node CREATED="1333340010632" ID="ID_1323014341" MODIFIED="1333340029918" TEXT="And then should ChessSquare&apos;s constructor take in a 2DCGSquare?"/>
<node CREATED="1333340498788" ID="ID_796331960" MODIFIED="1333340503903" TEXT="So the solution I am thinking is">
<node CREATED="1333340504730" ID="ID_455281533" MODIFIED="1333340517079" TEXT="Make Algebraic NotationBoard another decorator"/>
<node CREATED="1333340517636" ID="ID_4988861" MODIFIED="1333340543420" TEXT="And create a public static to convert from AN to coord"/>
<node CREATED="1333340543934" ID="ID_97176783" MODIFIED="1333340557823" TEXT="And a constructor that takes 2DCGSquare and converts to CHessSquare">
<node CREATED="1333341396100" ID="ID_1775274126" MODIFIED="1333341405278" TEXT="Should this instead be the coord of the Square?"/>
<node CREATED="1333341405714" ID="ID_1116591519" MODIFIED="1333341439534" TEXT="That might be more in line with other squares?"/>
<node CREATED="1333341439722" ID="ID_782551161" MODIFIED="1333341445693" TEXT="Normally they&apos;re constructed using coords?"/>
<node CREATED="1333341447673" ID="ID_1260502835" MODIFIED="1333341461647" TEXT="In the end it&apos;s the same lines of code, since I use getCoord"/>
<node CREATED="1333341461827" ID="ID_22169613" MODIFIED="1333341463493" TEXT="But..."/>
<node CREATED="1333341487145" ID="ID_702783852" MODIFIED="1333341646818" TEXT="Not sure really..."/>
<node CREATED="1333341663488" ID="ID_1493673430" MODIFIED="1333341672389" TEXT="With this I have to write an extra method..."/>
<node CREATED="1333341672813" ID="ID_685241067" MODIFIED="1333341676582" TEXT="Otherwise I don&apos;t..."/>
<node CREATED="1333341677562" ID="ID_1605321949" MODIFIED="1333341679978" TEXT="OK, done."/>
</node>
<node CREATED="1333340880539" ID="ID_1627110697" MODIFIED="1333340885567" TEXT="Is there any better way?"/>
</node>
</node>
<node CREATED="1333342102697" ID="ID_973106113" MODIFIED="1333342106398" TEXT="Annoying problem">
<node CREATED="1333342107483" ID="ID_365876875" MODIFIED="1333342114720" TEXT="A better name for the Concrete things"/>
<node CREATED="1333342114893" ID="ID_1011863314" MODIFIED="1333342160790" TEXT="Concrete2DCGPair"/>
<node CREATED="1333342864139" ID="ID_816418780" MODIFIED="1333342868445" TEXT="OK, used the Simple prefix"/>
</node>
<node CREATED="1333340720926" ID="ID_196650518" MODIFIED="1333340730922" TEXT="Question: Does the NoRules board need a size?">
<node CREATED="1333342873258" ID="ID_351472350" MODIFIED="1333342875136" TEXT="Does it?"/>
<node CREATED="1333342875317" ID="ID_1253006097" MODIFIED="1333342876904" TEXT="Not sure..."/>
<node CREATED="1333342877282" ID="ID_1534643134" MODIFIED="1333342934797" TEXT="If I just leave the size off, then I&apos;d throw it into SizedBoard (== BoundaryCheck)"/>
<node CREATED="1333342934987" ID="ID_746240668" MODIFIED="1333342941140" TEXT="That sounds nice-ish..."/>
<node CREATED="1333343250780" ID="ID_794042250" MODIFIED="1333343255793" TEXT="OK, BoundedBoard created"/>
</node>
<node CREATED="1333343257915" ID="ID_1382097381" MODIFIED="1333343259330" TEXT="Now what?"/>
<node CREATED="1333343259708" ID="ID_978834365" MODIFIED="1333343262533" TEXT="Is that it for this?"/>
<node CREATED="1333345234260" ID="ID_734180445" MODIFIED="1333345244643" TEXT="There seems to be some redundancy for createSquare and doMove...">
<node CREATED="1333345495304" ID="ID_1642897119" MODIFIED="1333345508287" TEXT="Both will involve running createSquare anyway..."/>
<node CREATED="1333345508915" ID="ID_1937837473" MODIFIED="1333345624203" TEXT="But move also checks the movement itself"/>
<node CREATED="1333345624417" ID="ID_1897173205" MODIFIED="1333345631263" TEXT="While square only checks that the square is valid"/>
<node CREATED="1333345631439" ID="ID_1095119534" MODIFIED="1333345658715" TEXT="The point of createSquare is to make creating squares smarter..."/>
<node CREATED="1333345659122" ID="ID_817610979" MODIFIED="1333345699847" TEXT="But if I decide I want to call another method, that should be fine"/>
<node CREATED="1333345700043" ID="ID_1847222677" MODIFIED="1333345702829" TEXT="That&apos;s up to me..."/>
</node>
<node CREATED="1333345724585" ID="ID_1666179720" MODIFIED="1333345728899" TEXT="OK, will continue for now..."/>
<node CREATED="1333346952549" ID="ID_1733895468" MODIFIED="1333346955864" TEXT="What&apos;s slowing down?">
<node CREATED="1333346956289" ID="ID_1820501969" MODIFIED="1333347002454" TEXT="Need to write tests now"/>
<node CREATED="1333347002654" ID="ID_1999980917" MODIFIED="1333347004852" TEXT="And document"/>
<node CREATED="1333347005051" ID="ID_232768591" MODIFIED="1333347005051" TEXT=""/>
</node>
<node CREATED="1333347304758" ID="ID_623362190" MODIFIED="1333347323299" TEXT="Question: What if the square for the move is invalid, i.e. doesn&apos;t belong to this Board? That&apos;s not cool...">
<node CREATED="1333347517277" ID="ID_766183019" MODIFIED="1333347523279" TEXT="What if I make the Board own squares?"/>
<node CREATED="1333347523492" ID="ID_619621089" MODIFIED="1333347545065" TEXT="Or if the Square has a Board?"/>
<node CREATED="1333347610373" ID="ID_955920421" MODIFIED="1333347658366" TEXT="What if the Board has a collection of Squares?"/>
<node CREATED="1333347658688" ID="ID_573919701" MODIFIED="1333347671231" TEXT="That way you could have a getSquare method instead..."/>
<node CREATED="1333347671454" ID="ID_1798095118" MODIFIED="1333347689416" TEXT="But what happens to AlgNotSquares? They stay the same I think..."/>
<node CREATED="1333347696118" ID="ID_740811027" MODIFIED="1333347702338" TEXT="No...not necessarily..."/>
<node CREATED="1333347881099" ID="ID_883922044" MODIFIED="1333347885958" TEXT="This is a conundrum..."/>
<node CREATED="1333347886406" ID="ID_395180613" MODIFIED="1333347898190" TEXT="No, maybe not"/>
<node CREATED="1333347898358" ID="ID_1613598102" MODIFIED="1333347946056" TEXT="So you have a getSquare"/>
<node CREATED="1333347946244" ID="ID_619772954" MODIFIED="1333347957633" TEXT="And whenever you want to make a move or something, you have to procure it from there"/>
<node CREATED="1333347957855" ID="ID_1215306906" MODIFIED="1333348008355" TEXT="And then when you try and use that square, it&apos;ll verify that you actually got it from there"/>
<node CREATED="1333348008533" ID="ID_1780747938" MODIFIED="1333348080506" TEXT="So for the AlgNot, that won&apos;t really work, because I need to change the square then!"/>
<node CREATED="1333348081249" ID="ID_1822678180" MODIFIED="1333348125112" TEXT="Unless I extract it from it..."/>
<node CREATED="1333348125318" ID="ID_406612624" MODIFIED="1333348142351" TEXT="So when I do a getSquare, I&apos;ll take the square I get and store it in some sort of decorator?"/>
<node CREATED="1333348312719" ID="ID_1711102315" MODIFIED="1333348321017" TEXT="This seems really weird..."/>
<node CREATED="1333348321219" ID="ID_1694009066" MODIFIED="1333348428328" TEXT="So Squares should be associated with Boards? Yes, a Board should own squares"/>
<node CREATED="1333348428575" ID="ID_1923348591" MODIFIED="1333348483594" TEXT="Equality checking will be a lot easier then!"/>
<node CREATED="1333348483764" ID="ID_1610199702" MODIFIED="1333348521943" TEXT="OK, and then how will AlgNot work?"/>
<node CREATED="1333348522147" ID="ID_80023068" MODIFIED="1333348545140" TEXT="You&apos;d use a decorator"/>
<node CREATED="1333348545363" ID="ID_201278857" MODIFIED="1333348562751" TEXT="So when you getSquare normally, it&apos;ll give you a 2DCGSquare"/>
<node CREATED="1333348562930" ID="ID_1177410438" MODIFIED="1333348627247" TEXT="And from  the AlgNot, you just throw that inside an AlgNotSquare, and if I call equals on it, just check the decorated object"/>
<node CREATED="1333350040768" ID="ID_354334845" MODIFIED="1333350047029" TEXT="OK, so this is a workable solution"/>
<node CREATED="1333350047294" ID="ID_364337112" MODIFIED="1333350083750" TEXT="But then in doMove, how do I convey that the square must be part of the board?"/>
<node CREATED="1333350093041" ID="ID_801719028" MODIFIED="1333350102477" TEXT="Convey it in the comments and in NoRules"/>
<node CREATED="1333351164783" ID="ID_496119591" MODIFIED="1333351173571" TEXT="Is this really a good idea, the whole Decorator thing?"/>
<node CREATED="1333351260355" ID="ID_772224628" MODIFIED="1333351271908" TEXT="Well, how else would you implement ANSquares?"/>
<node CREATED="1333351272087" ID="ID_901234931" MODIFIED="1333351290681" TEXT="You can&apos;t subclass because that breaks equality, unless we store the board as part of the square..."/>
<node CREATED="1333351291939" ID="ID_1593619750" MODIFIED="1333351306942" TEXT="Isn&apos;t that equally ugly, it creates a 2 way ownership?"/>
<node CREATED="1333351399606" ID="ID_1464790410" MODIFIED="1333351419737" TEXT="So you&apos;d store the board, then when you want to check move validity, just check if the belongsTo == this"/>
<node CREATED="1333351419908" ID="ID_15465098" MODIFIED="1333351468219" TEXT="And equality would be easy to implement"/>
<node CREATED="1333351468406" ID="ID_988768413" MODIFIED="1333351470860" TEXT="What else?"/>
<node CREATED="1333351483544" ID="ID_1059764822" MODIFIED="1333351488986" TEXT="Well, couldn&apos;t you fake it then?"/>
<node CREATED="1333351505481" ID="ID_235164553" MODIFIED="1333351518266" TEXT="You could just use the constructor and build a square yourself and break it that way..."/>
<node CREATED="1333351518960" ID="ID_135327602" MODIFIED="1333351533146" TEXT="Well, at that rate you could break a lot of stuff, yeah?"/>
<node CREATED="1333351671111" ID="ID_337784440" MODIFIED="1333351683771" TEXT="Seems like there&apos;s alot of really strong couplings being created..."/>
</node>
<node CREATED="1333351717258" ID="ID_1065835391" MODIFIED="1333351724042" TEXT="Board and Square">
<node CREATED="1333351725100" ID="ID_913003809" MODIFIED="1333351728693" TEXT="Board owns Squares"/>
<node CREATED="1333351728806" ID="ID_124630231" MODIFIED="1333351733640" TEXT="Square belongs to a Board"/>
<node CREATED="1333351733822" ID="ID_1517496775" MODIFIED="1333351747025" TEXT="A move is valid if the Square and Board are related"/>
<node CREATED="1333351747217" ID="ID_1223170601" MODIFIED="1333351779479" TEXT="Maybe an abstract class could convey this?"/>
</node>
</node>
<node CREATED="1333335359248" ID="ID_297541835" MODIFIED="1333335363897" POSITION="right" TEXT="is move REALLY necessary?">
<node CREATED="1333413147467" ID="ID_266758448" MODIFIED="1333413152728" TEXT="Trying to decide this now"/>
<node CREATED="1333413376686" ID="ID_1293130652" MODIFIED="1333413411574" TEXT="Well, it can give you the starting coord and the distance moved"/>
<node CREATED="1333413423004" ID="ID_1940450168" MODIFIED="1333413437902" TEXT="After a move has been made, can it really change?"/>
<node CREATED="1333413438092" ID="ID_1126048235" MODIFIED="1333413448156" TEXT="The move shouldn&apos;t really modify itself or anything..."/>
<node CREATED="1333413449496" ID="ID_1403949320" MODIFIED="1333413454701" TEXT="So is there a need for Move?"/>
<node CREATED="1333413455720" ID="ID_1284019717" MODIFIED="1333413663478" TEXT="I can either hide the information behind a move"/>
<node CREATED="1333413663687" ID="ID_1751213095" MODIFIED="1333413672141" TEXT="Or I can expose it and show that&apos;s all a move is..."/>
<node CREATED="1333413825972" ID="ID_1125898432" MODIFIED="1333413835679" TEXT="I&apos;d rather give the opportunity to extend"/>
</node>
<node CREATED="1333415749463" ID="ID_1306145506" MODIFIED="1333415751076" POSITION="right" TEXT="Issues">
<node CREATED="1333415752156" ID="ID_1629977421" MODIFIED="1333415761588" TEXT="What should the Rectangular class be called?">
<node CREATED="1333415772104" ID="ID_1459727966" MODIFIED="1333415790655" TEXT="Well, for consistency, just name it with Decorator"/>
</node>
<node CREATED="1333415761829" ID="ID_302360426" MODIFIED="1333415768722" TEXT="How to handle the constructor?">
<node CREATED="1333415877499" ID="ID_506778638" MODIFIED="1333415897434" TEXT="Because the decorator has a constructor that only takes in the decorated board"/>
<node CREATED="1333415898167" ID="ID_1615188680" MODIFIED="1333415902698" TEXT="And I need to add a size..."/>
<node CREATED="1333416358022" ID="ID_531913779" MODIFIED="1333416364586" TEXT="Unless I just give it a setSize()"/>
<node CREATED="1333416364850" ID="ID_1229071156" MODIFIED="1333416371398" TEXT="And make that size changeable"/>
<node CREATED="1333416723014" ID="ID_1865161820" MODIFIED="1333416733385" TEXT="Hmm...so the size is changeable..."/>
<node CREATED="1333416733966" ID="ID_1323387545" MODIFIED="1333416800823" TEXT="That way I&apos;m not really changing "/>
<node CREATED="1333416929789" ID="ID_27339986" MODIFIED="1333416932641" TEXT="OK, that works">
<node CREATED="1333416933976" ID="ID_1717027915" MODIFIED="1333416973828" TEXT="Anyway, Decorator allows you to add extra functions without having to subclass everything, just layer it instead, and can do this at runtime too"/>
<node CREATED="1333416974030" ID="ID_221175958" MODIFIED="1333417010293" TEXT="Strategy allows you to do similar, change the algo being used without needing more subclasses and can do it at runtime, just here the Strategy is contained inside and is not the same as the object it&apos;s contained in"/>
</node>
</node>
<node CREATED="1333420503236" ID="ID_1075591980" MODIFIED="1333420511205" TEXT="Todo">
<node CREATED="1333420512166" ID="ID_533488037" MODIFIED="1333420548310" TEXT="Should add be implemented in an abstract class? Because I definitely have a default behaviour I want from it.">
<node CREATED="1333421318275" ID="ID_34415968" MODIFIED="1333421410895" TEXT="So I could create an abstract class that introduces no data but has a default add implementation"/>
<node CREATED="1333421411133" ID="ID_89397546" MODIFIED="1333421422266" TEXT="Problem with this is add is not in-place, it creates a new pair"/>
<node CREATED="1333421422430" ID="ID_656870094" MODIFIED="1333421445285" TEXT="And so I wouldn&apos;t be able to instantiate it..."/>
<node CREATED="1333421600960" ID="ID_1322202056" MODIFIED="1333421676618" TEXT="Well, I&apos;ve got the Simple class and comments to show what add should do..."/>
</node>
<node CREATED="1333420548962" ID="ID_1999265434" MODIFIED="1333420576905" TEXT="What&apos;s the problem with adding the size constructor for Rectangular2DCGBoard?">
<node CREATED="1333423384344" ID="ID_633893540" MODIFIED="1333423427503" TEXT="Because then it&apos;s different from others"/>
<node CREATED="1333423427737" ID="ID_1144594489" MODIFIED="1333423439490" TEXT="And what would the size be for the default constructor?"/>
<node CREATED="1333423439691" ID="ID_831065278" MODIFIED="1333423454161" TEXT="Isn&apos;t it better to just have the default constructor and then allow size to be changed?"/>
<node CREATED="1333423499352" ID="ID_1087826029" MODIFIED="1333423501440" TEXT="I suppose...."/>
</node>
<node CREATED="1333420617196" ID="ID_1338256322" MODIFIED="1333420624917" TEXT="Finish AlgNotPair">
<node CREATED="1333422557727" ID="ID_51222503" MODIFIED="1333422566582" TEXT="Should this still use Simple as the underlying?"/>
<node CREATED="1333422567166" ID="ID_547410797" MODIFIED="1333422574294" TEXT="Or should it store a string representation?"/>
<node CREATED="1333422574740" ID="ID_1481929777" MODIFIED="1333422763812" TEXT="Then I&apos;d have to override add, get as well..."/>
<node CREATED="1333422846740" ID="ID_1884895962" MODIFIED="1333422852791" TEXT="But they&apos;d be quite simple"/>
<node CREATED="1333422852964" ID="ID_1004522242" MODIFIED="1333422916535" TEXT="Yet when it comes to constructors, I&apos;d need some way of constructing from co-ordinates..."/>
<node CREATED="1333422916806" ID="ID_1858708273" MODIFIED="1333422960528" TEXT="And that&apos;d be the same complexity"/>
<node CREATED="1333422960881" ID="ID_1444508526" MODIFIED="1333423071402" TEXT="So i think I&apos;d rather just use this method and that way moves etc. are simple, constructing is simple"/>
<node CREATED="1333423077875" ID="ID_1854552810" MODIFIED="1333423084451" TEXT="And I&apos;m not duplicating things"/>
</node>
<node CREATED="1333424542174" ID="ID_1103335403" MODIFIED="1333424559141" TEXT="What&apos;s the justification behind starting at 0 in AlgNot?">
<node CREATED="1333425439290" ID="ID_147302894" MODIFIED="1333425452624" TEXT="I need to mention this in the comments somewhere"/>
<node CREATED="1333425453482" ID="ID_5544505" MODIFIED="1333425464829" TEXT="That the 1st coordinate should be 0"/>
<node CREATED="1333425465072" ID="ID_711541509" MODIFIED="1333425467894" TEXT="Where though?"/>
<node CREATED="1333425468086" ID="ID_1341078430" MODIFIED="1333426025472" TEXT="How do I specify such a convention? That the 1st square will have value 0?"/>
<node CREATED="1333426321285" ID="ID_567724253" MODIFIED="1333426339669" TEXT="See for NoRulesBoard, this is irrelevant, as there&apos;s no reference point"/>
<node CREATED="1333426339880" ID="ID_631184559" MODIFIED="1333426375720" TEXT="For RectangularBoard is it, because there are only certain valid squares"/>
<node CREATED="1333426375899" ID="ID_1125177690" MODIFIED="1333426383195" TEXT="So how to specify this?"/>
<node CREATED="1333426384011" ID="ID_1666552540" MODIFIED="1333426403921" TEXT="Because AlgNot pair extends pair, it&apos;s not necessarily related to rect board"/>
<node CREATED="1333426404129" ID="ID_1441089951" MODIFIED="1333426428688" TEXT="So in pair if I say that (0,0) will be used to refer to the first square in either direction, will that work?"/>
<node CREATED="1333426428880" ID="ID_109599859" MODIFIED="1333426433249" TEXT="Can I specify that?"/>
<node CREATED="1333426720174" ID="ID_1680585364" MODIFIED="1333426729020" TEXT="So Boards should expect that pairs will start at (0,0)"/>
<node CREATED="1333426729666" ID="ID_698245369" MODIFIED="1333427080870" TEXT="AlgNot will be used on Rectangular boards presumably, so it knows to set it to (0,0)?"/>
</node>
<node CREATED="1333420626489" ID="ID_163811399" MODIFIED="1333420630640" TEXT="Finish documentation...">
<node CREATED="1333420635822" ID="ID_266828046" MODIFIED="1333420638762" TEXT="Add overrides..."/>
<node CREATED="1333425657432" ID="ID_34575792" MODIFIED="1333425660361" TEXT="Add assertions?"/>
</node>
</node>
</node>
<node CREATED="1333424241981" ID="ID_513280927" MODIFIED="1333424265392" POSITION="right" TEXT="I don&apos;t think it&apos;s necessary to create a decorator for Pair because it&apos;s not going to be changed at runtime or layered much"/>
<node CREATED="1333427215063" ID="ID_1610085056" MODIFIED="1333427217177" POSITION="right" TEXT="Todo">
<node CREATED="1333427218101" ID="ID_497862954" MODIFIED="1333427231025" TEXT="Sort out this 0-indexed position thing">
<node CREATED="1333427883578" ID="ID_1723798694" MODIFIED="1333427903830" TEXT="OK, so if I just use a comment in Pair"/>
<node CREATED="1333427888981" ID="ID_1950455477" MODIFIED="1333427899309" TEXT="I would say that we assume that the 1st position is (0,0)"/>
<node CREATED="1333427904781" ID="ID_398291758" MODIFIED="1333427965797" TEXT="But this doesn&apos;t make sense on the NoRules board"/>
<node CREATED="1333427966076" ID="ID_626947207" MODIFIED="1333427975320" TEXT="Still, just use a comment"/>
<node CREATED="1333428909174" ID="ID_1237470780" MODIFIED="1333428910112" TEXT="Done."/>
</node>
<node CREATED="1333427231245" ID="ID_456346579" MODIFIED="1333428907330" TEXT="Set up move">
<node CREATED="1333428904484" ID="ID_827619918" MODIFIED="1333428905689" TEXT=" Done."/>
</node>
<node CREATED="1333427991997" ID="ID_1756809902" MODIFIED="1333427995298" TEXT="Finish AlgNot">
<node CREATED="1333428466754" ID="ID_845925196" MODIFIED="1333428473795" TEXT="Hmm, it can&apos;t support negative values"/>
<node CREATED="1333428473974" ID="ID_1586487934" MODIFIED="1333428480964" TEXT="Should I have an unsupported thing?"/>
<node CREATED="1333428481143" ID="ID_633897626" MODIFIED="1333428484317" TEXT="Maybe..."/>
<node CREATED="1333428508713" ID="ID_1530402858" MODIFIED="1333428519542" TEXT="So I&apos;d need a separate constructor that prevents negative numbers"/>
<node CREATED="1333428530889" ID="ID_653956034" MODIFIED="1333428533616" TEXT="Hmm..."/>
<node CREATED="1333428548348" ID="ID_1716187048" MODIFIED="1333428563121" TEXT="Still keep the same underlying, it&apos;s still better than duplicating"/>
<node CREATED="1333428650557" ID="ID_692415339" MODIFIED="1333428659427" TEXT="Wait, isn&apos;t this going to die when we get to moves?"/>
<node CREATED="1333428659629" ID="ID_1356437846" MODIFIED="1333428707964" TEXT="Because when a move happens..."/>
<node CREATED="1333428708484" ID="ID_573720668" MODIFIED="1333428712582" TEXT="The pairs could be anything!"/>
<node CREATED="1333428936146" ID="ID_133269903" MODIFIED="1333428941427" TEXT="Sigh, this is an ugly issue..."/>
<node CREATED="1333428941915" ID="ID_289457431" MODIFIED="1333429048440" TEXT="Because a Pair is different to a Square..."/>
</node>
<node CREATED="1333427291263" ID="ID_658071296" MODIFIED="1333427350712" TEXT="Finish documentation"/>
<node CREATED="1333427350931" ID="ID_1355822502" MODIFIED="1333427353443" TEXT="Write tests"/>
<node CREATED="1333427239066" ID="ID_1197318908" MODIFIED="1333428920667" TEXT="See what this overflow thing is in 2DCGPair">
<node CREATED="1333427395113" ID="ID_1944267555" MODIFIED="1333427399276" TEXT="Consider using Number instead"/>
<node CREATED="1333427979253" ID="ID_1925655708" MODIFIED="1333427984105" TEXT="Maybe look into this a LOT later"/>
</node>
</node>
<node CREATED="1333429082860" ID="ID_1650994815" MODIFIED="1333429092974" POSITION="right" TEXT="AlgNotPair issue">
<node CREATED="1333429094067" ID="ID_1174428973" MODIFIED="1333429911839" TEXT="Does this mean reintroducing squares?"/>
<node CREATED="1333429912046" ID="ID_183987197" MODIFIED="1333429937172" TEXT="Well, I just realised I&apos;ll need a distance method to work out distances between them"/>
<node CREATED="1333429937411" ID="ID_789424250" MODIFIED="1333429953363" TEXT="OK, so if I have squares, what does that change?"/>
<node CREATED="1333429953589" ID="ID_1326743747" MODIFIED="1333429970643" TEXT="The only reason I didn&apos;t want squares was they were achieving nothing"/>
<node CREATED="1333429970813" ID="ID_1099761370" MODIFIED="1333429978668" TEXT="But here I have examples where the do achieve something"/>
<node CREATED="1333430026444" ID="ID_601432283" MODIFIED="1333430029977" TEXT="What would this change?">
<node CREATED="1333430030916" ID="ID_1579304850" MODIFIED="1333430031616" TEXT="Move"/>
<node CREATED="1333430031805" ID="ID_1561423294" MODIFIED="1333430036868" TEXT="doMove"/>
<node CREATED="1333430037090" ID="ID_1887548500" MODIFIED="1333430052018" TEXT="That&apos;s about it?"/>
<node CREATED="1333430053918" ID="ID_1774751857" MODIFIED="1333430055227" TEXT="Yep."/>
<node CREATED="1333430057700" ID="ID_1309875752" MODIFIED="1333430073741" TEXT="And could I then introduce the no-negatives rule?"/>
<node CREATED="1333430074621" ID="ID_435911814" MODIFIED="1333430083414" TEXT="Well...yes, I suppose I could!"/>
</node>
</node>
</node>
</map>
