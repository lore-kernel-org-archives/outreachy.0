X-GM-THRID: 6755994568036974592
X-Received: by 2002:aca:1a03:: with SMTP id a3mr3895023oia.58.1573068401966;
        Wed, 06 Nov 2019 11:26:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:18cd:: with SMTP id v13ls864258ote.1.gmail; Wed, 06
 Nov 2019 11:26:41 -0800 (PST)
X-Received: by 2002:a9d:7313:: with SMTP id e19mr2934656otk.174.1573068401302;
        Wed, 06 Nov 2019 11:26:41 -0800 (PST)
Received: by 2002:aca:6741:0:0:0:0:0 with SMTP id b1msoiy;
        Wed, 6 Nov 2019 04:24:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqxRoOnblFd3LDETE2k6miYZHvTxqXf8/12iXXERNRVjZWAaR8Vq+ei9zo016S204+88udvJ
X-Received: by 2002:a17:902:8343:: with SMTP id z3mr2370660pln.200.1573043046905;
        Wed, 06 Nov 2019 04:24:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573043046; cv=pass;
        d=google.com; s=arc-20160816;
        b=u0tPR9DIfP4Wh+/FSmDdMmpix847AREOQKqcGlHLa4m5WoToBZHaex/zKdiZwBkCTj
         /pJnSXTVHDrCmei1K6nCpsEvfxEuFxSBueYNx+pmV5N2Af3xoyUtD6X1ojeccAGZ4iZg
         ++T4zqwqgrweBmyxw3sno1gsZHrtDnmYC1MQ/x5lM2mdfDhAWU068pkZOtS6kBAeMLu3
         2X/iWLo7pqFxR2nMEFoGucK7l4syfx3MXQMUASLz4fmeCXWDssSfKQezE6OeCmuxsMQE
         0502akyUwFT8XCkpl9xupkZ4sdBt+3w65kjDjkng8gEJcU1mlRWBHxxMxQ1+BeOgQbxb
         cAig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=D0w2rnASiXrWVt8Trn2ZodLzNo1ZErwCLLD4wNf+qMU=;
        b=Cdjx36Ih7G/ZWlpbdcy9yHq/pjaA+gA8MOSqpCSOFdJzxsygDgKwM8KFghy8lNAgr8
         o1ztbGHaQdEaCyv4k1Tnj7vAvzMCgjJgl7AxMC77o5Wc5gOXVW7IYrgrDxAW+UOthI2U
         XGybel4FmYJKQmpur72BcnipGEFUfyGZfUsrQZ9+T+A6UCxyppAOdwHYkPUKfkXJfqND
         P5q3URlB30Z29tP/GAizRABjZByF4UaBoXOky+pnX1rMTjqUoqVe59E2Cdlm73iD8TIc
         Q4LthowgvG2PQBhb0SbLhq2yOXOrlKagx+eF+xuROZJpGG7YM3WrHJIqRQaVTEv/d/+4
         jroA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=dcZfQLfd;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.79.44 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
Return-Path: <Jerome.Pouiller@silabs.com>
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (mail-eopbgr790044.outbound.protection.outlook.com. [40.107.79.44])
        by gmr-mx.google.com with ESMTPS id b17si110493plz.1.2019.11.06.04.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Nov 2019 04:24:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.79.44 as permitted sender) client-ip=40.107.79.44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=dcZfQLfd;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.79.44 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSMy9x6rTJyAdBhtmcJ69Yu2uHYfK6poRV3QiYMD1HA2hFflh8GY3zFh1bSzZtvFc2anpx1zCB4t5JBSbpHgCGGd7VCBa1T1wWYn8nqX0m4VXVBfcfM9uzDDAdc8haeVoz5C5NcX74HZ1YTuiFy0YfZ+ea/BbxM4rROUw6Weu2BLxxInKVhB3CCPZMPbP7VQzwhHMB/uyoRi3H9vZMgb3TDCas9UjQExx+aGr1fZJd4AISW528Wgtog4Jzf54bnNrCnPQ9ZZRHHxQF7kyfhVMdCl5ahBCtZJX+uLoKPAimUWws6aoCCrQ7DW5wDMmnA/1BObruRsyzDHClPtY6P0VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D0w2rnASiXrWVt8Trn2ZodLzNo1ZErwCLLD4wNf+qMU=;
 b=EcoP+F1YHxGzV3M/D3WhZKxD+duOBGe4WdaFbJTbmDhf1USyi98F6p3vtAejQygdE0Umr8Mz2YSSe8o6ddIpsC5kAoOElVptUerQIJoeqlLdTiyXuGA9TNRsCTVqh9vmKx7KIdDKAzFMOYFrE8s2LMs0fWszS10PVxxpGei2h4AFdnnNmTkeyLuJRR8Y61huZBkhpIO7x/lXTCRyjMvI1MV31elWSY1sUrNuoDzQXLXfusjKn7JMDg67bv+/C359lEO6oP9h4QhEbgWfQeRBUzPuCe2ofUaSGuL37ukDMmKIQDC8r/WPrZyZ74Ishrbvqdy5CydDoaGUnoki6UriOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D0w2rnASiXrWVt8Trn2ZodLzNo1ZErwCLLD4wNf+qMU=;
 b=dcZfQLfdZkPOH193GSKStzevcoUNZ+kQp4NpjvrRhZLwhsd7sz6FHPKf3UUVwB0M3+rmz/bAgE7vcnU5OVOfBIiHZM2ASMV7ECgPdj4bJbBB8CDX0wCb5k0N7CjBx3dd3kZWzTvxhceqLOCxMTXMGJVknCkCY/lM+6jAOc6XXwM=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3744.namprd11.prod.outlook.com (20.178.253.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 12:24:04 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::90bc:abcd:689a:944]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::90bc:abcd:689a:944%7]) with mapi id 15.20.2408.024; Wed, 6 Nov 2019
 12:24:03 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: Jules Irenge <jbi.octave@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/3] staging: wfx: replace uint32_t with u32
