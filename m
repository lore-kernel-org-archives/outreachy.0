X-GM-THRID: 6805399652543758336
X-Received: by 2002:ad4:5994:: with SMTP id ek20mr1796864qvb.93.1584606709901;
        Thu, 19 Mar 2020 01:31:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7358:: with SMTP id q24ls709128qtp.4.gmail; Thu, 19 Mar
 2020 01:31:49 -0700 (PDT)
X-Received: by 2002:ac8:3f78:: with SMTP id w53mr1721630qtk.26.1584606708931;
        Thu, 19 Mar 2020 01:31:48 -0700 (PDT)
Received: by 2002:a37:a012:0:0:0:0:0 with SMTP id j18msqke;
        Thu, 19 Mar 2020 00:04:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsPfpIItXNV2I1mlDeIvFpySJkSjUAfGrEkHB9A+2pbowG3YnfpiPH8VP84G0SIjkaxh3Bk
X-Received: by 2002:a05:6214:118d:: with SMTP id t13mr1533460qvv.192.1584601458667;
        Thu, 19 Mar 2020 00:04:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584601458; cv=pass;
        d=google.com; s=arc-20160816;
        b=GMGZHT3yhQpgz4LqZBey6WSGDcliutMA3aMGjtkDaS1nh8IOxEwqicggeVsHdJhmnB
         zkA3HQ9HXkzE3jcWa1qhfXWuXVujfk/LDp1UYVIeaiKfOg9NJtm4+q+QcN/+GsDhVMEa
         7l6BhIKxgHZNyYVsCoAIQn652LvPD28v6Z2QKt4jGoL5ZEs1b/KdoMRyPBAh2+IrNoNU
         WTyLBk5j+GItiFyBBZUjFM1cI0hDXZp2L5F47LXAXHBZbUOVrtx7KYgsuurkEuKuxkkY
         xCG70WNfOCs+gi+t53jZh1K+0Af4ovNapjUhxg1gWkp+TawElV2/JmCiJBtEjGAZerZv
         KwOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=EBFcbp1Wk6950LQH6fyRmA3nxzrVgjEAViyzI778Ndw=;
        b=QboiEDwctJBrawjXe3sbFzTsCTH8EfM5vz3MQ/E6V0OXeCby5DTaARMVkr3WwBG1z3
         lDUsC085TETQ2GkcAZVMuGe+bpZb79yCOcAu/ew7vl0cpL2fWwZFoh401o+ShvpZSVU6
         m+vDfp/qrxKg5HEx+xGZ29UT/KZLgxOXPC6wWJxNrWF6NZbqN5xByvlvs+KcsjzfPAYA
         eoMARCSWlbPWvkC6gxU5q/idZYTjx/DoTh3rm8s4AyoqrOgCKDNVzOmPyEvOpiqXW++s
         4paFwgJTW/Z+P/odFfCFQlW+ayO4B/Sj7MjhzaURMXHK1AFd9BAXBQ1SxTCWSf0Jkp/D
         w5Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@analog.onmicrosoft.com header.s=selector2-analog-onmicrosoft-com header.b=QVLHXJQY;
       arc=pass (i=1 spf=pass spfdomain=analog.com dkim=pass dkdomain=analog.com dmarc=pass fromdomain=analog.com);
       spf=pass (google.com: domain of alexandru.ardelean@analog.com designates 148.163.135.77 as permitted sender) smtp.mailfrom=alexandru.Ardelean@analog.com
