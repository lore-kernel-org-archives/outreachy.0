X-GM-THRID: 6750231340791103488
X-Received: by 2002:a0c:a947:: with SMTP id z7mr23678748qva.103.1571663221623;
        Mon, 21 Oct 2019 06:07:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a545:: with SMTP id o66ls1360231qke.10.gmail; Mon, 21
 Oct 2019 06:07:00 -0700 (PDT)
X-Received: by 2002:a37:de0e:: with SMTP id h14mr22324249qkj.45.1571663220469;
        Mon, 21 Oct 2019 06:07:00 -0700 (PDT)
Received: by 2002:a37:9804:0:0:0:0:0 with SMTP id a4msqke;
        Mon, 21 Oct 2019 06:00:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy+lshABzlwIzxHb5Cy7jo/Xtpglrdrms5CcldQrOYD52kho7nmmrfizCSd7BngkvsN0x67
X-Received: by 2002:ac8:2727:: with SMTP id g36mr23677841qtg.202.1571662809149;
        Mon, 21 Oct 2019 06:00:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571662809; cv=pass;
        d=google.com; s=arc-20160816;
        b=OEbey7SYGhyPnkfOfZShxuh97gSo4NCMMkmybP3reFGTigC0OviEywUhicOS2RwNPl
         6nDjSGJZPUNNndhA9cLWn6l6p0BbgEkio3HyRutpY1qw8zRuEPL7lK4nKM6+89pdUULt
         UY99HqMq4zWLYD0Ga2sIm5cK8x79Dq6e3wWPXh9Y8LS7jKJxlzOG7rZmiRIzbiCsZi0Q
         VfMC0YksjOPdKhPwgeKMMdY711un9Xh+WdTRc2rwV9Y1KtAkK6yfywlq91xB9JFj5Xgo
         HI17KSv3bJJMMiILQpNM8LbWw0lQHhNHj/O7ONMUbuatARH27+QBKE2JZMy2tyU8of1B
         8VMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=0nNG51pn6lVefN68Uc9Nyk9e1fldE5cs+VAa1rGXrjc=;
        b=oPqXSpnJUDKIEif4VVcQdWdVXsRjzTv7AixyKF4ZIt/6qSrA+LnQMhT++EuJupBPla
         MoeYfwIlGEo37lEOm4rdOMxr3Wzefr+eUyd8LfHP2GBvs5yx+6hME5JTVQ0hQFAUhkvN
         bGrDpM7fODDN5NRREo2Lcrxn0Yaqsi6WhurQAuNZ1O/g1/plqc95xae75NZpbGdBejZQ
         w60ZcruYM+Ga8j+IoE0py4BXuWZumPNAP8vciV3wOGA0ZOfLWd45nshbCITB4eMdcAO5
         CR5vtLDyPvOl3sRyjjZVfbQJCWEb0vFcZs6hZf4jSiHat73pV72u8H9HnXZ07lA04PQq
         D2Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b="h2Z67/Wf";
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 2a01:111:f400:fe49::619 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
Return-Path: <Jerome.Pouiller@silabs.com>
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (mail-dm3nam03on0619.outbound.protection.outlook.com. [2a01:111:f400:fe49::619])
        by gmr-mx.google.com with ESMTPS id t187si544706qkd.0.2019.10.21.06.00.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 06:00:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jerome.pouiller@silabs.com designates 2a01:111:f400:fe49::619 as permitted sender) client-ip=2a01:111:f400:fe49::619;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b="h2Z67/Wf";
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 2a01:111:f400:fe49::619 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QTEjsqCLWY63hNSu7xx6uGyJFkbW0M0tI+hV002IgwcBc9bH7IaTeHkTDguj7GIBRX0fvZWBMln1Fg+spRmuWtXbMt8+S97KpJUc8mXGxF2hL26PBAUT7UnU5gMNEktGiN+vngGtlyl8UA4p9Je5dhokDUcK3o/k7cMqivl8ud7TH73z4OqQkytesyX3WVeuelkjOtbIL+dqWBqLjzUa/5HQtZpa5LoPO4XfktJWNT1IjKqnwCt2VivJBHdHmuqdVHnEtcolKLYCcU+AObJxxnaXB3TK7ne4ZuYxfzMOKYy5WEXjyWCMTxnm6CUMWYIXTFK1VCJmH8kpYY6xQZjeUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nNG51pn6lVefN68Uc9Nyk9e1fldE5cs+VAa1rGXrjc=;
 b=SEVNGkm+GaO8zrLb3x1NL7h/8M5bdqOTsegEtPeCMilpy1Hahv+cOzEl1NrP94HhEl2McRCP0IpV+cFa92kmnxEfHYIAT59nDUfVvN2FYcs/jfNMHz5SqxF29V9ntRsl54B4Fb7SsBjnTzpUd8RjqnkTMQcwftwZBrioUF9O6Or8R71xZWA3ij2Laz9ONLNFbWBO9V2cbe6f76W2v59Wedr9Ucog2Id9q7dkjJiE/XCnkQdD3BWJuEjS5oeqk7+Ke1D/keFiXmgCY29FIwSTHTtYB5EJs249h4l+EBw2MHAmNmjrthUUI/A/fmkBdlqLWKc+WaoW8RRWjXYin5yQoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nNG51pn6lVefN68Uc9Nyk9e1fldE5cs+VAa1rGXrjc=;
 b=h2Z67/WftlnqLvWWxBZ6I7qtTCnddq7k+Wq7dDhYTaqDA5jiU2NsmJFC04cUlFccF6iMiQHekmIr0KbXSsCa83dG5JBvNP+q72F7X95gC5tdGr0PIHF1PPfDQjlhoK6WhTj/rjfxhbwVSdgHO2yCd+/xv4qPlq8fLqKt60R0rBo=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4366.namprd11.prod.outlook.com (52.135.38.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Mon, 21 Oct 2019 13:00:05 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 13:00:05 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "driverdev-devel@linuxdriverproject.org"
	<driverdev-devel@linuxdriverproject.org>
CC: Jules Irenge <jbi.octave@gmail.com>, "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>, "devel@driverdev.osuosl.org"
	<devel@driverdev.osuosl.org>, "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
	Jerome Pouiller <Jerome.Pouiller@silabs.com>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wfx: remove unnecessary void pointer
Thread-Topic: [PATCH] staging: wfx: remove unnecessary void pointer
Thread-Index: AQHViAqYClnli9Z4MEecbMS0wOWUF6dlDtQA
Date: Mon, 21 Oct 2019 13:00:05 +0000
Message-ID: <1631480.SfG2rUoJ8t@pc-42>
References: <20191021122449.19343-1-jbi.octave@gmail.com>
In-Reply-To: <20191021122449.19343-1-jbi.octave@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 989f3913-ed49-4d6c-6de6-08d756269815
x-ms-traffictypediagnostic: MN2PR11MB4366:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs:
 <MN2PR11MB4366C41E16E5F25DD04DA02893690@MN2PR11MB4366.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10009020)(7916004)(376002)(346002)(136003)(396003)(39850400004)(366004)(189003)(199004)(2501003)(8936002)(256004)(14454004)(71190400001)(71200400001)(76176011)(8676002)(14444005)(26005)(81156014)(81166006)(25786009)(5660300002)(486006)(4326008)(476003)(6916009)(11346002)(478600001)(446003)(99286004)(9686003)(6512007)(6436002)(229853002)(54906003)(2351001)(6246003)(6486002)(316002)(2906002)(66446008)(305945005)(76116006)(66946007)(33716001)(186003)(91956017)(7736002)(64756008)(5640700003)(3846002)(6116002)(66574012)(6506007)(102836004)(66476007)(66556008)(66066001)(86362001)(39026011);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR11MB4366;H:MN2PR11MB4063.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 pgfe7aUuEBash2ZpEGAxAReOFgx3FAEDqZ966+JMAymj/OW3IVIkyiaAXizaHE4XMtN0ZCrOFT+xj/C11MwVA7wPXOPRKMXCrgLwQ0TFSS+/sdyz24cQXg7E1QUW6xLCOguvoscYIY2/3lkQOUBxxOHju1JeiBRF2+HtuX2ReXRTiTvknmLsE+XqRLQktziguUA/c+4qvrYVuaQh+T+sf+7EDoJZijWl9X28XRw2YD4OI8kyfoo3BVcDamKwf270JTHvKMaQCH2wRSwZQ4JHGJvy5VydRN+N9LAZZxRKg7DFuxnxvM1PdK9787RagQUHgLJVtyb5zb7rUGm/8sLUuiLSvhfYAnCrUZoKLlSN0l3Aoj+ptSm/La4tkiu5zY/ZnqA43SsHnT/usz4RwlhUYZq1EA0HKlfvq4RFXk+94/pPsTuZevFAYmthBX80sE3H
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <93963DF73126944489852C98FE1F2D0C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 989f3913-ed49-4d6c-6de6-08d756269815
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 13:00:05.4612
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EWyrOpwkX/WANyiq9uer7iHjp6bltG1FDrS7kBqFSj6JpRHRLiq0ilH47BkwGf+fr4vypzkaQEwv5LPbQcjy+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4366

