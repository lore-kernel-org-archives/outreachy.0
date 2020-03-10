X-GM-THRID: 6802341212191719424
X-Received: by 2002:ad4:524c:: with SMTP id s12mr18611370qvq.138.1583845144353;
        Tue, 10 Mar 2020 05:59:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4695:: with SMTP id g21ls812111qto.3.gmail; Tue, 10 Mar
 2020 05:59:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuJyxaxTo63LwQyuemw98/AA5tl/Fz/VWBRSoLHVQJ4hYm+A/0dwS4l2EJ06Mle82OqE1BO
X-Received: by 2002:ac8:4b4e:: with SMTP id e14mr14951113qts.144.1583845142903;
        Tue, 10 Mar 2020 05:59:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583845142; cv=pass;
        d=google.com; s=arc-20160816;
        b=wucHSuEZAywSZH1sFqpY+/tzY/RqIKlf5VWmkLZj5n9RpdhZzQVCa5bozTVl/MV1zz
         URT0Ymf3/xw2LzD5prOrtpHDw5HDrUYZ1LpZsXnpAGdb1cZzH4p2pS22M/PoHyudqLaA
         s5VE7Y96h2h01aO/8MW5byS3LBcGccyOdWT1KpuRlLF9jZMdP0QLEwBs88vo13Es+T+d
         LHYGxuSMMt0w09JMnpStSaZWGK09NE4sGAVKDkaK2HfSNwbscufMHn3PUhyBEw1sqGAZ
         DqVKABL0oFHgAUO/8TtxZhhdLs1qstytmOdiRRaQz6L0GWrKDc2pIQlh9CMoSZEiArdA
         4l9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=0wOQOl0+TytxBiYqDzNFlRPcZOa1sqDe/SElhKx6704=;
        b=eZ6wE8NzMGwoyJ3xyNJd54J6k1tDK9/XZttkV8ifSzyAAV+T8+bNc+QLtI+B5H5XGM
         R04/KJTcjupdGezbKt2L6c5VpBx4y4YtSiG7vGkc2ui4/UhDvTn9p22G6Ikf/1hAPsP4
         UHLGHdHjggGY9lMMPTQ53TtGfy8NI8lzxg5fEriYMR6s4IC62CC5t8KNE1fPdL/z6eQC
         lwXpbJW+4tSFC4zfFz+Eut2pg6aW9I3f6LZW+pXQW8XnemkM47iDXB2GCTEcqoB0Q1Gp
         +9U+Z0SW/b3YiEQ8PSjhSm7X780ak8Dq/gsFVgFijwzJhnj5Zo5OwYh+EN/5uAOmg+iq
         z0xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=GSdCX5GX;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.220.77 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
Return-Path: <Jerome.Pouiller@silabs.com>
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2077.outbound.protection.outlook.com. [40.107.220.77])
        by gmr-mx.google.com with ESMTPS id 198si700282qkh.7.2020.03.10.05.59.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:59:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.220.77 as permitted sender) client-ip=40.107.220.77;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@silabs.onmicrosoft.com header.s=selector2-silabs-onmicrosoft-com header.b=GSdCX5GX;
       arc=pass (i=1 spf=pass spfdomain=silabs.com dkim=pass dkdomain=silabs.com dmarc=pass fromdomain=silabs.com);
       spf=pass (google.com: domain of jerome.pouiller@silabs.com designates 40.107.220.77 as permitted sender) smtp.mailfrom=Jerome.Pouiller@silabs.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I86ma0RyW1v80GslV/BlPonLnMZGlD8CaH2+7H5yDY/1U98ay9BhB2CmsWripQTICcnJ3V1COzVrcb9IHLL/4UuLh2ZSJDNNHYZOOKeKLNIbdDFZnEdiZ2xViFyevJ1mIfD1/k2lwsoaQ5tF+HUWoAl8aV6GFOMOpCEoTV/KWfBPz5acqRg7FVN5RMbtazyZrxHByeOQgwQ2oVrUnDxeQErpLn4dUU45qnxtcj/PwDXUWJKY+GR2PVf8bCj62LIGXy0GgwIVxtgbSED20cdl+tfQ9Wn6aozKNLWalNWCYMGyx2o5OD42f6zkO1NFaz1lbW8QWqQMehSZDYlga2OgkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0wOQOl0+TytxBiYqDzNFlRPcZOa1sqDe/SElhKx6704=;
 b=BMEQFJ2aLKlI4eLzFguthrBnQ25uSElePtjD4ZikkHarSHgErM5EtndO5kfeAh7NJ623l9wcReYs+3aAVG+iCXmYP08FKJOtoOGVQqhrgdUDOWZOPjo/56cgkvmWgy7/IuwIOHUbjGjLtx99Bqhq2b7loeH61gAETE4KnwV5pFv2t+s1h4UfCTxTE/CNBpchP02jX8zRNdBo3eiktXIE7lB6BoQkjXRt/oq3CytvkbQURmzUH2m59djtLBMd7b7JoGvap6npQxuwJSYdhplBC9VcEaWJ+4JB6Cul+gVqcfYAjG+AMJMVqH/qsl1mU8llyTqzGe3BIRPmDHhg/WvZrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0wOQOl0+TytxBiYqDzNFlRPcZOa1sqDe/SElhKx6704=;
 b=GSdCX5GXW9yLu5y89dryVxAXG+82o+FuaZTlaUsdSZXiZGM4yi8NV0P+m/fwmxDeMNjwCg0fbYZmrJgsNyqf6TkvGBYdk1KN87Yh99sYN/agNHxHOpB0VY5Z3QTHLr+3y0tCdRUN5v4U3AchhQ/Hv4V+rAi52oeCsee0BDVyScc=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB3951.namprd11.prod.outlook.com (2603:10b6:208:13b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14; Tue, 10 Mar
 2020 12:59:00 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 12:59:00 +0000
From: =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <Jerome.Pouiller@silabs.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
CC: Julia Lawall <julia.lawall@inria.fr>, Ian Abbott <abbotti@mev.co.uk>, H
 Hartley Sweeten <hsweeten@visionengravers.com>, Forest Bond
	<forest@alittletooquiet.net>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, "outreachy-kernel@googlegroups.com"
	<outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/7] staging: wfx: change 1 to bool
