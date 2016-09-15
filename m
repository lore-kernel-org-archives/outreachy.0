X-GM-THRID: 6330303746353922048
X-Received: by 10.25.74.71 with SMTP id x68mr1117729lfa.6.1473916076806;
        Wed, 14 Sep 2016 22:07:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.208.130 with SMTP id h124ls108753wmg.6.canary; Wed, 14 Sep
 2016 22:07:56 -0700 (PDT)
X-Received: by 10.194.104.230 with SMTP id gh6mr1117443wjb.7.1473916076232;
        Wed, 14 Sep 2016 22:07:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si68885wmd.1.2016.09.14.22.07.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 22:07:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="236794995"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 07:07:55 +0200
Date: Thu, 15 Sep 2016 07:07:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 6/6] staging: xgifb: fix alignment
 for if arguments
In-Reply-To: <35059e3a8fc71def1989e2b7efc323d95c8800a1.1473888417.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609150707320.6078@hadrien>
References: <cover.1473888416.git.gs051095@gmail.com> <35059e3a8fc71def1989e2b7efc323d95c8800a1.1473888417.git.gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Gargi Sharma wrote:

> Line up multi-line if-test arguments for better
> readability.

Actually, you didn't line them up.  What you did is OK too, but it would
be "Reduce indentation..."

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 8488612..068f422 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -1740,7 +1740,7 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
>  		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
>  				(unsigned short) (0x10 * i));
>  		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
> -				!(pVBInfo->VBInfo & SetInSlaveMode)) {
> +			!(pVBInfo->VBInfo & SetInSlaveMode)) {
>  			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
>  			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
>  		} else {
> @@ -4132,8 +4132,7 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
>  					| TVSetHiVision))) {
>  				temp |= 0x0001;
>  				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
> -						!(pVBInfo->TVInfo
> -								& TVSimuMode))
> +					!(pVBInfo->TVInfo & TVSimuMode))
>  					temp &= (~0x0001);
>  			}
>  		}
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/35059e3a8fc71def1989e2b7efc323d95c8800a1.1473888417.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

