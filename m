X-GM-THRID: 6801909209397985280
X-Received: by 2002:a37:9cd:: with SMTP id 196mr16695985qkj.157.1583787275524;
        Mon, 09 Mar 2020 13:54:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls16152qtd.1.gmail; Mon, 09 Mar
 2020 13:54:34 -0700 (PDT)
X-Received: by 2002:ac8:530c:: with SMTP id t12mr15424233qtn.83.1583787274522;
        Mon, 09 Mar 2020 13:54:34 -0700 (PDT)
Received: by 2002:a05:620a:9c9:0:0:0:0 with SMTP id y9msqky;
        Mon, 9 Mar 2020 10:36:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu/iw86BAdpQ1sBQxgJjosAbJYZ/fp76MehPNkG3tuuuZp/cT5hcEcYqoEFnZoPAPhAfU+V
X-Received: by 2002:a05:6402:153:: with SMTP id s19mr18717545edu.202.1583775407606;
        Mon, 09 Mar 2020 10:36:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583775407; cv=pass;
        d=google.com; s=arc-20160816;
        b=JhFDfbo3HjlmjKajI9NDS/uKGpDHDhDRIos89OxBXXTfL6KCxxdUXVvuEPHUH18ww7
         DL/z/Eq74+4sOZDdAaqhH+neb1fpdlRW89KV2lKs2KTKX6sUNm0lGVjmV9F75JtT0a7x
         Egydsu95o27nQEyt64H/+S8sA4GA17cczFBtkgn6UjCgFTr4pSIYPC81EoAFT2fHrmGL
         hj4BmbZWqxmas8nYwmCZiYIuwcc0ZkP6cXvgPWGQjAnP0wJypWLJdNz7ndASf3Zt97wx
         F6G2y8oQYeT4Ooik2vRT0oiiyWPMyGc43Hw32fsbG82G4oP/jiVKhNeW9Xbb5Yq3f6AE
         PLIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=MvElNri2lajBeyhImEBDWlvqOOZA8HLb7VGLNXMRMZ8=;
        b=wGrVxUbk+h+whLuoxllDRfP546b2bsXDn/wrnUil4Kz2vjq23NveM7YP+9wRd6T1Bf
         KQ5O6nG3xYlHiJvfeT9gsqC7zIw5NKZLEjQ64utfML8LpJq21Gd/epzX8wVWiTqK971Q
         GM8N1+1Csb6NKvMAXmKjdG5DWigvgqQ5zHBm2QcYMwkAgr/ywUt2CK8oy2DsGOW8l6ES
         i5RqilSybg+ErYyycUOmE83qcY5YNxTAFa7hxtV/eVg4+xPTZbKxnNpkb1SxjtLman6B
         NIzbvfE+yV2bY4hqq9DabOSmqVZz/d/VALWPcTbA7iJSwE+pgyWFZaby+TY4feazHWN+
         rfWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=VsfJt3LD;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.243.75 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
