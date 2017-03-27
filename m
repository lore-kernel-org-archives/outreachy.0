X-GM-THRID: 6401819323480932352
X-Received: by 10.36.29.7 with SMTP id 7mr2896328itj.17.1490629835686;
        Mon, 27 Mar 2017 08:50:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.133 with SMTP id 127ls1876383ith.16.canary-gmail; Mon,
 27 Mar 2017 08:50:35 -0700 (PDT)
X-Received: by 10.36.127.21 with SMTP id r21mr2876464itc.11.1490629835018;
        Mon, 27 Mar 2017 08:50:35 -0700 (PDT)
Return-Path: <mawilcox@microsoft.com>
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on0103.outbound.protection.outlook.com. [104.47.36.103])
        by gmr-mx.google.com with ESMTPS id p186si119742itc.2.2017.03.27.08.50.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 08:50:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mawilcox@microsoft.com designates 104.47.36.103 as permitted sender) client-ip=104.47.36.103;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com;
       spf=pass (google.com: domain of mawilcox@microsoft.com designates 104.47.36.103 as permitted sender) smtp.mailfrom=mawilcox@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=TwOsU9+vSekZ0gQeE17gvOsttZvBWokiNcjDBpFJaNc=;
 b=H6AUrnYslhUr6toUCVSINIaWe8WyMfdgyN+3cwC+63S2mRT7KcmbTeVqJvspEbKGZ1E7sMhwB/+2buuPWnwEPuTqY0uqU0erHZkQVhLCA605PSfoBBiKg2+gXLu2YxKO92GR9DpoQ1ngdVMNQlI/zkKrKwe+jQsAizCC/uoMEOM=
