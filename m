X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:902:169:: with SMTP id 96mr25063021plb.140.1585037254876;
        Tue, 24 Mar 2020 01:07:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:332a:: with SMTP id m39ls1459996pjb.2.gmail; Tue, 24
 Mar 2020 01:07:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vurwYALE0TjeP39ycWvpNp+OzHtRdulDfKAJ8vDa+DcZjIi+9icg/mOY9CTn7+KLOJIt52r
X-Received: by 2002:a17:90a:fb47:: with SMTP id iq7mr4073849pjb.191.1585037253316;
        Tue, 24 Mar 2020 01:07:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585037253; cv=pass;
        d=google.com; s=arc-20160816;
        b=DGq0CFEZzp7h2+YHAdKN2wCntRFaMBo+99E2a+kOOc8E5tliYOpvGr76WD49eSlS/y
         WqKCu91Q344zTqBt5x6kFfDFveCx5MUIWiHGHAPIofntNJxs4UkhBY41c9hOK6rQe3+6
         3QlUDMCmDJO9n65SuBfTb9bNFW14zTHvqO9usi6LPWBoxSendSsULNhrylmNVqvmSjfO
         p5eyu0gV0Px1IHOIqsiO7ulzv8kN3IxKqHZto51oKScjyxqe+3TBc9AuP9HBB1nhAbvX
         r2JBRH/76ytBQZrcBsD9B9ino2r5QPrMSSTiUMDUpNEtqS9RE/YZkkyeDL2pvZHbTaN8
         haIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=3bYvT+bEfKjv4ZCm5vUIOsL4glhPMrf8ROdG0z4GIb4=;
        b=Z++nqeRBJvAy3yN+OsDAkyU8beMgQoUfn0cbR2+vaTqZ4rwsG/wuUFuOCFErx9uz0f
         db4ribB40MRlJP0skgp6y+H8b5n/9gzBLcVZ9OBNwk/s7VSQPcnCjVMeuFdxWCS1QjkP
         ci4lTgjXdInAdgrThQLZBE998e4e2A7R9napGnmSg311QHhsuuBFZN7WF9jK93UR0wYs
         q1EaWRTLA0xYZCWbCTcMK/0qhTS7MDaqI3I0aQBSbRpdGkNNngBa5/1ihuDmdsMov1GX
         54ZTb7gF6t+Wrya52uLScEeTzly5pDwUXG9AsVvd1lYXhkSQc/SOpa14kYQLbb0KDaMO
         YFqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@analog.onmicrosoft.com header.s=selector2-analog-onmicrosoft-com header.b=9hzklExS;
       arc=pass (i=1 spf=pass spfdomain=analog.com dkim=pass dkdomain=analog.com dmarc=pass fromdomain=analog.com);
       spf=pass (google.com: domain of alexandru.ardelean@analog.com designates 148.163.135.77 as permitted sender) smtp.mailfrom=alexandru.Ardelean@analog.com
Return-Path: <alexandru.Ardelean@analog.com>
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com. [148.163.135.77])
        by gmr-mx.google.com with ESMTPS id s21si28343pgq.0.2020.03.24.01.07.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:07:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandru.ardelean@analog.com designates 148.163.135.77 as permitted sender) client-ip=148.163.135.77;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@analog.onmicrosoft.com header.s=selector2-analog-onmicrosoft-com header.b=9hzklExS;
       arc=pass (i=1 spf=pass spfdomain=analog.com dkim=pass dkdomain=analog.com dmarc=pass fromdomain=analog.com);
       spf=pass (google.com: domain of alexandru.ardelean@analog.com designates 148.163.135.77 as permitted sender) smtp.mailfrom=alexandru.Ardelean@analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 02O85hGS008741;
	Tue, 24 Mar 2020 04:07:30 -0400
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2102.outbound.protection.outlook.com [104.47.58.102])
	by mx0a-00128a01.pphosted.com with ESMTP id 2ywcs61ape-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Mar 2020 04:07:29 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=llnuT6PJYOUReuw41Zx9VkmKslcqhBLtQRxcpEBaR2JDP5wBrtGdJplMs6+zuBCkQV48K8J/LanpcTBvNeHsFfdmKJs9pIJoRxhYtTHUVujAVcEmzCe5pUJpMeBuuc06eZJmwHefm4qYIAhBZupkUwLfDwLKI8/0ZcGamVZajS5xF0G7fOXIxcJmEh35zc0gFVD38WeqrQgY+6XTRF5LtuJrmFfaVH+OLTE6RoDdbK8BdUkdhdbs0ZFM7/oBW8GjFAwNFo7n8ryOEgTx/d/gbwRVQU9umB9lUmyaqiGQI8fvUUAOyNqltVT1hMNCbgJYd6dBTp/3SoFB8Ds/S5omgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3bYvT+bEfKjv4ZCm5vUIOsL4glhPMrf8ROdG0z4GIb4=;
 b=VxQg+4tYzf0YipY8R6rdp0L23VuHXSnBebFBttWOIG4FdFlOYjfABhWpwU5Tv2Oivg1CixkEITdRW6ybJHiWyz+viiAt9r4ltwDWY1JjWv6l67UeNHhle2yiEH/ysuWqJXjo5HHEjBLpMZLuIQIFCKB9rJZ8ldK7R9H/uqtzk7cOuYpLb0p15o+PJE/VaVpo8Wl6DVL4MCt2i+28vszmThjBPW/uF0rcY/Bt6yZYfzrbukd05T7CjU4TNf0zCHX7IpfKBYb2jQVfseM1qhqCVuNB0qFsiDyC+KocTOmn2iiqjSLLMQkDPt6i8BPwFcECdey+WDXpaV3g6n/SnelTzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3bYvT+bEfKjv4ZCm5vUIOsL4glhPMrf8ROdG0z4GIb4=;
 b=9hzklExSYba9vb8Pk8wjMWTUSOZcPanRcVxV3solEBJtw5bp7Z1J5DwtWZOZU9zPOsxDlaK9HdtPct5JArTv6ebTEmY03Yw3sWdouz1lzIFIPKl63Ik+gFvLerdBKXjO3JZxEw0LMl8hW4KWVQL+OIyGhPwKtQcJGmcEOoPsW5I=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB5020.namprd03.prod.outlook.com (2603:10b6:5:1e8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Tue, 24 Mar
 2020 08:07:28 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::c47f:ceee:cfda:6a7f%3]) with mapi id 15.20.2835.023; Tue, 24 Mar 2020
 08:07:28 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "mh12gx2825@gmail.com" <mh12gx2825@gmail.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
        "kieran.bingham@ideasonboard.com" <kieran.bingham@ideasonboard.com>,
        "daniel.baluta@gmail.com" <daniel.baluta@gmail.com>