Return-Path: <alexandru.Ardelean@analog.com>
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com. [148.163.135.77])
        by gmr-mx.google.com with ESMTPS id r14si127171qtc.5.2020.03.19.00.04.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 00:04:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandru.ardelean@analog.com designates 148.163.135.77 as permitted sender) client-ip=148.163.135.77;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@analog.onmicrosoft.com header.s=selector2-analog-onmicrosoft-com header.b=QVLHXJQY;
       arc=pass (i=1 spf=pass spfdomain=analog.com dkim=pass dkdomain=analog.com dmarc=pass fromdomain=analog.com);
       spf=pass (google.com: domain of alexandru.ardelean@analog.com designates 148.163.135.77 as permitted sender) smtp.mailfrom=alexandru.Ardelean@analog.com
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 02J6vIBb019745;
	Thu, 19 Mar 2020 03:04:14 -0400
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2174.outbound.protection.outlook.com [104.47.58.174])
	by mx0a-00128a01.pphosted.com with ESMTP id 2yu750wwrj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Mar 2020 03:04:14 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J2yeyKvD6L6F19ab+5fbl/7S3Nv3hsPxPhkLml0F4akLiRF/a4g3mGXxwgvYsO0R1mUkG4WOOCGOOiFNwV2VGBHtaB4rHc3eGIGOGXPhiv6KtqAskpR8HEYFo9KD0zcLbz2c+j7SVPah1NbNK6Q4pVPfKRKOuOjizTeTsSxoeIxLyjYd96/3ZtSE6w3K1Ck68xuzxc/hOBa3cv8yP8n6OYYn4kTL/cU4qayBxtSnRYnNFNt2ycKOzR6dYhUbLQWTd95HjPLWXhte7JKfkPV8KA7yijdLGCiRJ0gSfyyTTgOEsVfjE0tqISxGFsSQkD+41XI3cR0GnW3dy5gWwu8AeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EBFcbp1Wk6950LQH6fyRmA3nxzrVgjEAViyzI778Ndw=;
 b=G5Py66aowQkmNp57anra5vvp7i1QJH9sM65eVJo5p0Gn3JTWaWucck4mcNw7HtvPaz3sR5PguzVd0do1eDujBRMnyAcJyFImV7p9m8cgkFc5f8BvFVGqsiAniwxac12SDhlOOJ94/tj997kL66mouANhRC2xVQfOpfB/rQNPDuREp44hIPuviB2tmhZwBkqhQ9nNSnY51FOo1ho/1ojWUHsYZN6czHswv5JhQCLZQSD8KQ3MED56TnsZl7IPoj/GR8Yyp80z1YkQZZAIX3j5d3mfFUoH7UDiLRmTDqGyWnLoKMmmtXE8f9d2VPLdSN3rngi/OIITcBgl+zyFH4MhqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EBFcbp1Wk6950LQH6fyRmA3nxzrVgjEAViyzI778Ndw=;
 b=QVLHXJQYRQX6sonHs0pnheKNCo29I5wLeLKILCWcydGemVywZSfRFJfmYJicNoOf7FGCPTGZE0RYwzE3dZleOemw7w8N0CU5Y6xfeRHAgXrMOi3UXuEAWd3cwCjI2ksnsZz+ihsaFn+CZcjHKTIOu15lRdKyY+Z94TtYaT9D5SM=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB4458.namprd03.prod.outlook.com (2603:10b6:5:107::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22; Thu, 19 Mar
 2020 07:04:12 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f%3]) with mapi id 15.20.2814.025; Thu, 19 Mar 2020
 07:04:12 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "mh12gx2825@gmail.com" <mh12gx2825@gmail.com>,
        "rohitsarkar5398@gmail.com"
	<rohitsarkar5398@gmail.com>
CC: "sbrivio@redhat.com" <sbrivio@redhat.com>,
        "kieran.bingham@ideasonboard.com" <kieran.bingham@ideasonboard.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
        "jic23@kernel.org"
	<jic23@kernel.org>,
        "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>,
        "Hennerich, Michael"
	<Michael.Hennerich@analog.com>,
        "lars@metafoo.de" <lars@metafoo.de>,
        "daniel.baluta@gmail.com" <daniel.baluta@gmail.com>,
        "pmeerw@pmeerw.net"
	<pmeerw@pmeerw.net>,
        "knaack.h@gmx.de" <knaack.h@gmx.de>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: iio: adc: ad7192:
 Reformat lines crossing 80 columns
Thread-Topic: [Outreachy kernel] [PATCH 1/2] staging: iio: adc: ad7192:
 Reformat lines crossing 80 columns
Thread-Index: AQHV/N2CCRXovdb2ZU2b/OUsKMTJGKhOBaUAgAB/FgCAAARugIAA9zwA
Date: Thu, 19 Mar 2020 07:04:12 +0000
Message-ID: <98f4330b27bba51e58627beea5401a08641c8388.camel@analog.com>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
	 <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
	 <20200318093158.192a27ce@elisabeth> <20200318160649.GA23154@deeUbuntu>
	 <5e724ad5.1c69fb81.7d54e.9f63@mx.google.com>
