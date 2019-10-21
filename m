X-GM-THRID: 6749515623301120000
X-Received: by 2002:a25:33d4:: with SMTP id z203mr16200068ybz.149.1571663221722;
        Mon, 21 Oct 2019 06:07:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:7496:: with SMTP id p144ls1971300ybc.1.gmail; Mon, 21
 Oct 2019 06:07:00 -0700 (PDT)
X-Received: by 2002:a25:6e86:: with SMTP id j128mr15484057ybc.456.1571663220553;
        Mon, 21 Oct 2019 06:07:00 -0700 (PDT)
Received: by 2002:a81:ec12:0:0:0:0:0 with SMTP id j18msywm;
        Mon, 21 Oct 2019 01:21:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy10HJKRnaYGylw9+Oh5DCwiPGj3l4zuLAn/7RY9Xf7WY+rdKwt2rutVT+cPwT2z7lWOylD
X-Received: by 2002:a81:2f58:: with SMTP id v85mr16592988ywv.226.1571646108353;
        Mon, 21 Oct 2019 01:21:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571646108; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZCbuIs9UHFCeFuinBjhjkE3q495EpmFqCTsSzF0BgV+SeSbM9O9go5v2pgiG9XGnru
         rJo+0eYkkt13WwVaCVMl4N13NQT+bQ2L29O0oWkmZE7tIlEnbCkr3TFduTqA3WaPNC7T
         zWGEwKSQ6EfI1FF99YZyA8200Dt/kohDhDYef9ajNB7OSKJ4LMQNF2jaLiLjyqcZUM9o
         e3AAnOXzUGJow1uktfYTqScX4Q4B35nBR+SRmIpZ3PMtAfVNjf4Dtkd+YwMki5sVPhZC
         pATd6HY10p2ipHCLO1YbSy6JNaK3phcx7C1fMD985n+CsgRlTDW8VwlZGOwpHER3SzDh
         9INQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=iy8jLzROzCX9GJqVkVZTjAOMSMUpi+0GYak3vKUJAMQ=;
        b=y7+zUu1BtHz12i+5t0HrmfhkKfcj+pncbFM/UvpKwlQLxFaXKJ0qUmZjgz/+Rq8Xey
         W6czTyefbN7yu5zdjCl3fKvZCIrZWlei6Nnxpe2I+sFaKZwUXJ2pGKMBlGDYSXgZfPd+
         5v55TLJtudY99bYM8p7G//YXrNPtHhNdbB9PNxPN72N0tgzjUYJScCO7xfCBFVh8tl5i
         daIu0HwD/DDSShygc3PGVxiUopFAe6EIoW4LCdvdJ5g069DSfHgWYZxOuqREMKlH/ARS
         z9T39uAI9JTkeoO5joil0vjAzOnjW8pljO9R2shlmfNeLh60Dx6M27rbci94iwjrcj1z
         UkGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=lcqCvTk2;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 2a01:111:f400:fe4e::614 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
