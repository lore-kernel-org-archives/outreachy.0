X-GM-THRID: 6755703261702914048
X-Received: by 2002:aca:5dc2:: with SMTP id r185mr3838431oib.33.1573068383106;
        Wed, 06 Nov 2019 11:26:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:68f:: with SMTP id k15ls864865oig.15.gmail; Wed, 06
 Nov 2019 11:26:22 -0800 (PST)
X-Received: by 2002:aca:385:: with SMTP id 127mr3917828oid.86.1573068382401;
        Wed, 06 Nov 2019 11:26:22 -0800 (PST)
Received: by 2002:aca:6741:0:0:0:0:0 with SMTP id b1msoiy;
        Tue, 5 Nov 2019 10:39:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqwxl7NM4oymLnN9iwmi7vD3zAoB5j+VU2fv5QAbqXVCORguUqWNMHqUHdtEhxxNBf6A0u0X
X-Received: by 2002:a17:902:b08e:: with SMTP id p14mr4793250plr.115.1572979172792;
        Tue, 05 Nov 2019 10:39:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572979172; cv=pass;
        d=google.com; s=arc-20160816;
        b=tHzPG43/sOcsOHOEkc2QBYFO8ZswuNX8IzlGI7MjIcMQy2so2Ty65/VQWGYODxc91w
         aZ845WfadO4nJKmOegAnaJ72xbZSGNYw92NZfV+2vZBHzisL11JxfC02/2jWHFZG9lkG
         izVHppLIFSLD04BD5KVeA+TMjm5VOV8l1cofHHf1+/1/QW6sNHdP91XFhUe2qxROBpb0
         4XslwQQ3oJOaLnJns++Nhqqt3g8Bm27hhcFJB/twksX1FZOGkRzRtuydDT3QBfJ5iWjH
         3ZwUKH3fBWU8JMDhOZKLh2X4aDvYv11NCCOcWS/yvg0qhZmrOGkBSg788IFZ4msSw20u
         8vHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=1uT+1rPtQSC2aq++YMOhjeHBu4ZpOAQ8/OQzqh1Fk1A=;
        b=nhQnO6RpxjVISvgpdOn5RJbmoRMPIJa0k6jaJzlb0979ygU9scITZI+Gb+2hQn3UyX
         vZpQ/Ol8krlp7kIYgfYW55fK9RtbYc4qcoSPWYbB0BeY20rdYVM+lTEIHInGosBFPWnW
         h4xz90FZHOUdefC5vP9aHD9kFbc8kbHuJXPQe5UcouuC6kTgLh2wlt6eig8RlpYYjvFq
         GeqePi/cd/DElypxhQSxVAVtsSsxU0HhcnEHZhUX+yaWm4GeM3U89/YbiJ3tpPP918gn
         XkE01x5+Ic10CQ1fYjx3S7S6N0AAerfSSU/YXR63X65VmSbq9p0/vB1Ni8sSwRKh2ABS
         7OFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=aUh17VUv;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.74.55 is neither permitted nor denied by best guess record for domain of harry.wentland@amd.com) smtp.mailfrom=Harry.Wentland@amd.com
