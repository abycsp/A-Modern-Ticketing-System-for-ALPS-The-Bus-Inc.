<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="ALLRECORDS" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE2" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT ALL BUS.BUS_TYPE, BUS.TOTAL_SEATS, 
PAYMENTS.PAYMENT_TYPE, PAYMENTS.AMOUNT, PAYMENTS.PAIDDATE, ROUTES.BUS_ID, 
ROUTES.ORIGIN, ROUTES.DESTINATION, CLASSSEATS.SCHEDDATE
FROM BUS, PAYMENTS, ROUTES, CLASSSEATS, SEATS
WHERE ((ROUTES.BUS_ID = BUS.BUS_ID)
 AND (CLASSSEATS.ROUTE_ID = ROUTES.ROUTE_ID)
 AND (PAYMENTS.SEAT_ID = SEATS.SEAT_ID)
 AND (SEATS.CLASS_ID = CLASSSEATS.CLASS_ID)) ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_BUS_TYPE">
        <displayInfo x="1.26746" y="1.94995" width="1.46521" height="0.61963"
        />
        <dataItem name="BUS_TYPE" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Bus Type">
          <dataDescriptor expression="BUS.BUS_TYPE"
           descriptiveExpression="BUS_TYPE" order="1" width="22" precision="6"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="TOTAL_SEATS" datatype="vchar2" columnOrder="12"
         width="50" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Total Seats">
          <dataDescriptor expression="BUS.TOTAL_SEATS"
           descriptiveExpression="TOTAL_SEATS" order="2" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
      <group name="G_PAYMENT_TYPE">
        <displayInfo x="1.23083" y="3.31958" width="1.53845" height="1.51929"
        />
        <dataItem name="PAYMENT_TYPE" datatype="vchar2" columnOrder="13"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Payment Type">
          <dataDescriptor expression="PAYMENTS.PAYMENT_TYPE"
           descriptiveExpression="PAYMENT_TYPE" order="3" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="AMOUNT" oracleDatatype="number" columnOrder="14"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Amount">
          <dataDescriptor expression="PAYMENTS.AMOUNT"
           descriptiveExpression="AMOUNT" order="4" width="22" precision="11"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PAIDDATE" datatype="date" oracleDatatype="date"
         columnOrder="15" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Paiddate">
          <dataDescriptor expression="PAYMENTS.PAIDDATE"
           descriptiveExpression="PAIDDATE" order="5" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BUS_ID" oracleDatatype="number" columnOrder="16"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Bus Id">
          <dataDescriptor expression="ROUTES.BUS_ID"
           descriptiveExpression="BUS_ID" order="6" width="22" precision="6"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ORIGIN" datatype="vchar2" columnOrder="17" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Origin">
          <dataDescriptor expression="ROUTES.ORIGIN"
           descriptiveExpression="ORIGIN" order="7" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DESTINATION" datatype="vchar2" columnOrder="18"
         width="50" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Destination">
          <dataDescriptor expression="ROUTES.DESTINATION"
           descriptiveExpression="DESTINATION" order="8" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="SCHEDDATE" datatype="date" oracleDatatype="date"
         columnOrder="19" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Scheddate">
          <dataDescriptor expression="CLASSSEATS.SCHEDDATE"
           descriptiveExpression="SCHEDDATE" order="9" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <location x="0.56250" y="2.00000"/>
      <frame name="M_G_BUS_TYPE_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="6.75000" height="0.56250"
        />
        <generalLayout verticalElasticity="variable"/>
        <repeatingFrame name="R_G_BUS_TYPE" source="G_BUS_TYPE"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.00000" width="6.75000"
           height="0.56250"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="solid" fillForegroundColor="r75g88b75"/>
          <field name="F_BUS_TYPE" source="BUS_TYPE" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Courier New" size="10"/>
            <geometryInfo x="0.68750" y="0.00000" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <frame name="M_G_PAYMENT_TYPE_GRPFR">
            <geometryInfo x="0.00000" y="0.18750" width="6.75000"
             height="0.37500"/>
            <generalLayout verticalElasticity="variable"/>
            <repeatingFrame name="R_G_PAYMENT_TYPE" source="G_PAYMENT_TYPE"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="0.37500" width="6.75000"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="solid"
               fillForegroundColor="r75g88b75"/>
              <field name="F_PAYMENT_TYPE" source="PAYMENT_TYPE"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="Courier New" size="10"/>
                <geometryInfo x="0.00000" y="0.37500" width="1.06250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_AMOUNT" source="AMOUNT" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="Courier New" size="10"/>
                <geometryInfo x="1.18750" y="0.37500" width="0.81250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PAIDDATE" source="PAIDDATE" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="Courier New" size="10"/>
                <geometryInfo x="2.12500" y="0.37500" width="0.81250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_BUS_ID" source="BUS_ID" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="Courier New" size="10"/>
                <geometryInfo x="3.06250" y="0.37500" width="0.68750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_ORIGIN" source="ORIGIN" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="Courier New" size="10"/>
                <geometryInfo x="3.87500" y="0.37500" width="0.87500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_DESTINATION" source="DESTINATION"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="Courier New" size="10"/>
                <geometryInfo x="4.87500" y="0.37500" width="0.93750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_SCHEDDATE" source="SCHEDDATE" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="Courier New" size="10"/>
                <geometryInfo x="5.93750" y="0.37500" width="0.81250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_PAYMENT_TYPE_HDR">
              <geometryInfo x="0.00000" y="0.18750" width="6.75000"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <visualSettings fillPattern="solid"
               fillForegroundColor="r100g100b75"/>
              <text name="B_PAYMENT_TYPE" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.18750" width="1.06250"
                 height="0.18750"/>
                <textSegment>
                  <font face="Courier New" size="10" textColor="blue"/>
                  <string>
                  <![CDATA[Payment Type]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_AMOUNT" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.18750" y="0.18750" width="0.81250"
                 height="0.18750"/>
                <textSegment>
                  <font face="Courier New" size="10" textColor="blue"/>
                  <string>
                  <![CDATA[Amount]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PAIDDATE" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="2.12500" y="0.18750" width="0.81250"
                 height="0.18750"/>
                <textSegment>
                  <font face="Courier New" size="10" textColor="blue"/>
                  <string>
                  <![CDATA[Paiddate]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_BUS_ID" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.06250" y="0.18750" width="0.68750"
                 height="0.18750"/>
                <textSegment>
                  <font face="Courier New" size="10" textColor="blue"/>
                  <string>
                  <![CDATA[Bus Id]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_ORIGIN" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.87500" y="0.18750" width="0.87500"
                 height="0.18750"/>
                <textSegment>
                  <font face="Courier New" size="10" textColor="blue"/>
                  <string>
                  <![CDATA[Origin]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_DESTINATION" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="4.87500" y="0.18750" width="0.93750"
                 height="0.18750"/>
                <textSegment>
                  <font face="Courier New" size="10" textColor="blue"/>
                  <string>
                  <![CDATA[Destination]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_SCHEDDATE" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="5.93750" y="0.18750" width="0.81250"
                 height="0.18750"/>
                <textSegment>
                  <font face="Courier New" size="10" textColor="blue"/>
                  <string>
                  <![CDATA[Scheddate]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_BUS_TYPE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.68750"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <textSegment>
              <font face="Courier New" size="10" textColor="blue"/>
              <string>
              <![CDATA[Bus Type]]>
              </string>
            </textSegment>
          </text>
          <field name="F_TOTAL_SEATS" source="TOTAL_SEATS" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Courier New" size="10"/>
            <geometryInfo x="2.43750" y="0.00000" width="0.87500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_TOTAL_SEATS" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.50000" y="0.00000" width="0.93750"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <textSegment>
              <font face="Courier New" size="10" textColor="blue"/>
              <string>
              <![CDATA[Total Seats]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
      </frame>
    </body>
    <margin>
      <image name="B_1">
        <geometryInfo x="0.56250" y="0.62903" width="3.85413" height="1.41663"
        />
        <advancedLayout printObjectOnPage="allPage"
         basePrintingOn="anchoringObject"/>
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="3.85413" y="1.41663"/>
          <point x="0.56250" y="0.62903"/>
          <point x="3.85413" y="1.41663"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1">
          
FF8DFF0E 0001A464 94640010 10100000 00000000 FFBD0048 0001B0C0 E0C0A001
E0D0E021 11013181 82A18161 61811332 52D182A3 33D3C393 33837304 84C5E404
44755473 8305D615 75F52676 8676E3D4 17970746 87C55676 36101121 21815181
F2A1A1F2 36248324 36363636 36363636 36363636 36363636 36363636 36363636
36363636 36363636 36363636 36363636 36363636 36363636 3636FF4C 102A0000
10501010 10101010 00000000 00000000 10203040 50607080 90A0B001 00201030
30204030 50504040 000010D7 10203000 40115021 12131460 31151670 22174123
18191A80 32241B1C 51251D0F 42332627 2890A061 718191A1 52627282 92A24353
63738393 A3344454 64748494 A4354555 65758595 A5364656 66768696 A6374757
67778797 A7384858 68788898 A8293949 59697989 99A92A3A 4A5A6A7A 8A9AAA2B
3B4B5B6B 7B8B9BAB 2C3C4C5C 6C7C8C9C AC2D3D4D 5D6D7D8D 9DAD1E2E 3E4E5E6E
7E8E9EAE 1F2F3F4F 5F6F7F8F 9FAF1000 30101010 10101010 10100000 00000000
10203040 50607080 90A0B011 00201020 40403040 70504040 00102077 00102030
11405012 13602114 15701617 31222318 80412419 1A1B1C90 3233250F 5126271D
A0614243 1E521F71 8191A162 728292A2 53637383 93A33444 54647484 94A43545
55657585 95A53646 56667686 96A63747 57677787 97A72838 48586878 8898A829
39495969 798999A9 2A3A4A5A 6A7A8A9A AA2B3B4B 5B6B7B8B 9BAB2C3C 4C5C6C7C
8C9CAC2D 3D4D5D6D 7D8D9DAD 2E3E4E5E 6E7E8E9E AE2F3F4F 5F6F7F8F 9FAFFF0C
00118000 88102730 00110010 11102011 10FFAD00 C0300000 10112011 00F3009E
86428210 96081EC4 00660861 08912520 DA03C1DB 8E11026A 23A20453 D78691A6
CCC7F9A5 34720A80 E68714A8 00CA426F 6089589F E7498015 2C1F3884 36172FAF
3510CB0D 40B9EF05 F00D0530 7FA7E741 00D9D802 917D4100 E95944B8 CF43C069
60EFC1B7 4DC8E7EC 3E4F0A80 ACF73B8F 0D3093BD E8EB4D10 C3706D08 2127630E
A1008A4B C04B875B 4100E9F9 5800A3A5 40043A5E 6A08A288 F1F031F8 5A94864B
CD521259 52EFF15A 20B1FB06 E12E8921 0477731E 84260A9F 000EB70D 22639839
7BE14D50 683501EF D39E18E1 D79E0025 10A60C15 7F960049 0882104B 68A23D10
D7968887 BFFBA400 76142D09 80E3DE30 E2BDC864 4B689404 01CDFF00 AA4110E4
18B00438 8F86810E F79C6A30 AF07F3A5 04743DE3 4D102208 9208FB3C F86C09D0
F45F2A08 318B6A02 EF100461 3600F29B 4168A308 01DFFC2C 08A1314E D18B0A80
0F74A500 36DFAC00 FA6E5CF0 AF9C1170 BFC50530 F5C52D29 5035B7F1 0DC7FDAC
08B2FA88 436B860C 9BDEF85F D6EF5124 9BFA72DD FF00084D 4924E3DE 4362829E
45040BD7 1E5C9486 E93E487C DA1259FB 08668968 F98B9200 BFF6EB4B C087BF2B
A040C227 C65F0A70 CB1639A7 EF490C9A 84304017 C8A10082 012A89E0 8E9208AD
04120A20 095000F2 DB05700F 0D202796 00FB2C82 91D76441 F014A834 6108128B
FF005504 418E0105 1237042C 08D1C470 1F5F4A10 6D0881E7 1F0A706C 64EE8620
C23D10CD C6C1A800 6BD39AC0 82102B1F 110AC0B8 FD419667 F78279EC 17CF033F
FF006D0A 64527CD8 E6B5B8B7 44886766 9F9A8DC0 B6D8A76F 7E98E207 D3511BCF
9A8DA0E5 86C3EEF3 283D625E 88726BF8 7924E74B 10E2D95E EDB6670A 0038CCF1
D200C6AE A15B7C6F 3A842B2B 2AC102E1 5932534B DB66B24B B0E24D09 4F7C646A
600BF539 3D201885 15497F5C 9434917F DFCE1704 B0CF430C 760FD782 106DFF00
87252055 BF2DA006 44F3A240 B538DF55 22A8E9D5 03C209D1 07FD3805 223B745E
0FF73004 68A80017 BF4B0CD6 02B18430 430C550A 26A82630 84602D10 AEF3872A
89BC4F68 4110C1FF 00AED000 150A240D 12BDE3C5 3D81AD04 B34100B9 D38E109E
D94B00EE A3054085 7C410C56 12B80490 2D08B1D2 0C6B08BC 32D6D870 620883D5
7585CB4D BD6ED24E F7C0347A 3EBEE44C CD1A4EEB 1D1BA3A7 5580F816 C6250001
A7A906A4 61128D0D B2D1FA58 4755688D E58C01CB 0C9734F6 CD9A9222 CE1D95D7
9B774AD6 C2F7571B 843A096D DA562D56 553FCB8D 89C7485F AA98C25A 502DDE7C
DDAA42ED 3DC37452 FAEEE637 C2D1F81F F28F4D85 4AECEBB0 BAB68A48 09ACCAD8
0DA834F1 0B7324D0 0003107F F45EC480 1F589E04 B0F67F9E 1002FF00 A58620C1
B73D20DD FBAF1A84 56E78620 5C1370C6 73220951 EDF3F2E9 BAAD896C A1469884
602D1082 812A08E1 E3FE2D8A 34D79AC0 140431B5 C8DC4F4A 23DE0041 007DF112
AF056057 20D1E1B3 4F4100DF BD1BC460 A904B45E CF9BDC03 81F35A00 83E04908
96BF4D00 D99BDE2D 89C07E67 82205470 0DEF4580 E549C07E C7255C2D B1131D9F
C7A73504 0697360D A2E86050 2022F94E 081E08FC 2089AC0F D6574F00 05508B6B
891BF1E1 4980BA3B BC0E1F24 729A9E63 FA81A8ED F12E2F10 0CCAFE9A 5A4B93DA
A537E13B 3392FF00 357ACFFB D9B310B8 6F6FF9B9 7A4EC010 E8925A16 37A0392C
3CC03AE8 8D2A1C17 C81BA4FB 2218E82C 8A29B590 EA4B9E73 B57BBCDD 17DF8230
5B2D53B2 B65D9FE7 941B7F33 CFAA64F5 FF0069FD A434117C 8C4DC0E8 FDFE0D22
C4E76F89 11A72520 0CD619C1 E9D98291 E418A185 0A80AF57 0A309F77 60080229
D1C9FADD 4F4F0A46 412141C0 82105400 7C0512DB 8E81D203 625B4A23 8D43004B
00056077 E4A298A0 04F2C4D7 930A50D3 1BFC4168 E2861086 10BC5D86 10FB5CC4
607E6008 42B367DE 0027B325 204865E9 D59C89DC 1372D84A 0FF3A026 D2E62218
C9EADAA7 DA9A94FF 00E77C1E 2411DCD5 F963F66F A700D382 20D3FD67 5381305B
03D1BB66 9781D358 00A3C2C9 030AD000 19FE7572 83D192E0 7CB57607 429B4BC6
E8C6FF00 2C2BAEC6 FB68377F 2DD73A65 5D784A96 01FF00EB 294BA581 3B21EEF1
1B0B4068 70F869AA 4E2F196C 04C1C117 5527B428 2E421559 6E4A96A8 42882703
3345409C 4732E6F0 2E5B52B1 ADF69817 58BB1C35 FF00D296 100D9F1A 2E9F1768
9EA860A3 BDFEDA02 42EF626F 0A60C681 4FFEC480 8032FAA5 60520253 82000A80
6F3ECD05 1270C1A8 006884B3 0AFF0008 0D40816A 124B6841 C0C53D20 5AEE5AB6
167BDEF0 9C8E00DC 4526D4AC F70F299E FF00FDF7 BF6FA6DF C86BB069 31F55BB4
F3D3B111 619D9B39 AF45B793 C6741375 BF97EE11 58CAFF00 77DFE8FD 59162533
98BC2527 1532B835 DBF41962 C2B5BD62 9B5195C1 094C4552 EFFD61D8 4EFC17BF
8D8FBF7A 91EA8F25 19FD7105 A8F501A5 F19FE6EC F7BE9915 B574F022 DF2E119A
530D9F76 DF2D6F88 D6BD8F65 1F98BCF2 B6CDA7CD 7CFF00C3 18059397 E817F449
8883DF49 A5F40196 96F84F78 0E36E395 CAD339D3 B1E8FF00 4868BC5A FBFE5232
481CC51D CEA991C0 A33D9471 B983B545 DEBBCF3F F49DB089 5B6AA622 1FF8FC33
22EA608D 67F83CDA 76BC26EA A638AE13 E8A26094 81CF1B84 36229F5D F4272A08
F108CFF1 0C0D2260 CCB2397F 040A7611 26FD8696 5207937C A646495F 4C85CFF9
D245E63E 18C4C05B 0642AF05 25712A3E F80C2544 29B5943B A81A31E6 F3C5A034
4231E469 F9AB990C D1208C54 121A6FF3 2FDFBE88 FB4F12C4 84E66AE3 B7F78A4A
4365A895 018178DD 4F5C00A6 3C6A9C9A D6610FC6 35CF952E 8A197FE9 514D0AC5
5C6B1E17 C872702F 436B9232 A3808594 4E8CBBC5 F0AB64D0 13C6A402 17BE84C2
8696ADD8 6CF90C9F 2AFE919E 84763756 BF8C3A59 E3EE834A 10D92973 E4862054
8E6A0891 2246D7A3 0550A500 5D0A1604 5000037A 7A5E04D0 E14D80E8 847B3781
FF00080D 225BB3D8 11CB197C C809BB8B 41EAD48C E2F6124B 6B33139F 45676A58
CC1733B4 633AD7CB C89C7210 54A7C3CB 8ACC575F ABBD9441 867766E3 EB6A2A48
9B198079 EF56CBF7 3D7EEF9C 9477E24C AD706942 9B3F3666 F572EEFA 4D259A51
0598B374 3584FD83 817B4518 17FF00C2 FF006C59 A2410E07 BFD4D33D B055FF00
095AFCBF 5FCAF404 37B1F1CE 5F90B1D7 3AD1F7FC 5B200BAB 73CF4871 B09B24D9
ACD31344 A85E6ECD 3BCAEDF6 11AD8829 01D915F3 FC531188 866B929E 6DF9A6F9
D07F71FE 06A11DAC 2C63061B 2B7B3C97 91171DB8 23F0BEC5 CFDCA98D 9B767A18
4B5C26A8 F3CB3291 CFAD3AC9 67A3112C AF653422 5132D244 CB050368 11A01E37
E84D00DF 38FF00FA 04C8DDB6 038E7D48 F7FC2110 0AE07384 25D295DB 9E889ACA
39C22044 FF004578 4110B8BE 4F0A8647 F74764ED C9252087 01EEBD0B 1B6C7151
246228EC 74BE5C02 C2549602 08825E74 5B5012D6 688C5F61 E6F35DFF 008E4548
68A64697 1509147C 7A1E0422 D4218CD5 AEB5849F 758FA648 A7401774 96D62FF7
A00D60D2 595EDC2B C2E0EF46 1879B39F B317DC57 BF33F936 459F75A5 C633DD24
9956EC13 2D8BED68 399A8689 F066633B F059755B 836C7E50 C2D58CA9 6C150139
ACB3134D 25175ED3 823BBA0D F74EF0D6 CE8B4A15 324E8496 184297C7 16F7A104
F3AF0540 B35000C5 0A160450 0041002D 9B0A6076 766B8261 6CD5ED5A C6F888EF
26F7ABA2 D1844C6E 69620392 F0237F78 9F20FADD A4FC2E13 6D6A6E61 0B7BF0F3
9D0E5BF9 CE0D0FF0 69E7A64F 8264435B 634E05D2 8EAB9468 BDDE332E 22CDC7CF
C6515146 7E0ACD15 35B54B36 77F19D26 992E11C0 0199DA03 AE03F882 828D47A1
D64CABB0 8288BAC2 BD287B91 3E515A5D AC5BAC01 548AB563 8F02D9B5 B1F74D6F
BAC7F827 C6C57BA3 99E911D2 3B88B800 378670F1 59E11EC3 4AA1D8CA DE9AE41D
B5ACACFC 0955E013 A4D04286 969D9E31 CB653CBF 5397156E 9C73F15A 46AE229F
C4CFEDCE 8D430BBA 8ED2F89F 531A50F5 0BEDBC72 CFA7EC94 AEC466EA 8E39BA1D
4F15D676 6BF599F8 42A03E49 EED6ACA6 5CC017DF 5CB08F65 3652543E D3E35932
B1CE9608 8E1F4FAF 2D91329C 5E0E00A3 0520B0F9 550AB043 10583E93 CBF8E0BC
EF1D442E 0883F4DE 2831A64C 64E7FF00 2D08228B 5DE73D70 596F079A 8E8220E8
EF48A2C8 C02618E0 3119CF82 D430C2BD A623740C AD23631F 04D02997 7CDC6E0A
D10B4B10 427779B3 336F4B10 B797F7DF A640B68E B166E8AF 97CCD6A0 9FB7CBEC
49C00D28 BF34C7CA 07B528F3 5831F179 41107268 CE619172 69C3E3FE BB4F0A74
E4E97647 F10F3104 F092B11F 52FB6E2A A9D1C8DC 25C42682 6C20DA32 9C6CBC1A
B9B292F5 728357B1 6BAFF9FF 0055570D E5DECCD3 F88BF53B B98C3BD8 A3319CE1
4D5A9173 371D5A4A D0BA062A C272E48D EA361B11 A4F3975F 5C0085B8 EEE74108
80FE0411 CEA540F4 042C08A0 00821082 2092DA2A 8BD52BEA 1E9EA950 26FB6FD7
2B1220E2 8D9A4E98 E16C4011 B57CF0CD 05CB36A8 BA70A2E8 2C9C4037 E2F142A7
66F9D23C 29C2EC5D C3FEE3C0 B5C2AC7E 66A4F129 6B387269 52B4BDB9 DB2D5CDF
F9DB16AD 9A5BE4F3 A28A8DC7 8A69B0BB 79F9CE2B 9589DE3C CE4064A7 4527DA2C
3C5FB0BA B9B3893E 4B3BCD18 A3AA6310 CF82A88B 417A668B 9FEE4B79 39DFF1A7
F8EDC9F3 7FD7AA29 CE23CC03 7CD66FF4 0B8E3CDE FA7FBC64 BD223E4D 2D7D8BB1
772FCDB5 96258488 729B55BF 8AD9F7A0 9C6126BC AAA6B94A 6C99090A D74DE3F9
FA53AAC8 848B1BAE 75EA1C46 5B03F0C2 C1DFD9F8 E3C9158C 68D886C9 2307807C
BC8C5C06 1582BF4B 005EEF51 0A60F1DB 18C4B0A2 89C52581 6C38F7F4 E4500073
8CE6C926 08D20570 F21F50AC 8E0518ED 17CF8A30 EC99B8FF 00A300C4 F7F2A400
13FEBD2D 0871B0DF 3F3DF869 089104B0 EC138D0D 0082309B 0D472DEF 41C9076A
BE08F7A4 008C392C A7F8992F 9CB1E0DC C96618D1 E8797AF7 66A574A0 0007FB13
72DB0096 7CEE1304 31F0A560 56E53CEF 690799B1 74A78E38 C3C954F3 4B34D059
AAD5B4A3 4B292B30 59D3AECD 5EB6D101 7AB0F81B A8820EBF 560D9FB9 CF1F85BC
D5E05881 A56E5AFB 915119AA 613EF192 0A46AA60 1D4F0A50 7C6D0831 F69F5C00
E308A000 82000A20 08B2A42F 4A1D9F86 95178C6A 409217E3 6D23B58C 74560C9E
5C202296 F5FE74B6 E2CDB735 209B8B79 862F1E42 41815CB3 802992F5 3A2C7530
692A0C32 91C75E82 E3D4FB77 D1A60580 76390A5B 09F88A7A 06323F4E F7826CFA
7BC9AA10 DF968D90 228BB919 6F756F6C D38A0BF0 A85F6F5E D6D94917 E89285B0
94332B09 16562C5F 5F5A0612 A8943E38 BC297009 7AB1781F 350BE097 46F482D7
998DE1FF 00DD5A06 B21B8B91 5558F8F3 920007F3 FC43CE13 541CDDC1 D6B062E7
C5C9A715 06B1B1CD 58F85E36 9E2FC83E 2D89B811 E4CF26AD 34F9C4F7 D802D224
C419201D CEF3DD53 32C12BFA DDEC800A 90828105 70B23E8E E9D663AD 837D67F1
42E74110 0C8962E4 C368FC0D 3D20D3CA A37A6E82 9E06B1FC 5A4210EF A7351045
311DF71F AD04A46B 7FF22D9D FBFEA800 2D3D4FD3 24FEE611 01F7B786 EF4910AD
D5B1B6D3 E3D203AC 717FE785 7CF6A700 79643B47 CC2BD553 AC4FE88A C2969C48
7E0BE159 02155DF2 6CD9C64A 7289FE2F 2276D680 80CFF3CA 7CBAA591 C7FAE244
D758F7A0 00B9757C 0942EFFE A735C778 6063C11D 0D3ADF8A B082B2D9 3E7BFF00
EA6B1AFE 2C6E05AA E3DF7FD5 8D7431D6 88F08992 DE0D65B6 342DCD4D 341BAB6F
4A2367DF 2ED78220 A660D200 5200A308 A0008200 0A2008A0 00A400D3 8A207278
F337F8A6 26A24F4A 30654813 96292210 6C830A46 FB923E81 4F2209C0 E1D9808E
54132944 8F3E3F41 08890502 0A6036D1 F3A200F8 F8EE4F5F 6A103DBD 410870DC
0D3F0421 D6F7F5AC 08B2CE4F 0A707CB2 741C4E05 23AD01BC 5C0066BE 11A4AE68
C216B726 88983AD0 D61E8DC4 8956D175 81DAC5CA 561B6585 D6AB4283 307A53A8
E4EA7C32 EA2595D6 BC3691B2 FF00C27F E1F3A58E F5ACE85B 1B672D2D 9339E314
14BD6E53 21C8053D 32A147B9 9863A6CD C7C9FF00 5FAEDFBC 10666D83 DE9BAB6B
7B783008 60F78C8A 9B864BF6 5E67A883 7906325E 7E5B7627 19D0EC79 1753CC22
D2CDE246 793DCFCF 4B02A385 4D7C217C 41145564 50008376 EBF31004 C1FCB885
98CA0CCE F04FAA98 C25A1E93 29FC454D 36196B9A 3CF83F8F 4D9C3859 197B3747
3B4EF7BC EBCCE03C 5379734B 935635D4 C0BF683B 3B2FA534 3BF693F6 3C0AFE2D
AB86FA76 B1912C19 155FBF93 E60AB552 D6AA93AC 3E72B23D 2F8A74F7 922D85DD
B11B39B0 7ABF4D08 EBF94E05 50080827 83CF8681 AE006654 00A308D1 04500041
00051004 50006308 D10451EA 1B4BA7A9 00867B9F 60B3A800 78813E5A 00725A20
420A6073 ED0A50E1 CFA70540 88175C00 B404D0DC 0062D754 00819EAD 08526CB3
0513811E 07830A54 A500C518 1C0A509E 7F87AF05 50D1E42E DFC398CA 1A23DE9F
E5F2FE05 231F4B6B F7990A05 4D10901D CEF5EF95 368ED425 39329D1A 71546BF8
E1E54547 9EB49959 AC78DF28 F3FEFB4E 92C0963D 369D7BDC 0917C8EA 330441B9
943DC67D DC9BB95E 5F09A800 78EF21D1 A251F62B 54D26CE3 1F145C00 C6BDCC7B
6513CCA8 55958760 084425AE 6909FF00 BC04F42A C04DA319 8D6EAF5C 4376BCAA
9C82DF4C 81F5FE53 56DCA2F9 90F86DBD 8FE0B7A5 995EBB78 C71A6CE3 C5E0B22A
A015CDED 79338FA8 6B2D9FA3 39A4BC09 05F2816A D856E126 7EADEE62 F6DDD0DB
68FC1FAA 7E41968D 1B70587E EB3CE418 74BA45A1 B16BE171 3DC64ED8 CB092DF8
2EA600CD 8D634F81 4F5C0054 5E113D5A 00B40450 0015D29C 0AB04B00 05308A00
0A2008A0 00D600A3 08A0009A 37BCA20D 50AB00B6 748B2782 20BA545E FF00BBC4
24D64A00 0E053003 673D1007 7470F8DA 024234AD 08D1FE04 9004E0D1 8A81FE2E
0C4F0A29 F17D2018 D840B70D 1058D39F AF05209F 870A609F F715C456 B0D8E56D
DCCB9B76 9F780F02 4A50F08F A403FDC2 F1F27D41 10228FAA F39F2EFF 005A021B
16C39446 CF6B5FE3 BEC49075 C51BE779 00D75400 31B46AAE 01972594 C1B87D78
C1150792 3C1EDDC3 76467D81 3270E04B C5C2E66C A8198049 00AABB45 056193D7
0F1C813F C017C177 DF3EFF00 08BAE8E1 822F3E24 52B2D875 B7E71EA3 F7C1C9F9
0F51FAD3 E85C442C ABABE9B4 3B7EBBEB D3B6D0DC CE57A377 783C1CC1 7F70FE82
9F96C08E CEDEDED6 099707C8 DF82200E 69F37A1E 04E0C17B 700A0A90 8220EB3F
3FE2A3A0 00268C74 A624F17E F834C4A0 47C07BC0 9D1E8A20 A6005700 41000510
04D00A50 0A500AA0 F9E7FE9E 04618E00 0A200881 1DE0FD59 00049CF9 26822003
B3379F05 30B97A2D 0801274B 1022AF05 200D2066 28859B6C 921A22E1 49C05630
D1BB5E4F 4A13D986 1027D786 3062BE14 5B8B09BC 6964F3DD 0AA07C3C 30F6EEEE
886F460A 29BB87A6 8ED79D16 F6CC1517 096B788A 72CF1BD0 EF9E0A77 12EFACDB
14FF00E1 37369D90 0AA0DEB0 7AED88FA 5D8620F3 3D9E0421 047D725E C8AC378D
3104A169 E5E159FF 003E7E03 FA7AA746 B96FAB64 D9D6D8A8 BBDB9586 20FE29F3
78F61EC4 402FD79A 00AAAA60 E3C62D10 67F276CF 9E2788A9 CD16F72C 99866908
02C674BE 39DFAD40 3387EF7F 6E4B4CC1 51EF314F 4A40E714 0A808E82 E9911B3C
470AB043 00AE0082 000A600D 200D1004 51DAFB6D 616F0AB0 45000520 0D100490
08A7EF47 10F149B7 0540E715 B0FDF1A4 00F8194F 0A700530 8A01AC11 12F92D8A
67715EAD 83A2A345 C8D4BA9D 58137029 D79A08FC 82AF0530 67D754B2 503C5661
B029AAD0 3A6E1CAF 250BB05E AF23F96C E8050BE9 95D17451 63B06132 8154E15D
54F0BE6D 08B2F476 C0BCCC11 F9AA0520 54D6514A 44AA22F9 6F542032 ACE9DB86
81E7EE08 D0381B41 00BBC547 F66D89B0 EBF5FA6D 087177CA 340F4A12 65D608D0
DA047C97 7E2BF96C 0802E2DF 5C00E176 8A2A0C62 36EFFE5E 04709CFE 0421C60A
44526705 23DC3B7E 5ECF8A20 A7005700 4100AD00 8210F188 F82D0832 5BF1726D
08720A20 08A000A5 008210E3 4900AE00 983E4F0A 6080B5D6 00E135B7 05104E0D
30690182 11501DF1 A2A800FA 045C703D A826E152 328F8A10 EF174F41 80F513F7
9B046016 D38C6A20 CEF5FEF8 6C097079 BD1B3EA8 06959A82 8210B0A2 D2002569
D5CDE050 00540450 0041003A E8491082 A60009A1 04F29E04 60500081 0A80CF18
4F6A30C7 F8248210 C339DE04 F1FF9D
        </binaryData>
      </image>
      <field name="F_DATE1_SEC2" source="CurrentDate" minWidowLines="1"
       spacing="0" alignment="right" templateSection="main">
        <font face="Courier New" size="10" bold="yes"/>
        <geometryInfo x="4.75000" y="1.50000" width="1.00000" height="0.16663"
        />
        <generalLayout horizontalElasticity="variable"/>
      </field>
      <text name="B_PAGENUM1_SEC2" minWidowLines="1" templateSection="main">
        <textSettings justify="center" spacing="0"/>
        <geometryInfo x="2.79163" y="10.83337" width="2.91663"
         height="0.16663"/>
        <textSegment>
          <font face="Courier New" size="10"/>
          <string>
          <![CDATA[Page &<PageNumber> of &<TotalPages>]]>
          </string>
        </textSegment>
      </text>
      <text name="B_OR$BODY_SECTION" minWidowLines="1">
        <textSettings spacing="0"/>
        <geometryInfo x="4.66626" y="0.75000" width="2.08374" height="0.50000"
        />
        <textSegment>
          <font face="Courier New" size="16" bold="yes"/>
          <string>
          <![CDATA[ALPS Customer Record]]>
          </string>
        </textSegment>
      </text>
    </margin>
  </section>
  </layout>
  <reportPrivate defaultReportType="masterDetail" versionFlags2="0"
   templateName="\\VBOXSVR\finalproject\YELLOW_GREEN.tdf" isCustomName="1"
   sectionTitle="ALPS Customer Record"/>
  <reportWebSettings>
  <![CDATA[]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<html>

<head>
<meta name="GENERATOR" content="Oracle 9i Reports Developer"/>
<title> Your Title </title>

<rw:style id="yourStyle">
   <!-- Report Wizard inserts style link clause here -->
</rw:style>

</head>


<body>

<rw:dataArea id="yourDataArea">
   <!-- Report Wizard inserts the default jsp here -->
</rw:dataArea>



</body>
</html>

<!--
</rw:report> 
-->
