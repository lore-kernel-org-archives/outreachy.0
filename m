X-GM-THRID: 6401831056231628800
X-Received: by 10.107.170.197 with SMTP id g66mr7114744ioj.49.1490629835687;
        Mon, 27 Mar 2017 08:50:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.146.136 with SMTP id u130ls3911933iod.47.gmail; Mon, 27
 Mar 2017 08:50:34 -0700 (PDT)
X-Received: by 10.99.97.8 with SMTP id v8mr8501825pgb.137.1490629834780;
        Mon, 27 Mar 2017 08:50:34 -0700 (PDT)
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
 bh=20UR4ZouOQBSREgYcAqbBj4zcGp3WfjnA/gJFFCtTqQ=;
 b=Yek8ambFimbHjwcN0vfLImYzwl6N87QSjvrxjzoYhKfg2BRJyfmvJD6hOCRMZ1AFGr7cvM7WJ+GJqgIDMeXLyLtmahM1OVdKBwz/OxohbcCX+7CMpm1y/5jw/Ca8mx0VeewAeelfn8WySg0q1yYCMTj4uh6E2gEXUNS+eYw1y/A=
Received: from BY2PR21MB0036.namprd21.prod.outlook.com (10.162.77.23) by
 BY2PR21MB0034.namprd21.prod.outlook.com (10.162.77.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1019.0; Mon, 27 Mar 2017 15:50:31 +0000
Received: from BY2PR21MB0036.namprd21.prod.outlook.com ([10.162.77.23]) by
 BY2PR21MB0036.namprd21.prod.outlook.com ([10.162.77.23]) with mapi id
 15.01.1019.000; Mon, 27 Mar 2017 15:50:31 +0000
From: Matthew Wilcox <mawilcox@microsoft.com>
To: Varsha Rao <rvarsha016@gmail.com>
CC: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: RE: [PATCH v2 1/3] kernel: pid: Update documentation.
Thread-Topic: [PATCH v2 1/3] kernel: pid: Update documentation.
Thread-Index: AQHSpqL6oyFrjlGhIEGoNEhE+xl0m6Goy6JQ
Date: Mon, 27 Mar 2017 15:50:31 +0000
Message-ID: <BY2PR21MB00369B96FBB19906C79B95A4CB330@BY2PR21MB0036.namprd21.prod.outlook.com>
References: <cover.1490581288.git.rvarsha016@gmail.com>
 <58d87ab9.5318620a.e4705.ca98@mx.google.com>
In-Reply-To: <58d87ab9.5318620a.e4705.ca98@mx.google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=microsoft.com;
x-originating-ip: [167.220.1.69]
x-microsoft-exchange-diagnostics: 1;BY2PR21MB0034;7:Q2j1qFOIn5HiGFgCMu+0Ygdjo4ZDzJHSxVP3pTnhxQ3IyDUrhaeBbTixCRF34f5IekFDLhGSNotbyO3DzLRf+nKj4XHd5+c0h2HXB8Pvwoy4xSQcxecjPUZ5kPHuwAp0J5khPTweW4Dm2iBOh3n0WoXAbVef6J1rvbb3X1/CuyO5/hl4kuV+6dxrmToShcEy7uhGZKXAegPoqPqKR6sZssvFMJXmrHxIbKJSOWzJv/4Qbmon59v7km6znz9RLG+DRDz3e99rF2xOmCdtbhGm6luhXJ82tS55jcRgrAebdi93ZhLQU8dr+D+7Ih7g5txsyYhcxUFdoe5f51/HEBFCWKLcJKFtY42f6xlXvtBEoq8=
x-ms-office365-filtering-correlation-id: 9f4b27fe-31e3-4c49-55ea-08d47528ffe4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001)(2017030254075)(48565401081)(201703131423047)(201703031133053);SRVR:BY2PR21MB0034;
x-microsoft-antispam-prvs: <BY2PR21MB0034CCB51D589A7D2B665173CB330@BY2PR21MB0034.namprd21.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(215639381216008);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(61425038)(6040421)(601004)(2401047)(8121501046)(5005006)(10201501046)(93006021)(93001021)(3002001)(6055026)(61426038)(61427038)(6041248)(20161123555025)(20161123558025)(20161123562025)(20161123564025)(201703131423046)(201702281528046)(201703011903046)(201703061421046)(20161123560025)(6072148);SRVR:BY2PR21MB0034;BCL:0;PCL:0;RULEID:;SRVR:BY2PR21MB0034;
x-forefront-prvs: 02596AB7DA
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(979002)(6009001)(39410400002)(39840400002)(39860400002)(39850400002)(39400400002)(39450400003)(377454003)(13464003)(102836003)(6506006)(305945005)(53936002)(110136004)(6246003)(39060400002)(6116002)(575784001)(81166006)(38730400002)(10290500002)(99286003)(86362001)(5005710100001)(55016002)(8990500004)(1411001)(25786009)(53546009)(86612001)(6436002)(8676002)(2906002)(9686003)(74316002)(229853002)(33656002)(76176999)(7736002)(3280700002)(2900100001)(50986999)(3846002)(3660700001)(10090500001)(54356999)(15650500001)(7696004)(5660300001)(4326008)(189998001)(122556002)(8936002)(6916009)(2950100002)(77096006)(66066001)(969003)(989001)(999001)(1009001)(1019001);DIR:OUT;SFP:1102;SCL:1;SRVR:BY2PR21MB0034;H:BY2PR21MB0036.namprd21.prod.outlook.com;FPR:;SPF:None;MLV:ovrnspm;PTR:InfoNoRecords;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2017 15:50:31.5722
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR21MB0034

