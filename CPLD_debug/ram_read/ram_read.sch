<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_119" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="XLXN_123" />
        <signal name="XLXN_2" />
        <signal name="XLXN_1" />
        <signal name="XLXN_124" />
        <signal name="RAM_READ_OUT" />
        <signal name="CLEAR_COUNT" />
        <signal name="ENABLE_COUNT" />
        <signal name="FILL_COMPLETE" />
        <signal name="INMUX1" />
        <signal name="INMUX2" />
        <signal name="SLOW_CLK" />
        <signal name="COUNTER_CLK" />
        <signal name="XLXN_133" />
        <signal name="ENABLE" />
        <signal name="XLXN_135" />
        <signal name="XLXN_103" />
        <signal name="XLXN_137" />
        <signal name="FAST_CLK" />
        <port polarity="Output" name="XLXN_2" />
        <port polarity="Input" name="XLXN_1" />
        <port polarity="Output" name="RAM_READ_OUT" />
        <port polarity="Output" name="CLEAR_COUNT" />
        <port polarity="Output" name="ENABLE_COUNT" />
        <port polarity="Output" name="FILL_COMPLETE" />
        <port polarity="Input" name="SLOW_CLK" />
        <port polarity="Output" name="COUNTER_CLK" />
        <port polarity="Input" name="ENABLE" />
        <port polarity="Input" name="FAST_CLK" />
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
        <block symbolname="or2" name="XLXI_76">
            <blockpin signalname="XLXN_123" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
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
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_80">
            <blockpin signalname="XLXN_122" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_81">
            <blockpin signalname="XLXN_123" name="G" />
        </block>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="XLXN_103" name="I0" />
            <blockpin signalname="ENABLE" name="I1" />
            <blockpin signalname="CLEAR_COUNT" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="XLXN_103" name="I0" />
            <blockpin signalname="FILL_COMPLETE" name="I1" />
            <blockpin signalname="ENABLE_COUNT" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="XLXN_103" name="I" />
            <blockpin signalname="RAM_READ_OUT" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_47">
            <blockpin signalname="FAST_CLK" name="I0" />
            <blockpin signalname="RAM_READ_OUT" name="I1" />
            <blockpin signalname="INMUX1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_48">
            <blockpin signalname="XLXN_103" name="I0" />
            <blockpin signalname="SLOW_CLK" name="I1" />
            <blockpin signalname="INMUX2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_49">
            <blockpin signalname="INMUX2" name="I0" />
            <blockpin signalname="INMUX1" name="I1" />
            <blockpin signalname="COUNTER_CLK" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_46">
            <blockpin signalname="ENABLE" name="I" />
            <blockpin signalname="FILL_COMPLETE" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_67">
            <blockpin signalname="XLXN_103" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="416" name="XLXI_76" orien="R0" />
        <branch name="XLXN_119">
            <wire x2="1424" y1="320" y2="320" x1="1392" />
        </branch>
        <instance x="1424" y="448" name="XLXI_77" orien="R0" />
        <branch name="XLXN_120">
            <wire x2="1712" y1="352" y2="352" x1="1680" />
        </branch>
        <instance x="1712" y="384" name="XLXI_78" orien="R0" />
        <branch name="XLXN_121">
            <wire x2="1968" y1="352" y2="352" x1="1936" />
        </branch>
        <instance x="1968" y="384" name="XLXI_79" orien="R0" />
        <branch name="XLXN_122">
            <wire x2="1424" y1="384" y2="416" x1="1424" />
        </branch>
        <instance x="1360" y="544" name="XLXI_80" orien="R0" />
        <branch name="XLXN_123">
            <wire x2="1136" y1="352" y2="384" x1="1136" />
        </branch>
        <instance x="1072" y="512" name="XLXI_81" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="2224" y1="352" y2="352" x1="2192" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="1136" y1="288" y2="288" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="2224" y="352" name="XLXN_2" orien="R0" />
        <iomarker fontsize="28" x="1104" y="288" name="XLXN_1" orien="R180" />
        <instance x="2352" y="1168" name="XLXI_1" orien="R0" />
        <instance x="2352" y="1392" name="XLXI_2" orien="R0" />
        <instance x="2368" y="1536" name="XLXI_7" orien="R0" />
        <branch name="RAM_READ_OUT">
            <wire x2="2704" y1="1680" y2="1680" x1="2000" />
            <wire x2="2000" y1="1680" y2="1840" x1="2000" />
            <wire x2="2080" y1="1840" y2="1840" x1="2000" />
            <wire x2="2704" y1="1504" y2="1504" x1="2592" />
            <wire x2="3152" y1="1504" y2="1504" x1="2704" />
            <wire x2="2704" y1="1504" y2="1680" x1="2704" />
        </branch>
        <branch name="CLEAR_COUNT">
            <wire x2="2640" y1="1072" y2="1072" x1="2608" />
        </branch>
        <branch name="ENABLE_COUNT">
            <wire x2="2640" y1="1296" y2="1296" x1="2608" />
        </branch>
        <branch name="FILL_COMPLETE">
            <wire x2="2208" y1="768" y2="768" x1="2064" />
            <wire x2="2480" y1="768" y2="768" x1="2208" />
            <wire x2="2208" y1="768" y2="1264" x1="2208" />
            <wire x2="2352" y1="1264" y2="1264" x1="2208" />
        </branch>
        <instance x="2080" y="1968" name="XLXI_47" orien="R0" />
        <instance x="2080" y="2176" name="XLXI_48" orien="R0" />
        <instance x="2592" y="2080" name="XLXI_49" orien="R0" />
        <branch name="INMUX1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1952" type="branch" />
            <wire x2="2352" y1="1872" y2="1872" x1="2336" />
            <wire x2="2352" y1="1872" y2="1952" x1="2352" />
            <wire x2="2480" y1="1952" y2="1952" x1="2352" />
            <wire x2="2592" y1="1952" y2="1952" x1="2480" />
        </branch>
        <branch name="INMUX2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="2016" type="branch" />
            <wire x2="2352" y1="2080" y2="2080" x1="2336" />
            <wire x2="2352" y1="2016" y2="2080" x1="2352" />
            <wire x2="2480" y1="2016" y2="2016" x1="2352" />
            <wire x2="2592" y1="2016" y2="2016" x1="2480" />
        </branch>
        <branch name="SLOW_CLK">
            <wire x2="2080" y1="2048" y2="2048" x1="1536" />
        </branch>
        <instance x="1840" y="800" name="XLXI_46" orien="R0" />
        <branch name="COUNTER_CLK">
            <wire x2="3008" y1="1984" y2="1984" x1="2848" />
        </branch>
        <branch name="ENABLE">
            <wire x2="1776" y1="1040" y2="1040" x1="928" />
            <wire x2="2352" y1="1040" y2="1040" x1="1776" />
            <wire x2="1840" y1="768" y2="768" x1="1776" />
            <wire x2="1776" y1="768" y2="1040" x1="1776" />
        </branch>
        <instance x="2272" y="1632" name="XLXI_67" orien="R0" />
        <branch name="XLXN_103">
            <wire x2="2080" y1="1488" y2="1488" x1="2064" />
            <wire x2="2336" y1="1488" y2="1488" x1="2080" />
            <wire x2="2336" y1="1488" y2="1504" x1="2336" />
            <wire x2="2368" y1="1504" y2="1504" x1="2336" />
            <wire x2="2064" y1="1488" y2="2112" x1="2064" />
            <wire x2="2080" y1="2112" y2="2112" x1="2064" />
            <wire x2="2352" y1="1104" y2="1104" x1="2336" />
            <wire x2="2336" y1="1104" y2="1328" x1="2336" />
            <wire x2="2352" y1="1328" y2="1328" x1="2336" />
            <wire x2="2336" y1="1328" y2="1488" x1="2336" />
        </branch>
        <branch name="FAST_CLK">
            <wire x2="1792" y1="2512" y2="2512" x1="1520" />
            <wire x2="2080" y1="1904" y2="1904" x1="1792" />
            <wire x2="1792" y1="1904" y2="2512" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1504" name="RAM_READ_OUT" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1072" name="CLEAR_COUNT" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1296" name="ENABLE_COUNT" orien="R0" />
        <iomarker fontsize="28" x="2480" y="768" name="FILL_COMPLETE" orien="R0" />
        <iomarker fontsize="28" x="1520" y="2512" name="FAST_CLK" orien="R180" />
        <iomarker fontsize="28" x="1536" y="2048" name="SLOW_CLK" orien="R180" />
        <iomarker fontsize="28" x="3008" y="1984" name="COUNTER_CLK" orien="R0" />
        <iomarker fontsize="28" x="928" y="1040" name="ENABLE" orien="R180" />
    </sheet>
</drawing>