CC: "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
        "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
        "jic23@kernel.org"
	<jic23@kernel.org>,
        "lars@metafoo.de" <lars@metafoo.de>,
        "knaack.h@gmx.de"
	<knaack.h@gmx.de>,
        "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>
Subject: Re: [PATCH v3 4/4] staging: iio: adc: ad7280a: Add comments to
 clarify stringified arguments
Thread-Topic: [PATCH v3 4/4] staging: iio: adc: ad7280a: Add comments to
 clarify stringified arguments
Thread-Index: AQHWAIQloTb5qnt1Vka2H+tWSG6D6KhXZXuA
Date: Tue, 24 Mar 2020 08:07:28 +0000
Message-ID: <9da7b4c4424cda9ab42353ab073d2a8313d978f8.camel@analog.com>
References: <cover.1584904896.git.mh12gx2825@gmail.com>
	 <469bf8db1c228913e72841367182fba2168fe795.1584904896.git.mh12gx2825@gmail.com>
In-Reply-To: 
 <469bf8db1c228913e72841367182fba2168fe795.1584904896.git.mh12gx2825@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.26.73.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e5eaa35c-5779-44db-b890-08d7cfca6569
x-ms-traffictypediagnostic: DM6PR03MB5020:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <DM6PR03MB50203A17FC622206D1B620C4F9F10@DM6PR03MB5020.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 03524FBD26
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(366004)(396003)(136003)(376002)(346002)(39860400002)(5660300002)(86362001)(4326008)(66446008)(66556008)(66476007)(91956017)(76116006)(66946007)(64756008)(2906002)(478600001)(2616005)(6486002)(6512007)(7416002)(8936002)(8676002)(81166006)(81156014)(316002)(26005)(36756003)(110136005)(6506007)(71200400001)(186003)(54906003);DIR:OUT;SFP:1101;SCL:1;SRVR:DM6PR03MB5020;H:DM6PR03MB4411.namprd03.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 19+y8u1xtvkDYajm+bGee2mSyxLiUplIpIEPvoCKGWnbJbJsdyWZc/06weD2IQRVDn+5+ZZto3suMNbkFVolRgAwXSftuWRqzurBTNm8VQ0gaR1FmMouJgy2dwHLLVGiMilCNOLL1vwF3lM5uGtZg4hywOcAFCCSP1mnPE9mlQM2LaiSSTqiB6tAVpHj3y4rwZiIyiRbC1r69XVVN6iz7UoxEyPJCwTVwIvte5BsIkFLOJZgqstQoEvkAU+n+aQmJciemU3TSsHd7VSz5ZI7as9OCT671mdnAKdFf9/AROS6etlCvmaxvSQANiBuqDn2JIoQ90cMwiruHymwg7oVoll0RzmU7ItKDf+Z8GE2hIH8FND2M6lfN89rzjv7WpdWvSlZ5dmLyWlwKl06Yp1+TIHRek60dJ/N+Khx3nlpjFiwnzA14ds8w0+cv+VI7Ub0
x-ms-exchange-antispam-messagedata: 
 LimYPbRQH14LrO8q92VgIxfHpcqAN+F1WGYV2To3WJp59MdUGy6IhrKfkF9ntBlNW1llownzGhTb8DSXwyd1NZ+5LPCOElz/zZ4QAPjMZ1sUlDeMljRq1h15FfKcklXO8LtWYjQa7RcN8nt5wKHXYg==
