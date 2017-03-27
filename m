X-GM-THRID: 6401819323480932352
X-Received: by 10.31.174.209 with SMTP id x200mr5656520vke.8.1490629880925;
        Mon, 27 Mar 2017 08:51:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.41 with SMTP id n41ls3986484ioe.33.gmail; Mon, 27 Mar
 2017 08:51:20 -0700 (PDT)
X-Received: by 10.107.132.92 with SMTP id g89mr7751072iod.7.1490629880334;
        Mon, 27 Mar 2017 08:51:20 -0700 (PDT)
Return-Path: <mawilcox@microsoft.com>
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (mail-dm3nam03on0117.outbound.protection.outlook.com. [104.47.41.117])
        by gmr-mx.google.com with ESMTPS id a3si155917pfb.2.2017.03.27.08.51.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 08:51:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mawilcox@microsoft.com designates 104.47.41.117 as permitted sender) client-ip=104.47.41.117;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com;
       spf=pass (google.com: domain of mawilcox@microsoft.com designates 104.47.41.117 as permitted sender) smtp.mailfrom=mawilcox@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=O+qfCjdJkMlxx0vNU82/FoEyiKQEYmxzVvpAfaoTOdw=;
 b=X8IRKJka6Pbh9WZpZS1vj83z0Rnt8KY889aA0USu3dB5JuUjU+/BWEZ1wd1rd5rFrr+Na2LohDIE2ImQCA+67qBCnrF6YhizThbxtNcjZHgUZ5/PPsyzFv0woVf3JYJuO88HPrJ7u9pxOnKDOkmYUH1vb0qYz6hii86o6cN3XZU=
