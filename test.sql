/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MongoDB
 Source Server Version : 40213
 Source Host           : localhost:27017
 Source Schema         : test

 Target Server Type    : MongoDB
 Target Server Version : 40213
 File Encoding         : 65001

 Date: 31/03/2021 16:14:21
*/


// ----------------------------
// Collection structure for manufacturers
// ----------------------------
db.getCollection("manufacturers").drop();
db.createCollection("manufacturers");

// ----------------------------
// Documents of manufacturers
// ----------------------------
db.getCollection("manufacturers").insert([ {
    _id: ObjectId("5e194b252dfe031505deaf63"),
    name: "华为",
    __v: NumberInt("0")
} ]);
db.getCollection("manufacturers").insert([ {
    _id: ObjectId("5e194b352dfe031505deaf65"),
    name: "Vivo",
    __v: NumberInt("0")
} ]);
db.getCollection("manufacturers").insert([ {
    _id: ObjectId("5e194b402dfe031505deaf66"),
    name: "OPPO",
    __v: NumberInt("0")
} ]);
db.getCollection("manufacturers").insert([ {
    _id: ObjectId("5e194b2d2dfe031505deaf64"),
    name: "小米",
    __v: NumberInt("0")
} ]);
db.getCollection("manufacturers").insert([ {
    _id: ObjectId("5e194b192dfe031505deaf62"),
    name: "Apple Inc",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for products
// ----------------------------
db.getCollection("products").drop();
db.createCollection("products");

// ----------------------------
// Documents of products
// ----------------------------
db.getCollection("products").insert([ {
    _id: ObjectId("5e194c532dfe031505deaf68"),
    name: "荣耀20",
    description: "李现同款 4800万超广角AI四摄 3200W美颜自拍 麒麟Kirin980全网通版8GB+128GB 蓝水翡翠 全面屏手机",
    image: "https://article-fd.zol-img.com.cn/t_s640x2000/g4/M08/0E/0E/ChMlzF2myueILMN_AAGSPzoz23wAAYJ3QADttsAAZJX090.jpg",
    price: NumberInt("2499"),
    manufacturer: ObjectId("5e194b252dfe031505deaf63"),
    __v: NumberInt("0")
} ]);
db.getCollection("products").insert([ {
    _id: ObjectId("5e194c762dfe031505deaf69"),
    name: "MIX2S",
    description: "骁龙845 全面屏NFC 游戏智能拍照手机 白色 全网通 6+128",
    image: "http://himg2.huanqiu.com/attachment2010/2018/0129/08/39/20180129083933823.jpg",
    price: NumberInt("1688"),
    manufacturer: ObjectId("5e194b2d2dfe031505deaf64"),
    __v: NumberInt("0")
} ]);
db.getCollection("products").insert([ {
    _id: ObjectId("5e194cc42dfe031505deaf6a"),
    name: "Reno2",
    description: "【12期免息1年碎屏险】4800万变焦四摄8+128G防抖6.5英寸全面屏新 深海夜光(8GB+128GB) 官方标配",
    image: "https://news.maxabout.com/wp-content/uploads/2019/08/OPPO-Reno-2-1.jpg",
    price: NumberInt("2999"),
    manufacturer: ObjectId("5e194b402dfe031505deaf66"),
    __v: NumberInt("0")
} ]);
db.getCollection("products").insert([ {
    _id: ObjectId("5e194c1b2dfe031505deaf67"),
    name: "iPhone",
    description: "iPhone是美国苹果公司研发的智能手机系列，搭载苹果公司研发的iOS操作系统",
    image: "https://i.gadgets360cdn.com/large/iPhone11_leak_1567592422045.jpg",
    price: NumberInt("2000"),
    manufacturer: ObjectId("5e194b192dfe031505deaf62"),
    __v: NumberInt("0")
} ]);
db.getCollection("products").insert([ {
    _id: ObjectId("6062c41d22c2e53abc4fcf68"),
    name: "One 5",
    description: "一加手机水水水水水水所所",
    image: "https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/71b80ad3d4c54a92b0b807271776d8ba~tplv-k3u1fbpfcp-watermark.image",
    price: NumberInt("19999"),
    manufacturer: ObjectId("5e194b192dfe031505deaf62"),
    __v: NumberInt("0")
} ]);
