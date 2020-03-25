X-GM-THRID: 6807662174396219392
X-Received: by 2002:ad4:4829:: with SMTP id h9mr11782163qvy.135.1585583906609;
        Mon, 30 Mar 2020 08:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6192:: with SMTP id v140ls8713279qkb.4.gmail; Mon, 30
 Mar 2020 08:58:25 -0700 (PDT)
X-Received: by 2002:a05:620a:20dc:: with SMTP id f28mr670230qka.216.1585583905267;
        Mon, 30 Mar 2020 08:58:25 -0700 (PDT)
Received: by 2002:a05:620a:1355:0:0:0:0 with SMTP id c21msqkl;
        Wed, 25 Mar 2020 02:15:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv0V5hFyTwVdi9+iU19sK+2T7KMFDIu7ssLUHZsr+FT/lAQdMaPAaCmg3xvNTksltm/P4Wt
X-Received: by 2002:a17:906:f0d6:: with SMTP id dk22mr2272122ejb.356.1585127745428;
        Wed, 25 Mar 2020 02:15:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585127745; cv=pass;
        d=google.com; s=arc-20160816;
        b=G8iwYn9zN2K9rRhRqmGI1QoqHaE1bEPKx9Tx5zAf2n4j/BJYu1TdfAuWx6V69LI1XQ
         tIJYLuXs5uD/plAkf49QBkW+UBLUKarfCQi17YZ5ZDPrqycsWeDO5dlebNrCzWFdCWYl
         vTwD1utsbEd7ZFnaXVfSN6UFSkgg2sJFqQZ2MEmlJIyyutTX/jVL4Nl7ucK2UD5tZxwY
         8LIDZvBZUFA+2N0No+TvYQHuYzsnIDlKsjsFBEEiRmnCfqWWz3AkagYDfpMKon1Qqulu
         FPs1OcFDZqXKYg/+1AZYOAXOZzg71Y4OW/DvQiIxHKor0EqmfK200NNI/qwcyxjcg9Dl
         N1jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JGf9wCHAxO9CfUUztMg+clIgxchFR7qRAO2eu0ErYRQ=;
        b=uClf96qkfYOQbzm7chvaKdDAllDdOV8TP2rTp55xrLMYtcisCEO8Q4ViDh/xdizIqK
         ijgsLqk0Bb693Gz3QOz9j/y9osZg/NOAfhvKkV4SWsVFxNoxcqAcX6BegS9DwubwlB1l
         nrR9b67dm2CmXOD6VfrczL1h3uRSyCorQoLCQzUP622fQ6cUVobQbiF7FOkbt1xfhrdo
         bndVGX/xom9hjJ6jt78fWU07cgzQpH3Mu86A52gdZJLO9DV9Elmk7s7G2WxOiXZ9vOI0
         msxmUct1PhjljstY90LQpeydKg5k77xQ5HN5G/Zv2U+9smsUTqC8LvrlxrTuQgf3yBkp
         FvpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@itdevltd.onmicrosoft.com header.s=selector2-itdevltd-onmicrosoft-com header.b=hYt4m31v;
       arc=pass (i=1 spf=pass spfdomain=itdev.co.uk dkim=pass dkdomain=itdev.co.uk dmarc=pass fromdomain=itdev.co.uk);
       spf=pass (google.com: domain of quentin.deslandes@itdev.co.uk designates 40.107.0.83 as permitted sender) smtp.mailfrom=quentin.deslandes@itdev.co.uk
