X-GM-THRID: 6807662174396219392
X-Received: by 2002:a37:66d0:: with SMTP id a199mr605774qkc.239.1585583906922;
        Mon, 30 Mar 2020 08:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1971:: with SMTP id g46ls7061924qtk.7.gmail; Mon, 30 Mar
 2020 08:58:25 -0700 (PDT)
X-Received: by 2002:ac8:67d2:: with SMTP id r18mr659797qtp.178.1585583905256;
        Mon, 30 Mar 2020 08:58:25 -0700 (PDT)
Received: by 2002:a37:a012:0:0:0:0:0 with SMTP id j18msqke;
        Tue, 24 Mar 2020 03:03:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuU8mRnYeAJbSLGRaIyj4hw6eyc9IHpb7ZORkDok30bBN8I2PvR5Qf54g+q4EsvdX8JKCgS
X-Received: by 2002:a1c:7919:: with SMTP id l25mr4933444wme.12.1585044207146;
        Tue, 24 Mar 2020 03:03:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585044207; cv=pass;
        d=google.com; s=arc-20160816;
        b=MopEsEidyQs3xj8/oUBgslV/C6mYzYr457rxqmvdtdzqM37QhNGPi6rquRIH3Gb/Sl
         TtbQyzSPB4W4cl9xGIjaEfI0nWbm/L5fxOgzvmU1XyHfQ0GSufXddNe+XPAXFg/BlAti
         k4csCEtoae6QdudLhtrj3vg2Al2q09+sA8ttEtgv2amgX+UvLlMpwG3aBRZElzN7EeuI
         W3YU0A1nWSWkyCUq9NJefMJOd+pfjUTmSZAn7jTZzKe3XKaL15eWGNajoLGLImssL1MW
         FqCrLkbDEya2pfN+kBH+JXsHyTABvpODX2kCJRnP8Hm1pvgOhb+HyzPyajDh0/pOSmh1
         z/2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kuO8IivCQlPjR/s0qI+xVFMzQNpMXrnAmCVmzXoLJPw=;
        b=xx+ymljkYpw3b/kHsookYMMVwF4Fh4Rz4O+U57jc1sVCOQPYbxgRXyzFc55DMUB1kO
         qGuWjuAB7z/wIaay9AEhu1YLr4ZSkqgkvxe4ToHox6P/RwDKxLstRKht9hDtKqH4rCyS
         Z64YjrsmqpcGFLaLMaSwK961c3CbZQy8BjxZKF5LN7Vt0zyJc/Mp1U24KeBJ3FxcEimS
         s3KCe6dcGIhT4at6z2oALAeTwNzMqGf/APXFW/MES3g04etgjufDLAxXcFK6705D4VwM
         T4zo2eO1KgwR9gnx4925LgUXKKfR6DJm6L5nZhKAOBYyYj/PgisC5CeSkDmBFYc5lYjH
         V4HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@itdevltd.onmicrosoft.com header.s=selector2-itdevltd-onmicrosoft-com header.b=phsdt6tn;
       arc=pass (i=1 spf=pass spfdomain=itdev.co.uk dkim=pass dkdomain=itdev.co.uk dmarc=pass fromdomain=itdev.co.uk);
       spf=pass (google.com: domain of quentin.deslandes@itdev.co.uk designates 40.107.13.42 as permitted sender) smtp.mailfrom=quentin.deslandes@itdev.co.uk
Return-Path: <quentin.deslandes@itdev.co.uk>
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130042.outbound.protection.outlook.com. [40.107.13.42])
        by gmr-mx.google.com with ESMTPS id d6si233138wrq.3.2020.03.24.03.03.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 03:03:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of quentin.deslandes@itdev.co.uk designates 40.107.13.42 as permitted sender) client-ip=40.107.13.42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@itdevltd.onmicrosoft.com header.s=selector2-itdevltd-onmicrosoft-com header.b=phsdt6tn;
       arc=pass (i=1 spf=pass spfdomain=itdev.co.uk dkim=pass dkdomain=itdev.co.uk dmarc=pass fromdomain=itdev.co.uk);
       spf=pass (google.com: domain of quentin.deslandes@itdev.co.uk designates 40.107.13.42 as permitted sender) smtp.mailfrom=quentin.deslandes@itdev.co.uk
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SXL567Yr/keS7/3gQLxdf0Jk8pGFTsyRlTj8ej36Luqz2O4qcynb6TgQKbGIEhPnGlBy/WhnmsShF0Iegz43zUJ3/WQACrZhumhMVYYSweL1a1bY5EHdkjv2KK6GnS7NUB3dHSxU0LqrNnePDGGzV/ERPCxNi5DaR8uh9D3Ge4f25DZ5hL9uMjgnNRLe5obpS1shx3TOmwMWBr2Xo0OCVqLJQmZdX++f1Nd4Zk++UUys62ALyfBLxXaRn3U5r1ldW+R2G17eLM9sU+LzgmjvdDjr4yBFWldQCIuUN9Rn9SZrbJQlx5bf7/5IyRZkOxfGaKhcR+KyvCmphTc2MDFj8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuO8IivCQlPjR/s0qI+xVFMzQNpMXrnAmCVmzXoLJPw=;
 b=Rl/CravGpjKkalGg5cDPtl3NEA+oi58qELJzDhArVsl0+0ya+d27pwralfR0k1gLb/Bk0LNiaSl4Va8K7QAUPcMQow1xD/xuTk2pWR4tmWqKJlY2jwIXW1z18jeQHKR6fZQUXH1roR0XfqufOLp3Sdl8BC6u1d4RM7GtqJ7gOAmbsgvzd+SosBgfBj18C7MD2q/SWBM8Xcu2XARiG6GEXBk0J3XkWmTmhoDWKh81NnaicVt3vZo9U+KljPY4lCLqTP+G2RHAcMBAaZxw8LbtWNsdYEqFKrAF34hzQQ0eSdK96EP58ujW5CTRP0dHhWnsfKpGD6pAgr6DBB0HufmvXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuO8IivCQlPjR/s0qI+xVFMzQNpMXrnAmCVmzXoLJPw=;
 b=phsdt6tngVVDJ1+6L2wNvXWnO6cgFFp+q8uc9aXEkYj4CtP3WG4uEUbooDRA36sKIzqBMdmtZHEcQ9UToXgodBk7UNSbxyQfay3uFb+ZndWDTqjBs0v9uuvVK2ARQAcrk3KX59ojhi2d91IRitQuat4BELTiCmd+HxOp/aWtUeg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4903.eurprd08.prod.outlook.com (10.255.78.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Tue, 24 Mar 2020 10:03:25 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2835.023; Tue, 24 Mar 2020
 10:03:25 +0000
Date: Tue, 24 Mar 2020 10:03:23 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] staging: vt6656: remove unneeded variable: ret
Message-ID: <20200324100323.GB7693@jiffies>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
 <20200324064545.1832227-2-jbwyatt4@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200324064545.1832227-2-jbwyatt4@gmail.com>