Return-Path: <Jerome.Pouiller@silabs.com>
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2075.outbound.protection.outlook.com. [40.107.243.75])
        by gmr-mx.google.com with ESMTPS id p60si385512edp.0.2020.03.09.10.36.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 10:36:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.243.75 as permitted sender) client-ip=40.107.243.75;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=VsfJt3LD;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.243.75 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rj1i9omtnxut1o1gBwCBWG3/mJ8tr1fuh03zlDZOsD2YACGCR3g2+ta4IMi0zWcVXkUpLSb9Hdy9daRr8EcBcLfWnEaaeXIhj1M2rtCHK36LWUP8iaMzmjV6lsCmJFmtd1l3EWATZEHWdRgVP3kqu9vEsrlPq4mZabz8z/d+6PWYmVdwzjDc+7BZ3THQek7+s0frxwIsRz+FGLrIN/NxpSUbZz6aHycRzC+zSAfslXbtRQ5W21kp3rKaaVl75My3qvPWGW3Igk+qyQ91PE9WH6veVu1QwTVv8AKXI4xaumUvt+4xKQXIEpcjLSzVMPQkz612vw12UduKSaOez0RPgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MvElNri2lajBeyhImEBDWlvqOOZA8HLb7VGLNXMRMZ8=;
 b=bb9srsy7wdxnxiOmOda+Zb8VNetaB+SJSfYY79nsn4Dx6/FWzi+XYV23X1kMbz0ETliAKPHFlZ7TOuWz5lng5+x25/ih094CVI72ZhPJzo0eexJY0VUT72Dx5IbyBDRe2fUNmPISlwX0SA8SKJUWUFJ3ZNc9csoe01YrLZbOsdwhKBQ1ReApC4PNT3/+8kCL9XSh+jVkkdeI8DIC35qoyBCkHhyzg4ngla/rGCGhoatPeEbUR3VTI3Ao9m4eWwkrktfS077PvzyNrhuQYoK8U47Y5ox41bc6TkDBq7C+0n/nRK2jfDVV+siWA1ngofCyckwtNi5hXV34bmWKmuAAPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MvElNri2lajBeyhImEBDWlvqOOZA8HLb7VGLNXMRMZ8=;
 b=VsfJt3LD25FtI8MHORnwHzU0e+YuiDNAKXsq0KCPWJd4buRXtky/wsN5o7GO+s9IevuFxTkKlQ3f3QpX7XxNbGDUggQqj5Jq/CiBi3h2TSi0uRqp9kdCXyaMNU1YXq3u0yxRQM4MCD4o16r39aN+rDqyCjoAAw/OIwbFKFvxXEs=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4694.namprd11.prod.outlook.com (2603:10b6:208:266::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Mon, 9 Mar
 2020 17:36:45 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 17:36:45 +0000
From: =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <Jerome.Pouiller@silabs.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] [Outreachy kernel] staging: wfx: remove blank line
Thread-Topic: [PATCH] [Outreachy kernel] staging: wfx: remove blank line
Thread-Index: AQHV9jOS5RW1rPqQpE+ASZ2HLMnHfahAhjIA
Date: Mon, 9 Mar 2020 17:36:45 +0000
Message-ID: <1983551.LdvHZP8miH@pc-42>
References: <20200309165528.5721-1-payalskshirsagar1234@gmail.com>
In-Reply-To: <20200309165528.5721-1-payalskshirsagar1234@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d22d484-2ae0-47ff-4870-08d7c4507021
x-ms-traffictypediagnostic: MN2PR11MB4694:
x-microsoft-antispam-prvs:
 <MN2PR11MB4694EF6EBF8025490322D66A93FE0@MN2PR11MB4694.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:510;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10009020)(7916004)(396003)(39860400002)(366004)(136003)(376002)(346002)(199004)(189003)(54906003)(316002)(6486002)(6916009)(26005)(186003)(6512007)(6506007)(86362001)(9686003)(76116006)(478600001)(2906002)(71200400001)(64756008)(66946007)(66556008)(66476007)(66446008)(4326008)(91956017)(33716001)(8936002)(81156014)(8676002)(81166006)(5660300002)(4744005)(66574012)(39026012);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR11MB4694;H:MN2PR11MB4063.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 TkByAmo+shxNW9WdWoLWVqO29ke95g5Bo+wg0ipkM20kBHNTXtQPT9mj19hYjJl2HEyHhFDfqmknyDEPqH1MqU57SbH8vGsE9Dbfh5M2LDmQcdznTh7iTWiDRAaEaHs6MTM28nE/rQ+Z3vlzE4C93HiQL/2f+GMLqH8P2/Mohx4iwPGj1Dj7QctuMTiUefvshU4sTk7cqN+SZ1CLvyXviFP4Tc+kBZ8Q2LYaBYdUf6WjtTGrmfYJBxOVqto7ItoIsHNctCSEQ0CA9uaNIRDOWMHjw6cp3Kkm35fGXSCvyRDigzlk8MtQqUq/T5nCPEVqUpBCnt4ZBpwl2N6ICPSkNxUm5h8jRcF4LkEMk0XPvx821hUolrktaou/HG00D2cj8Z3U9y1lrV36+rK+CEsxXy/PmVCa9CkyFRsraKfv3jJweibB0Nkt4nLi53qUvG8qDhVo3aqTDalq8Ti0M5ZmgCdOel4MnS6YmpoNBzteDRIozTuwwSPYffsXFNYBvg6v
x-ms-exchange-antispam-messagedata:
 vMDhFxDa+C1UjExWyK6BSorLqqSUGeJJ8lyq9z9YoWOU/Z+wvAgw6Bk9wM15ki+GWVGcDQ2WIEr1AmKVn6GQ2HcjwcQNj4kg7MVSc6s+L9wkKYXp2VUc94KMC2JhUPyFZB+J7SDmoYsMNtXASpX8gw==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D9E72B78023CA546922F6468F9BA7A6B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d22d484-2ae0-47ff-4870-08d7c4507021
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 17:36:45.2052
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B6PKSCxnJPwV5ctMBmvkj1cxshYiGIdm/20LazQ8IrGJDGSFY7h9UlXtWkDK+7VX3h+YVlRaoraWrsCPMgy6zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694

On Monday 9 March 2020 17:55:28 CET Payal Kshirsagar wrote:
>=20
> Blank line is not necessary before a close brace '}', remove it.
>=20
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/wfx/data_rx.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.=
c
> index 5d198457c6ce..2a09f6b978c3 100644
> --- a/drivers/staging/wfx/data_rx.c
> +++ b/drivers/staging/wfx/data_rx.c
> @@ -62,7 +62,6 @@ static int wfx_drop_encrypt_data(struct wfx_dev *wdev,
>         memmove(skb->data + iv_len, skb->data, hdrlen);
>         skb_pull(skb, iv_len);
>         return 0;
> -
>  }
>=20
>  void wfx_rx_cb(struct wfx_vif *wvif,
> --
> 2.17.1

Reviewed-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

--=20
J=E9r=F4me Pouiller