Return-Path: <Harry.Wentland@amd.com>
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (mail-eopbgr740055.outbound.protection.outlook.com. [40.107.74.55])
        by gmr-mx.google.com with ESMTPS id be9si863583plb.3.2019.11.05.10.39.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 10:39:32 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.74.55 is neither permitted nor denied by best guess record for domain of harry.wentland@amd.com) client-ip=40.107.74.55;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=aUh17VUv;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.74.55 is neither permitted nor denied by best guess record for domain of harry.wentland@amd.com) smtp.mailfrom=Harry.Wentland@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZY8cbyhm0TFU3IjauSEbqThawxu5j5D6OljjXYywBey2ujIJMQVmjg+PM5Ro4At7vdsF5fWRhj/3xFRI/GnD/JdvRTKIFb23wDRPq/Xa/Vpj4mUDXEYX0mcSk8RuH2nsM5YYnxnQW/rqFe+abextYsOvidKGo2pXHf6LPEiRm8wVh0sE6C9POSt0cDxS3jNvgvkJveCh0ioxMP2CNQUB3B84uzI/rn/OK+J8g+bwgDsTQR6FTb9kjPDOq4etsyLOMhkspyiKn3RHF73vlB3aoD4V4f/UsqssdLKi/qGWd+lZZwjRPz8jYcPG68znCf6Q4D61s7IC8j5c0W+qkvpejQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1uT+1rPtQSC2aq++YMOhjeHBu4ZpOAQ8/OQzqh1Fk1A=;
 b=Kwhh0Cay7x7nK67fQCuiLnYXNJHmle7URFDRK0FzxmbVbOacfMh+FqVgNRqlfdvNJGB5LuFGR5rmf/g/TuE9OUIG56TuoeEeMjkz3j0E1po4NjHyzKTDil2a4oW5wr9CxBTEY9wQEp282dPAvOLa55fZRwsaZxjoWM1OY6UUWM8vFZOAkqthoX3c8SAkt6s16FbXjQjXUDcLys90igCEcJFJpRN5ftC1YPOIBCZVEl8T19fuKVq1n6uPAn/pKAaP4gwVaw3aYfp8ZGGn6/dqJxITJ36RYKWDxx7kYWLDmq6f1D5VEa+2TBhYVh8tFwH0dyt8grW8L8b+CuXAnia3PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1uT+1rPtQSC2aq++YMOhjeHBu4ZpOAQ8/OQzqh1Fk1A=;
 b=aUh17VUvx7xhDcWCj1Qw7EZ+WDeHx7Bh2gamEwaxjPA/4QJ5+80ZqQ6QWFPAYRan2eGBbIC2Hd0OhBlA/IMQQMtGJnkWYaYc0uZy5eAVM836ViaKGEFeTEtYjAUbhdNP83fKiyw81P4e9coJdbuZViRmE1lMP/hKzAfm8Y5p45g=
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com (10.172.79.7) by
 CY4PR1201MB2502.namprd12.prod.outlook.com (10.172.121.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 18:39:29 +0000
Received: from CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::449d:52a8:2761:9195]) by CY4PR1201MB0230.namprd12.prod.outlook.com
 ([fe80::449d:52a8:2761:9195%5]) with mapi id 15.20.2430.020; Tue, 5 Nov 2019
 18:39:29 +0000
From: Harry Wentland <hwentlan@amd.com>
To: Nachammai Karuppiah <nachukannan@gmail.com>, "Wentland, Harry"
	<Harry.Wentland@amd.com>, "Li, Sun peng (Leo)" <Sunpeng.Li@amd.com>,
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian"
	<Christian.Koenig@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] drm/amd/display: Replace list_for_each with
 list_for_each_entry
Thread-Topic: [PATCH] drm/amd/display: Replace list_for_each with
 list_for_each_entry
Thread-Index: AQHVk6DpOQKUc01b2EeYTwgU8h6dZKd86XKA
Date: Tue, 5 Nov 2019 18:39:29 +0000
Message-ID: <ee10b8ef-c028-aaa0-c951-f43dcb133468@amd.com>
References: <1572934734-97392-1-git-send-email-nachukannan@gmail.com>
In-Reply-To: <1572934734-97392-1-git-send-email-nachukannan@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [165.204.55.251]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
x-clientproxiedby: YTBPR01CA0010.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:14::23) To CY4PR1201MB0230.namprd12.prod.outlook.com
 (2603:10b6:910:1e::7)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Harry.Wentland@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b8659677-1795-4ff8-7f7d-08d7621f7df0