WW91J3JlIGluY29uc2lzdGVudCBpbiB3aGVyZSB5b3UgcHV0IHRoZSBkb2N1bWVudGF0aW9uLiAg
VHJhZGl0aW9uYWxseSwgaXQncyBlaXRoZXIgb24gdGhlIHNhbWUgbGluZSBhcyBvciBpbW1lZGlh
dGVseSBwcmVjZWRpbmcgdGhlIHRoaW5nIHlvdSdyZSBkb2N1bWVudGluZywgbm90IG9uIHRoZSBs
aW5lIGFmdGVyLg0KDQpBbHNvLCBpZiB5b3UncmUgYWRkaW5nIGRvY3VtZW50YXRpb24gd2hpY2gg
aXMgdXNlZnVsIHRvIHRoZSB1c2VyIG9mIHRoZSBpbnRlcmZhY2UgKGFzIG9wcG9zZWQgdG8gZG9j
dW1lbnRhdGlvbiB1c2VmdWwgZm9yIHBlb3BsZSB3b3JraW5nIG9uIHRoZSBpbXBsZW1lbnRhdGlv
biksIGl0J3MgYSBnb29kIGlkZWEgdG8gdXNlIHRoZSBrZXJuZWwtZG9jIGZvcm1hdCwgZG9jdW1l
bnRlZCBpbiBEb2N1bWVudGF0aW9uL2RvYy1ndWlkZS9rZXJuZWwtZG9jLnJzdA0KDQo+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFZhcnNoYSBSYW8gW21haWx0bzpydmFyc2hh
MDE2QGdtYWlsLmNvbV0NCj4gU2VudDogU3VuZGF5LCBNYXJjaCAyNiwgMjAxNyAxMDozNyBQTQ0K
PiBUbzogTWF0dGhldyBXaWxjb3ggPG1hd2lsY294QG1pY3Jvc29mdC5jb20+DQo+IENjOiBvdXRy
ZWFjaHkta2VybmVsIDxvdXRyZWFjaHkta2VybmVsQGdvb2dsZWdyb3Vwcy5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSCB2MiAxLzNdIGtlcm5lbDogcGlkOiBVcGRhdGUgZG9jdW1lbnRhdGlvbi4NCj4g
DQo+IFRoaXMgcGF0Y2ggYWRkcyBjb21tZW50cyB0byB1cGRhdGUgZG9jdW1lbnRhdGlvbi4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IFZhcnNoYSBSYW8gPHJ2YXJzaGEwMTZAZ21haWwuY29tPg0KPiAt
LS0NCj4gQ2hhbmdlcyBpbiB2MjoNCj4gLSBObyBjaGFuZ2UuDQo+IA0KPiAga2VybmVsL3BpZC5j
IHwgMTYgKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMo
KykNCj4gDQo+IGRpZmYgLS1naXQgYS9rZXJuZWwvcGlkLmMgYi9rZXJuZWwvcGlkLmMNCj4gaW5k
ZXggMDE0M2FjMC4uMGIwYWFkNCAxMDA2NDQNCj4gLS0tIGEva2VybmVsL3BpZC5jDQo+ICsrKyBi
L2tlcm5lbC9waWQuYw0KPiBAQCAtNDMsNiArNDMsNyBAQA0KPiAgI2RlZmluZSBwaWRfaGFzaGZu
KG5yLCBucykJXA0KPiAgCWhhc2hfbG9uZygodW5zaWduZWQgbG9uZyluciArICh1bnNpZ25lZCBs
b25nKW5zLCBwaWRoYXNoX3NoaWZ0KQ0KPiAgc3RhdGljIHN0cnVjdCBobGlzdF9oZWFkICpwaWRf
aGFzaDsNCj4gKy8qIERvdWJseSBsaW5rZWQgaGFzaCBsaXN0cyB0byBmaW5kIFBJRCBpbiBnaXZl
biBuYW1lc3BhY2UuICovDQo+ICBzdGF0aWMgdW5zaWduZWQgaW50IHBpZGhhc2hfc2hpZnQgPSA0
Ow0KPiAgc3RydWN0IHBpZCBpbml0X3N0cnVjdF9waWQgPSBJTklUX1NUUlVDVF9QSUQ7DQo+IA0K
PiBAQCAtNTMsNiArNTQsNyBAQCBpbnQgcGlkX21heCA9IFBJRF9NQVhfREVGQVVMVDsNCj4gIGlu
dCBwaWRfbWF4X21pbiA9IFJFU0VSVkVEX1BJRFMgKyAxOw0KPiAgaW50IHBpZF9tYXhfbWF4ID0g
UElEX01BWF9MSU1JVDsNCj4gDQo+ICsvKiBta19waWQoKSByZXR1cm5zIGRpc3RhbmNlIGJldHdl
ZW4gbWFwIGFuZCBvZmZzZXQgcGlkbWFwLiAqLw0KPiAgc3RhdGljIGlubGluZSBpbnQgbWtfcGlk
KHN0cnVjdCBwaWRfbmFtZXNwYWNlICpwaWRfbnMsDQo+ICAJCXN0cnVjdCBwaWRtYXAgKm1hcCwg
aW50IG9mZikNCj4gIHsNCj4gQEAgLTEwMSw2ICsxMDMsNyBAQCBFWFBPUlRfU1lNQk9MX0dQTChp
bml0X3BpZF9ucyk7DQo+IA0KPiAgc3RhdGljICBfX2NhY2hlbGluZV9hbGlnbmVkX2luX3NtcCBE
RUZJTkVfU1BJTkxPQ0socGlkbWFwX2xvY2spOw0KPiANCj4gKy8qIGZyZWVfcGlkbWFwKCkgOiBJ
dCBmcmVlcyBwcm9jZXNzIGlkLiAqLw0KPiAgc3RhdGljIHZvaWQgZnJlZV9waWRtYXAoc3RydWN0
IHVwaWQgKnVwaWQpDQo+ICB7DQo+ICAJaW50IG5yID0gdXBpZC0+bnI7DQo+IEBAIC0xNTAsNiAr
MTUzLDkgQEAgc3RhdGljIHZvaWQgc2V0X2xhc3RfcGlkKHN0cnVjdCBwaWRfbmFtZXNwYWNlICpw
aWRfbnMsDQo+IGludCBiYXNlLCBpbnQgcGlkKQ0KPiAgCX0gd2hpbGUgKChwcmV2ICE9IGxhc3Rf
d3JpdGUpICYmIChwaWRfYmVmb3JlKGJhc2UsIGxhc3Rfd3JpdGUsIHBpZCkpKTsNCj4gIH0NCj4g
DQo+ICsvKiBhbGxvY19waWRtYXAoKTogSW5jcmVtZW50cyBsYXN0IHBpZCBieSBvbmUgYW5kIHJl
dHVybnMgaXQgaWYgbmV3IHBpZA0KPiArICogaXMgdmFsaWQuDQo+ICsgKi8NCj4gIHN0YXRpYyBp
bnQgYWxsb2NfcGlkbWFwKHN0cnVjdCBwaWRfbmFtZXNwYWNlICpwaWRfbnMpDQo+ICB7DQo+ICAJ
aW50IGksIG9mZnNldCwgbWF4X3NjYW4sIHBpZCwgbGFzdCA9IHBpZF9ucy0+bGFzdF9waWQ7DQo+
IEBAIC0yMTIsNiArMjE4LDkgQEAgc3RhdGljIGludCBhbGxvY19waWRtYXAoc3RydWN0IHBpZF9u
YW1lc3BhY2UgKnBpZF9ucykNCj4gIAlyZXR1cm4gLUVBR0FJTjsNCj4gIH0NCj4gDQo+ICsvKiBu
ZXh0X3BpZG1hcCgpIGlzIHVzZWQgdG8gZmluZCB0aGUgZmlyc3QgcGlkIHdoaWNoIGlzIGdyZWF0
ZXIgdGhhbiBwcmV2aW91cw0KPiArICogbGFzdCBhbGxvY2F0ZWQgcGlkLg0KPiArICovDQo+ICBp
bnQgbmV4dF9waWRtYXAoc3RydWN0IHBpZF9uYW1lc3BhY2UgKnBpZF9ucywgdW5zaWduZWQgaW50
IGxhc3QpDQo+ICB7DQo+ICAJaW50IG9mZnNldDsNCj4gQEAgLTIzMyw2ICsyNDIsNyBAQCBpbnQg
bmV4dF9waWRtYXAoc3RydWN0IHBpZF9uYW1lc3BhY2UgKnBpZF9ucywNCj4gdW5zaWduZWQgaW50
IGxhc3QpDQo+ICAJcmV0dXJuIC0xOw0KPiAgfQ0KPiANCj4gKy8qIHB1dF9waWQoKSBjaGVja3Mg
d2hldGhlciBwaWQgY2FuIGJlIHJlYWxsb2NhdGVkLiAqLw0KPiAgdm9pZCBwdXRfcGlkKHN0cnVj
dCBwaWQgKnBpZCkNCj4gIHsNCj4gIAlzdHJ1Y3QgcGlkX25hbWVzcGFjZSAqbnM7DQo+IEBAIC0y
NDksNiArMjU5LDkgQEAgdm9pZCBwdXRfcGlkKHN0cnVjdCBwaWQgKnBpZCkNCj4gIH0NCj4gIEVY
UE9SVF9TWU1CT0xfR1BMKHB1dF9waWQpOw0KPiANCj4gKy8qIGRlbGF5ZWRfcHV0X3BpZCgpOiBG
aW5kcyB0aGUgcmVhbCBsb2NhdGlvbiBvZiBzdHJ1Y3QgcGlkIGluIHRoZQ0KPiArICogbWVtb3J5
IGFuZCBjaGVja3Mgd2hldGhlciBpdCBjYW4gYmUgcmVhbGxvY2F0ZWQgd2l0aCBwdXRfcGlkKCku
DQo+ICsgKi8NCj4gIHN0YXRpYyB2b2lkIGRlbGF5ZWRfcHV0X3BpZChzdHJ1Y3QgcmN1X2hlYWQg
KnJocCkNCj4gIHsNCj4gIAlzdHJ1Y3QgcGlkICpwaWQgPSBjb250YWluZXJfb2YocmhwLCBzdHJ1
Y3QgcGlkLCByY3UpOw0KPiBAQCAtMjkzLDYgKzMwNiw5IEBAIHZvaWQgZnJlZV9waWQoc3RydWN0
IHBpZCAqcGlkKQ0KPiAgCWNhbGxfcmN1KCZwaWQtPnJjdSwgZGVsYXllZF9wdXRfcGlkKTsNCj4g
IH0NCj4gDQo+ICsvKiBhbGxvY19waWQoKTogQWxsb2NhdGVzIGxvY2FsIHBpZCBmb3IgZWFjaCBt
dWx0aXBsZSBuYW1lc3BhY2VzDQo+ICsgKiBpbiB3aGljaCBuZXcgcHJvY2VzcyBjcmVhdGVkIGlz
IHZpc2libGUuDQo+ICsgKi8NCj4gIHN0cnVjdCBwaWQgKmFsbG9jX3BpZChzdHJ1Y3QgcGlkX25h
bWVzcGFjZSAqbnMpDQo+ICB7DQo+ICAJc3RydWN0IHBpZCAqcGlkOw0KPiAtLQ0KPiAyLjkuMw0K
DQo=