Return-Path: <quentin.deslandes@itdev.co.uk>
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-eopbgr00083.outbound.protection.outlook.com. [40.107.0.83])
        by gmr-mx.google.com with ESMTPS id w13si150528edv.2.2020.03.25.02.15.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 02:15:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of quentin.deslandes@itdev.co.uk designates 40.107.0.83 as permitted sender) client-ip=40.107.0.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@itdevltd.onmicrosoft.com header.s=selector2-itdevltd-onmicrosoft-com header.b=hYt4m31v;
       arc=pass (i=1 spf=pass spfdomain=itdev.co.uk dkim=pass dkdomain=itdev.co.uk dmarc=pass fromdomain=itdev.co.uk);
       spf=pass (google.com: domain of quentin.deslandes@itdev.co.uk designates 40.107.0.83 as permitted sender) smtp.mailfrom=quentin.deslandes@itdev.co.uk
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P1CsZLBE0NjGiOtbo6tZKiEkFXOul3VPtYDkAqtw+1JEExJ8lP9QS7rg7+beD0vOqwl0uUPZ4t72cmJkmVZH2mlzutFYEb4BGEcD9LzRxSovSDi19VF/ogtFxsQzvxLuvtXYtFRaMi3w2j6fDWqGhTkGfY6M6TLK/NXDPxGMhrWWnCavdR+Ff4ykEvYZu/feteDaufe/2HB8O3rfM9pmPwJDbQ1hN6+hFc/JhZLCS9uUIpMqRpgFVxRinHpTKcbG0OJf+Ue2Zq5GdvdkkJxLvMnUGazCNVoW5YPqpcTXQq5zSIiurzQ829jqCgdZlROzu+JodKSvn/m3sRWc/mMlDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JGf9wCHAxO9CfUUztMg+clIgxchFR7qRAO2eu0ErYRQ=;
 b=N6UmkAugJBtvmn4XBAaoXQ2dCrN8Mje5+QHvM6qtUiPfgJkOVidd9MuosKEDP10jxD7CQ7B9Kw1YduNHPH6nsf4gNhP+rXqjL/Ptt2tX8wpNcP3/XaeTDSsXQDPlSRnT70802WnBcaO8FcKsAiGZ45iztutROymiqFuRRpv6CrTUbU32FgfbVlrFum2U7d7ZKnvVkOjHE/wO+EyBp7gaUkxgbmYKzskU5yse6nHkxvlBVihEJ2RouLu9z7mceZq/0sStzWbPmhaMwIZWN8ii9EEZOi98SNbRoMVpTvj9+ErWePY20MqIf1+ZRVyheYPdE7E3itB/aWsxxDFn6AVsVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JGf9wCHAxO9CfUUztMg+clIgxchFR7qRAO2eu0ErYRQ=;
 b=hYt4m31vPdajnU6zFKxWbDRT6Dsnytl4xAeH8aybdTAF6mtLWhPtengVV+1zeqqRK+DT6xkQCQmji1gqCe8jCAlEb+DdulU7GyrAlW+8UlZApWFnSI9UfEZr9wXIJtAvSYIv4onAgznqb2baPWJJIfSJDQRIr3YueIJBqjDGvfU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4678.eurprd08.prod.outlook.com (20.179.47.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Wed, 25 Mar 2020 09:15:43 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2835.023; Wed, 25 Mar 2020
 09:15:43 +0000
Date: Wed, 25 Mar 2020 09:15:41 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: John Wyatt <jbwyatt4@gmail.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>
Subject: Re: [PATCH 1/2] staging: vt6656: remove unneeded variable: ret
Message-ID: <20200325091541.GA15158@jiffies>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
 <20200324064545.1832227-2-jbwyatt4@gmail.com>
 <20200324100323.GB7693@jiffies>
 <575f10ed4f3be74c2515464220d17e17d9eae8dc.camel@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <575f10ed4f3be74c2515464220d17e17d9eae8dc.camel@gmail.com>
X-ClientProxiedBy: LO2P265CA0199.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::19) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
Return-Path: quentin.deslandes@itdev.co.uk
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (5.151.93.48) by LO2P265CA0199.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:9e::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend Transport; Wed, 25 Mar 2020 09:15:42 +0000
X-Originating-IP: [5.151.93.48]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 35537583-43de-4b87-1305-08d7d09d1815
X-MS-TrafficTypeDiagnostic: DBBPR08MB4678:
X-Microsoft-Antispam-PRVS:
	<DBBPR08MB4678361F85917015DB115B9EB3CE0@DBBPR08MB4678.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0353563E2B
X-Forefront-Antispam-Report:
	SFV:NSPM;SFS:(10009020)(346002)(366004)(136003)(376002)(39830400003)(396003)(2906002)(1076003)(26005)(55016002)(186003)(33716001)(54906003)(4326008)(16526019)(316002)(33656002)(6916009)(86362001)(81156014)(8676002)(9576002)(8936002)(44832011)(508600001)(5660300002)(9686003)(81166006)(4744005)(6496006)(66946007)(53546011)(956004)(66476007)(52116002)(66556008);DIR:OUT;SFP:1101;SCL:1;SRVR:DBBPR08MB4678;H:DBBPR08MB4491.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	lDV9XNFy5jhPxw1E29FDxbCmLRoQA+cC87rAxwA7n9xn/Kw3uYho3fFlLfPASzMjDHXonAYIqRjZq3/IZAXEGvOmKwOEI00B35/ebljikSN+Rf6eGZRCEwVDMVFBUPmdj6MJ61orRbMieqHOZ/rTlAUHcV9lxZwu00G3upYb8ttOpEra3daECge9JOXDroUg4XzDu3yMvvXQjq41H6dFoJYE2ARA7p2hgNmEsDVRiB9N4Uy/wOdvUIDZvOmv7YXzbJK7/Jx6GPjsIJ2fLFA/dVmoiYYZlnJAeS9sWKTiqArxdpqZRNo4ee+JNTFZFb8XdorOtcp2JQMBUqSHvatzH9l/tQdLnLsjo2W99DqWN7BbZNeEe1TXP9naMDj6pNW/o/TJIFN6Z3Q1oWODCbAzniIycKyh108lN3zyX9LqpL/kGKOf7w8xaUhLMSXOrZ0N
X-MS-Exchange-AntiSpam-MessageData:
	Gt417VEZ0/9mfKHqZG/4vS9bU0k5JRIWoT42oCiRRU7wPx/54Hl6OC7hvEBSoryR/y1Misut+J32l/JQe0M9LDilb90ZaebV8Itbh25h7dMtw0mLF693HWgMCLyKNcJXkohV4C5N/mHptPRsw3zlxQ==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 35537583-43de-4b87-1305-08d7d09d1815
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2020 09:15:42.9541
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rTqsSfO7n8gZRjOW1IOIMGEZbK4VfBPm4oyx8XnFAf3UfpQOZSU+rT36t8UJwLGSOgG1ZYT4XuFuD35hXNglrYeJCwsQVLTYGHeBVH8RxJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4678

On 03/24/20 17:32:01, John Wyatt wrote:
> I do not know what these functions do.
> 
> There is no function documentation for:
> vnt_exit_deep_sleep
> vnt_mac_reg_bits_on
> vnt_mac_reg_bits_off

I understand, however discarding the return value of functions that could
fail is not the best thing to do. Whatever those 3 functions are doing,
you should rely on their return code, and if one of those fail,
vnt_radio_power_on() should fail too.

> I am a new kernel developer intern with the Outreachy program. I am
> trying to fix a style issue reported by Coccinelle. I do not have that
> much experience with writing drivers yet.

Don't worry, I'm not that experienced either. If my request is out of
scope for an Outreachy mentee, a more experienced contributor will pop
in the discussion.

Thanks,
Quentin