Return-Path: <Jerome.Pouiller@silabs.com>
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (mail-bn3nam04on0614.outbound.protection.outlook.com. [2a01:111:f400:fe4e::614])
        by gmr-mx.google.com with ESMTPS id a1si717625ywh.3.2019.10.21.01.21.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 21 Oct 2019 01:21:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jerome.pouiller@silabs.com designates 2a01:111:f400:fe4e::614 as permitted sender) client-ip=2a01:111:f400:fe4e::614;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=lcqCvTk2;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 2a01:111:f400:fe4e::614 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2wMGhoFGwN4lRqbVvjfFQp3GEsTzf3tSOca2D3Xdh5UTY8Uy/qPddqoGASPfJDgH6KHkUc9ru54NyWxsdpV0FnEfhxx2XhmxmgfYX0DSfQ7gp1ooYkdbnEyqgAxC4lzXzbWAFdwdKzcKaPJFZ3n4CcQsBAOgYh+xadiLvObFFEDgF6xHrzCefk+jWvxsbKh5I7EoEi+FuQnsOlLcErhUoCLJgFWiGqSjmp4iryu0bY+HMGOFeXIG+/L2W1KulvwvXWSNABbp7q5zrYyHhVVOas+BhhjIvfWe3LgJJo/C00LJ3oGQboC/SFW5TIl40alqA6OTaMTKlfV0NejDq+EyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iy8jLzROzCX9GJqVkVZTjAOMSMUpi+0GYak3vKUJAMQ=;
 b=HOnVyqHBNYZguutamFqWtz8hmthhJ2jCyI+ezho+70Yr63iejfIxpT+iTUqxKT95gwgE5XUM7VMtHwbFEhsPoTFDb4LNiL5lCOE5jjEQGUXsgpJbvUtMoVnqqJQNcOzN3IrppoqAc0zpP92ad/VefNmXkpYUuuWo4kPSUazPwBTmnJPoXQrRl29sN0IyciXDn0Gn0QePG02IYh8kgpDx9y4RFIluG3SFKXuCQwYQeyHNd1fGbMp3mAjgDFBIIQEhzBpoDmkBVqTtGitb+atmgSEUmJtP/0tCiVprIHOcAJWzF3ncTJ6S3DITvcd1FWrlHVmWsjSFYLZow95b3OkUbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iy8jLzROzCX9GJqVkVZTjAOMSMUpi+0GYak3vKUJAMQ=;
 b=lcqCvTk2y3+YCpKLvgC85rYvDYa3FWKY+8ZdpnO2n55M1m5QUkEmxd3y4z6ZaFNbntvUHcWQRCX/iUcX4TdVi/L4xKpRQ9YxjV2RdTVW0g9fZbNyP+HuvbO5lUsh3wXJQEsIAIaEfWizWL6O0FM6o1wC/JyVwAv84r5SZYGzv4s=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3949.namprd11.prod.outlook.com (10.255.181.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Mon, 21 Oct 2019 08:21:46 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 08:21:46 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "driverdev-devel@linuxdriverproject.org"
	<driverdev-devel@linuxdriverproject.org>
CC: Dan Carpenter <dan.carpenter@oracle.com>, Jules Irenge
	<jbi.octave@gmail.com>, "devel@driverdev.osuosl.org"
	<devel@driverdev.osuosl.org>, "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
Thread-Topic: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
Thread-Index: AQHVhoaXW9ETEAkC20KZ2rlidgS3oadiBNmAgAK/PwA=
Date: Mon, 21 Oct 2019 08:21:45 +0000
Message-ID: <4583183.OhVBZdlllx@pc-42>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
In-Reply-To: <20191019142443.GH24678@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: caceab67-1e54-409d-398a-08d755ffb667
x-ms-traffictypediagnostic: MN2PR11MB3949:
x-microsoft-antispam-prvs:
 <MN2PR11MB3949630B814E417EC0143D8293690@MN2PR11MB3949.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10009020)(7916004)(39850400004)(366004)(396003)(136003)(376002)(346002)(189003)(199004)(446003)(478600001)(6436002)(66574012)(476003)(486006)(6486002)(11346002)(71200400001)(71190400001)(5660300002)(229853002)(99286004)(256004)(6916009)(14454004)(5640700003)(8676002)(6246003)(7736002)(81156014)(305945005)(25786009)(4326008)(81166006)(9686003)(6512007)(76176011)(2351001)(8936002)(66946007)(66476007)(66556008)(76116006)(6506007)(91956017)(102836004)(3846002)(6116002)(66066001)(64756008)(2906002)(66446008)(186003)(26005)(316002)(54906003)(86362001)(33716001)(2501003);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR11MB3949;H:MN2PR11MB4063.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 U7KeoZ22FeGnlf63/GfCZroUI6JjjhdqSWhYdJ23QchbvdUFqOKBJBJqgUpZErvMs6ALd0+bd4U/RdMgcaxnKb143K8Z6YLYw1NPM/gflMhXV4uIYhHxEjt6kiNUhxOd9Z3GdsimjDX369Zm1SiZrmRUfmukEDeeWZIel2Diu4Nq90t4LzxodzX4ftu/dvynW8AkRx4XILXvDWXyc+nFdLrn2bfAWqd65Ta2o97PIyDYvYmdtJayDrVaNxmd/UgvgAQo4x+RyxdQlbuqJWqlOS/D8IiIwqZiloTN5+3icte8CSVl5it8vRSdKEnBDKyFGy5QWLFnDeMtbos1Un4/SaS+c/8xndB6Jd7hOOuNUfWFQCQBAD3ZaRqaoMNUar0oE6ygcgpBTJxgn0fxTZiZjipRxW0zZ1fKDWtaiHHPAww=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <736FEC0722E0284582AD517F5E17B446@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caceab67-1e54-409d-398a-08d755ffb667
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 08:21:45.9635
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZGdwcgt4LSB67Z1uH0rqZcJcKwm3nkZGgwU7SJc9jJuLj25pRfsihzCULTMXvG5t9MyPU/TZSjWvRPxhb2YxKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3949

On Saturday 19 October 2019 16:24:43 CEST Dan Carpenter wrote:
> On Sat, Oct 19, 2019 at 03:07:15PM +0100, Jules Irenge wrote:
> > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > index 3355183fc86c..573216b08042 100644
> > --- a/drivers/staging/wfx/bh.c
> > +++ b/drivers/staging/wfx/bh.c
> > @@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t r=
ead_len, int *is_cnf)
> >       if (wfx_data_read(wdev, skb->data, alloc_len))
> >               goto err;
> >
> > -     piggyback =3D le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
> > +     piggyback =3D le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
> >       _trace_piggyback(piggyback, false);
> >
> > -     hif =3D (struct hif_msg *) skb->data;
> > +     hif =3D (struct hif_msg *)skb->data;
> >       WARN(hif->encrypted & 0x1, "unsupported encryption type");
> >       if (hif->encrypted =3D=3D 0x2) {
> > -             if (wfx_sl_decode(wdev, (void *) hif)) {
> > +             if (wfx_sl_decode(wdev, (void *)hif)) {
>=20
> In the future you may want to go through and remove the (void *) casts.
> It's not required here.
>=20
> > diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_sp=
i.c
> > index f65f7d75e731..effd07957753 100644
> > --- a/drivers/staging/wfx/bus_spi.c
> > +++ b/drivers/staging/wfx/bus_spi.c
> > @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned in=
t addr,
> >       struct wfx_spi_priv *bus =3D priv;
> >       u16 regaddr =3D (addr << 12) | (count / 2);
> >       // FIXME: use a bounce buffer
> > -     u16 *src16 =3D (void *) src;
> > +     u16 *src16 =3D (void *)src;
>=20
> Here we are just getting rid of the constness.  Apparently we are doing
> that so we can modify it without GCC pointing out the bug!!  I don't
> know the code but this seems very wrong.

Hello Dan, Jules,

Indeed, this code should be improved.

Each u16 from src is byte-swapped before to be sent to SPI and restored
before to return from the function:

	for (i =3D 0; i < count / 2; i++)
		swab16s(&src16[i]);
	[...]
	spi_sync(bus->func, &m);
   [...]
	for (i =3D 0; i < count / 2; i++)
		swab16s(&src16[i]);

So, src is same than original, but it is not const.

This is exactly the purpose of the FIXME just before the cast: "use a
bounce buffer". However, I did not yet make this change because I worry
about a possible performance penalty.

--=20
J=E9r=F4me Pouiller


