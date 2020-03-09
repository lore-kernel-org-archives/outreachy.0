X-GM-THRID: 6801912764487958528
X-Received: by 2002:aed:3042:: with SMTP id 60mr14857241qte.90.1583775330904;
        Mon, 09 Mar 2020 10:35:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:40ca:: with SMTP id x10ls787817qvp.9.gmail; Mon, 09 Mar
 2020 10:35:29 -0700 (PDT)
X-Received: by 2002:a05:6214:1408:: with SMTP id n8mr15100893qvx.189.1583775329798;
        Mon, 09 Mar 2020 10:35:29 -0700 (PDT)
Received: by 2002:a37:a49:0:0:0:0:0 with SMTP id 70msqkk;
        Mon, 9 Mar 2020 10:33:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtckqrjifiHwAhnrKAEZlo5JnbtG17/rQUOaeeQXk9poGw5atgRRVDUflXYlNCS9SSQ7UWV
X-Received: by 2002:a67:c58c:: with SMTP id h12mr10346378vsk.0.1583775208551;
        Mon, 09 Mar 2020 10:33:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583775208; cv=pass;
        d=google.com; s=arc-20160816;
        b=viwapBxCzMI5ClAK8INXKUN0/PXcy9Ye1EDrbUt2EP77RIk02QJR/QnDXm1V6ukz3p
         8IsAqdPbqifgcudmjxPisWX9o2eOEtcVqiafp4Hu8pFsLpsFoos1ZFjcDcA/uLELbNks
         Pc3fWEB+UYin7dBgnoAhnUiDTox+rR7uAo2rHgVj/8Swf5NQdZlSEdv/BK1kzRQxRL9b
         /zRHxlc6cvUww4mEYaphqJbdC+bSHQLG2QPl7X/ee7WgoV8pngNbCq2oO5WSZuFJnMmb
         PlILNDi+2HzWs3CtrHq9hmlSjbOmz4uRMfOF+emvOYU0Z3kFUGOx9RGcIdIVQnvNExg9
         fjYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=jXmQAvBpCIGKcP5uwOgFOo3/ovFzBv8ALF/wmu38d/s=;
        b=qnYeez7eNzsT1g1E+Jc4r25nF+fmvRD1a0CJq8+B6+xGX76fppA/Lzeq4F6Z2Mb36L
         LjsKX73nOEQWDdubMXhpz1jB6AreGp47wNDm2qGxJdbpf6waeCaHysMbv3t5f0oLXoJs
         pjbTilbqJ27kHYp4Y6RPkp5qxdEzIp4J6XFTUaZrklxWltaylCeTxf24ypagh6j4cN7K
         Rf/O6Y+pMnOSMfkWjqP3iAWJnqL669Kg80rzLj7c9rZjXYsCBIE9ICrZhvA7zD6VJsUS
         if8WRShbFROBf/DvmiFQ/MIp55PDrV1F8+37whW3zow0lVttS/W/ulD+nzdsUAiyHwav
         UXRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=THdOvXpC;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.244.72 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
