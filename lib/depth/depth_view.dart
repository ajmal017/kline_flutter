import 'package:flutter/material.dart';
import 'package:kchart/depth/depth_model.dart';
import 'package:kchart/depth/depth_painter.dart';
class DepthView extends StatelessWidget {
final List bids = [
    [1297.70, 0.6783],
    [1295.94, 1.2763],
    [1294.56, 3.2118],
    [1294.36, 1.8750],
    [1294.28, 1.6697],
    [1292.78, 0.8065],
    [1291.45, 1.5521],
    [1289.99, 1.2672],
    [1289.77, 5.1446],
    [1288.25, 1.2289],
    [1286.89, 2.7826],
    [1286.86, 2.7681],
    [1285.01, 2.0404],
    [1285, 0.0830],
    [1284.93, 0.7387],
    [1284.74, 0.6649],
    [1283.28, 3.6407],
    [1283.12, 1.3505],
    [1283.10, 1.3107],
    [1283.02, 2.5962],
    [1282.88, 1.0943],
    [1282.82, 1.0278],
    [1281.43, 1.0406],
    [1281.39, 1.3282],
    [1280.94, 1.4554],
    [1280, 1.1431],
    [1279.57, 1.8813],
    [1278.78, 1.5833],
    [1278.52, 1.0628],
    [1277.23, 0.7620],
    [1275.92, 1.1728],
    [1275.59, 0.9594],
    [1274.48, 1.7416],
    [1273.71, 1.0526],
    [1272.43, 1.6476],
    [1270.93, 0.2179],
    [1270.49, 1.3791],
    [1269.84, 1.3180],
    [1269.80, 1.1611],
    [1268.48, 1.6083],
    [1267.59, 1.9461],
    [1266.71, 1.5163],
    [1266.36, 1.0843],
    [1265.29, 0.0905],
    [1265.26, 1.6181],
    [1264.06, 1.8352],
    [1262.99, 0.0939],
    [1262.54, 0.8110],
    [1261.80, 1.1685],
    [1261.61, 1.4926],
    [1261.56, 2.1493],
    [1259.86, 0.6463],
    [1258.40, 1.0256],
    [1258.39, 1.2814],
    [1258.03, 1.5016],
    [1256.67, 2.9745],
    [1256.16, 1.8147],
    [1255.73, 0.6489],
    [1254.80, 1.0647],
    [1253.75, 1.3725],
    [1253.33, 1.3072],
    [1253.11, 1.4184],
    [1252.73, 1.2309],
    [1252.50, 1.0925],
    [1252.43, 0.3865],
    [1252.14, 0.8322],
    [1250.62, 0.3068],
    [1249.37, 0.2757],
    [1249.27, 2.5890],
    [1247.53, 2.5058],
    [1247.00, 1.1951],
    [1245.70, 0.0817],
    [1243.89, 2.0580],
    [1243.60, 1.9393],
    [1242.68, 1.0795],
    [1241.07, 0.6573],
    [1239.78, 0.1467],
    [1239.70, 0.9657],
    [1238.84, 1.0959],
    [1237.96, 0.4988],
    [1236.61, 1.9390],
    [1236.45, 1.0310],
    [1236.08, 0.0115],
    [1235.57, 1.6966],
    [1235.41, 0.3303],
    [1235.35, 1.5868],
    [1233.94, 2.9022],
    [1233.57, 1.6969],
    [1232.13, 0.9211],
    [1231.59, 1.8405],
    [1230.65, 1.2776],
    [1230.29, 2.4241],
    [1230.01, 2.7288],
    [1229.01, 1.0472],
    [1226.56, 3.7527],
    [1226.53, 1.8038],
    [1225.40, 1.8398],
    [1224.55, 1.3248],
    [1224.16, 1.3350],
    [1223.57, 2.5090],
    [1222.89, 1.5872],
    [1222.54, 1.0214],
    [1221.54, 0.1938],
    [1220.99, 1.3525],
    [1220.37, 2.7255],
    [1220, 1.05],
    [1219.16, 0.5164],
    [1218.63, 2.5346],
    [1218.29, 1.2019],
    [1217.43, 2.0641],
    [1216.14, 0.1700],
    [1215.67, 2.5298],
    [1215.12, 1.1874],
    [1214.88, 1.3104],
    [1213.99, 1.4138],
    [1212.79, 1.8731],
    [1211.86, 0.2607],
    [1211.00, 1.6544],
    [1210.54, 1.6107],
    [1210.46, 2.5269],
    [1210.15, 2.1111],
    [1208.79, 1.2425],
    [1208.74, 1.7023],
    [1207.82, 2.7111],
    [1207.63, 1.6804],
    [1206.10, 1.0535],
    [1205.58, 0.9213],
    [1204.69, 2.1730],
    [1204.46, 5.7956],
    [1202.69, 1.0136],
    [1202.23, 1.5888],
    [1202.14, 0.4597],
    [1200.86, 1.1548],
    [1200.67, 2.1187],
    [1200.38, 1.1052],
    [1200, 8],
    [1199.14, 1.6829],
    [1198.93, 1.2006],
    [1197.68, 4.5656],
    [1197.56, 1.1513],
    [1197.46, 2.2235],
    [1197.35, 2.1854],
    [1196.66, 1.0725],
    [1196.21, 1.2293],
    [1194.95, 3.7977],
    [1194.83, 0.6631],
    [1194.54, 1.3774],
    [1193.24, 2.0002],
    [1193.09, 0.8718],
    [1193.03, 1.2799],
    [1191.76, 1.0156],
    [1191.52, 1.8317],
    [1190.03, 0.9717],
    [1189.95, 1.1231],
    [1189.80, 1.9662],
    [1189.75, 1.7938],
    [1188.33, 0.2705],
    [1188.24, 1.7482],
    [1186.84, 2.5805],
    [1186.77, 0.1741],
    [1186.08, 3.7765],
    [1185.46, 1.4046],
    [1185.34, 0.7632],
    [1183.90, 2.4694],
    [1183.45, 1.3478],
    [1182.91, 0.5702],
    [1181.52, 0.8317],
    [1181.50, 1.2244],
    [1180.26, 0.4923],
    [1180.11, 1.3305],
    [1178.84, 0.7578],
    [1178.46, 4.2353],
    [1178.42, 2.5060],
    [1178.28, 0.8212],
    [1178.09, 1.0634],
    [1177.96, 1.0614],
    [1176.77, 1.0623],
    [1176.64, 1.4009],
    [1175.35, 1.0302],
    [1174.17, 1.0283],
    [1172.99, 1.0834],
    [1171.80, 1.9900],
    [1170.21, 0.5712],
    [1169.01, 2.0002],
    [1168.21, 1.8199],
    [1167.28, 1.9205],
    [1166.31, 1.1973],
    [1165.79, 2.4641],
    [1164.68, 4.8284],
    [1164.07, 1.1138],
    [1162.88, 3.2520],
    [1161.54, 1.1589],
    [1161.42, 1.1320],
    [1161.23, 2.6319],
    [1159.87, 0.9585],
    [1158.96, 3.7226],
    [1158.27, 1.7361],
    [1156.91, 0.8271],
    [1155.64, 1.5805],
    [1154.18, 2.1200],
    [1154.03, 0.1358],
    [1152.71, 1.3339],
    [1152.31, 0.3627],
    [1152.26, 1.5913],
    [1152.02, 1.1623],
    [1150.83, 1.6023],
    [1150.36, 1.9590],
    [1148.85, 2.5779],
    [1148.55, 0.0334],
    [1147.26, 0.9612],
    [1147.05, 1.4626],
    [1145.78, 1.2102],
    [1144.58, 2.3219],
    [1143.30, 4.6913],
    [1143.03, 0.8549],
    [1141.35, 0.6305],
    [1141.27, 1.8288],
    [1141.09, 1.1848],
    [1139.90, 1.8980],
    [1138.51, 1.6395],
    [1138.20, 2.2007],
    [1136.64, 0.8196],
    [1136.23, 1.2556],
    [1135.03, 1.0257],
    [1135, 0.2],
    [1133.89, 2.8432],
    [1133.25, 1.7664],
    [1133.10, 1.5184],
    [1131.83, 1.7523],
    [1130.49, 0.7862],
    [1130, 13.4],
    [1129.30, 1.0732],
    [1128.99, 1.6448],
    [1127.69, 0.1018],
    [1127.59, 0.0030],
    [1127.53, 2.2066],
    [1126.07, 1.4108],
    [1125.84, 0.4986],
    [1124.49, 1.1637],
    [1124.29, 0.1076],
    [1124.16, 2.3107],
    [1123.71, 1.8078],
    [1122.98, 0.6056],
    [1122.97, 0.4370],
    [1122.40, 1.7156],
    [1121.97, 0.2563],
    [1121.12, 0.9458],
    [1119.90, 0.7180],
    [1119.74, 2.0971],
    [1118.32, 1.2354],
    [1118.25, 1.2945],
    [1117.19, 2.3767],
    [1117.11, 1.1699],
    [1116.92, 0.8041],
    [1115.19, 1.6363],
    [1115.02, 0.3259],
    [1114.91, 2.2844],
    [1113.44, 0.4407],
    [1113.04, 1.2973],
    [1111.85, 0.4351],
    [1111.54, 0.0692],
    [1110.25, 1.3761],
    [1109.50, 0.8568],
    [1108.92, 1.5240],
    [1108.78, 0.6589],
    [1107.24, 0.9321],
    [1105.50, 0.9576],
    [1105.23, 1.4161],
    [1104.06, 1.4832],
    [1103.32, 1.1549],
    [1103.23, 1.9467],
    [1101.87, 0.5090],
    [1101.79, 3.1137],
    [1100.51, 3.1956],
    [1099.00, 1.1015],
    [1098.93, 0.8338],
    [1098.7, 0.3771],
    [1095.48, 0.90],
    [1095.3, 2.04],
    [1091, 1.7121],
    [1088.85, 2.1823],
    [1084.71, 8.1140],
    [1082.56, 1.76],
    [1082.48, 4.12],
    [1082.35, 1.867],
    [1080.2, 3.20],
    [1080.06, 1.92],
    [1077.36, 1.96],
    [1077.23, 1.03],
    [1075.05, 0.16],
    [1072.84, 3.48],
    [1072.56, 2.019],
    [1071.63, 1.486],
    [1071.55, 1.7641],
    [1071.23, 2.36],
    [1069.08, 1.88],
    [1068.95, 1.36],
    [1066.8, 2.526],
    [1066.18, 1.76],
    [1064.35, 0.60],
    [1063.68, 2.16],
    [1061.53, 1.36],
    [1061.48, 1.2],
    [1061.43, 3.584],
    [1060.5, 1.88],
    [1059.23, 0.800],
    [1059.11, 1.722],
    [1058.68, 3.84],
    [1056.53, 3.68],
    [1055.71, 2.336],
    [1055.59, 9.905],
    [1055.58, 13.717],
    [1055.47, 0.88],
    [1055.46, 4.28],
    [1054.72, 4.274],
    [1051.37, 0.44],
    [1050.24, 1.48],
    [1050, 0.5],
    [1048.09, 2.086],
    [1047.85, 0.92],
    [1045.7, 1.892],
    [1044.3, 0.988],
    [1042.15, 0.72],
    [1040, 0.29],
    [1037.85, 0.40],
    [1036.45, 1.12],
    [1034.3, 1.88],
    [1032.15, 0.92],
    [1030, 0.01],
    [1027.85, 0.76],
    [1026.45, 2.88],
    [1024.30, 1.6],
    [1022.15, 4.76],
    [1020, 1.25],
    [1011, 1.25],
    [1000, 2.1663],
    [980, 1.15],
    [960, 1.15],
    [950, 1],
    [940, 1.15],
    [920, 1.15],
    [910, 1.15],
    [900, 1.15],
    [880, 1.15],
    [860, 1.15],
    [840, 1.15],
    [820, 1.15],
    [800, 1.35],
    [775, 1.15],
    [750, 1.15],
    [730, 1.15],
    [700, 1.15],
    [680, 2.4],
    [660, 1.15],
    [640, 1.15],
    [620, 1.15],
    [600, 3.55]
  ];
final List asks = [
    [1298.09, 1.3255],
    [1300.86, 0.1952],
    [1301.41, 0.3029],
    [1301.69, 1.0091],
    [1303.00, 2.5827],
    [1303.50, 1.0079],
    [1304.98, 0.7370],
    [1305.17, 2.0291],
    [1305.38, 2.9982],
    [1305.39, 1.8826],
    [1305.41, 0.4525],
    [1306.78, 2.0741],
    [1308.44, 0.4165],
    [1308.45, 2.3418],
    [1308.92, 1.5622],
    [1310.20, 0.4418],
    [1310.26, 2.4972],
    [1312.07, 0.2935],
    [1312.44, 4.9477],
    [1312.48, 2.2641],
    [1312.51, 2.2843],
    [1312.62, 1.8486],
    [1314.22, 2.2206],
    [1314.24, 2.5888],
    [1314.60, 0.5726],
    [1315.99, 2.4632],
    [1317.39, 0.3860],
    [1317.52, 0.8780],
    [1318.96, 1.3951],
    [1319.00, 2.6069],
    [1319.38, 0.4676],
    [1319.44, 4.6706],
    [1319.45, 1.0358],
    [1320.79, 0.7190],
    [1320.90, 1.2702],
    [1322.32, 2.3727],
    [1322.61, 1.3971],
    [1323.77, 0.6110],
    [1324.92, 2.7034],
    [1325, 0.1996],
    [1325.38, 0.0576],
    [1325.73, 1.5923],
    [1325.95, 1.5641],
    [1327.26, 0.0881],
    [1328.66, 0.3979],
    [1329.06, 1.3722],
    [1330, 10.3732],
    [1330.52, 0.9833],
    [1330.68, 1.3328],
    [1332.13, 1.4280],
    [1333.61, 1.2634],
    [1334.38, 1.0538],
    [1334.83, 2.7269],
    [1335.29, 1.6321],
    [1336.84, 2.0188],
    [1338.19, 2.3423],
    [1338.42, 0.8778],
    [1339.80, 0.6912],
    [1341.28, 1.2270],
    [1341.37, 1.1223],
    [1341.58, 0.8207],
    [1342.1, 0.6437],
    [1342.11, 1.3553],
    [1342.82, 2.3428],
    [1343.56, 2.2590],
    [1344.72, 2.9384],
    [1344.85, 1.4245],
    [1344.88, 0.1087],
    [1345.07, 2.2828],
    [1345.09, 1.0842],
    [1346.47, 0.3244],
    [1348.07, 1.0816],
    [1348.66, 1.8695],
    [1350.31, 0.7121],
    [1350.49, 2.0150],
    [1352.19, 1.2623],
    [1353.64, 1.5577],
    [1353.69, 2.8160],
    [1355.19, 1.4619],
    [1355.30, 1.1421],
    [1356.71, 1.6697],
    [1357.20, 1.4652],
    [1358.72, 2.7895],
    [1359.62, 1.6785],
    [1359.67, 1.0410],
    [1360.12, 0.4350],
    [1361.92, 1.6248],
    [1362.09, 0.6762],
    [1362.26, 0.5492],
    [1362.98, 5.2545],
    [1363.10, 0.3307],
    [1364.75, 0.7129],
    [1366.48, 0.8015],
    [1367.00, 1.3330],
    [1367.20, 0.9610],
    [1367.97, 2.5507],
    [1368.00, 2.4679],
    [1369.88, 2.8126],
    [1370.08, 2.3169],
    [1370.70, 1.9620],
    [1370.83, 1.1307],
    [1370.94, 3.8804],
    [1370.98, 0.1585],
    [1372.64, 0.2421],
    [1372.85, 1.1810],
    [1374.29, 0.1257],
    [1374.45, 0.5912],
    [1374.64, 1.6756],
    [1374.68, 1.1532],
    [1376.25, 0.0353],
    [1377.66, 1.8439],
    [1377.79, 1.2620],
    [1379.26, 1.4622],
    [1379.78, 1.0145],
    [1380.81, 0.9424],
    [1381.75, 1.1069],
    [1382.27, 1.9530],
    [1383.01, 1.1371],
    [1383.19, 0.3409],
    [1384.45, 1.8631],
    [1385.16, 1.3833],
    [1386.40, 1.2713],
    [1387.31, 2.3438],
    [1388.43, 0.7870],
    [1388.57, 1.1877],
    [1390.03, 1.7019],
    [1391.49, 2.8935],
    [1391.67, 0.2917],
    [1392.49, 3.7218],
    [1393.20, 2.6866],
    [1393.34, 1.4653],
    [1395.09, 1.0438],
    [1395.63, 2.2536],
    [1397.08, 0.8579],
    [1400, 0.0496],
    [1401.09, 3.3574],
    [1401.45, 1.9373],
    [1401.76, 1.0737],
    [1405.57, 0.0573],
    [1406.30, 1.5296],
    [1440.40, 2.1740],
    [1441.00, 2.7066],
    [1442.84, 2.1585],
    [1450, 0.05],
    [1556.78, 2.2154],
    [1556.97, 1.6870],
    [1558.80, 1.4795],
    [1558.99, 1.0624],
    [1560.58, 3.4198],
    [1560.73, 1.4592],
    [1560.88, 2.1223],
    [1560.94, 1.9731],
    [1562.58, 0.9781],
    [1562.89, 1.6423],
    [1563.09, 1.0929],
    [1564.71, 4.0266],
    [1565.10, 1.2678],
    [1566.78, 3.3764],
    [1568.62, 1.7139],
    [1568.81, 1.2724],
    [1568.86, 0.8842],
    [1570.49, 0.3956],
    [1572.11, 1.6801],
    [1572.86, 1.7986],
    [1574.83, 1.8303],
    [1576.74, 5.1902],
    [1577.15, 0.5213],
    [1577.19, 0.3660],
    [1577.73, 1.2325],
    [1579.41, 1.0861],
    [1579.60, 0.0875],
    [1580, 0.8006],
    [1581.03, 2.1211],
    [1581.07, 1.1573],
    [1582.72, 1.1671],
    [1582.75, 2.1861],
    [1582.87, 2.1159],
    [1584.81, 2.3329],
    [1585.22, 1.3055],
    [1586.93, 2.5],
    [1591.08, 2.66],
    [1595.23, 2.48],
    [1599.38, 1.44],
    [1603.53, 1.6],
    [1607.68, 1.42],
    [1611.83, 1.26],
    [1615.98, 1.42],
    [1620.13, 1.84],
    [1624.28, 1.68],
    [1628.43, 1.52],
    [1632.58, 1.34],
    [1636.73, 1.12],
    [1640.88, 1.34],
    [1645.03, 2.74],
    [1649.18, 1.12],
    [1653.33, 1.64],
    [1666.66, 1],
    [1934, 0.2586],
    [2188.88, 0.4521],
    [2557.43, 3.52],
    [2575.10, 0.60],
    [2600, 3.5413],
    [2650, 3.44],
    [2700, 4.4400],
    [2750, 3.44],
    [2800, 6.88],
    [2900, 1],
    [3000, 1.0000]
  ];

  List<DepthModel> getDepthList(List dataList) {
    List<DepthModel> depthList = List();
    for (int i = 0; i < 50; i++) {
      double price = dataList[i][0].toDouble();
      double volume = dataList[i][1].toDouble();
      depthList.add(DepthModel(price, volume));
    }
    return depthList;
  }

  CustomPaint depthView() {
    return CustomPaint(
        painter: DepthPainter(getDepthList(bids), getDepthList(asks))
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          color: Color(0xFF101928),
        height: 200,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: depthView(),
      ),
    );
  }
}
