X-GM-THRID: 6749590938737180672
X-Received: by 2002:a81:928e:: with SMTP id j136mr2967153ywg.497.1571844272656;
        Wed, 23 Oct 2019 08:24:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:62c3:: with SMTP id w186ls419414ywb.5.gmail; Wed, 23 Oct
 2019 08:24:31 -0700 (PDT)
X-Received: by 2002:a81:270f:: with SMTP id n15mr3307349ywn.363.1571844271329;
        Wed, 23 Oct 2019 08:24:31 -0700 (PDT)
Received: by 2002:a81:89c7:0:0:0:0:0 with SMTP id z190msywf;
        Wed, 23 Oct 2019 08:09:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWClUJcjOqyvpKg2/+79AiuJVMP7O04cNZSARspp1NM0WWlLcqkXmpQClX3F8QLN4bwVv4
X-Received: by 2002:a81:bb52:: with SMTP id a18mr3223422ywl.23.1571843379668;
        Wed, 23 Oct 2019 08:09:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571843379; cv=pass;
        d=google.com; s=arc-20160816;
        b=XQThjANRyV1IkBFscMVzFT6h09OZPg/6Zgb/lQk2eBW8VWj/YXTfK35T0Iv1eoBg0s
         RftGdtAIsTZ7i+BWP1ZzoVUxYcmIAKYbZ9YUfgIrzWWHgwgpb2sAeyVYVWdzl6gJzSHZ
         lyJe2Bvi6V11qTmPkW/3819OtXamNV+taC/IYFomAB89HF6biQ3BSIZhhBJwoJuJ5yiV
         6PVikRGS3KHpJlclPL2UT51Smj9y/tjUBHA5uD1B27T8g45AeHY89M1H/yN9EC3Qu1L6
         TltwNhwlOWCyYS1mvCotnbRj9Zp/av76pF6vP3Nu5UW2IVMpcbty71VmvXszJkxTmKgd
         SU8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=ow02aj8UJjqfQA2PqxSMpmLNMqA/6E0y4MiGFlCzY7g=;
        b=zB70UgzL6/d+DagERkHJovX0M9HLaU9aRt9iy7Y6s5RhlwRij14k1E+3Va2sX3KDNA
         GgfiGmYnLhIeQ7nyrtNDK6aKI9m3G2Rq/AOtcG/aRfAywsTdDbuicGE2rnt16rUhrK50
         KxpfsgCr8IT3zh+2tfxagdeOHCZy09/ziNq6tiQgY27qAE8Ivad8LwNWWL+8Et/yHgAe
         bTlRD2bvB1UMAh3sEMIBHaFRieYRzDYeKTVrMKCaKEapsWqUGY/Dvzt6k5k5HDWZkyzS
         G7wjupnLojB1e47ek/dnkQZSPsg2BCizKNgbGMoqOEU8g3I+z9Cqj8N/IJ0l+v3Qb1EA
         8bOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=uQj8g4tb;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.78.77 is neither permitted nor denied by best guess record for domain of harry.wentland@amd.com) smtp.mailfrom=Harry.Wentland@amd.com