Return-Path: <Jerome.Pouiller@silabs.com>
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2072.outbound.protection.outlook.com. [40.107.244.72])
        by gmr-mx.google.com with ESMTPS id r6si507514vkr.0.2020.03.09.10.33.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 10:33:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.244.72 as permitted sender) client-ip=40.107.244.72;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=THdOvXpC;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.244.72 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqEgKP50usEkVSgIHGjg0rGJ3YXEaUfm0+veEqjkesthD7kViWalLm/Rs9RHvIc6Eg3Bwbeuh17FcrSAg2+JDo8QLibeSaoaI0DP1mUsxHxIsRtyyyExDK16Wcp1DWi9BHvVkFrTn5HBD3tqL3aRO5SP2ChCdG6BjUgk0KFddr1iUHD5WNy4M/oD49rtjjl1UlQ6fAzISSaSRsE6j1EsjBEWOmRm4JH+TD0xImZNq+a4j/+hKBJrgS1Pw4EMUVf+ujC2ET9/L/MAmC+bSs8eBYjTv5neFhYL4AEIl3JRQ2/riWZplOuqQ8wmu4Lhbh8HQaU3IhiR2HYj7ILH7C6QOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jXmQAvBpCIGKcP5uwOgFOo3/ovFzBv8ALF/wmu38d/s=;
 b=Ay/xu0cGFsQsNtz4GcK78zmkNsmeT1KEDw6IA6aFq5GHpZv+O7XSqdIGaXrF5vMkCCahMJM4wIbXdnuxwsfryhSD0fMuz7Qe6UrvX0j5IJtosVnN+nqudnlFsL1GinwIXYlH0yRyWxTsFEXxWpdYEkfFqLULT+2RPQ1cYvzJ8+Qykd1q2SiTYHdKE+Hymicv1ucBwcjFzcabpaT7NpdtI/N2TIiSSQO+nI2rT0KWJVMJYCU7C8WjuCa4tn1tiSrUvqyG5QmKfTFnZA65YERBRT8GH2uos8VQTjgLMXFFPLqtV6ulwY8mH0dHkLvMXSgewo+Ah6k+iq51AcTdeBaaqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jXmQAvBpCIGKcP5uwOgFOo3/ovFzBv8ALF/wmu38d/s=;
 b=THdOvXpCLR2UZgmW2uAAfxRw6qW4cCvC3pE5kR4mcb+1L1IvrW3j+MsGENt5vDdf1tJDxdH4o5uavtkFbCEc5Aft+/hfoxyMiqWzaNbyDaSLeJYWPi1or3+EV5Sqi7YrnP4OkqVlSmZYERdl+kxco3j+09uGwSQXASg4SwgZvCc=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4630.namprd11.prod.outlook.com (2603:10b6:208:24e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Mon, 9 Mar
 2020 17:33:25 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 17:33:25 +0000
From: =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <Jerome.Pouiller@silabs.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: wfx: alignment should match
 open parenthesis
Thread-Topic: [PATCH] [Outreachy kernel] staging: wfx: alignment should match
 open parenthesis
Thread-Index: AQHV9jIl7tppQEqlPkO3hFy6dVokO6hAhUYA
Date: Mon, 9 Mar 2020 17:33:25 +0000
Message-ID: <3300885.yygXCFTgMT@pc-42>
References: <20200309164515.4880-1-payalskshirsagar1234@gmail.com>
In-Reply-To: <20200309164515.4880-1-payalskshirsagar1234@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff11fe4b-2a8d-4c29-f561-08d7c44ff902
x-ms-traffictypediagnostic: MN2PR11MB4630:
x-microsoft-antispam-prvs:
 <MN2PR11MB4630902169B4AF778D7C7A4493FE0@MN2PR11MB4630.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10009020)(7916004)(366004)(39860400002)(376002)(136003)(346002)(396003)(189003)(199004)(6506007)(86362001)(71200400001)(8936002)(81166006)(8676002)(5660300002)(81156014)(9686003)(6512007)(6486002)(2906002)(33716001)(66946007)(76116006)(91956017)(478600001)(316002)(966005)(26005)(54906003)(4326008)(186003)(64756008)(66556008)(6916009)(66476007)(66446008);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR11MB4630;H:MN2PR11MB4063.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 4wwSOLIatI0OHPavP+BxGuppWpXTMyGrcnu5g0n+LP6Vc+RX5t0o+AtB9+v5lrc9e322bMNaGbKhtqQPYKVuprwdBlEpPpRTghoLEPjEp1c2qjizj40dYzV45p4WUYLLAblDM0u8jgTvxKaOiNGG+D5X3aAORua6yo0EsoTpUJIENnt4R9D5eUVFaBBLiZCisposzLin6Hk3jCg+ulHvbtYA8ArLlvq+JYUxBYBQhrMP4ZCRKvEHDgno1SpihwVsyMrknwZlzziLjLGh/AvX5mYmVUfxz/NTxQ3GqeOxWSFYLV9Q6Skrb2XS8Aqkd+tP5eM7QsWaX4jVEX6LwHUodS9TRej4vVphD0qugDIw8fq7hpgjmZgGFun2GD8Yxq5g5fT19qrub/VGwUKIZNwkQAKK/pcGvR/0yn/loFQIz9L0dSQZgFQa9RkBCNzYY96n4hvCKyTBy1R+4949uojm+Es+mu4+oK0gVy3MgDkBpfZtQoFhV/yEzp//R3DkGbAkJFlLVnk7ITb4+VF5ff1iKg==
x-ms-exchange-antispam-messagedata:
 WAFR+hLj3TYMyZffBlIJbxwqZeAd0wLLnUZG8esDCdi8rPaTLSa+yYuxvJ8D8e8+mdpm2jJDIs4wqkVd3PzG9F4nfIew5KRWkcQoy1eHObxPFABqDggL+t7JnIcjUjLTuBnNslSpih2YL9frO/o4Pg==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <5C7660C62BCF1D47A31A05C5B5837CD3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff11fe4b-2a8d-4c29-f561-08d7c44ff902
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 17:33:25.3896
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vTY6836r8FEIn4Y+dI4sT7LExMY6UYuTC0MbQ5AJpGn7NAsyEuY/ryRrfP0KplrnDecBu1mHBjObbwjnGgyHzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4630

On Monday 9 March 2020 17:45:15 CET Payal Kshirsagar wrote:
>=20
> Align code to open parenthesis.
>=20
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/wfx/data_tx.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.=
c
> index 8b0c52392319..0038dc7666cf 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -301,8 +301,8 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif, st=
ruct ieee80211_hdr *hdr,
>  }
>=20
>  static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
> -                                     struct ieee80211_sta *sta,
> -                                     struct ieee80211_hdr *hdr)
> +                                struct ieee80211_sta *sta,
> +                                struct ieee80211_hdr *hdr)
>  {
>         struct wfx_sta_priv *sta_priv =3D
>                 sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
> @@ -369,7 +369,7 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_ra=
te *rates)
>  }
>=20
>  static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
> -                                 struct ieee80211_tx_info *tx_info)
> +                            struct ieee80211_tx_info *tx_info)
>  {
>         bool tx_policy_renew =3D false;
>         u8 rate_id;
> --
> 2.17.1
>=20
Hello Payal,

Thank you for your contribution.

A similar patch has already been submitted a few weeks ago:
   https://lkml.org/lkml/2020/2/23/208=20

Joe Perches has suggested that the patch should address all parenthesis
alignments:
   https://lkml.org/lkml/2020/2/24/653

--=20
J=E9r=F4me Pouiller