Received: from BY2PR21MB0036.namprd21.prod.outlook.com (10.162.77.23) by
 BY2PR21MB0034.namprd21.prod.outlook.com (10.162.77.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1019.0; Mon, 27 Mar 2017 15:50:33 +0000
Received: from BY2PR21MB0036.namprd21.prod.outlook.com ([10.162.77.23]) by
 BY2PR21MB0036.namprd21.prod.outlook.com ([10.162.77.23]) with mapi id
 15.01.1019.000; Mon, 27 Mar 2017 15:50:33 +0000
From: Matthew Wilcox <mawilcox@microsoft.com>
To: Gargi Sharma <gs051095@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	Varsha Rao <rvarsha016@gmail.com>
Subject: RE: [PATCH 1/3] kernel: pid_namespace: Remove return statement from
 void function
Thread-Topic: [PATCH 1/3] kernel: pid_namespace: Remove return statement from
 void function
Thread-Index: AQHSpkAW4UMZKWRlRUCvIJiexfbnZ6GozYog
Date: Mon, 27 Mar 2017 15:50:32 +0000
Message-ID: <BY2PR21MB0036BDB06AF2D4C07FB708B4CB330@BY2PR21MB0036.namprd21.prod.outlook.com>
References: <cover.1490539466.git.gs051095@gmail.com>
 <4e1f050c2aaf767da474b990afa3b0d49c3442e3.1490539466.git.gs051095@gmail.com>
In-Reply-To: <4e1f050c2aaf767da474b990afa3b0d49c3442e3.1490539466.git.gs051095@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=microsoft.com;
x-originating-ip: [167.220.1.69]
x-microsoft-exchange-diagnostics: 1;BY2PR21MB0034;7:idblj6SSZ5q4/85zm541QXTbkiIApvEbCthEtdis7hHR+Wym+9y72lXVBAROzNsTsk+8P5lv7WA3pxguRQMoEtxztl6i0JEvqVmboZ1H9yIHddd//Jj2yIz1Xy6Wg4QP7iW3YhyDUU9ybNqaKiiZC00GDlXlqRD5lcnMZhrdWXhb2E7MttbhgUAOSnkY9wA9mYTo9+v/74ExoZIIZ1FDYbQCPPA6N7hpzPwe/fr4TZXZ88N5L1VBoxbw4g9ZgzYPk9L3IXyO6aPLdqLfdAQxbJS8GsRVJP+ycxonO1k+FKrL3AsgNDabV8yrSyuzymOh0TrVwRRuY8O35Xrd1j7sqRKvWHZMjqFi5jVQZWIqUs0=
x-ms-office365-filtering-correlation-id: 48f092cf-7779-4e9a-ad41-08d4752900de
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(2017030254075)(48565401081)(201703131423047)(201703031133053);SRVR:BY2PR21MB0034;
x-microsoft-antispam-prvs: <BY2PR21MB0034BCA6AD1DCE69D0AFC7D1CB330@BY2PR21MB0034.namprd21.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(215639381216008);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(61425038)(6040421)(601004)(2401047)(8121501046)(5005006)(10201501046)(93006021)(93001021)(3002001)(6055026)(61426038)(61427038)(6041248)(20161123555025)(20161123558025)(20161123562025)(20161123564025)(201703131423046)(201702281528046)(201703011903046)(201703061421046)(20161123560025)(6072148);SRVR:BY2PR21MB0034;BCL:0;PCL:0;RULEID:;SRVR:BY2PR21MB0034;
x-forefront-prvs: 02596AB7DA
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(6009001)(39410400002)(39840400002)(39860400002)(39850400002)(39400400002)(39450400003)(377454003)(13464003)(102836003)(6506006)(305945005)(53936002)(110136004)(6246003)(39060400002)(6116002)(81166006)(38730400002)(10290500002)(99286003)(86362001)(5005710100001)(55016002)(8990500004)(1411001)(25786009)(53546009)(86612001)(6436002)(8676002)(2906002)(9686003)(54906002)(74316002)(229853002)(33656002)(76176999)(7736002)(3280700002)(2900100001)(50986999)(3846002)(3660700001)(10090500001)(54356999)(7696004)(5660300001)(4326008)(189998001)(122556002)(8936002)(6916009)(2950100002)(77096006)(66066001);DIR:OUT;SFP:1102;SCL:1;SRVR:BY2PR21MB0034;H:BY2PR21MB0036.namprd21.prod.outlook.com;FPR:;SPF:None;MLV:ovrnspm;PTR:InfoNoRecords;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2017 15:50:32.8534
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR21MB0034

WWVzLCBJIGFncmVlLg0KDQpJJ20gZ29pbmcgdG8gc3RhcnQgYSBnaXQgdHJlZSB3aXRoIHRoZXNl
IHZhcmlvdXMgY2xlYW51cHMgaW4gaXQgc28gR2FyZ2kgYW5kIFZhcnNoYSBhcmVuJ3QgZHVwbGlj
YXRpbmcgZWFjaCBvdGhlcidzIHdvcmsgc28gbXVjaCA6LSkNCg0KPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiBGcm9tOiBHYXJnaSBTaGFybWEgW21haWx0bzpnczA1MTA5NUBnbWFpbC5j
b21dDQo+IFNlbnQ6IFN1bmRheSwgTWFyY2ggMjYsIDIwMTcgMTA6NDggQU0NCj4gVG86IE1hdHRo
ZXcgV2lsY294IDxtYXdpbGNveEBtaWNyb3NvZnQuY29tPg0KPiBDYzogb3V0cmVhY2h5LWtlcm5l
bEBnb29nbGVncm91cHMuY29tOyBHYXJnaSBTaGFybWENCj4gPGdzMDUxMDk1QGdtYWlsLmNvbT4N
Cj4gU3ViamVjdDogW1BBVENIIDEvM10ga2VybmVsOiBwaWRfbmFtZXNwYWNlOiBSZW1vdmUgcmV0
dXJuIHN0YXRlbWVudCBmcm9tDQo+IHZvaWQgZnVuY3Rpb24NCj4gDQo+IHphcF9waWRfbnNfcHJv
Y2Vzc2VzIGlzIGEgdm9pZCBmdW5jdGlvbiBhbmQgdGhlIHJldHVybg0KPiBzdGF0ZW1lbnQgYXQg
dGhlIGVuZCBpcyBub3QgdXNlZnVsLg0KPiANCj4gRm91bmQgd2l0aCBjaGVja3BhdGNoLg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogR2FyZ2kgU2hhcm1hIDxnczA1MTA5NUBnbWFpbC5jb20+DQo+IC0t
LQ0KPiAga2VybmVsL3BpZF9uYW1lc3BhY2UuYyB8IDEgLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEg
ZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9rZXJuZWwvcGlkX25hbWVzcGFjZS5jIGIv
a2VybmVsL3BpZF9uYW1lc3BhY2UuYw0KPiBpbmRleCA1ZjI5Njg3Li42YWNlMWUzIDEwMDY0NA0K
PiAtLS0gYS9rZXJuZWwvcGlkX25hbWVzcGFjZS5jDQo+ICsrKyBiL2tlcm5lbC9waWRfbmFtZXNw
YWNlLmMNCj4gQEAgLTI4Nyw3ICsyODcsNiBAQCB2b2lkIHphcF9waWRfbnNfcHJvY2Vzc2VzKHN0
cnVjdCBwaWRfbmFtZXNwYWNlDQo+ICpwaWRfbnMpDQo+ICAJCWN1cnJlbnQtPnNpZ25hbC0+Z3Jv
dXBfZXhpdF9jb2RlID0gcGlkX25zLT5yZWJvb3Q7DQo+IA0KPiAgCWFjY3RfZXhpdF9ucyhwaWRf
bnMpOw0KPiAtCXJldHVybjsNCj4gIH0NCj4gDQo+ICAjaWZkZWYgQ09ORklHX0NIRUNLUE9JTlRf
UkVTVE9SRQ0KPiAtLQ0KPiAyLjcuNA0KDQo=

