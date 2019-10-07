X-GM-THRID: 6744782038482550784
X-Received: by 2002:a37:aa58:: with SMTP id t85mr22167618qke.381.1570441032862;
        Mon, 07 Oct 2019 02:37:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aed6:: with SMTP id n22ls2252483qvd.6.gmail; Mon, 07 Oct
 2019 02:37:12 -0700 (PDT)
X-Received: by 2002:ad4:4b09:: with SMTP id r9mr26402494qvw.121.1570441031967;
        Mon, 07 Oct 2019 02:37:11 -0700 (PDT)
Received: by 2002:a37:484b:0:0:0:0:0 with SMTP id v72msqka;
        Mon, 7 Oct 2019 02:33:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwSt4q/5dXkyb8YpP4JY0+evUTGqxAhg1MdrV8FtbgkRlK6ZVyoOo1uVTJp9Yc2an42B2xa
X-Received: by 2002:a50:fd10:: with SMTP id i16mr28706579eds.239.1570440797717;
        Mon, 07 Oct 2019 02:33:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570440797; cv=pass;
        d=google.com; s=arc-20160816;
        b=XnCq4EF1HKhHkv59gA67kg5wW8XbL7DkfO406WhyL242aT3j1gAyeaJWVeCJvP1reX
         j489dbnF9ELF4mom7ivJhbzI/j7KjAq0z+BgaDVUkJccE08DGfI5Ir7uJ3OzG9EbdZMY
         K7JQzNmDAd1HAv1lsBXT4UUkaFMUOyRikXPVef6iJ7m9WFED/3VahNQ7k8KRGlMhTePi
         B+Aw7K62Kq3DJlAqT6kgQB0VqWLSp5kOu0ZwfAY7f+mBHAIxzPubLI/CV0BfNP6A7D0B
         83lE/lNxuvb9hOueNMTxUblZaGP4E9w3uil6CuKHysnPjArKU0/tSkx36PNFKXW7OqeW
         BrwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=bmZkZyjXKEUah/Jlr/MgdorGKmGADLWOMr9xmVHdQQo=;
        b=IWEbeEhRwHrJ7px67HLMO2Zu8g6iTvBxpypnMMjvWpczao8KQ9ATdtC9A6P//Wamt9
         +CdTVR6+tgoJwa9FBAseerSWi6LsixgnOIPsg7xMG6lOOCLpcrNIMk5Gmkxcr9HeTKxK
         3IZmmyKFkQL++chrBImnoe/sXn1yjmggqwiqhoIOx0QsXywnDikwVQYAtaSZj2Hi3Oav
         lj1tw9xd+/cwm4UQPJjM3zbF0uV6h63zgGP8xCnYGypYYp6jA632VT+kNegmcxIZ/2sg
         KHPgkGJVaIV35VMk2ldJTtk57/qqTSEfOLg0fv7qOZSdemzeGTCKmgjqduGPio50010K
         WE0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@itdevltd.onmicrosoft.com header.s=selector2-itdevltd-onmicrosoft-com header.b=qMGfFR5z;
       arc=pass (i=1 spf=pass spfdomain=itdev.co.uk dkim=pass dkdomain=itdev.co.uk dmarc=pass fromdomain=itdev.co.uk);
       spf=pass (google.com: domain of quentin.deslandes@itdev.co.uk designates 40.107.2.61 as permitted sender) smtp.mailfrom=quentin.deslandes@itdev.co.uk
Return-Path: <quentin.deslandes@itdev.co.uk>
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (mail-eopbgr20061.outbound.protection.outlook.com. [40.107.2.61])
        by gmr-mx.google.com with ESMTPS id d11si586086edh.3.2019.10.07.02.33.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 02:33:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of quentin.deslandes@itdev.co.uk designates 40.107.2.61 as permitted sender) client-ip=40.107.2.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@itdevltd.onmicrosoft.com header.s=selector2-itdevltd-onmicrosoft-com header.b=qMGfFR5z;
       arc=pass (i=1 spf=pass spfdomain=itdev.co.uk dkim=pass dkdomain=itdev.co.uk dmarc=pass fromdomain=itdev.co.uk);
       spf=pass (google.com: domain of quentin.deslandes@itdev.co.uk designates 40.107.2.61 as permitted sender) smtp.mailfrom=quentin.deslandes@itdev.co.uk
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jhlKi9yUMYdNuvqby8cNz23nd+K14XLPjs3XzL0VJBJZ5q5WTcT89LI/b+Th+xQf6V3l6T0NyKJPoYJpcZUM3z2pm56QgpyN8Ziuzpcb+hpnOiCFuURHDEUId4rMIBb3qoUsLdMQ7POyL3h8Qr/TRwjE1amxF3W5GSzEUb2UylxN+yXTswK7uatLt2dWh7F6AuSPdVF53lx+YdSabW1WBNw9TjutFz7CtArdkICbcTq026zyrWISbzK3eIqnvAnqMlOUIqHz8uR06hvWppLq0cBAhYmGGXXwHm/j56TER75+p6nHE4//sdGdk9+njJ3miSwORy5bS6Ax5/qBsMRwJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bmZkZyjXKEUah/Jlr/MgdorGKmGADLWOMr9xmVHdQQo=;
 b=Gy9RGc4s5nMJ1Ynsy3jX8obJm+zdibuI+9BNql+LQUgPxjxpUX0FhYPDMVX+GzYtvET+8kgVFkwbhkZ+LFpG2ZSjbS4n1MOXSwEM/f3tu+Xhej0YEe5XG0XtYQh1SYr7rdTomTWkK2IIknbqiRM/SAsVy1cF/+6bYlQqXXF8IG22dc0xPjtdphf2/jGGqixdzH/HVtdEDb+IcRegaXRRV2Y59OIH4gUfqlAzCqie7JP0Slk1oOm0wTX7F84m7Vld4F0bums44faz2fhO1b/PwiBw92ApxpkolA0drmeiUEn7SXlKvbOKnBMiWfpMWr4TD6YNgp0lDXMM5yGdUGPkWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bmZkZyjXKEUah/Jlr/MgdorGKmGADLWOMr9xmVHdQQo=;
 b=qMGfFR5zg8FhfEYZCaFL0lYsT6fctkhRn9GO7wdf6S1oQDgDerU2UeSMP1R3a3+X92MuoIO+OC87q4fOVf1ApqZU2xstXasf/3wybMl0c/W7669gVrwhfO5MD9vBpGW3qv0gu4FiIWIZ/BrMyKDM2vOynkSe8vvIExzwDmEXyOc=
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4648.eurprd08.prod.outlook.com (10.255.78.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 09:33:15 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee%6]) with mapi id 15.20.2327.025; Mon, 7 Oct 2019
 09:33:15 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"forest@alittletooquiet.net" <forest@alittletooquiet.net>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"trivial@kernel.org" <trivial@kernel.org>