Received: from BY2PR21MB0036.namprd21.prod.outlook.com (10.162.77.23) by
 BY2PR21MB0034.namprd21.prod.outlook.com (10.162.77.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1019.0; Mon, 27 Mar 2017 15:51:18 +0000
Received: from BY2PR21MB0036.namprd21.prod.outlook.com ([10.162.77.23]) by
 BY2PR21MB0036.namprd21.prod.outlook.com ([10.162.77.23]) with mapi id
 15.01.1019.000; Mon, 27 Mar 2017 15:51:18 +0000
From: Matthew Wilcox <mawilcox@microsoft.com>
To: Gargi Sharma <gs051095@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: RE: [PATCH 2/3] kernel: pid_namespace: Fix line over 80 characters
Thread-Topic: [PATCH 2/3] kernel: pid_namespace: Fix line over 80 characters
Thread-Index: AQHSpkAatjygvZaSwE+SsBC+p1bCsKGozd2Q
Date: Mon, 27 Mar 2017 15:51:18 +0000
Message-ID: <BY2PR21MB0036C32CABF5A79D30B979A5CB330@BY2PR21MB0036.namprd21.prod.outlook.com>
References: <cover.1490539466.git.gs051095@gmail.com>
 <38ecc07b35b00ee00b4c90f11e1dd17bffe26d36.1490539466.git.gs051095@gmail.com>
In-Reply-To: <38ecc07b35b00ee00b4c90f11e1dd17bffe26d36.1490539466.git.gs051095@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=microsoft.com;
x-originating-ip: [167.220.1.69]
x-microsoft-exchange-diagnostics: 1;BY2PR21MB0034;7:vAPgkq+vXNYqs/9GDI0bHYJyhdvPksszwihO0FYJbMUVt1ONn6o8FI11cJc7DWfDWHKAWvxY5D2aj8nJ12DjOOL7x5nk9WriRXA0kCSIFqIq9laa134AQ2aFqY5tHTOmwXC7UXicT5ytYMwPxughTUO0HiX6TuVgLL8DQoNBQd+z2VhpdDquaxUcK/i00rp2PiLYrQYirL4sPvdYcu99tRVRkPR0xwe5MwbyCrttcIz58nhcLZaIewHKWvRUKK45aYTzvzjKmA+nfjfkj+lgvJT+X9GDqj/J5D67MMyRw32g84a+Q7vMrXySW+syaWcs4XlURBv2FUlwfRq+GcTcdpPGx6ZXAtA8GebA1YC8p5A=
x-ms-office365-filtering-correlation-id: b373bd51-676d-4cb6-b46f-08d475291bf8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(2017030254075)(48565401081)(201703131423047)(201703031133053);SRVR:BY2PR21MB0034;
x-microsoft-antispam-prvs: <BY2PR21MB0034D2D59F58420554FC3C00CB330@BY2PR21MB0034.namprd21.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(215639381216008);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(61425038)(6040421)(601004)(2401047)(8121501046)(5005006)(10201501046)(93006021)(93001021)(3002001)(6055026)(61426038)(61427038)(6041248)(20161123555025)(20161123558025)(20161123562025)(20161123564025)(201703131423046)(201702281528046)(201703011903046)(201703061421046)(20161123560025)(6072148);SRVR:BY2PR21MB0034;BCL:0;PCL:0;RULEID:;SRVR:BY2PR21MB0034;
x-forefront-prvs: 02596AB7DA
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(6009001)(39410400002)(39840400002)(39860400002)(39850400002)(39400400002)(39450400003)(377454003)(13464003)(102836003)(6506006)(305945005)(53936002)(110136004)(6246003)(39060400002)(6116002)(81166006)(38730400002)(10290500002)(99286003)(86362001)(5005710100001)(55016002)(8990500004)(1411001)(25786009)(53546009)(86612001)(6436002)(8676002)(2906002)(9686003)(74316002)(229853002)(33656002)(76176999)(7736002)(3280700002)(2900100001)(50986999)(3846002)(3660700001)(10090500001)(54356999)(7696004)(5660300001)(4326008)(189998001)(122556002)(8936002)(6916009)(2950100002)(77096006)(66066001);DIR:OUT;SFP:1102;SCL:1;SRVR:BY2PR21MB0034;H:BY2PR21MB0036.namprd21.prod.outlook.com;FPR:;SPF:None;MLV:ovrnspm;PTR:InfoNoRecords;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2017 15:51:18.6819
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR21MB0034

T29oLCBubywgZG9uJ3Qgc3BsaXQgaXQgaGVyZS4gIFBlb3BsZSBncmVwIGZvciAnc3RydWN0IHBp
ZF9uYW1lc3BhY2UnIGFuZCB0aGlzIHNwbGl0IHdpbGwgbWVhbiB0aGV5IGRvbid0IGZpbmQgaXQu
ICBJIHdvdWxkIHByb2JhYmx5IHNwbGl0IGl0IGJldHdlZW4gdGhlICcqJyBhbmQgdGhlICdjcmVh
dGUnLiAgWW91IGNvdWxkIGFsc28gc3BsaXQgaXQgYmV0d2VlbiB0aGUgJ3N0YXRpYycgYW5kIHRo
ZSAnc3RydWN0Jy4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBHYXJn
aSBTaGFybWEgW21haWx0bzpnczA1MTA5NUBnbWFpbC5jb21dDQo+IFNlbnQ6IFN1bmRheSwgTWFy
Y2ggMjYsIDIwMTcgMTA6NDggQU0NCj4gVG86IE1hdHRoZXcgV2lsY294IDxtYXdpbGNveEBtaWNy
b3NvZnQuY29tPg0KPiBDYzogb3V0cmVhY2h5LWtlcm5lbEBnb29nbGVncm91cHMuY29tOyBHYXJn
aSBTaGFybWENCj4gPGdzMDUxMDk1QGdtYWlsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDIvM10g
a2VybmVsOiBwaWRfbmFtZXNwYWNlOiBGaXggbGluZSBvdmVyIDgwIGNoYXJhY3RlcnMNCj4gDQo+
IExpbmUgb3ZlciA4MCBjaGFyYWN0ZXJzIGFyZSBzcGxpdCB0byBmaXggdGhlIGZvbGxvd2luZyBj
aGVja3BhdGNoDQo+IGlzc3VlOg0KPiBXQVJOSU5HOiBsaW5lIG92ZXIgODAgY2hhcmFjdGVycw0K
PiANCj4gU2lnbmVkLW9mZi1ieTogR2FyZ2kgU2hhcm1hIDxnczA1MTA5NUBnbWFpbC5jb20+DQo+
IC0tLQ0KPiAga2VybmVsL3BpZF9uYW1lc3BhY2UuYyB8IDUgKysrLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
a2VybmVsL3BpZF9uYW1lc3BhY2UuYyBiL2tlcm5lbC9waWRfbmFtZXNwYWNlLmMNCj4gaW5kZXgg
NmFjZTFlMy4uMThmNTM4NSAxMDA2NDQNCj4gLS0tIGEva2VybmVsL3BpZF9uYW1lc3BhY2UuYw0K
PiArKysgYi9rZXJuZWwvcGlkX25hbWVzcGFjZS5jDQo+IEBAIC05Miw4ICs5Miw5IEBAIHN0YXRp
YyB2b2lkIGRlY19waWRfbmFtZXNwYWNlcyhzdHJ1Y3QgdWNvdW50cyAqdWNvdW50cykNCj4gIAlk
ZWNfdWNvdW50KHVjb3VudHMsIFVDT1VOVF9QSURfTkFNRVNQQUNFUyk7DQo+ICB9DQo+IA0KPiAt
c3RhdGljIHN0cnVjdCBwaWRfbmFtZXNwYWNlICpjcmVhdGVfcGlkX25hbWVzcGFjZShzdHJ1Y3Qg
dXNlcl9uYW1lc3BhY2UNCj4gKnVzZXJfbnMsDQo+IC0Jc3RydWN0IHBpZF9uYW1lc3BhY2UgKnBh
cmVudF9waWRfbnMpDQo+ICtzdGF0aWMgc3RydWN0DQo+ICtwaWRfbmFtZXNwYWNlICpjcmVhdGVf
cGlkX25hbWVzcGFjZShzdHJ1Y3QgdXNlcl9uYW1lc3BhY2UgKnVzZXJfbnMsDQo+ICsJCQkJICAg
IHN0cnVjdCBwaWRfbmFtZXNwYWNlICpwYXJlbnRfcGlkX25zKQ0KPiAgew0KPiAgCXN0cnVjdCBw
aWRfbmFtZXNwYWNlICpuczsNCj4gIAl1bnNpZ25lZCBpbnQgbGV2ZWwgPSBwYXJlbnRfcGlkX25z
LT5sZXZlbCArIDE7DQo+IC0tDQo+IDIuNy40DQoNCg==

