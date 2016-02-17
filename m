X-GM-THRID: 6251974012736372736
X-Received: by 10.194.178.234 with SMTP id db10mr2949381wjc.6.1455670850819;
        Tue, 16 Feb 2016 17:00:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.68 with SMTP id l65ls876133wmd.8.gmail; Tue, 16 Feb
 2016 17:00:50 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr2349794wmd.7.1455670850402;
        Tue, 16 Feb 2016 17:00:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si13582wme.0.2016.02.16.17.00.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 17:00:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,457,1449529200"; 
   d="scan'208";a="164974573"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2016 02:00:49 +0100
Date: Tue, 16 Feb 2016 20:00:46 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lov: Pull assignments
 out of function call
In-Reply-To: <1455651118-18615-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602162000310.2690@hadrien>
References: <1455651118-18615-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 17 Feb 2016, Bhumika Goyal wrote:

> Assignments in function call arguments are undesirable. So pull such
> assignments out before function call.
> Made a coccinelle script to detect such cases:
> @@
> expression fn,b,d;
> @@
> * fn(...,d=b,...);

The script looks fine now.

julia

>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_merge.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/lov/lov_merge.c b/drivers/staging/lustre/lustre/lov/lov_merge.c
> index 97115be..029cd4d 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_merge.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_merge.c
> @@ -129,7 +129,8 @@ int lov_adjust_kms(struct obd_export *exp, struct lov_stripe_md *lsm,
>  			       "stripe %d KMS %sing %llu->%llu\n",
>  			       stripe, kms > loi->loi_kms ? "increase":"shrink",
>  			       loi->loi_kms, kms);
> -			loi_kms_set(loi, loi->loi_lvb.lvb_size = kms);
> +			loi->loi_lvb.lvb_size = kms;
> +			loi_kms_set(loi, loi->loi_lvb.lvb_size);
>  		}
>  		return 0;
>  	}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455651118-18615-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