x-ms-traffictypediagnostic: CY4PR1201MB2502:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs:
 <CY4PR1201MB250232E85ACEEC337F96C8AF8C7E0@CY4PR1201MB2502.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(396003)(366004)(199004)(189003)(6436002)(110136005)(26005)(186003)(36756003)(66556008)(8676002)(25786009)(81166006)(486006)(81156014)(11346002)(58126008)(316002)(6512007)(6246003)(31686004)(4326008)(66066001)(65956001)(65806001)(99286004)(446003)(2616005)(52116002)(476003)(66946007)(14454004)(66446008)(66476007)(64756008)(478600001)(76176011)(102836004)(256004)(8936002)(71190400001)(7736002)(53546011)(6506007)(305945005)(71200400001)(6486002)(386003)(5660300002)(3846002)(229853002)(6116002)(31696002)(14444005)(2906002)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:CY4PR1201MB2502;H:CY4PR1201MB0230.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 yTnV19tEeYcnvW3I7AqeNmjpGR8UJrBz0aMHPKSbADxw+q+nMBh3ojg95bj6bexP3aGZ5foZqDo1f7fiwQCzDwtme152FRg8eDezCDvKHAdGZJa6RrY8cbCqqQGZnlhJIxWJHwxXDS0uwCnFH1Buc0hPTD6GEKG9UbxNjC0e688Q2sPhUJLyGCA8laLonQDCl4UICmGD68vsDNFn3Kymhk7ORXoIOFGQ+39yn3dXynBMKO3Cnc68wO6jyj+t0LT3q0s24It3zSuY6X6OvbbLWmJhpXHpQcOmK20NTicmjbWxuD5NwSCJd2GZiJdi24x8utCg4l5KkaFpL2VA7cOiXa1peAsUDAPch1EqnzVrcd/fLicZEJfS5SE7VqIb5uaLycIGHEojtDaJLEaW++NPLur2YpJU95UXRmC67hRcSPyoqE3XownQTQIF2AMJj+bK
Content-Type: text/plain; charset="utf-8"
Content-ID: <F4A8DFE51263634D982F1855DF6B5AC6@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8659677-1795-4ff8-7f7d-08d7621f7df0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 18:39:29.6224
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bZbGk9Wsk4VEHcmWAf8KYH3i+l+yjeUDYLxEijwgZRifD4RvyjvQgYYyivykwTYMRijAuVxfReeYHESVQCg8FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1201MB2502

