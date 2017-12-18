<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_103" />
        <signal name="XLXN_123" />
        <signal name="XLXN_158" />
        <signal name="XLXN_167" />
        <signal name="XLXN_183" />
        <signal name="XLXN_184" />
        <signal name="XLXN_186" />
        <signal name="RAM_READ_OUT" />
        <signal name="CLEAR_COUNT" />
        <signal name="ENABLE_COUNT" />
        <signal name="FILL_COMPLETE" />
        <signal name="INMUX1" />
        <signal name="INMUX2" />
        <signal name="SLOW_CLK" />
        <signal name="COUNTER_CLK" />
        <signal name="XLXN_195" />
        <signal name="FAST_CLK" />
        <signal name="XLXN_149" />
        <signal name="XLXN_119" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="ADC_CLK" />
        <signal name="XLXN_211" />
        <signal name="XLXN_212" />
        <signal name="RAM_READ_IN" />
        <signal name="XLXN_215" />
        <signal name="XLXN_217" />
        <signal name="XLXN_145" />
        <signal name="XLXN_138" />
        <signal name="XLXN_143" />
        <signal name="TRIGGER_IN" />
        <signal name="ENABLE" />
        <signal name="XLXN_142" />
        <signal name="XLXN_144" />
        <signal name="RAM_FULL" />
        <port polarity="Output" name="RAM_READ_OUT" />
        <port polarity="Output" name="CLEAR_COUNT" />
        <port polarity="Output" name="ENABLE_COUNT" />
        <port polarity="Output" name="FILL_COMPLETE" />
        <port polarity="Input" name="SLOW_CLK" />
        <port polarity="Output" name="COUNTER_CLK" />
        <port polarity="Input" name="FAST_CLK" />
        <port polarity="Output" name="ADC_CLK" />
        <port polarity="Input" name="RAM_READ_IN" />
        <port polarity="Input" name="TRIGGER_IN" />
        <port polarity="Input" name="ENABLE" />
        <port polarity="Input" name="RAM_FULL" />
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="fdcp">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="RAM_READ_IN" name="I0" />
            <blockpin signalname="XLXN_149" name="I1" />
            <blockpin signalname="CLEAR_COUNT" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="RAM_READ_IN" name="I0" />
            <blockpin signalname="FILL_COMPLETE" name="I1" />
            <blockpin signalname="ENABLE_COUNT" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="RAM_READ_IN" name="I" />
            <blockpin signalname="RAM_READ_OUT" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_47">
            <blockpin signalname="FAST_CLK" name="I0" />
            <blockpin signalname="RAM_READ_OUT" name="I1" />
            <blockpin signalname="INMUX1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_48">
            <blockpin signalname="RAM_READ_IN" name="I0" />
            <blockpin signalname="SLOW_CLK" name="I1" />
            <blockpin signalname="INMUX2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_49">
            <blockpin signalname="INMUX2" name="I0" />
            <blockpin signalname="INMUX1" name="I1" />
            <blockpin signalname="COUNTER_CLK" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_46">
            <blockpin signalname="XLXN_149" name="I" />
            <blockpin signalname="FILL_COMPLETE" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_76">
            <blockpin signalname="FAST_CLK" name="I0" />
            <blockpin signalname="RAM_READ_IN" name="I1" />
            <blockpin signalname="XLXN_119" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_77">
            <blockpin signalname="XLXN_122" name="I0" />
            <blockpin signalname="XLXN_119" name="I1" />
            <blockpin signalname="XLXN_120" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_78">
            <blockpin signalname="XLXN_120" name="I" />
            <blockpin signalname="XLXN_121" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_79">
            <blockpin signalname="XLXN_121" name="I" />
            <blockpin signalname="ADC_CLK" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_80">
            <blockpin signalname="XLXN_122" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_93">
            <blockpin signalname="XLXN_143" name="G" />
        </block>
        <block symbolname="fdcp" name="XLXI_84">
            <blockpin signalname="ENABLE" name="C" />
            <blockpin signalname="XLXN_145" name="CLR" />
            <blockpin signalname="XLXN_142" name="D" />
            <blockpin signalname="XLXN_144" name="PRE" />
            <blockpin signalname="XLXN_138" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_91">
            <blockpin signalname="XLXN_142" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_92">
            <blockpin signalname="XLXN_144" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_90">
            <blockpin signalname="RAM_FULL" name="I" />
            <blockpin signalname="XLXN_145" name="O" />
        </block>
        <block symbolname="fdcp" name="XLXI_85">
            <blockpin signalname="TRIGGER_IN" name="C" />
            <blockpin signalname="XLXN_145" name="CLR" />
            <blockpin signalname="XLXN_138" name="D" />
            <blockpin signalname="XLXN_143" name="PRE" />
            <blockpin signalname="XLXN_149" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2368" y="832" name="XLXI_1" orien="R0" />
        <instance x="2368" y="1056" name="XLXI_2" orien="R0" />
        <instance x="2384" y="1200" name="XLXI_7" orien="R0" />
        <branch name="RAM_READ_OUT">
            <wire x2="2720" y1="1344" y2="1344" x1="2016" />
            <wire x2="2016" y1="1344" y2="1504" x1="2016" />
            <wire x2="2096" y1="1504" y2="1504" x1="2016" />
            <wire x2="2720" y1="1168" y2="1168" x1="2608" />
            <wire x2="2720" y1="1168" y2="1344" x1="2720" />
            <wire x2="3200" y1="1168" y2="1168" x1="2720" />
        </branch>
        <branch name="CLEAR_COUNT">
            <wire x2="3200" y1="736" y2="736" x1="2624" />
        </branch>
        <branch name="ENABLE_COUNT">
            <wire x2="3200" y1="960" y2="960" x1="2624" />
        </branch>
        <branch name="FILL_COMPLETE">
            <wire x2="2224" y1="432" y2="432" x1="2080" />
            <wire x2="2224" y1="432" y2="928" x1="2224" />
            <wire x2="2368" y1="928" y2="928" x1="2224" />
            <wire x2="3200" y1="432" y2="432" x1="2224" />
        </branch>
        <instance x="2096" y="1632" name="XLXI_47" orien="R0" />
        <instance x="2096" y="1840" name="XLXI_48" orien="R0" />
        <instance x="2608" y="1744" name="XLXI_49" orien="R0" />
        <branch name="INMUX1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="1616" type="branch" />
            <wire x2="2368" y1="1536" y2="1536" x1="2352" />
            <wire x2="2368" y1="1536" y2="1616" x1="2368" />
            <wire x2="2496" y1="1616" y2="1616" x1="2368" />
            <wire x2="2608" y1="1616" y2="1616" x1="2496" />
        </branch>
        <branch name="INMUX2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="1680" type="branch" />
            <wire x2="2368" y1="1744" y2="1744" x1="2352" />
            <wire x2="2368" y1="1680" y2="1744" x1="2368" />
            <wire x2="2496" y1="1680" y2="1680" x1="2368" />
            <wire x2="2608" y1="1680" y2="1680" x1="2496" />
        </branch>
        <branch name="SLOW_CLK">
            <wire x2="2096" y1="1712" y2="1712" x1="1568" />
        </branch>
        <instance x="1856" y="464" name="XLXI_46" orien="R0" />
        <branch name="COUNTER_CLK">
            <wire x2="3200" y1="1648" y2="1648" x1="2864" />
        </branch>
        <branch name="FAST_CLK">
            <wire x2="1808" y1="2176" y2="2176" x1="1552" />
            <wire x2="2096" y1="2176" y2="2176" x1="1808" />
            <wire x2="2096" y1="1568" y2="1568" x1="1808" />
            <wire x2="1808" y1="1568" y2="2176" x1="1808" />
        </branch>
        <instance x="2096" y="2240" name="XLXI_76" orien="R0" />
        <branch name="XLXN_119">
            <wire x2="2384" y1="2144" y2="2144" x1="2352" />
        </branch>
        <instance x="2384" y="2272" name="XLXI_77" orien="R0" />
        <branch name="XLXN_120">
            <wire x2="2672" y1="2176" y2="2176" x1="2640" />
        </branch>
        <instance x="2672" y="2208" name="XLXI_78" orien="R0" />
        <branch name="XLXN_121">
            <wire x2="2928" y1="2176" y2="2176" x1="2896" />
        </branch>
        <instance x="2928" y="2208" name="XLXI_79" orien="R0" />
        <branch name="XLXN_122">
            <wire x2="2384" y1="2208" y2="2240" x1="2384" />
        </branch>
        <instance x="2320" y="2368" name="XLXI_80" orien="R0" />
        <branch name="ADC_CLK">
            <wire x2="3168" y1="2176" y2="2176" x1="3152" />
            <wire x2="3216" y1="2176" y2="2176" x1="3168" />
        </branch>
        <branch name="RAM_READ_IN">
            <wire x2="1696" y1="2112" y2="2112" x1="1520" />
            <wire x2="2096" y1="2112" y2="2112" x1="1696" />
            <wire x2="1696" y1="1168" y2="1776" x1="1696" />
            <wire x2="1696" y1="1776" y2="2112" x1="1696" />
            <wire x2="2096" y1="1776" y2="1776" x1="1696" />
            <wire x2="2352" y1="1168" y2="1168" x1="1696" />
            <wire x2="2384" y1="1168" y2="1168" x1="2352" />
            <wire x2="2368" y1="768" y2="768" x1="2352" />
            <wire x2="2352" y1="768" y2="992" x1="2352" />
            <wire x2="2368" y1="992" y2="992" x1="2352" />
            <wire x2="2352" y1="992" y2="1168" x1="2352" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2112" name="RAM_READ_IN" orien="R180" />
        <iomarker fontsize="28" x="1552" y="2176" name="FAST_CLK" orien="R180" />
        <iomarker fontsize="28" x="1568" y="1712" name="SLOW_CLK" orien="R180" />
        <iomarker fontsize="28" x="3200" y="1648" name="COUNTER_CLK" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1168" name="RAM_READ_OUT" orien="R0" />
        <iomarker fontsize="28" x="3200" y="960" name="ENABLE_COUNT" orien="R0" />
        <iomarker fontsize="28" x="3200" y="736" name="CLEAR_COUNT" orien="R0" />
        <iomarker fontsize="28" x="3200" y="432" name="FILL_COMPLETE" orien="R0" />
        <branch name="XLXN_149">
            <wire x2="1776" y1="432" y2="432" x1="1648" />
            <wire x2="1856" y1="432" y2="432" x1="1776" />
            <wire x2="1776" y1="432" y2="704" x1="1776" />
            <wire x2="2368" y1="704" y2="704" x1="1776" />
        </branch>
        <branch name="XLXN_138">
            <wire x2="1264" y1="432" y2="432" x1="1056" />
        </branch>
        <instance x="1104" y="256" name="XLXI_93" orien="R0" />
        <branch name="XLXN_143">
            <wire x2="1168" y1="48" y2="128" x1="1168" />
            <wire x2="1264" y1="48" y2="48" x1="1168" />
            <wire x2="1264" y1="48" y2="336" x1="1264" />
        </branch>
        <branch name="TRIGGER_IN">
            <wire x2="1264" y1="560" y2="560" x1="1232" />
        </branch>
        <instance x="672" y="688" name="XLXI_84" orien="R0" />
        <instance x="384" y="304" name="XLXI_91" orien="R0" />
        <instance x="528" y="272" name="XLXI_92" orien="R0" />
        <branch name="ENABLE">
            <wire x2="672" y1="560" y2="560" x1="496" />
        </branch>
        <branch name="XLXN_142">
            <wire x2="448" y1="304" y2="432" x1="448" />
            <wire x2="672" y1="432" y2="432" x1="448" />
        </branch>
        <branch name="XLXN_144">
            <wire x2="672" y1="64" y2="64" x1="592" />
            <wire x2="672" y1="64" y2="336" x1="672" />
            <wire x2="592" y1="64" y2="144" x1="592" />
        </branch>
        <branch name="RAM_FULL">
            <wire x2="256" y1="848" y2="848" x1="240" />
            <wire x2="272" y1="848" y2="848" x1="256" />
        </branch>
        <branch name="XLXN_145">
            <wire x2="672" y1="848" y2="848" x1="496" />
            <wire x2="736" y1="848" y2="848" x1="672" />
            <wire x2="1264" y1="848" y2="848" x1="736" />
            <wire x2="672" y1="656" y2="848" x1="672" />
            <wire x2="1264" y1="656" y2="848" x1="1264" />
        </branch>
        <instance x="272" y="880" name="XLXI_90" orien="R0" />
        <instance x="1264" y="688" name="XLXI_85" orien="R0" />
        <iomarker fontsize="28" x="1232" y="560" name="TRIGGER_IN" orien="R180" />
        <iomarker fontsize="28" x="496" y="560" name="ENABLE" orien="R180" />
        <iomarker fontsize="28" x="240" y="848" name="RAM_FULL" orien="R180" />
        <iomarker fontsize="28" x="3216" y="2176" name="ADC_CLK" orien="R0" />
    </sheet>
</drawing>