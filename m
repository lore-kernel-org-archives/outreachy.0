X-GM-THRID: 6329844985199853568
X-Received: by 10.28.150.135 with SMTP id y129mr317459wmd.1.1473782253036;
        Tue, 13 Sep 2016 08:57:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.230.214 with SMTP id e83ls379426wmi.0.gmail; Tue, 13 Sep
 2016 08:57:32 -0700 (PDT)
X-Received: by 10.194.46.233 with SMTP id y9mr317062wjm.3.1473782252283;
        Tue, 13 Sep 2016 08:57:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1497932wmd.1.2016.09.13.08.57.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 08:57:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,329,1470693600"; 
   d="scan'208";a="236316267"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 17:57:31 +0200
Date: Tue, 13 Sep 2016 17:57:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: move AND operator
 for logical continuation
In-Reply-To: <20160913155037.12206-1-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609131754180.3355@hadrien>
References: <20160913155037.12206-1-gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Gargi Sharma wrote:

> Fixes the checkpatch issue Logical continuations should be on the
> previous line.
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 50c8ea4..ac27b2c 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -1741,8 +1741,8 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
>  	for (i = 0; i < 4; i++) {
>  		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
>  				(unsigned short) (0x10 * i));
> -		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA))
> -				&& (!(pVBInfo->VBInfo & SetInSlaveMode))) {
> +		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
> +				(!(pVBInfo->VBInfo & SetInSlaveMode))) {

It's another issue, but all of those parentheses are rather tiring to look
at.  The ones outside the ! are not needed.  The indentation is also a bit
much.  There is no need for the argument of && to be aligned with the
third argument of xgifb_reg_and_or.  At least drop one tab, or even align
the two ! expressions.  The space is also not needed after (unsigned
short) in the line above.  This should be done in a series, with one patch
per change.

julia

>  			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
>  			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
>  		} else {
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160913155037.12206-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

