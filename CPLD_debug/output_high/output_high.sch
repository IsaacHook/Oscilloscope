<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_12" />
        <signal name="XLXN_19" />
        <signal name="XLXN_11" />
        <port polarity="Input" name="XLXN_12" />
        <port polarity="Output" name="XLXN_11" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="XLXN_12" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="XLXN_19" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_12">
            <wire x2="1440" y1="1200" y2="1200" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1232" y="1200" name="XLXN_12" orien="R180" />
        <iomarker fontsize="28" x="2448" y="1200" name="XLXN_11" orien="R0" />
        <instance x="1440" y="1232" name="XLXI_12" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="2224" y1="1200" y2="1200" x1="1920" />
            <wire x2="2448" y1="1200" y2="1200" x1="2224" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1696" y1="1200" y2="1200" x1="1664" />
        </branch>
        <instance x="1696" y="1232" name="XLXI_14" orien="R0" />
    </sheet>
</drawing>