On Monday 21 October 2019 14:24:49 CEST Jules Irenge wrote:
> Remove unnecessary void pointers.
> Issue detected and solved by coccinelle tool.
> semantic use
> @@expression e ;@@
> -(void*)(e)
> +e
>=20
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/bh.c       | 2 +-
>  drivers/staging/wfx/bus_sdio.c | 2 +-
>  drivers/staging/wfx/bus_spi.c  | 2 +-
>  drivers/staging/wfx/sta.c      | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> index 955ed3a1dd73..d7ad9227c9c4 100644
> --- a/drivers/staging/wfx/bh.c
> +++ b/drivers/staging/wfx/bh.c
> @@ -76,7 +76,7 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_=
len, int *is_cnf)
>         hif =3D (struct hif_msg *)skb->data;
>         WARN(hif->encrypted & 0x1, "unsupported encryption type");
>         if (hif->encrypted =3D=3D 0x2) {
> -               if (wfx_sl_decode(wdev, (void *)hif)) {
> +               if (wfx_sl_decode(wdev, hif)) {
>                         dev_kfree_skb(skb);
>                         // If frame was a confirmation, expect trouble in=
 next
>                         // exchange. However, it is harmless to fail to d=
ecode
> diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdi=
o.c
> index 375e07d6d9ae..237a19b5fd16 100644
> --- a/drivers/staging/wfx/bus_sdio.c
> +++ b/drivers/staging/wfx/bus_sdio.c
> @@ -66,7 +66,7 @@ static int wfx_sdio_copy_to_io(void *priv, unsigned int=
 reg_id,
>         if (reg_id =3D=3D WFX_REG_IN_OUT_QUEUE)
>                 sdio_addr |=3D bus->buf_id_tx << 7;
>         // FIXME: discards 'const' qualifier for src
> -       ret =3D sdio_memcpy_toio(bus->func, sdio_addr, (void *)src, count=
);
> +       ret =3D sdio_memcpy_toio(bus->func, sdio_addr, src, count);
>         if (!ret && reg_id =3D=3D WFX_REG_IN_OUT_QUEUE)
>                 bus->buf_id_tx =3D (bus->buf_id_tx + 1) % 32;
>=20
> diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.=
c
> index ab0cda1e124f..bd74801e7461 100644
> --- a/drivers/staging/wfx/bus_spi.c
> +++ b/drivers/staging/wfx/bus_spi.c
> @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int =
addr,
>         struct wfx_spi_priv *bus =3D priv;
>         u16 regaddr =3D (addr << 12) | (count / 2);
>         // FIXME: use a bounce buffer
> -       u16 *src16 =3D (void *)src;
> +       u16 *src16 =3D src;
>         int ret, i;
>         struct spi_message      m;
>         struct spi_transfer     t_addr =3D {
> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 688586e823c0..842158b7e805 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -896,7 +896,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
>         /* TODO: Distill probe resp; remove TIM and any other beacon-spec=
ific
>          * IEs
>          */
> -       mgmt =3D (void *)skb->data;
> +       mgmt =3D skb->data;
>         mgmt->frame_control =3D
>                 cpu_to_le16(IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_PROBE_=
RESP);
>=20
Hello Jules,

Thank you for your work.

Did you check that the code continue to compile without warnings after
applying this patch?

--=20
J=E9r=F4me Pouiller