X-ClientProxiedBy: CWLP265CA0278.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:401:5c::26) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
Return-Path: quentin.deslandes@itdev.co.uk
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (54.37.17.75) by CWLP265CA0278.GBRP265.PROD.OUTLOOK.COM (2603:10a6:401:5c::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend Transport; Tue, 24 Mar 2020 10:03:25 +0000
X-Originating-IP: [54.37.17.75]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 137de9bf-3e9d-401f-1b0e-08d7cfda97e0
X-MS-TrafficTypeDiagnostic: DBBPR08MB4903:
X-Microsoft-Antispam-PRVS:
	<DBBPR08MB49031A57317C3C953CF05121B3F10@DBBPR08MB4903.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 03524FBD26
X-Forefront-Antispam-Report:
	SFV:NSPM;SFS:(10009020)(376002)(346002)(366004)(136003)(396003)(39830400003)(66556008)(66476007)(53546011)(66946007)(33716001)(9576002)(1076003)(33656002)(9686003)(4744005)(5660300002)(55016002)(2906002)(44832011)(956004)(508600001)(26005)(8936002)(186003)(81166006)(81156014)(8676002)(7416002)(6916009)(16526019)(54906003)(316002)(4326008)(86362001)(52116002)(6496006)(55236004);DIR:OUT;SFP:1101;SCL:1;SRVR:DBBPR08MB4903;H:DBBPR08MB4491.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	b9/ZtjxGUvbkXl9ykYE2Sq4X92CrpAT4zIv0DYKJz/hf+aR328O7fScGUntfAiXgZCTbizsiUMzBddKJO5qdH+PO3ov//VWikhKupVJYHrm1Q2GECdFwjL4RXMs8zROLeCCCE/5+UYB0Q02mwizlT2v/zHqh0M7+4aPTPevR7Nx/KVWD7V3NfIumIEJlvGCXga9XY3S7kFPI/LROHV1g2Of5NcM9cOeVhoin5L5TbwdQ2uNW6rpMQXXctkWMRLWmb8N/9wItUUBBFqRp8tzeGNjkQW8PeiGJ4XZwegsC0GJ/8SxH6ZECMVD3mB6bUpIOWNIvdXuVth8syZf7RkMEV7t07mNg8YHD1DWBiiODFn/CC7ZZ0l8u8hkrzJst6lGDEkBYRAPPnBrS6cPV0gDyYkS7jPfJdWrPtOP0h4U0YTteKJs+pGmEjdZAlzk6tu+D
X-MS-Exchange-AntiSpam-MessageData:
	s7/1nt5+DX/OWO1oUmPTJ2wMwA0uoDX0z7Y2oubNFBcRXyFungZpfDckDViuR8GtH5Tf6k6dWbe9pSUHBbU27cATpFBqZciyRhw8DcFozgNEo9XbrgD6wOAR67ImukK5lVLqs02KdTi/2yuxVfe6wA==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 137de9bf-3e9d-401f-1b0e-08d7cfda97e0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2020 10:03:25.5450
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +9DR1fMR85MFCQN54oLzAjDXpRE8zn8O64SKQSxzIYuSCDinVkp+rIT25guvKXAFcldHLBZyS37RiXX/TYkPf+WRo0sybK3nTrEM9n0hvsI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4903

On 03/23/20 23:45:44, John B. Wyatt IV wrote:
>  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);

This function, and all the functions called in vnt_radio_power_on() returns
a value, why don't you catch it and act accordingly (forward error code
for example) instead of silencing it?

Thanks,
Quentin