Content-Type: text/plain; charset="utf-8"
Content-ID: <603E354BB4E4624896B6B932F055C359@namprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5eaa35c-5779-44db-b890-08d7cfca6569
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2020 08:07:28.6775
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 58cw0dfDdr7sHMqYDGr1HpFxWNRmsuged0QfmPZHyjNMy6uQrkNPogqRA/eR0VnUiuEb0pzIibgJ7KmZSqUGmOdIxIu6WEeTEz8VmHsL1H4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5020
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.645
 definitions=2020-03-24_02:2020-03-23,2020-03-24 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 spamscore=0 mlxlogscore=999
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003240042

T24gTW9uLCAyMDIwLTAzLTIzIGF0IDAxOjI3ICswNTMwLCBEZWVwYWsgUiBWYXJtYSB3cm90ZToN
Cj4gW0V4dGVybmFsXQ0KPiANCj4gQ2hlY2twYXRjaCB3b3VsZCBmbGFzaCBhIGNoZWNrIG1lc3Nh
Z2UgYXJvdW5kIGEgc3RyaW5naWZpZWQgbWFjcm8NCj4gYXJndW1lbnQgY29udGFpbmluZyBhICct
JyBjaGFyYWN0ZXIuIEFkZCBjb21tZW50IHRvIGluZGljYXRlIHRoZQ0KPiBhcmd1bWVudCBpcyBs
ZWdpdGltYXRlIGFuZCBkb2Vzbid0IG5lZWQgZml4aW5nLg0KDQpSZXZpZXdlZC1ieTogQWxleGFu
ZHJ1IEFyZGVsZWFuIDxhbGV4YW5kcnUuYXJkZWxlYW5AYW5hbG9nLmNvbT4NCg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogRGVlcGFrIFIgVmFybWEgPG1oMTJneDI4MjVAZ21haWwuY29tPg0KPiBTdWdn
ZXN0ZWQtYnk6IExhcnMtUGV0ZXIgQ2xhdXNlbiA8bGFyc0BtZXRhZm9vLmRlPg0KPiANCj4gLS0t
DQo+IA0KPiBDaGFuZ2VzIHNpbmNlIHYyOg0KPiAJLSBOb25lLiBQYXRjaCBhZGRlZCBpbiB2Mw0K
PiANCj4gQ2hhbmdlcyBzaW5jZSB2MToNCj4gCS0gTm9uZS4gUGF0Y2ggYWRkZWQgaW4gdjMNCj4g
DQo+ICBkcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcyODBhLmMgfCA0ICsrKysNCj4gIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvaWlvL2FkYy9hZDcyODBhLmMNCj4gYi9kcml2ZXJzL3N0YWdpbmcvaWlvL2FkYy9hZDcy
ODBhLmMNCj4gaW5kZXggMTlhNWYyNDRkY2FlLi5iZWY2YmQxMjk1ZWEgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvc3RhZ2luZy9paW8vYWRjL2FkNzI4MGEuYw0KPiArKysgYi9kcml2ZXJzL3N0YWdp
bmcvaWlvL2FkYy9hZDcyODBhLmMNCj4gQEAgLTgyNCw2ICs4MjQsMTAgQEAgc3RhdGljIGlycXJl
dHVybl90IGFkNzI4MF9ldmVudF9oYW5kbGVyKGludCBpcnEsIHZvaWQNCj4gKnByaXZhdGUpDQo+
ICAJcmV0dXJuIElSUV9IQU5ETEVEOw0KPiAgfQ0KPiAgDQo+ICsvKiBOb3RlOiBObyBuZWVkIHRv
IGZpeCBjaGVja3BhdGNoIHdhcm5pbmcgdGhhdCByZWFkczoNCj4gKyAqCUNIRUNLOiBzcGFjZXMg
cHJlZmVycmVkIGFyb3VuZCB0aGF0ICctJyAoY3R4OlZ4VikNCj4gKyAqIFRoZSBmdW5jdGlvbiBh
cmd1bWVudCBpcyBzdHJpbmdpZmllZCBhbmQgZG9lc24ndCBuZWVkIGEgZml4DQo+ICsgKi8NCj4g
IHN0YXRpYyBJSU9fREVWSUNFX0FUVFJfTkFNRUQoaW5fdGhyZXNoX2xvd192YWx1ZSwNCj4gIAkJ
CSAgICAgaW5fdm9sdGFnZS12b2x0YWdlX3RocmVzaF9sb3dfdmFsdWUsDQo+ICAJCQkgICAgIDA2
NDQsDQo=

