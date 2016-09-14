X-GM-THRID: 6329968789142110208
X-Received: by 10.25.78.12 with SMTP id c12mr121362lfb.1.1473831860322;
        Tue, 13 Sep 2016 22:44:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.147 with SMTP id g19ls20549lji.38.gmail; Tue, 13 Sep
 2016 22:44:19 -0700 (PDT)
X-Received: by 10.46.32.154 with SMTP id g26mr121385lji.3.1473831859707;
        Tue, 13 Sep 2016 22:44:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w134si587943wmf.3.2016.09.13.22.44.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 22:44:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,332,1470693600"; 
   d="scan'208";a="236363652"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 07:43:56 +0200
Date: Wed, 14 Sep 2016 07:43:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: xgifb: move AND operator
 for logical continuation
In-Reply-To: <d24ac86a8d9d2a7b7cb677f29a8bd920027322b1.1473809551.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609140741420.3395@hadrien>
References: <cover.1473809550.git.gs051095@gmail.com> <d24ac86a8d9d2a7b7cb677f29a8bd920027322b1.1473809551.git.gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Sep 2016, Gargi Sharma wrote:

> Fixes the checkpatch issue Logical continuations should be on the
> previous line.

It would be better to avoid commit messages that start with Fixes.  They
put the emphasis on what the problem is, but give no information about the
solution.  If the reader knows about both, then they are better oriented
when looking at the patch code.  Here you could say

Move && up to the previous line, to fix the checkpatch issue Logical
continuations should be on the previous line.

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 50c8ea4..316209f 100644
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
>  			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
>  			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
>  		} else {
> @@ -4141,8 +4141,8 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
>  					| TVSetYPbPr525p | TVSetYPbPr750p
>  					| TVSetHiVision))) {
>  				temp |= 0x0001;
> -				if ((pVBInfo->VBInfo & SetInSlaveMode)
> -						&& (!(pVBInfo->TVInfo
> +				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
> +						(!(pVBInfo->TVInfo
>  								& TVSimuMode)))
>  					temp &= (~0x0001);
>  			}
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d24ac86a8d9d2a7b7cb677f29a8bd920027322b1.1473809551.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