Return-Path: <Harry.Wentland@amd.com>
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (mail-eopbgr780077.outbound.protection.outlook.com. [40.107.78.77])
        by gmr-mx.google.com with ESMTPS id r9si1425567ybc.0.2019.10.23.08.09.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 23 Oct 2019 08:09:39 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.78.77 is neither permitted nor denied by best guess record for domain of harry.wentland@amd.com) client-ip=40.107.78.77;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=uQj8g4tb;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.78.77 is neither permitted nor denied by best guess record for domain of harry.wentland@amd.com) smtp.mailfrom=Harry.Wentland@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cMOorKBk+92hZ4hTdu7nXfWg8h4xntppI1J72dZOxmqr+8muJWiipT4UOuoYxNbQbCUbPBEqJHWR7Afjm+reBi3UxcJ+H1fpPH7kbumbhsWZxYu9KqIzG0yWkDHgcQZ0m/zUvH3GmmCt9cbu19yRshU1DXNixhiUv8RfOhO97Zl1wX5Zb3WpkLLhbDuyHMHhmWc/brwdBHhqNp9H4HbPjOVg6xr48m4B9v67A6S/Ww3Q3uiwKPlS7mVu8oZBrqFqXG/AMl9exy6I//1s6rJZ8FpFJuM3ee8Dx33A7Ij8SeODyKZsaHcsGgCCtDzu2XpMmxavVbyYEfWoIvHP34gUQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ow02aj8UJjqfQA2PqxSMpmLNMqA/6E0y4MiGFlCzY7g=;
 b=XwM7iC9ivM2spbK9/V+rpalieZvep/1WO2IsodiaRSHtFIZHbwHoV3Pgo6dAXg8KVFd67ZdRuE1Ey4xqCSdEbAsceC5oUPcnQSXzmQ+knum1n5+HkUeUmUHz8Nz4OZMwFM0G2/AAXbM/6tu79MUozuYh533unHJXmHiKlihkkO1qRRoP8MQkOpnfN0tVcpTlLmFDE3Cw6neL7TY8bl3tKajJqqXFwPBmWXmF6y3CQnCeSxCbR32wNQ7bLHfY790Uupbst8xdqiwn6AxWnQJnyz7b/dfR8yNlunawv/qMwtAISVuK4CbrE+z8RS9d4u5bnfR5cIhXiUvGiSGyAp/wPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ow02aj8UJjqfQA2PqxSMpmLNMqA/6E0y4MiGFlCzY7g=;
 b=uQj8g4tbW889hdsRB06AuP9e/97QPFQ9IkQux3Sk/reQmf1f5XJGuLo9Fu6t8t5tnNr1u/c6z9cuHMWutF0M9VXvml1HvvOvsmX7XTYwz+XW/UcDalywnroTdAeQDdsaiK5PQBtOdBy7QVczRPVuRo1m5IxyVz0mAgM1sk5VvKw=
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com (10.172.79.7) by
 CY4PR1201MB2503.namprd12.prod.outlook.com (10.172.116.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Wed, 23 Oct 2019 15:09:37 +0000
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::5471:f58b:733e:1a61]) by CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::5471:f58b:733e:1a61%7]) with mapi id 15.20.2367.025; Wed, 23 Oct 2019
 15:09:37 +0000
From: Harry Wentland <hwentlan@amd.com>
To: Wambui Karuga <wambui@karuga.xyz>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>
CC: "airlied@linux.ie" <airlied@linux.ie>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "amd-gfx@lists.freedesktop.org"
	<amd-gfx@lists.freedesktop.org>, "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>, "Deucher, Alexander"
	<Alexander.Deucher@amd.com>, "Koenig, Christian" <Christian.Koenig@amd.com>
Subject: Re: [PATCH] drm/amd/amdgpu: correct length misspelling
Thread-Topic: [PATCH] drm/amd/amdgpu: correct length misspelling
Thread-Index: AQHVhtphIugDXIurOUq9HckZdzuHT6doWgwA
Date: Wed, 23 Oct 2019 15:09:37 +0000
Message-ID: <6c7a76ae-6af7-39bf-5d5a-a2f5e77d57b3@amd.com>
References: <20191019073430.22093-1-wambui@karuga.xyz>
In-Reply-To: <20191019073430.22093-1-wambui@karuga.xyz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [165.204.55.250]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
x-clientproxiedby: YT1PR01CA0001.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::14)
 To CY4PR1201MB0230.namprd12.prod.outlook.com (2603:10b6:910:1e::7)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Harry.Wentland@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 71decd2c-379c-40d8-f783-08d757cb050c
