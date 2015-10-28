<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.0.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="at90usb">
<description>&lt;b&gt;Atmel AT90USB&lt;/b&gt;
&lt;p&gt;Library for the Atmel AVR Microcontroller with USB interface. See &lt;a href="http://www.atmel.com"&gt;http://www.atmel.com&lt;/a&gt; for more info.
&lt;p&gt;Created by A. Schröder - &lt;a href="http://www.a-netz.de"&gt;http://www.a-netz.de&lt;/a&gt;
&lt;p&gt;Lizenz: LGPG - siehe &lt;a href="http://www.gnu.org"&gt;http://www.gnu.org&lt;/a&gt;&lt;/p&gt;</description>
<packages>
<package name="TQFP64">
<description>&lt;B&gt;Thin Plasic Quad Flat Package&lt;/B&gt;&lt;p&gt;
Updated from atml.lbr 17.01.2005 alf@cadsoft.de</description>
<wire x1="7.036" y1="7.036" x2="7.036" y2="-7.036" width="0.1524" layer="21"/>
<wire x1="7.036" y1="-7.036" x2="-7.036" y2="-7.036" width="0.1524" layer="21"/>
<wire x1="-7.036" y1="-7.036" x2="-7.036" y2="6.604" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="7.036" x2="7.036" y2="7.036" width="0.1524" layer="21"/>
<wire x1="-7.036" y1="6.604" x2="-6.604" y2="7.036" width="0.1524" layer="21"/>
<circle x="-5.8801" y="5.8801" radius="0.5589" width="0.1524" layer="21"/>
<smd name="64" x="-6" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="63" x="-5.2" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="62" x="-4.4" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="61" x="-3.6" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="60" x="-2.8" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="59" x="-2" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="58" x="-1.2" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="57" x="-0.4" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="56" x="0.4" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="55" x="1.2" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="54" x="2" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="53" x="2.8" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="52" x="3.6" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="51" x="4.4" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="50" x="5.2" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="49" x="6" y="7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="8" x="-7.8" y="0.4" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="7" x="-7.8" y="1.2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="6" x="-7.8" y="2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="5" x="-7.8" y="2.8" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="4" x="-7.8" y="3.6" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="3" x="-7.8" y="4.4" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="2" x="-7.8" y="5.2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="1" x="-7.8" y="6" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="9" x="-7.8" y="-0.4" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="10" x="-7.8" y="-1.2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="11" x="-7.8" y="-2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="12" x="-7.8" y="-2.8" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="13" x="-7.8" y="-3.6" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="14" x="-7.8" y="-4.4" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="15" x="-7.8" y="-5.2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="16" x="-7.8" y="-6" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="17" x="-6" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="18" x="-5.2" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="19" x="-4.4" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="20" x="-3.6" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="21" x="-2.8" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="22" x="-2" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="23" x="-1.2" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="24" x="-0.4" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="25" x="0.4" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="26" x="1.2" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="27" x="2" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="28" x="2.8" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="29" x="3.6" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="30" x="4.4" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="31" x="5.2" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="32" x="6" y="-7.8" dx="0.5588" dy="1.1938" layer="1"/>
<smd name="33" x="7.8" y="-6" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="34" x="7.8" y="-5.2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="35" x="7.8" y="-4.4" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="36" x="7.8" y="-3.6" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="37" x="7.8" y="-2.8" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="38" x="7.8" y="-2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="39" x="7.8" y="-1.2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="40" x="7.8" y="-0.4" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="41" x="7.8" y="0.4" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="42" x="7.8" y="1.2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="43" x="7.8" y="2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="44" x="7.8" y="2.8" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="45" x="7.8" y="3.6" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="46" x="7.8" y="4.4" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="47" x="7.8" y="5.2" dx="1.1938" dy="0.5588" layer="1"/>
<smd name="48" x="7.8" y="6" dx="1.1938" dy="0.5588" layer="1"/>
<text x="-5.715" y="8.9027" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.35" y="-1.8923" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-8.1788" y1="5.7651" x2="-7.0866" y2="6.2223" layer="51"/>
<rectangle x1="-8.1788" y1="4.9651" x2="-7.0866" y2="5.4223" layer="51"/>
<rectangle x1="-8.1788" y1="4.1651" x2="-7.0866" y2="4.6223" layer="51"/>
<rectangle x1="-8.1788" y1="3.3651" x2="-7.0866" y2="3.8223" layer="51"/>
<rectangle x1="-8.1788" y1="2.5651" x2="-7.0866" y2="3.0223" layer="51"/>
<rectangle x1="-8.1788" y1="1.7651" x2="-7.0866" y2="2.2223" layer="51"/>
<rectangle x1="-8.1788" y1="0.9651" x2="-7.0866" y2="1.4223" layer="51"/>
<rectangle x1="-8.1788" y1="0.1651" x2="-7.0866" y2="0.6223" layer="51"/>
<rectangle x1="-8.1788" y1="-0.6349" x2="-7.0866" y2="-0.1777" layer="51"/>
<rectangle x1="-8.1788" y1="-1.4349" x2="-7.0866" y2="-0.9777" layer="51"/>
<rectangle x1="-8.1788" y1="-2.2349" x2="-7.0866" y2="-1.7777" layer="51"/>
<rectangle x1="-8.1788" y1="-3.0349" x2="-7.0866" y2="-2.5777" layer="51"/>
<rectangle x1="-8.1788" y1="-3.8349" x2="-7.0866" y2="-3.3777" layer="51"/>
<rectangle x1="-8.1788" y1="-4.6349" x2="-7.0866" y2="-4.1777" layer="51"/>
<rectangle x1="-8.1788" y1="-5.4349" x2="-7.0866" y2="-4.9777" layer="51"/>
<rectangle x1="-8.1788" y1="-6.2349" x2="-7.0866" y2="-5.7777" layer="51"/>
<rectangle x1="-6.5398" y1="-7.8613" x2="-5.4476" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="-5.7398" y1="-7.8613" x2="-4.6476" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="-4.9398" y1="-7.8613" x2="-3.8476" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="-4.1398" y1="-7.8613" x2="-3.0476" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="-3.3398" y1="-7.8613" x2="-2.2476" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="-2.5398" y1="-7.8613" x2="-1.4476" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="-1.7398" y1="-7.8613" x2="-0.6476" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="-0.9398" y1="-7.8613" x2="0.1524" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="-0.1398" y1="-7.8613" x2="0.9524" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="0.6602" y1="-7.8613" x2="1.7524" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="1.4602" y1="-7.8613" x2="2.5524" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="2.2602" y1="-7.8613" x2="3.3524" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="3.0602" y1="-7.8613" x2="4.1524" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="3.8602" y1="-7.8613" x2="4.9524" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="4.6602" y1="-7.8613" x2="5.7524" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="5.4602" y1="-7.8613" x2="6.5524" y2="-7.4041" layer="51" rot="R90"/>
<rectangle x1="7.0866" y1="-6.2223" x2="8.1788" y2="-5.7651" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="-5.4223" x2="8.1788" y2="-4.9651" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="-4.6223" x2="8.1788" y2="-4.1651" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="-3.8223" x2="8.1788" y2="-3.3651" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="-3.0223" x2="8.1788" y2="-2.5651" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="-2.2223" x2="8.1788" y2="-1.7651" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="-1.4223" x2="8.1788" y2="-0.9651" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="-0.6223" x2="8.1788" y2="-0.1651" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="0.1777" x2="8.1788" y2="0.6349" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="0.9777" x2="8.1788" y2="1.4349" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="1.7777" x2="8.1788" y2="2.2349" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="2.5777" x2="8.1788" y2="3.0349" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="3.3777" x2="8.1788" y2="3.8349" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="4.1777" x2="8.1788" y2="4.6349" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="4.9777" x2="8.1788" y2="5.4349" layer="51" rot="R180"/>
<rectangle x1="7.0866" y1="5.7777" x2="8.1788" y2="6.2349" layer="51" rot="R180"/>
<rectangle x1="5.4476" y1="7.4041" x2="6.5398" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="4.6476" y1="7.4041" x2="5.7398" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="3.8476" y1="7.4041" x2="4.9398" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="3.0476" y1="7.4041" x2="4.1398" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="2.2476" y1="7.4041" x2="3.3398" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="1.4476" y1="7.4041" x2="2.5398" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="0.6476" y1="7.4041" x2="1.7398" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="-0.1524" y1="7.4041" x2="0.9398" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="-0.9524" y1="7.4041" x2="0.1398" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="-1.7524" y1="7.4041" x2="-0.6602" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="-2.5524" y1="7.4041" x2="-1.4602" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="-3.3524" y1="7.4041" x2="-2.2602" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="-4.1524" y1="7.4041" x2="-3.0602" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="-4.9524" y1="7.4041" x2="-3.8602" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="-5.7524" y1="7.4041" x2="-4.6602" y2="7.8613" layer="51" rot="R270"/>
<rectangle x1="-6.5524" y1="7.4041" x2="-5.4602" y2="7.8613" layer="51" rot="R270"/>
</package>
<package name="MLF64">
<description>&lt;b&gt;64M1&lt;/b&gt; Micro Lead Frame package (MLF)</description>
<wire x1="-4.05" y1="4.4" x2="4.05" y2="4.4" width="0.254" layer="51"/>
<wire x1="4.05" y1="4.4" x2="4.4" y2="4.05" width="0.254" layer="21"/>
<wire x1="4.4" y1="4.05" x2="4.4" y2="-4.05" width="0.254" layer="51"/>
<wire x1="4.4" y1="-4.05" x2="4.05" y2="-4.4" width="0.254" layer="21"/>
<wire x1="4.05" y1="-4.4" x2="-4.05" y2="-4.4" width="0.254" layer="51"/>
<wire x1="-4.05" y1="-4.4" x2="-4.4" y2="-4.05" width="0.254" layer="21"/>
<wire x1="-4.4" y1="-4.05" x2="-4.4" y2="4.05" width="0.254" layer="51"/>
<wire x1="-4.4" y1="4.05" x2="-4.05" y2="4.4" width="0.254" layer="21"/>
<circle x="-3.4" y="3.4" radius="0.2" width="0.254" layer="21"/>
<smd name="1" x="-4.325" y="3.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="2" x="-4.325" y="3.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="3" x="-4.325" y="2.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="4" x="-4.325" y="2.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="5" x="-4.325" y="1.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="6" x="-4.325" y="1.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="7" x="-4.325" y="0.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="8" x="-4.325" y="0.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="9" x="-4.325" y="-0.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="10" x="-4.325" y="-0.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="11" x="-4.325" y="-1.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="12" x="-4.325" y="-1.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="13" x="-4.325" y="-2.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="14" x="-4.325" y="-2.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="15" x="-4.325" y="-3.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="16" x="-4.325" y="-3.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="17" x="-3.75" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="18" x="-3.25" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="19" x="-2.75" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="20" x="-2.25" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="21" x="-1.75" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="22" x="-1.25" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="23" x="-0.75" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="24" x="-0.25" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="25" x="0.25" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="26" x="0.75" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="27" x="1.25" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="28" x="1.75" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="29" x="2.25" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="30" x="2.75" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="31" x="3.25" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="32" x="3.75" y="-4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="33" x="4.325" y="-3.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="34" x="4.325" y="-3.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="35" x="4.325" y="-2.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="36" x="4.325" y="-2.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="37" x="4.325" y="-1.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="38" x="4.325" y="-1.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="39" x="4.325" y="-0.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="40" x="4.325" y="-0.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="41" x="4.325" y="0.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="42" x="4.325" y="0.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="43" x="4.325" y="1.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="44" x="4.325" y="1.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="45" x="4.325" y="2.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="46" x="4.325" y="2.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="47" x="4.325" y="3.25" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="48" x="4.325" y="3.75" dx="0.7" dy="0.3" layer="1" roundness="50"/>
<smd name="49" x="3.75" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="50" x="3.25" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="51" x="2.75" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="52" x="2.25" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="53" x="1.75" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="54" x="1.25" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="55" x="0.75" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="56" x="0.25" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="57" x="-0.25" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="58" x="-0.75" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="59" x="-1.25" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="60" x="-1.75" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="61" x="-2.25" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="62" x="-2.75" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="63" x="-3.25" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<smd name="64" x="-3.75" y="4.325" dx="0.3" dy="0.7" layer="1" roundness="50"/>
<text x="-3.302" y="0.558" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.302" y="-1.855" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.5" y1="3.625" x2="-4" y2="3.875" layer="51"/>
<rectangle x1="-4.5" y1="3.125" x2="-4" y2="3.375" layer="51"/>
<rectangle x1="-4.5" y1="2.625" x2="-4" y2="2.875" layer="51"/>
<rectangle x1="-4.5" y1="2.125" x2="-4" y2="2.375" layer="51"/>
<rectangle x1="-4.5" y1="1.625" x2="-4" y2="1.875" layer="51"/>
<rectangle x1="-4.5" y1="1.125" x2="-4" y2="1.375" layer="51"/>
<rectangle x1="-4.5" y1="0.625" x2="-4" y2="0.875" layer="51"/>
<rectangle x1="-4.5" y1="0.125" x2="-4" y2="0.375" layer="51"/>
<rectangle x1="-4.5" y1="-0.375" x2="-4" y2="-0.125" layer="51"/>
<rectangle x1="-4.5" y1="-0.875" x2="-4" y2="-0.625" layer="51"/>
<rectangle x1="-4.5" y1="-1.375" x2="-4" y2="-1.125" layer="51"/>
<rectangle x1="-4.5" y1="-1.875" x2="-4" y2="-1.625" layer="51"/>
<rectangle x1="-4.5" y1="-2.375" x2="-4" y2="-2.125" layer="51"/>
<rectangle x1="-4.5" y1="-2.875" x2="-4" y2="-2.625" layer="51"/>
<rectangle x1="-4.5" y1="-3.375" x2="-4" y2="-3.125" layer="51"/>
<rectangle x1="-4.5" y1="-3.875" x2="-4" y2="-3.625" layer="51"/>
<rectangle x1="-3.875" y1="-4.5" x2="-3.625" y2="-4" layer="51"/>
<rectangle x1="-3.375" y1="-4.5" x2="-3.125" y2="-4" layer="51"/>
<rectangle x1="-2.875" y1="-4.5" x2="-2.625" y2="-4" layer="51"/>
<rectangle x1="-2.375" y1="-4.5" x2="-2.125" y2="-4" layer="51"/>
<rectangle x1="-1.875" y1="-4.5" x2="-1.625" y2="-4" layer="51"/>
<rectangle x1="-1.375" y1="-4.5" x2="-1.125" y2="-4" layer="51"/>
<rectangle x1="-0.875" y1="-4.5" x2="-0.625" y2="-4" layer="51"/>
<rectangle x1="-0.375" y1="-4.5" x2="-0.125" y2="-4" layer="51"/>
<rectangle x1="0.125" y1="-4.5" x2="0.375" y2="-4" layer="51"/>
<rectangle x1="0.625" y1="-4.5" x2="0.875" y2="-4" layer="51"/>
<rectangle x1="1.125" y1="-4.5" x2="1.375" y2="-4" layer="51"/>
<rectangle x1="1.625" y1="-4.5" x2="1.875" y2="-4" layer="51"/>
<rectangle x1="2.125" y1="-4.5" x2="2.375" y2="-4" layer="51"/>
<rectangle x1="2.625" y1="-4.5" x2="2.875" y2="-4" layer="51"/>
<rectangle x1="3.125" y1="-4.5" x2="3.375" y2="-4" layer="51"/>
<rectangle x1="3.625" y1="-4.5" x2="3.875" y2="-4" layer="51"/>
<rectangle x1="4" y1="-3.875" x2="4.5" y2="-3.625" layer="51"/>
<rectangle x1="4" y1="-3.375" x2="4.5" y2="-3.125" layer="51"/>
<rectangle x1="4" y1="-2.875" x2="4.5" y2="-2.625" layer="51"/>
<rectangle x1="4" y1="-2.375" x2="4.5" y2="-2.125" layer="51"/>
<rectangle x1="4" y1="-1.875" x2="4.5" y2="-1.625" layer="51"/>
<rectangle x1="4" y1="-1.375" x2="4.5" y2="-1.125" layer="51"/>
<rectangle x1="4" y1="-0.875" x2="4.5" y2="-0.625" layer="51"/>
<rectangle x1="4" y1="-0.375" x2="4.5" y2="-0.125" layer="51"/>
<rectangle x1="4" y1="0.125" x2="4.5" y2="0.375" layer="51"/>
<rectangle x1="4" y1="0.625" x2="4.5" y2="0.875" layer="51"/>
<rectangle x1="4" y1="1.125" x2="4.5" y2="1.375" layer="51"/>
<rectangle x1="4" y1="1.625" x2="4.5" y2="1.875" layer="51"/>
<rectangle x1="4" y1="2.125" x2="4.5" y2="2.375" layer="51"/>
<rectangle x1="4" y1="2.625" x2="4.5" y2="2.875" layer="51"/>
<rectangle x1="4" y1="3.125" x2="4.5" y2="3.375" layer="51"/>
<rectangle x1="4" y1="3.625" x2="4.5" y2="3.875" layer="51"/>
<rectangle x1="3.625" y1="4" x2="3.875" y2="4.5" layer="51"/>
<rectangle x1="3.125" y1="4" x2="3.375" y2="4.5" layer="51"/>
<rectangle x1="2.625" y1="4" x2="2.875" y2="4.5" layer="51"/>
<rectangle x1="2.125" y1="4" x2="2.375" y2="4.5" layer="51"/>
<rectangle x1="1.625" y1="4" x2="1.875" y2="4.5" layer="51"/>
<rectangle x1="1.125" y1="4" x2="1.375" y2="4.5" layer="51"/>
<rectangle x1="0.625" y1="4" x2="0.875" y2="4.5" layer="51"/>
<rectangle x1="0.125" y1="4" x2="0.375" y2="4.5" layer="51"/>
<rectangle x1="-0.375" y1="4" x2="-0.125" y2="4.5" layer="51"/>
<rectangle x1="-0.875" y1="4" x2="-0.625" y2="4.5" layer="51"/>
<rectangle x1="-1.375" y1="4" x2="-1.125" y2="4.5" layer="51"/>
<rectangle x1="-1.875" y1="4" x2="-1.625" y2="4.5" layer="51"/>
<rectangle x1="-2.375" y1="4" x2="-2.125" y2="4.5" layer="51"/>
<rectangle x1="-2.875" y1="4" x2="-2.625" y2="4.5" layer="51"/>
<rectangle x1="-3.375" y1="4" x2="-3.125" y2="4.5" layer="51"/>
<rectangle x1="-3.875" y1="4" x2="-3.625" y2="4.5" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="AT90USB">
<wire x1="-27.94" y1="55.88" x2="27.94" y2="55.88" width="0.254" layer="94"/>
<wire x1="27.94" y1="55.88" x2="27.94" y2="-58.42" width="0.254" layer="94"/>
<wire x1="27.94" y1="-58.42" x2="-27.94" y2="-58.42" width="0.254" layer="94"/>
<wire x1="-27.94" y1="-58.42" x2="-27.94" y2="55.88" width="0.254" layer="94"/>
<text x="-27.94" y="-60.96" size="1.778" layer="96">&gt;VALUE</text>
<text x="-27.94" y="57.15" size="1.778" layer="95">&gt;NAME</text>
<pin name="PF0(ADC0)" x="-33.02" y="-55.88" length="middle"/>
<pin name="PF1(ADC1)" x="-33.02" y="-53.34" length="middle"/>
<pin name="PF2(ADC2)" x="-33.02" y="-50.8" length="middle"/>
<pin name="PF3(ADC3)" x="-33.02" y="-48.26" length="middle"/>
<pin name="PF4(ADC4/TCK)" x="-33.02" y="-45.72" length="middle"/>
<pin name="PF5(ADC5/TMS)" x="-33.02" y="-43.18" length="middle"/>
<pin name="PF6(ADC6/TDO)" x="-33.02" y="-40.64" length="middle"/>
<pin name="PF7(ADC7/TDI)" x="-33.02" y="-38.1" length="middle"/>
<pin name="PE0(/WR)" x="33.02" y="-55.88" length="middle" rot="R180"/>
<pin name="PE1(/RD)" x="33.02" y="-53.34" length="middle" rot="R180"/>
<pin name="PE2(ALE/HWB)" x="33.02" y="-50.8" length="middle" rot="R180"/>
<pin name="PE3(IUID)" x="33.02" y="-48.26" length="middle" rot="R180"/>
<pin name="PE4(INT4/TOSC1)" x="33.02" y="-45.72" length="middle" rot="R180"/>
<pin name="PE5(INT5/TOSC2)" x="33.02" y="-43.18" length="middle" rot="R180"/>
<pin name="PE6(INT6/AIN0)" x="33.02" y="-40.64" length="middle" rot="R180"/>
<pin name="PE7(INT7/AIN1/UVCON)" x="33.02" y="-38.1" length="middle" rot="R180"/>
<pin name="PD7(T0)" x="33.02" y="-15.24" length="middle" rot="R180"/>
<pin name="PD6(T1)" x="33.02" y="-17.78" length="middle" rot="R180"/>
<pin name="PD5(XCK1)" x="33.02" y="-20.32" length="middle" rot="R180"/>
<pin name="PD4(ICP1)" x="33.02" y="-22.86" length="middle" rot="R180"/>
<pin name="PD3(TXD1/INT3)" x="33.02" y="-25.4" length="middle" rot="R180"/>
<pin name="PD2(RXD1/INT2)" x="33.02" y="-27.94" length="middle" rot="R180"/>
<pin name="PD1(OC.2B/SDA/INT1)" x="33.02" y="-30.48" length="middle" rot="R180"/>
<pin name="PD0(OC.0B/SCL/INT0)" x="33.02" y="-33.02" length="middle" rot="R180"/>
<pin name="PC7(A15/IC.3/CLK0)" x="33.02" y="7.62" length="middle" rot="R180"/>
<pin name="PC6(A14/OC.3A)" x="33.02" y="5.08" length="middle" rot="R180"/>
<pin name="PC5(A13/OC.3B)" x="33.02" y="2.54" length="middle" rot="R180"/>
<pin name="PC4(A12/OC.3C)" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="PC3(A11/T.3)" x="33.02" y="-2.54" length="middle" rot="R180"/>
<pin name="PC2(A10)" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="PC1(A9)" x="33.02" y="-7.62" length="middle" rot="R180"/>
<pin name="PC0(A8)" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="PB7(PCINT7/OC.0A/OC.1C)" x="33.02" y="30.48" length="middle" rot="R180"/>
<pin name="PB6(PCINT6/OC.1B)" x="33.02" y="27.94" length="middle" rot="R180"/>
<pin name="PB5(PCINT5/OC.1A)" x="33.02" y="25.4" length="middle" rot="R180"/>
<pin name="PB4(PCINT4/OC.2A)" x="33.02" y="22.86" length="middle" rot="R180"/>
<pin name="PB3(PDO/PCINT3/MISO)" x="33.02" y="20.32" length="middle" rot="R180"/>
<pin name="PB2(PDI/PCINT2/MOSI)" x="33.02" y="17.78" length="middle" rot="R180"/>
<pin name="PB1(PCINT1/SCK)" x="33.02" y="15.24" length="middle" rot="R180"/>
<pin name="PB0(SS/PCINT0)" x="33.02" y="12.7" length="middle" rot="R180"/>
<pin name="PA6(AD6)" x="33.02" y="50.8" length="middle" rot="R180"/>
<pin name="PA7(AD7)" x="33.02" y="53.34" length="middle" rot="R180"/>
<pin name="PA5(AD5)" x="33.02" y="48.26" length="middle" rot="R180"/>
<pin name="PA4(AD4)" x="33.02" y="45.72" length="middle" rot="R180"/>
<pin name="PA3(AD3)" x="33.02" y="43.18" length="middle" rot="R180"/>
<pin name="PA2(AD2)" x="33.02" y="40.64" length="middle" rot="R180"/>
<pin name="PA1(AD1)" x="33.02" y="38.1" length="middle" rot="R180"/>
<pin name="PA0(AD0)" x="33.02" y="35.56" length="middle" rot="R180"/>
<pin name="AVCC" x="-33.02" y="10.16" length="middle"/>
<pin name="GND@3" x="-33.02" y="7.62" length="middle" direction="pwr"/>
<pin name="AREF" x="-33.02" y="12.7" length="middle"/>
<pin name="XTAL1" x="-33.02" y="45.72" length="middle"/>
<pin name="XTAL2" x="-33.02" y="48.26" length="middle"/>
<pin name="VCC@2" x="-33.02" y="35.56" length="middle" direction="pwr"/>
<pin name="GND@1" x="-33.02" y="30.48" length="middle" direction="pwr"/>
<pin name="RESET" x="-33.02" y="53.34" length="middle" direction="in" function="dot"/>
<pin name="D+" x="-33.02" y="0" length="middle"/>
<pin name="D-" x="-33.02" y="-2.54" length="middle"/>
<pin name="UGND" x="-33.02" y="-10.16" length="middle" direction="pwr"/>
<pin name="UVCC" x="-33.02" y="-12.7" length="middle" direction="pwr"/>
<pin name="UCAP" x="-33.02" y="-15.24" length="middle" direction="pwr"/>
<pin name="VBUS" x="-33.02" y="-17.78" length="middle" direction="pwr"/>
<pin name="GND@2" x="-33.02" y="27.94" length="middle" direction="pwr"/>
<pin name="VCC@1" x="-33.02" y="38.1" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AT90USB1287-*" prefix="IC">
<description>&lt;b&gt;Atmel AT90USB1287&lt;/b&gt;
&lt;p&gt;AVR Microcontroller with USB Interface and 128kB Flash Memory</description>
<gates>
<gate name="G$1" symbol="AT90USB" x="0" y="0"/>
</gates>
<devices>
<device name="AU" package="TQFP64">
<connects>
<connect gate="G$1" pin="AREF" pad="62"/>
<connect gate="G$1" pin="AVCC" pad="64"/>
<connect gate="G$1" pin="D+" pad="5"/>
<connect gate="G$1" pin="D-" pad="4"/>
<connect gate="G$1" pin="GND@1" pad="22"/>
<connect gate="G$1" pin="GND@2" pad="53"/>
<connect gate="G$1" pin="GND@3" pad="63"/>
<connect gate="G$1" pin="PA0(AD0)" pad="51"/>
<connect gate="G$1" pin="PA1(AD1)" pad="50"/>
<connect gate="G$1" pin="PA2(AD2)" pad="49"/>
<connect gate="G$1" pin="PA3(AD3)" pad="48"/>
<connect gate="G$1" pin="PA4(AD4)" pad="47"/>
<connect gate="G$1" pin="PA5(AD5)" pad="46"/>
<connect gate="G$1" pin="PA6(AD6)" pad="45"/>
<connect gate="G$1" pin="PA7(AD7)" pad="44"/>
<connect gate="G$1" pin="PB0(SS/PCINT0)" pad="10"/>
<connect gate="G$1" pin="PB1(PCINT1/SCK)" pad="11"/>
<connect gate="G$1" pin="PB2(PDI/PCINT2/MOSI)" pad="12"/>
<connect gate="G$1" pin="PB3(PDO/PCINT3/MISO)" pad="13"/>
<connect gate="G$1" pin="PB4(PCINT4/OC.2A)" pad="14"/>
<connect gate="G$1" pin="PB5(PCINT5/OC.1A)" pad="15"/>
<connect gate="G$1" pin="PB6(PCINT6/OC.1B)" pad="16"/>
<connect gate="G$1" pin="PB7(PCINT7/OC.0A/OC.1C)" pad="17"/>
<connect gate="G$1" pin="PC0(A8)" pad="35"/>
<connect gate="G$1" pin="PC1(A9)" pad="36"/>
<connect gate="G$1" pin="PC2(A10)" pad="37"/>
<connect gate="G$1" pin="PC3(A11/T.3)" pad="38"/>
<connect gate="G$1" pin="PC4(A12/OC.3C)" pad="39"/>
<connect gate="G$1" pin="PC5(A13/OC.3B)" pad="40"/>
<connect gate="G$1" pin="PC6(A14/OC.3A)" pad="41"/>
<connect gate="G$1" pin="PC7(A15/IC.3/CLK0)" pad="42"/>
<connect gate="G$1" pin="PD0(OC.0B/SCL/INT0)" pad="25"/>
<connect gate="G$1" pin="PD1(OC.2B/SDA/INT1)" pad="26"/>
<connect gate="G$1" pin="PD2(RXD1/INT2)" pad="27"/>
<connect gate="G$1" pin="PD3(TXD1/INT3)" pad="28"/>
<connect gate="G$1" pin="PD4(ICP1)" pad="29"/>
<connect gate="G$1" pin="PD5(XCK1)" pad="30"/>
<connect gate="G$1" pin="PD6(T1)" pad="31"/>
<connect gate="G$1" pin="PD7(T0)" pad="32"/>
<connect gate="G$1" pin="PE0(/WR)" pad="33"/>
<connect gate="G$1" pin="PE1(/RD)" pad="34"/>
<connect gate="G$1" pin="PE2(ALE/HWB)" pad="43"/>
<connect gate="G$1" pin="PE3(IUID)" pad="9"/>
<connect gate="G$1" pin="PE4(INT4/TOSC1)" pad="18"/>
<connect gate="G$1" pin="PE5(INT5/TOSC2)" pad="19"/>
<connect gate="G$1" pin="PE6(INT6/AIN0)" pad="1"/>
<connect gate="G$1" pin="PE7(INT7/AIN1/UVCON)" pad="2"/>
<connect gate="G$1" pin="PF0(ADC0)" pad="61"/>
<connect gate="G$1" pin="PF1(ADC1)" pad="60"/>
<connect gate="G$1" pin="PF2(ADC2)" pad="59"/>
<connect gate="G$1" pin="PF3(ADC3)" pad="58"/>
<connect gate="G$1" pin="PF4(ADC4/TCK)" pad="57"/>
<connect gate="G$1" pin="PF5(ADC5/TMS)" pad="56"/>
<connect gate="G$1" pin="PF6(ADC6/TDO)" pad="55"/>
<connect gate="G$1" pin="PF7(ADC7/TDI)" pad="54"/>
<connect gate="G$1" pin="RESET" pad="20"/>
<connect gate="G$1" pin="UCAP" pad="7"/>
<connect gate="G$1" pin="UGND" pad="6"/>
<connect gate="G$1" pin="UVCC" pad="3"/>
<connect gate="G$1" pin="VBUS" pad="8"/>
<connect gate="G$1" pin="VCC@1" pad="21"/>
<connect gate="G$1" pin="VCC@2" pad="52"/>
<connect gate="G$1" pin="XTAL1" pad="24"/>
<connect gate="G$1" pin="XTAL2" pad="23"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MU" package="MLF64">
<connects>
<connect gate="G$1" pin="AREF" pad="62"/>
<connect gate="G$1" pin="AVCC" pad="64"/>
<connect gate="G$1" pin="D+" pad="5"/>
<connect gate="G$1" pin="D-" pad="4"/>
<connect gate="G$1" pin="GND@1" pad="22"/>
<connect gate="G$1" pin="GND@2" pad="53"/>
<connect gate="G$1" pin="GND@3" pad="63"/>
<connect gate="G$1" pin="PA0(AD0)" pad="51"/>
<connect gate="G$1" pin="PA1(AD1)" pad="50"/>
<connect gate="G$1" pin="PA2(AD2)" pad="49"/>
<connect gate="G$1" pin="PA3(AD3)" pad="48"/>
<connect gate="G$1" pin="PA4(AD4)" pad="47"/>
<connect gate="G$1" pin="PA5(AD5)" pad="46"/>
<connect gate="G$1" pin="PA6(AD6)" pad="45"/>
<connect gate="G$1" pin="PA7(AD7)" pad="44"/>
<connect gate="G$1" pin="PB0(SS/PCINT0)" pad="10"/>
<connect gate="G$1" pin="PB1(PCINT1/SCK)" pad="11"/>
<connect gate="G$1" pin="PB2(PDI/PCINT2/MOSI)" pad="12"/>
<connect gate="G$1" pin="PB3(PDO/PCINT3/MISO)" pad="13"/>
<connect gate="G$1" pin="PB4(PCINT4/OC.2A)" pad="14"/>
<connect gate="G$1" pin="PB5(PCINT5/OC.1A)" pad="15"/>
<connect gate="G$1" pin="PB6(PCINT6/OC.1B)" pad="16"/>
<connect gate="G$1" pin="PB7(PCINT7/OC.0A/OC.1C)" pad="17"/>
<connect gate="G$1" pin="PC0(A8)" pad="35"/>
<connect gate="G$1" pin="PC1(A9)" pad="36"/>
<connect gate="G$1" pin="PC2(A10)" pad="37"/>
<connect gate="G$1" pin="PC3(A11/T.3)" pad="38"/>
<connect gate="G$1" pin="PC4(A12/OC.3C)" pad="39"/>
<connect gate="G$1" pin="PC5(A13/OC.3B)" pad="40"/>
<connect gate="G$1" pin="PC6(A14/OC.3A)" pad="41"/>
<connect gate="G$1" pin="PC7(A15/IC.3/CLK0)" pad="42"/>
<connect gate="G$1" pin="PD0(OC.0B/SCL/INT0)" pad="25"/>
<connect gate="G$1" pin="PD1(OC.2B/SDA/INT1)" pad="26"/>
<connect gate="G$1" pin="PD2(RXD1/INT2)" pad="27"/>
<connect gate="G$1" pin="PD3(TXD1/INT3)" pad="28"/>
<connect gate="G$1" pin="PD4(ICP1)" pad="29"/>
<connect gate="G$1" pin="PD5(XCK1)" pad="30"/>
<connect gate="G$1" pin="PD6(T1)" pad="31"/>
<connect gate="G$1" pin="PD7(T0)" pad="32"/>
<connect gate="G$1" pin="PE0(/WR)" pad="33"/>
<connect gate="G$1" pin="PE1(/RD)" pad="34"/>
<connect gate="G$1" pin="PE2(ALE/HWB)" pad="43"/>
<connect gate="G$1" pin="PE3(IUID)" pad="9"/>
<connect gate="G$1" pin="PE4(INT4/TOSC1)" pad="18"/>
<connect gate="G$1" pin="PE5(INT5/TOSC2)" pad="19"/>
<connect gate="G$1" pin="PE6(INT6/AIN0)" pad="1"/>
<connect gate="G$1" pin="PE7(INT7/AIN1/UVCON)" pad="2"/>
<connect gate="G$1" pin="PF0(ADC0)" pad="61"/>
<connect gate="G$1" pin="PF1(ADC1)" pad="60"/>
<connect gate="G$1" pin="PF2(ADC2)" pad="59"/>
<connect gate="G$1" pin="PF3(ADC3)" pad="58"/>
<connect gate="G$1" pin="PF4(ADC4/TCK)" pad="57"/>
<connect gate="G$1" pin="PF5(ADC5/TMS)" pad="56"/>
<connect gate="G$1" pin="PF6(ADC6/TDO)" pad="55"/>
<connect gate="G$1" pin="PF7(ADC7/TDI)" pad="54"/>
<connect gate="G$1" pin="RESET" pad="20"/>
<connect gate="G$1" pin="UCAP" pad="7"/>
<connect gate="G$1" pin="UGND" pad="6"/>
<connect gate="G$1" pin="UVCC" pad="3"/>
<connect gate="G$1" pin="VBUS" pad="8"/>
<connect gate="G$1" pin="VCC@1" pad="21"/>
<connect gate="G$1" pin="VCC@2" pad="52"/>
<connect gate="G$1" pin="XTAL1" pad="24"/>
<connect gate="G$1" pin="XTAL2" pad="23"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="at90usb" deviceset="AT90USB1287-*" device="AU"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="58.42" y="63.5"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