Thread-Topic: [PATCH 1/3] staging: wfx: replace uint32_t with u32
Thread-Index: AQHVlD7WKl7wKo5FZUa2K26nesjERKd+EaaA
Date: Wed, 6 Nov 2019 12:24:03 +0000
Message-ID: <12394833.1gViOatCiM@pc-42>
References: <20191106010911.157294-1-jbi.octave@gmail.com>
In-Reply-To: <20191106010911.157294-1-jbi.octave@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7b0c030-2e4f-4060-2747-08d762b4360c
x-ms-traffictypediagnostic: MN2PR11MB3744:
x-microsoft-antispam-prvs:
 <MN2PR11MB3744EF6DA03423906A7E853793790@MN2PR11MB3744.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10009020)(7916004)(396003)(346002)(136003)(39850400004)(376002)(366004)(52314003)(199004)(189003)(99286004)(6506007)(102836004)(3846002)(76176011)(81156014)(11346002)(8676002)(186003)(446003)(256004)(66476007)(26005)(66556008)(14444005)(6916009)(476003)(71190400001)(71200400001)(229853002)(9686003)(6512007)(4326008)(6436002)(7736002)(2906002)(5660300002)(6486002)(486006)(8936002)(6116002)(66446008)(6246003)(14454004)(76116006)(66574012)(54906003)(81166006)(33716001)(86362001)(316002)(66066001)(478600001)(64756008)(305945005)(25786009)(91956017)(66946007)(39026011);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR11MB3744;H:MN2PR11MB4063.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 nBVSc9KMIq/YaZIMzsGuMdT0PxjpmsfEnF6quFgvgluiBzXmylUNl0/hnWOskHjSX9/wHv1FX3Vtf3Lp0vd0mnzdIvsqUmd+lfCLC8ZVzHi5JHMc1nmFgdojXLiL9ZWkJ9T6it35pptETsKauP5Ep4U4UkIRGEEssgwT1gxTmGGFeF4/gnUZlRX8wbQOJbhzDxX/cNiMPDZqmLfktrV7uANDZUn8Pq3qyqOOzZRGEBjgmuNjDJLGivrDqvJdSNrCLfBPqdnZUlninyH8miwYz1zXCPaUPLTqLiOLxMm1RhnhttAdDUTjB8ZGJS2FR02s+/x18LjTQV7xgXLFKq3hQfA+x3yhrNU432YeoGkoRIFZCvXEOH6mBlRgEonGw8BA+PterNbibylk/vebvg8tKcxhITb9NZcTVKkWibd8sK3xo53jR6ix3QMjApcsnFsP
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B0C506B8FF81A74FAB733C51D20956F6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7b0c030-2e4f-4060-2747-08d762b4360c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 12:24:03.5416
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2b5B6jMfml4UFF8oAh9k3ezCYzV4dZIE5Wn32IHe+3YZIwOTSKnJA+a3iBwl3Vp3oR0hHOR+DRZmesBTX0UqUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3744

Hello Jules,

On Wednesday 6 November 2019 02:09:09 CET Jules Irenge wrote:
> Replace kernel type uint32_t with u32.
> As per recommendation of checkpatch tool.
>=20
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/bh.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> index 955ed3a1dd73..337af22b0150 100644
> --- a/drivers/staging/wfx/bh.c
> +++ b/drivers/staging/wfx/bh.c
> @@ -239,7 +239,7 @@ static int bh_work_tx(struct wfx_dev *wdev, int max_m=
sg)
>   */
>  static void ack_sdio_data(struct wfx_dev *wdev)
>  {
> -       uint32_t cfg_reg;
> +       u32  cfg_reg;
Why there are two spaces between u32 and cfg_reg?

>=20
>         config_reg_read(wdev, &cfg_reg);
>         if (cfg_reg & 0xFF) {
> --
> 2.23.0

There are plenty of other occurrences of uintXX_t:

   $ git grep '\buint[0-9]*_t\b' drivers/staging/wfx | wc -l
   628

Why do you solve this one particularly?


In add, the driver use more often uintXX_t than uXX:

   $ git grep '\bu[0-9]\+\b' drivers/staging/wfx | wc -l =20
   171

In other parts of kernel, uintXX_t are not rare:

   $ git grep '\buint[0-9]*_t\b' | grep -v staging | wc -l=20
   94005

I have a slight preference for uintXX_t, because it is less specific to
kernel (and because vim highlights uintXX_t but does not highlight uXX).

Anyway, I am agree to uniformize these types.

Thanks for your contribution.

--=20
J=E9r=F4me Pouiller