x-ms-traffictypediagnostic: CY4PR1201MB2503:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs:
 <CY4PR1201MB250348E7C5065AB2B1DFF24F8C6B0@CY4PR1201MB2503.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10009020)(4636009)(366004)(39860400002)(346002)(136003)(396003)(376002)(199004)(189003)(305945005)(110136005)(3846002)(2906002)(7736002)(4326008)(6246003)(6116002)(52116002)(6486002)(71190400001)(76176011)(54906003)(4001150100001)(71200400001)(316002)(36756003)(229853002)(99286004)(6436002)(58126008)(6512007)(31696002)(478600001)(81156014)(8936002)(81166006)(446003)(14454004)(8676002)(186003)(11346002)(476003)(31686004)(386003)(5660300002)(53546011)(256004)(102836004)(6506007)(26005)(2616005)(14444005)(25786009)(66446008)(66946007)(486006)(66476007)(65806001)(66556008)(2501003)(66066001)(65956001)(64756008);DIR:OUT;SFP:1101;SCL:1;SRVR:CY4PR1201MB2503;H:CY4PR1201MB0230.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 VShdpMU5pOWhGb0nxCaH+cOOCaUKuV+9ah3XpI0LD1HTJje7oI5fg3JVAe2X5X4iu2yazWRNeSLz7+aHEVVs2R10twybKQZVVXZmq1n/bLgj28hjzkxKU07KUnPvr81fw4MVSMM8yB0x6D1tWLNZhpP9AkpX7Gf6NYQK9BhfLyF8He0sJ8PwS6lyD7uEa9MX4SDck+Ai3qeovef6wkbpFIGk8OiWSTb+jJ6cbPW3VHt3tIg9rJPJaPNPb9/8RBGqdLdX81f5CVOR0HxR9bMCxuCQNHDDQ8jsg/izgt7Oy+HwQW7lC8WU8KWSULZmiJBdxK3hLGTQ8i5OWXAJ49Rjj/EQRCg8zePQTapedt5KUAcrQE3deYc+Er7PsAd8y52NzVZlRpbWpDkRY97DDbHhwrRvoA+/q+faz/K/pRj8l1WL/XfHk7AkxvxGbfqI2svg
Content-Type: text/plain; charset="utf-8"
Content-ID: <D436C0D5DC56AF4CAC599E34AF15B934@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71decd2c-379c-40d8-f783-08d757cb050c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 15:09:37.3366
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KRw91J7/H2Qu6cY/1Ycc6xMjlgR3KT5enVxpleD1xLc5Ct6jLMZX7EM2R0Eown1/OugVA7qHStMJTwhPgQ3pcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2503