Subject: Re: [PATCH] staging: vt6656: remove duplicated blank line
Thread-Topic: [PATCH] staging: vt6656: remove duplicated blank line
Thread-Index: AQHVfICBMETYKv8JVkao/iXduhbl+6dO63mA
Date: Mon, 7 Oct 2019 09:33:14 +0000
Message-ID: <20191007093313.GA9232@qd-ubuntu>
References: <20191006195854.9843-1-gabrielabittencourt00@gmail.com>
In-Reply-To: <20191006195854.9843-1-gabrielabittencourt00@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-clientproxiedby: LNXP265CA0019.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::31) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23c6464f-353a-4406-dc27-08d74b0960bf
x-ms-traffictypediagnostic: DBBPR08MB4648:
x-microsoft-antispam-prvs:
 <DBBPR08MB46485202024FBE8BAC57B7AFB39B0@DBBPR08MB4648.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10009020)(7916004)(396003)(366004)(136003)(346002)(376002)(39830400003)(189003)(199004)(486006)(6486002)(305945005)(86362001)(6512007)(66066001)(9686003)(76176011)(44832011)(4744005)(229853002)(2906002)(25786009)(476003)(99286004)(5660300002)(3846002)(446003)(71200400001)(71190400001)(6116002)(6916009)(1076003)(11346002)(6436002)(7736002)(102836004)(6246003)(6506007)(386003)(4326008)(186003)(1411001)(8676002)(508600001)(33656002)(8936002)(14454004)(81166006)(81156014)(14444005)(33716001)(256004)(54906003)(316002)(26005)(66476007)(66556008)(64756008)(66446008)(66946007)(52116002);DIR:OUT;SFP:1101;SCL:1;SRVR:DBBPR08MB4648;H:DBBPR08MB4491.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:3;A:1;
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 YQ/w6bJJF9oPqEVbU/qzkzHTihf2jX403KEZjV+KRJdW7GYXYqeNJEiFb7RpIY+x16JQOaSWMgSUoRRD3eKbWdxEmU8kAhaxfx9Ki6Oqe8QwquCkzSWENT9lVKi6CxLJhwctOxunHrPDvgLe9amFcmgNGjHQogwhUkVLrhsryv/4oanBV1Df47w7nBycjbXIwSH8BnHpqKEZMnJWmaSDrQNX444uImZPibbkkeO1dcjBpXU+Th2BAiwgZXrqCRAWBocvzIWx2y5kt8E7NEBgFMzhP8TgLyPDFl1/rQhzawh9wil27czUNifxGS2jmLtEnddqUZGo2pk0cyvwaPTmvpVGXYpZCtjS9Uc5nkVcl6N5C/zuIZfOcMp52k4nloCT4MYjXrc0THq6Su8TgTu2G2pJydttGI4iuz0DVs+6TnE=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <54A2AFC5AFBD054E9BD6CA75401561CD@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 23c6464f-353a-4406-dc27-08d74b0960bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 09:33:14.7629
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aHrdW3KaPmtsGH9eQY4iN5F8jfGJtunKUL3WILGJgPmJQW0O6dvGBAgimzY0194rdp2fTvi+NBqMoLt+G3LJo2mT+L41q3meMURf8BLvGMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4648

On Sun, Oct 06, 2019 at 04:58:54PM -0300, Gabriela Bittencourt wrote:
> Cleans up checks of "don't use multiple blank line"
>=20
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/m=
ain_usb.c
> index 856ba97aec4f..a1884b5cc915 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -362,7 +362,6 @@ static int vnt_init_registers(struct vnt_private *pri=
v)
>  			goto end;
>  	}
> =20
> -
>  	ret =3D vnt_mac_set_led(priv, LEDSTS_TMLEN, 0x38);
>  	if (ret)
>  		goto end;
> --=20
> 2.20.1
>=20

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Thank you,
Quentin

