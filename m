X-GM-THRID: 6473410411176656896
X-Received: by 10.107.138.100 with SMTP id m97mr879652iod.109.1508280124171;
        Tue, 17 Oct 2017 15:42:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.17 with SMTP id p17ls637932iop.22.gmail; Tue, 17 Oct
 2017 15:42:03 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TBdQztLqtgacYe5A1eKyjZnOpT7DfSWCgLpDCWaEyHRGF31UjU2S+KO1MOQ/eoDeRv8mkq
X-Received: by 10.36.88.67 with SMTP id f64mr3819291itb.25.1508280123644;
        Tue, 17 Oct 2017 15:42:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280123; cv=none;
        d=google.com; s=arc-20160816;
        b=cFQtx/PRYpdeOk4Xvy5z8p2SsPNTiJiGGIC5x1px42Qw9Ye06tjGuiADnedb1gi83r
         Xc8xOcMNQU2AI1akvJGmyOu1xHpuJ0/+6f/UFc1edaPiIEV8WFDncG2jCt5sFlZEEW6v
         pZZYADEi5ErUOe6CU511rYtFF9LmDlk4p9xZfsvN24Lf/bT4rBkbpncSKG0cjLbpvr4c
         xnQklzUmJoEK4OZW2zt6EaTvFanuq2acv5MvSQ55pOOQudWivBczQLdfQUapXyStwVnA
         Q0CPAII623DHuQjgedzE3IGZ3i4Xq6dp6VZgS3Y9sgpazvLxdpvut1IhHeYE1dI8WyPd
         NLHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=3PCLsK6d556xIn5qsjFNH3HRCHi+qXt4JcIuCFTEzac=;
        b=m6aAnSq9giQvGbgGsNOyYYfPbjZVh7uXo8wd4BfTuFlluGE7p2Ju6F8sg7MAZKhTmv
         61N5EUDDT1Ul7z7Nbvo3tYzoMXpJ2dlaDexYTNuTJfaacz04Tgx5zjcn5MjvIU/Lerwz
         E0J7vpe7kqov1Yh8IBTYYAEM942LtC/FXqH75Zx0+JLt7i0u+Q0bOgheioErL6/lEAEU
         zSRdnu4YZ5yfyx5babeCmBqhRND/qBuoi2NwfKhtXuJUCLgbMrvcgUCNdDd/uBBrUMnc
         3jfzVhmYyz6UGByXStSSMlqm7xUOuJVucjt/wQYPYXclyZb1jwWs6A+IFoxIVG4NdlcG
         IhVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id o184si111086ith.4.2017.10.17.15.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2017 15:42:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="139421614"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
  by orsmga004.jf.intel.com with ESMTP; 17 Oct 2017 15:42:02 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 17 Oct 2017 15:42:01 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.94]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:42:02 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 04/10] staging: lustre: drop macro that has no uses
Thread-Topic: [PATCH v2 04/10] staging: lustre: drop macro that has no uses
Thread-Index: AQHTQxMJB0lJzSpNrkK78sh00CtlvaLpIXwA
Date: Tue, 17 Oct 2017 22:42:00 +0000
Message-ID: <4A0A4269-74B5-487B-ABCC-B4934992C5B0@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-5-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-5-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0DAE416857036348A6467DB233811EB0@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com


> On Oct 11, 2017, at 22:31, Aastha Gupta <aastha.gupta4104@gmail.com> wrot=
e:
>=20
> This patch removes DLUBUF and PLUBUF macro, both of which have no users.
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> drivers/staging/lustre/lustre/include/lu_object.h | 2 --
> 1 file changed, 2 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/=
staging/lustre/lustre/include/lu_object.h
> index c8d5e0b..d5ecd58 100644
> --- a/drivers/staging/lustre/lustre/include/lu_object.h
> +++ b/drivers/staging/lustre/lustre/include/lu_object.h
> @@ -1305,8 +1305,6 @@ struct lu_buf {
> 	size_t	lb_len;
> };
>=20
> -#define DLUBUF "(%p %zu)"
> -#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
> /**
>  * One-time initializers, called at obdclass module initialization, not
>  * exported.
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