T24gMjAxOS0xMC0xOSAzOjM0IGEubS4sIFdhbWJ1aSBLYXJ1Z2Egd3JvdGU6DQo+IENvcnJlY3Qg
dGhlICJfTEVOVEgiIG1pc3BlbGxpbmcgaW4gdGhlIEFNREdQVV9NQVhfVElNRU9VVF9QQVJBTV9M
RU5HVEgNCj4gY29uc3RhbnQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBXYW1idWkgS2FydWdhIDx3
YW1idWlAa2FydWdhLnh5ej4NCg0KVGhpcyBwYXRjaCB3b3VsZCBiZSBiZXR0ZXIgc2VudCBpbiBh
IHBhdGNoIHNldCB3aXRoIHRoZSAibWFrZSB1bmRlY2xhcmVkDQp2YXJpYWJsZXMgc3RhdGljIiBw
YXRjaC4gWW91IGNhbiBkbyB0aGF0IGJ5IHByb3ZpZGluZyBhIHJhbmdlIHRvICJnaXQNCmZvcm1h
dC1wYXRjaCIuIEkgdXN1YWxseSBjYWxsIGdpdCBmb3JtYXQtcGF0Y2ggd2l0aCB0aGUgLW8gcGFy
YW1ldGVyIHRvDQpwdXQgYWxsIG15IHBhdGNoZXMgaW4gYSBkaXJlY3RvcnkuIFRoZW4gSSBjYW4g
c2VuZCBpdCB3aXRoICJnaXQNCnNlbmQtZW1haWwgKiIgaW4gdGhhdCBkaXJlY3RvcnkuDQoNClJl
dmlld2VkLWJ5OiBIYXJyeSBXZW50bGFuZCA8aGFycnkud2VudGxhbmRAYW1kLmNvbT4NCg0KVGhp
cyB3b24ndCBhcHBseSBjbGVhbmx5IHdpdGhvdXQgIm1ha2UgdW5kZWNsYXJlZCB2YXJpYWJsZXMg
c3RhdGljIi4NClBsZWFzZSBzZWUgbXkgY29tbWVudHMgb24gdGhhdCBwYXRjaCBhbmQgc2VuZCBh
IHYyIGZvciB0aGlzIG9uZS4NCg0KSGFycnkNCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kcnYuYyB8IDggKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2Rydi5jDQo+IGluZGV4IGM1YjNjMGM5MTkzYi4uYWFhYjM3ODMzNjU5IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jDQo+IEBAIC04Niw3
ICs4Niw3IEBADQo+ICAjZGVmaW5lIEtNU19EUklWRVJfTUlOT1IJMzQNCj4gICNkZWZpbmUgS01T
X0RSSVZFUl9QQVRDSExFVkVMCTANCj4gIA0KPiAtI2RlZmluZSBBTURHUFVfTUFYX1RJTUVPVVRf
UEFSQU1fTEVOVEgJMjU2DQo+ICsjZGVmaW5lIEFNREdQVV9NQVhfVElNRU9VVF9QQVJBTV9MRU5H
VEgJMjU2DQo+ICANCj4gIGludCBhbWRncHVfdnJhbV9saW1pdCA9IDA7DQo+ICBpbnQgYW1kZ3B1
X3Zpc192cmFtX2xpbWl0ID0gMDsNCj4gQEAgLTEwMCw3ICsxMDAsNyBAQCBpbnQgYW1kZ3B1X2Rp
c3BfcHJpb3JpdHkgPSAwOw0KPiAgaW50IGFtZGdwdV9od19pMmMgPSAwOw0KPiAgaW50IGFtZGdw
dV9wY2llX2dlbjIgPSAtMTsNCj4gIGludCBhbWRncHVfbXNpID0gLTE7DQo+IC1zdGF0aWMgY2hh
ciBhbWRncHVfbG9ja3VwX3RpbWVvdXRbQU1ER1BVX01BWF9USU1FT1VUX1BBUkFNX0xFTlRIXTsN
Cj4gK3N0YXRpYyBjaGFyIGFtZGdwdV9sb2NrdXBfdGltZW91dFtBTURHUFVfTUFYX1RJTUVPVVRf
UEFSQU1fTEVOR1RIXTsNCj4gIGludCBhbWRncHVfZHBtID0gLTE7DQo+ICBpbnQgYW1kZ3B1X2Z3
X2xvYWRfdHlwZSA9IC0xOw0KPiAgaW50IGFtZGdwdV9hc3BtID0gLTE7DQo+IEBAIC0xMzI3LDkg
KzEzMjcsOSBAQCBpbnQgYW1kZ3B1X2RldmljZV9nZXRfam9iX3RpbWVvdXRfc2V0dGluZ3Moc3Ry
dWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYpDQo+ICAJYWRldi0+c2RtYV90aW1lb3V0ID0gYWRldi0+
dmlkZW9fdGltZW91dCA9IGFkZXYtPmdmeF90aW1lb3V0Ow0KPiAgCWFkZXYtPmNvbXB1dGVfdGlt
ZW91dCA9IE1BWF9TQ0hFRFVMRV9USU1FT1VUOw0KPiAgDQo+IC0JaWYgKHN0cm5sZW4oaW5wdXQs
IEFNREdQVV9NQVhfVElNRU9VVF9QQVJBTV9MRU5USCkpIHsNCj4gKwlpZiAoc3RybmxlbihpbnB1
dCwgQU1ER1BVX01BWF9USU1FT1VUX1BBUkFNX0xFTkdUSCkpIHsNCj4gIAkJd2hpbGUgKCh0aW1l
b3V0X3NldHRpbmcgPSBzdHJzZXAoJmlucHV0LCAiLCIpKSAmJg0KPiAtCQkJCXN0cm5sZW4odGlt
ZW91dF9zZXR0aW5nLCBBTURHUFVfTUFYX1RJTUVPVVRfUEFSQU1fTEVOVEgpKSB7DQo+ICsJCQkJ
c3Rybmxlbih0aW1lb3V0X3NldHRpbmcsIEFNREdQVV9NQVhfVElNRU9VVF9QQVJBTV9MRU5HVEgp
KSB7DQo+ICAJCQlyZXQgPSBrc3RydG9sKHRpbWVvdXRfc2V0dGluZywgMCwgJnRpbWVvdXQpOw0K
PiAgCQkJaWYgKHJldCkNCj4gIAkJCQlyZXR1cm4gcmV0Ow0KPiANCg==