In-Reply-To: <5e724ad5.1c69fb81.7d54e.9f63@mx.google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.26.73.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fc9f1a68-747d-45f9-d2c5-08d7cbd3babb
x-ms-traffictypediagnostic: DM6PR03MB4458:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <DM6PR03MB4458C3B979C51ABB826CB44CF9F40@DM6PR03MB4458.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0347410860
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(366004)(39860400002)(136003)(376002)(346002)(396003)(199004)(36756003)(81166006)(81156014)(66446008)(66476007)(64756008)(76116006)(2906002)(66556008)(91956017)(66946007)(8936002)(8676002)(5660300002)(6512007)(966005)(4326008)(71200400001)(478600001)(6506007)(316002)(86362001)(6486002)(26005)(54906003)(7416002)(110136005)(2616005)(186003)(66574012);DIR:OUT;SFP:1101;SCL:1;SRVR:DM6PR03MB4458;H:DM6PR03MB4411.namprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6IO1P1Vk3Glme4rTYZzOU94tAdPIND/Lt6HF8hRToE0LFxouZVaJX/9CRMnk4tVPLd16gEK2CPIh/cUo9dZW3+eWctpU+b7DvnzfvEVgFJiIme+7WMjTZUuM8htgXoaTj2PnynQWUFa6nG85pSZRoskgqLA9dO6isrojeP3PMW+me+cFpyK5HRB86LPHnIVWDxQxisZEXZp5ELyGCbVtvPXHWHxsGcOOXClSY6ZwKSFeXZ/nF0f4lldTA6IjDJOkhPVDWiQUXnY+Fax4p3JLE6Dbp89IoCW8KFKz+09KA5iIRYnqV4ycrcRV1Sbw1Uk3qNQ1YQGrHls86Kno713EZmvAswTK0WUa39LsFPmxokLFv3iUndA7OBeXrPbyaRerIDpwll2UdFl7YpSs+Zmv7Zu+q7GBeHWPnqxepuUviK13iMOGia0ViayGv/n3xuhLJtLhGd2tC6fJmVAXm/EhabsuLV2s3doA7wilsjenN0e0FfMPi0D9LXsNZt55M5v35i5GG9ZD3t8UprKktqK4Hw==
x-ms-exchange-antispam-messagedata: 
 zQuKq11dULfzZCB84euib7eJGLHbpjgyIbwVeQdMPxakbwlcOUuaZMeaOhkfTzL9K1K9cNTwRNM4AzBmq1tOtbg50OwlbT6aQT/sHpGPGhZ0gqZLuYDqEzZEZrBBxM2IuFr7GyKin+UekqxaF2u0BA==
Content-Type: text/plain; charset="utf-8"
Content-ID: <A5298469C463064BADAB0DBD7FE4101C@namprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc9f1a68-747d-45f9-d2c5-08d7cbd3babb
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2020 07:04:12.7254
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 68nfApRpGq0FKYLIv0+cAPggkk7g7zNJ8+SnT4q+zRk7xag+5wTjZKkPOwPIIc2oGjoGqJqyS/NGokNWiFMDSiXRU+W4A+/eLgMlOM0tnGc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4458
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.645
 definitions=2020-03-18_10:2020-03-18,2020-03-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 clxscore=1031 adultscore=0 spamscore=0 mlxlogscore=999 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003190031