T24gMjAxOS0xMS0wNSAxOjE4IGEubS4sIE5hY2hhbW1haSBLYXJ1cHBpYWggd3JvdGU6DQo+IFJl
cGxhY2UgdXNlIG9mIGxpc3RfZm9yX2VhY2ggd2l0aCBsaXN0X2Zvcl9lYWNoX2VudHJ5IHRvIHNp
bXBsaWZ5IHRoZQ0KPiBjb2RlIGFuZCByZW1vdmUgdmFyaWFibGVzIHRoYXQgYXJlIHVzZWQgb25s
eSBpbiBsaXN0X2Zvcl9lYWNoLg0KPiBGaXhlZCB1c2luZyBjb2NjaW5lbGxlLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogTmFjaGFtbWFpIEthcnVwcGlhaCA8bmFjaHVrYW5uYW5AZ21haWwuY29tPg0K
DQpSZXZpZXdlZC1ieTogSGFycnkgV2VudGxhbmQgPGhhcnJ5LndlbnRsYW5kQGFtZC5jb20+DQoN
CkhhcnJ5DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2Rt
L2FtZGdwdV9kbV9pcnEuYyB8IDE4ICsrKystLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG1faXJxLmMgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9pcnEuYw0KPiBp
bmRleCBmYTVkNTAzLi4wNmE1NGZjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV9pcnEuYw0KPiBAQCAtMTExLDE3ICsx
MTEsMTIgQEAgc3RhdGljIHZvaWQgaW5pdF9oYW5kbGVyX2NvbW1vbl9kYXRhKHN0cnVjdCBhbWRn
cHVfZG1faXJxX2hhbmRsZXJfZGF0YSAqaGNkLA0KPiAgICovDQo+ICBzdGF0aWMgdm9pZCBkbV9p
cnFfd29ya19mdW5jKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4gIHsNCj4gLQlzdHJ1Y3Qg
bGlzdF9oZWFkICplbnRyeTsNCj4gIAlzdHJ1Y3QgaXJxX2xpc3RfaGVhZCAqaXJxX2xpc3RfaGVh
ZCA9DQo+ICAJCWNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgaXJxX2xpc3RfaGVhZCwgd29yayk7
DQo+ICAJc3RydWN0IGxpc3RfaGVhZCAqaGFuZGxlcl9saXN0ID0gJmlycV9saXN0X2hlYWQtPmhl
YWQ7DQo+ICAJc3RydWN0IGFtZGdwdV9kbV9pcnFfaGFuZGxlcl9kYXRhICpoYW5kbGVyX2RhdGE7
DQo+ICANCj4gLQlsaXN0X2Zvcl9lYWNoKGVudHJ5LCBoYW5kbGVyX2xpc3QpIHsNCj4gLQkJaGFu
ZGxlcl9kYXRhID0gbGlzdF9lbnRyeShlbnRyeSwNCj4gLQkJCQkJICBzdHJ1Y3QgYW1kZ3B1X2Rt
X2lycV9oYW5kbGVyX2RhdGEsDQo+IC0JCQkJCSAgbGlzdCk7DQo+IC0NCj4gKwlsaXN0X2Zvcl9l
YWNoX2VudHJ5KGhhbmRsZXJfZGF0YSwgaGFuZGxlcl9saXN0LCBsaXN0KSB7DQo+ICAJCURSTV9E
RUJVR19LTVMoIkRNX0lSUTogd29ya19mdW5jOiBmb3IgZGFsX3NyYz0lZFxuIiwNCj4gIAkJCQlo
YW5kbGVyX2RhdGEtPmlycV9zb3VyY2UpOw0KPiAgDQo+IEBAIC01MjgsMTggKzUyMywxMyBAQCBz
dGF0aWMgdm9pZCBhbWRncHVfZG1faXJxX2ltbWVkaWF0ZV93b3JrKHN0cnVjdCBhbWRncHVfZGV2
aWNlICphZGV2LA0KPiAgCQkJCQkgZW51bSBkY19pcnFfc291cmNlIGlycV9zb3VyY2UpDQo+ICB7
DQo+ICAJc3RydWN0IGFtZGdwdV9kbV9pcnFfaGFuZGxlcl9kYXRhICpoYW5kbGVyX2RhdGE7DQo+
IC0Jc3RydWN0IGxpc3RfaGVhZCAqZW50cnk7DQo+ICAJdW5zaWduZWQgbG9uZyBpcnFfdGFibGVf
ZmxhZ3M7DQo+ICANCj4gIAlETV9JUlFfVEFCTEVfTE9DSyhhZGV2LCBpcnFfdGFibGVfZmxhZ3Mp
Ow0KPiAgDQo+IC0JbGlzdF9mb3JfZWFjaCgNCj4gLQkJZW50cnksDQo+IC0JCSZhZGV2LT5kbS5p
cnFfaGFuZGxlcl9saXN0X2hpZ2hfdGFiW2lycV9zb3VyY2VdKSB7DQo+IC0NCj4gLQkJaGFuZGxl
cl9kYXRhID0gbGlzdF9lbnRyeShlbnRyeSwNCj4gLQkJCQkJICBzdHJ1Y3QgYW1kZ3B1X2RtX2ly
cV9oYW5kbGVyX2RhdGEsDQo+IC0JCQkJCSAgbGlzdCk7DQo+ICsJbGlzdF9mb3JfZWFjaF9lbnRy
eShoYW5kbGVyX2RhdGEsDQo+ICsJCQkgICAgJmFkZXYtPmRtLmlycV9oYW5kbGVyX2xpc3RfaGln
aF90YWJbaXJxX3NvdXJjZV0sDQo+ICsJCQkgICAgbGlzdCkgew0KPiAgDQo+ICAJCS8qIENhbGwg
YSBzdWJjb21wb25lbnQgd2hpY2ggcmVnaXN0ZXJlZCBmb3IgaW1tZWRpYXRlDQo+ICAJCSAqIGlu
dGVycnVwdCBub3RpZmljYXRpb24gKi8NCj4gDQo=

