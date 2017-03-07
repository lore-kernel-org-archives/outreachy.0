X-GM-THRID: 6394807331810443264
X-Received: by 10.157.17.228 with SMTP id y33mr624987oty.102.1488908381128;
        Tue, 07 Mar 2017 09:39:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.170 with SMTP id 39ls1208564otj.6.gmail; Tue, 07 Mar
 2017 09:39:40 -0800 (PST)
X-Received: by 10.157.33.117 with SMTP id l50mr650846otd.57.1488908380707;
        Tue, 07 Mar 2017 09:39:40 -0800 (PST)
Received: by 10.202.59.84 with SMTP id i81msoia;
        Tue, 7 Mar 2017 09:38:35 -0800 (PST)
X-Received: by 10.99.44.131 with SMTP id s125mr749667pgs.150.1488908315538;
        Tue, 07 Mar 2017 09:38:35 -0800 (PST)
Return-Path: <HartleyS@visionengravers.com>
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (mail-dm3nam03on0731.outbound.protection.outlook.com. [2a01:111:f400:fe49::731])
        by gmr-mx.google.com with ESMTPS id g82si126345pfb.5.2017.03.07.09.38.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 09:38:35 -0800 (PST)
Received-SPF: pass (google.com: domain of hartleys@visionengravers.com designates 2a01:111:f400:fe49::731 as permitted sender) client-ip=2a01:111:f400:fe49::731;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hartleys@visionengravers.com designates 2a01:111:f400:fe49::731 as permitted sender) smtp.mailfrom=HartleyS@visionengravers.com
Received: from SN1PR0101MB1565.prod.exchangelabs.com (10.163.128.23) by
 SN1PR0101MB1568.prod.exchangelabs.com (10.163.128.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.947.12; Tue, 7 Mar 2017 17:38:33 +0000
Received: from SN1PR0101MB1565.prod.exchangelabs.com ([10.163.128.23]) by
 SN1PR0101MB1565.prod.exchangelabs.com ([10.163.128.23]) with mapi id
 15.01.0947.020; Tue, 7 Mar 2017 17:38:33 +0000
From: Hartley Sweeten <HartleyS@visionengravers.com>
To: Gargi Sharma <gs051095@gmail.com>, "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>
CC: "abbotti@mev.co.uk" <abbotti@mev.co.uk>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>
Subject: RE: [PATCH] staging: comedi: Replace ternary operator with min macro
Thread-Topic: [PATCH] staging: comedi: Replace ternary operator with min macro
Thread-Index: AQHSl2bWvn1tfoigAEyiE4LiTZOu26GJo6GQ
Date: Tue, 7 Mar 2017 17:38:33 +0000
Message-ID: <SN1PR0101MB15652DA28CB022F0A3A8ED02D02F0@SN1PR0101MB1565.prod.exchangelabs.com>
References: <1488906954-25933-1-git-send-email-gs051095@gmail.com>
In-Reply-To: <1488906954-25933-1-git-send-email-gs051095@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none
 header.from=visionengravers.com;
x-originating-ip: [184.183.19.121]
x-ms-office365-filtering-correlation-id: 3a072761-3cf5-4b7e-ff4f-08d46580c706
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:SN1PR0101MB1568;
x-microsoft-exchange-diagnostics: 1;SN1PR0101MB1568;7:KVnN6UIBKaT7IdPWnXzlWtA5TLJBApta0LECziI4wBqnMEsSMlHlwKJCWP51uMT5SGXKynHpH2HZ2MigAlUVllZ9hcnfj7TRshEQ1FAEjuwQYqBSgzFm6AsEnPU/qSefpddIOd/gU7xBLy+qUvRNf6vPsoW5L8UXqQ/PZ/eOpaT84GbD43t+bQRWVMl2bEUUXU3LREPDWvvthL7e3rfhuMy1H/acB2Z1ReKbjUpfkt/yHljlF/7cxoRyUDP0ufW2OCw0Tdfh3HC1JuzG5bS3VL5SQvc9CTwIEd9eZr15blTvxkwOJ4NW+LFGAKKm7jc0chjO3p5TiLgbfUKNOZ/6Tg==
x-microsoft-antispam-prvs: <SN1PR0101MB1568B407068A4C19ACCA2E14D02F0@SN1PR0101MB1568.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(788757137089);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040375)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123558025)(20161123555025)(20161123564025)(20161123560025)(20161123562025)(2016111802025)(6043046)(6072148);SRVR:SN1PR0101MB1568;BCL:0;PCL:0;RULEID:;SRVR:SN1PR0101MB1568;
x-forefront-prvs: 0239D46DB6
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(6009001)(7916002)(39410400002)(39840400002)(39450400003)(377454003)(24454002)(55016002)(6506006)(9686003)(8936002)(6436002)(77096006)(99286003)(54906002)(4326008)(81166006)(53546006)(80792005)(2950100002)(305945005)(6246003)(8676002)(189998001)(74316002)(2900100001)(122556002)(25786008)(66066001)(86362001)(229853002)(3280700002)(106116001)(53936002)(3660700001)(102836003)(38730400002)(2906002)(50986999)(39060400002)(2501003)(6116002)(3846002)(54356999)(76176999)(5660300001)(7736002)(7696004)(33656002);DIR:OUT;SFP:1102;SCL:1;SRVR:SN1PR0101MB1568;H:SN1PR0101MB1565.prod.exchangelabs.com;FPR:;SPF:None;MLV:ovrnspm;PTR:InfoNoRecords;LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: visionengravers.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2017 17:38:33.4488
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d698601f-af92-4269-8099-fd6f11636477
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR0101MB1568

On Tuesday, March 07, 2017 10:16 AM, Gargi Sharma wrote:
>
> Use macro min() to get the minimum of two values for
> brevity and readability.
>
> Found using Coccinelle:
> @@ type T; T x; T y; @@
> (
> - x < y ? x : y
> + min(x,y)
> |
> - x > y ? x : y
> + max(x,y)
> )
>=20
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/comedi/drivers.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/dr=
ivers.c
> index a5bf2cc..6a413c7 100644
> --- a/drivers/staging/comedi/drivers.c
> +++ b/drivers/staging/comedi/drivers.c
> @@ -815,7 +815,7 @@ int comedi_load_firmware(struct comedi_device *dev,
> 		release_firmware(fw);
>  	}
>=20
> -	return ret < 0 ? ret : 0;
> +	return min(ret, 0);
>  }
>  EXPORT_SYMBOL_GPL(comedi_load_firmware);

Technically this patch is correct. But, logically it might be confusing.

This function either returns an error code (ret < 0) or success (0). The mi=
n() macro
makes it look like this function returns a minimum value.

Just my two cents...

Regards,
Hartley