T24gV2VkLCAyMDIwLTAzLTE4IGF0IDIxOjUyICswNTMwLCBSb2hpdCBTYXJrYXIgd3JvdGU6DQo+
IE9uIFdlZCwgTWFyIDE4LCAyMDIwIGF0IDA5OjM2OjUwUE0gKzA1MzAsIERFRVBBSyBWQVJNQSB3
cm90ZToNCj4gPiBPbiBXZWQsIE1hciAxOCwgMjAyMCBhdCAwOTozMTo1OEFNICswMTAwLCBTdGVm
YW5vIEJyaXZpbyB3cm90ZToNCj4gPiA+IE9uIFdlZCwgMTggTWFyIDIwMjAgMDk6NTY6NTkgKzA1
MzANCj4gPiA+IERlZXBhayBSIFZhcm1hIDxtaDEyZ3gyODI1QGdtYWlsLmNvbT4gd3JvdGU6DQo+
ID4gPiANCj4gPiA+ID4gTWFjcm8gYXJndW1lbnRzIGFyZSBjb21wdXRlZCBhdCB0aGUgdGltZSBv
ZiBtYWNybyBpbnZvY2F0aW9uLiBUaGlzIG1ha2VzDQo+ID4gPiA+IHRoZSBsaW5lcyBjcm9zcyA4
MCBjb2x1bW4gd2lkdGguIEFkZCB2YXJpYWJsZXMgdG8gcGVyZm9ybSB0aGUNCj4gPiA+ID4gY2Fs
Y3VsYXRpb25zIGJlZm9yZSBoYW5kIGFuZCB1c2UgdGhlc2UgbmV3IHZhcmlhYmxlIGluIHRoZSBt
YWNybyBjYWxscw0KPiA+ID4gPiBpbnN0ZWFkLg0KPiA+ID4gPiANCj4gPiA+ID4gQWxzbyByZS1p
bmRlbnQgZW51bSBtZW1iZXJzIHRvIGFkZHJlc3MgY2hlY2twYXRjaCB3YXJuaW5nIC8gY2hlY2sN
Cj4gPiA+ID4gbWVzc2FnZXMuDQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEZWVw
YWsgUiBWYXJtYSA8bWgxMmd4MjgyNUBnbWFpbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAg
ZHJpdmVycy9zdGFnaW5nL2lpby9hZGMvYWQ3MTkyLmMgfCAxNSArKysrKysrKy0tLS0tLS0NCj4g
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+
ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2lpby9hZGMvYWQ3
MTkyLmMNCj4gPiA+ID4gYi9kcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcxOTIuYw0KPiA+ID4g
PiBpbmRleCBiZjNlMmE5Y2MwN2YuLjAyNjVmNjYwN2Q3NSAxMDA2NDQNCj4gPiA+ID4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL2lpby9hZGMvYWQ3MTkyLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9z
dGFnaW5nL2lpby9hZGMvYWQ3MTkyLmMNCj4gPiA+ID4gQEAgLTE1Niw4ICsxNTYsOCBAQA0KPiA+
ID4gPiAgICovDQo+ID4gPiA+ICANCj4gPiA+ID4gIGVudW0gew0KPiA+ID4gPiAtICAgQUQ3MTky
X1NZU0NBTElCX1pFUk9fU0NBTEUsDQo+ID4gPiA+IC0gICBBRDcxOTJfU1lTQ0FMSUJfRlVMTF9T
Q0FMRSwNCj4gPiA+ID4gKwlBRDcxOTJfU1lTQ0FMSUJfWkVST19TQ0FMRSwNCj4gPiA+ID4gKwlB
RDcxOTJfU1lTQ0FMSUJfRlVMTF9TQ0FMRSwNCj4gPiA+ID4gIH07DQo+ID4gPiA+ICANCj4gPiA+
ID4gIHN0cnVjdCBhZDcxOTJfc3RhdGUgew0KPiA+ID4gPiBAQCAtNDc3LDE3ICs0NzcsMTggQEAg
c3RhdGljIHNzaXplX3QgYWQ3MTkyX3NldChzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+ID4gPiA+ICB9
DQo+ID4gPiA+ICANCj4gPiA+ID4gIHN0YXRpYyB2b2lkIGFkNzE5Ml9nZXRfYXZhaWxhYmxlX2Zp
bHRlcl9mcmVxKHN0cnVjdCBhZDcxOTJfc3RhdGUgKnN0LA0KPiA+ID4gPiAtCQkJCQkJICAgIGlu
dCAqZnJlcSkNCj4gPiA+ID4gKwkJCQkJICAgICBpbnQgKmZyZXEpDQo+ID4gPiA+ICB7DQo+ID4g
PiA+ICAJdW5zaWduZWQgaW50IGZhZGM7DQo+ID4gPiA+ICsJdW5zaWduZWQgaW50IHN5bmMzX2Zp
bHRlciwgc3luYzRfZmlsdGVyOw0KPiA+ID4gPiAgDQo+ID4gPiA+ICAJLyogRm9ybXVsYXMgZm9y
IGZpbHRlciBhdCBwYWdlIDI1IG9mIHRoZSBkYXRhc2hlZXQgKi8NCj4gPiA+ID4gLQlmYWRjID0g
RElWX1JPVU5EX0NMT1NFU1Qoc3QtPmZjbGssDQo+ID4gPiA+IC0JCQkJIEFENzE5Ml9TWU5DNF9G
SUxURVIgKg0KPiA+ID4gPiBBRDcxOTJfTU9ERV9SQVRFKHN0LT5tb2RlKSk7DQo+ID4gPiA+ICsJ
c3luYzRfZmlsdGVyID0gQUQ3MTkyX1NZTkM0X0ZJTFRFUiAqIEFENzE5Ml9NT0RFX1JBVEUoc3Qt
Pm1vZGUpOw0KPiA+ID4gDQo+ID4gPiBIYXZlIHlvdSByZWFkIHBhZ2UgMjUgb2YgdGhlIGRhdGFz
aGVldD8gV2h5IGlzIHRoaXMgY2FsbGVkDQo+ID4gPiBzeW5jNF9maWx0ZXIsIHdpdGggYSAneSc/
DQo+ID4gPiANCj4gPiANCj4gPiBTb3JyeSwgSSBhbSBub3Qgc3VyZSB3aGF0IHlvdSBhcmUgcmVm
ZXJyaW5nIHRvLiBDYW4geW91IHBsZWFzZSBlbGFib3JhdGUNCj4gPiBvciBwb2ludCBtZSB0byB3
aGVyZSB0aGUgZGF0YSBzaGVldCBpcyBsb2NhdGVkPw0KPiA+IA0KPiA+IERlZXBhay4NCj4gDQo+
IEhleSBEZWVwYWssDQo+IFlvdSBjYW4gZmluZCB0aGUgZGF0YXNoZWV0IGZvciBhZDcxOTIgaGVy
ZSANCj4gaHR0cHM6Ly9wZGYxLmFsbGRhdGFzaGVldC5jb20vZGF0YXNoZWV0LXBkZi92aWV3Lzk4
ODI4Ny9BRC9BRDcxOTIuaHRtbA0KDQoNCk1vc3QgQW5hbG9nIGRhdGFzaGVldHMgY2FuIGJlIGZv
dW5kIGRpcmVjdGx5IG9uIHRoZSBvZmZpY2lhbCB3ZWJzaXRlLg0KDQpodHRwczovL3d3dy5hbmFs
b2cuY29tL21lZGlhL2VuL3RlY2huaWNhbC1kb2N1bWVudGF0aW9uL2RhdGEtc2hlZXRzL0FENzE5
Mi5wZGYNCg0KVGhlIHNpbXBsZXN0IHdheSBpcyB0byBvcGVuIGEgYnJvd3NlciwgdHlwZTogIGFu
YWxvZy5jb20vPHBhcnQtbmFtZT4gIFtpbiB0aGlzDQpjYXNlIGFuYWxvZy5jb20vYWQ3MTkyXSwg
dGhhdCBvcGVucy11cCB0aGUgcGFydCBwYWdlLCBzY3JvbGwgZG93biBhbmQgdGhlcmUncyBhDQps
aW5rIHRvIHRoZSBkYXRhc2hlZXQgW2luIHRoaXMgY2FzZSwgdGhlIGxpbmsgYWJvdmVdLg0KDQpQ
YXJ0aWN1bGFybHkgZm9yIEFuYWxvZyBwYXJ0cywgdGhpcyBpcyBhIGJpdCBzaW1wbGVyIHRoYW4g
c2VhcmNoaW5nIG9uIEdvb2dsZS4NClRob3VnaCBHb29nbGUgd2lsbCBmaW5kIHRoZSBvZmZpY2lh
bCBkYXRhc2hlZXRzIHF1aWNrZXIsIGFmdGVyIHlvdSB2aXNpdCB0aGUNCmFuYWxvZy5jb20gc2l0
ZSBhIGZldyB0aW1lcy4NCg0KPiANCj4gVGhhbmtzLA0KPiBSb2hpdA0K