Thread-Topic: [Outreachy kernel] [PATCH 3/7] staging: wfx: change 1 to bool
Thread-Index: AQHV9mNmtWLMTVcoV0GDZ373VdB8TahBbgwAgABPkwCAAAztAA==
Date: Tue, 10 Mar 2020 12:58:59 +0000
Message-ID: <2641095.QEJj9zIe3E@pc-42>
References: <20200309223751.GA5676@kaaira-HP-Pavilion-Notebook>
 <alpine.DEB.2.21.2003100824490.2455@hadrien>
 <20200310121242.GB11048@kaaira-HP-Pavilion-Notebook>
In-Reply-To: <20200310121242.GB11048@kaaira-HP-Pavilion-Notebook>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec0f1152-8efe-4f5f-7411-08d7c4f2cd55
x-ms-traffictypediagnostic: MN2PR11MB3951:
x-microsoft-antispam-prvs:
 <MN2PR11MB395102CE22E71DC235E2D79393FF0@MN2PR11MB3951.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report:
 SFV:NSPM;SFS:(10009020)(7916004)(39860400002)(366004)(376002)(396003)(346002)(136003)(199004)(189003)(6512007)(478600001)(2906002)(8936002)(8676002)(6916009)(5660300002)(71200400001)(316002)(33716001)(81166006)(64756008)(4744005)(81156014)(9686003)(66574012)(6486002)(76116006)(86362001)(6506007)(54906003)(186003)(26005)(66446008)(66556008)(66476007)(91956017)(4326008)(66946007)(39026012);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR11MB3951;H:MN2PR11MB4063.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 njVTJ7JllnFwqFY3YG/mVl3TARNJe4oLivUB7MvHu5e6hDVUAf2nvnTI/6TWFsFJ0O5ZIpOY1UCYhqnMgrcQ6dlJEgfCJVnYXPl8rDtdK1J+WYq4zfLyWKN2ggd+TTI0zn5WOsQ17M3sHaNhTT1PTn6wpyX+le3u+rtwHnifio49TrvxtA5m2SgGAVJSyrQOxRfJNSkGjzl53HRm85wXX/bPrX1HfKlCmaHeXu3eNHJTbb+9ij6BzT3doXbujPwL3/KtHBQkvHHCoepFwh+3ee33hrP7/WpbngV5CcTaPW63SDz+A4JNgPjzm+dVN8d7cebXKPTBLkupxfEvCYUvw90IfANaMsR0SykbTxBOTHCz0V6UCFjnGIwDFou0TlOP3lK03F0ngbiAK5zS/G/avSNXzEorkhlID/ixrARF9uqcMLOYB8nKEWhGr2ze94NZY0EtxkqZY+DHCNWel3QLUg5CtCskCLfnUQEXX4LciJu5flc645wSgqsaZmtt+bYT
x-ms-exchange-antispam-messagedata:
 +U/W8d4d8FXwhk5qIZUz+2m1m8rgzLPjtm+X13YMOuYL1IB99RQu6Hsn7dU4DCNjM8aE58Pvhwd+IzrHoaq7qqszGD/1KEjLkU1z25UltCTLc5ypNJU+yzSCbo4vHCvzer/RvFvpEgPqBL78Udi7eA==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <CB7366E773315344B02BB8F016126A8C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec0f1152-8efe-4f5f-7411-08d7c4f2cd55
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 12:58:59.9935
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dniq5nuJLEhyhVdb7RSzHm6kAgKAF/diePeqGA/w7IXsBebijD8kWudiVBPHZxCCH3TFRW7Ajw9/HEOYBIAD7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3951

On Tuesday 10 March 2020 13:12:42 CET Kaaira Gupta wrote:
> On Tue, Mar 10, 2020 at 08:27:54AM +0100, Julia Lawall wrote:
> > On Tue, 10 Mar 2020, Kaaira Gupta wrote:
> >
> > > policies[i].uploaded is a bool. It is equated to 1. Change it to bool=
.
> >
> > equated -> assigned
> >
> > As far as I can see, policies[i].uploaded is a u8, not a bool.  Have yo=
u
> > checked that all of the uses indicate that it is used in a boolean way?
>=20
> Yes, I got this warning using coccinelle, after which I checked a few
> uses of this as well. I found them to be indiacate policies[i].uploaded
> as bool. For example line 227 of the same file :
>=20
> `if (!policies[i].uploaded && memzcmp(policies[i].rates,
>                             sizeof(policies[i].rates)`
>=20

Hello,

Indeed, policies[i].uploaded is a bool since 6673f2636b41 ("staging: wfx:
use boolean appropriately").


--=20
J=E9r=F4me Pouiller


