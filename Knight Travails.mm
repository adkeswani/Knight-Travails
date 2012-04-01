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
<node CREATED="1333256694560" ID="ID_506412180" MODIFIED="1333256701587" TEXT="Is Move actually necessary?">
<node CREATED="1333258177661" ID="ID_273075049" MODIFIED="1333258422902" TEXT="Pieces will move based upon the results of some method"/>
<node CREATED="1333258423111" ID="ID_368555588" MODIFIED="1333258437154" TEXT="These need to be passed to the Board to see if they&apos;re valid"/>
<node CREATED="1333258437361" ID="ID_817037670" MODIFIED="1333258903410" TEXT="Which will then create a new square or return null if it&apos;s not"/>
<node CREATED="1333258903861" ID="ID_1021557005" MODIFIED="1333258969332" TEXT="Move is more abstracted, good for an interface, in case there&apos;s something where it isn&apos;t x,y"/>
<node CREATED="1333259027454" ID="ID_89656082" MODIFIED="1333259040021" TEXT="I think Pieces will have factory method for Moves"/>
</node>
</node>
</node>
</map>
