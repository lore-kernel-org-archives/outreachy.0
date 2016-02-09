X-GM-THRID: 6249320811377721344
X-Received: by 10.194.171.198 with SMTP id aw6mr4154334wjc.1.1455033520821;
        Tue, 09 Feb 2016 07:58:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.215 with SMTP id w206ls628691wmd.4.canary; Tue, 09 Feb
 2016 07:58:40 -0800 (PST)
X-Received: by 10.28.158.216 with SMTP id h207mr674151wme.4.1455033520398;
        Tue, 09 Feb 2016 07:58:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 5si693851wmm.2.2016.02.09.07.58.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:58:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,421,1449529200"; 
   d="scan'208";a="202317125"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Feb 2016 16:58:40 +0100
Date: Tue, 9 Feb 2016 16:58:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: xgifb: Use shorthand
 operator
In-Reply-To: <1455033333-31657-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1602091658080.2578@hadrien>
References: <1455033333-31657-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Feb 2016, Bhumika Goyal wrote:

> Use shorthand operator for assignment statement to make code look cleaner.
> Made a coccinelle script for this and did changes.
> @@
> identifier data;
> constant x;

I don't think that the constant constraint is technically necessary.  But
perhaps it is the case in which the simplification does seem useful.

julia

> @@
>
> (
> - data = data + x
> + data += x
> |
> - data = data - x
> + data -= x
> )
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index de96da1..0daa661 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -289,7 +289,7 @@ static void XGI_SetCRT1Timing_H(struct vb_device_info *pVBInfo,
>
>  	if (HwDeviceExtension->jChipType >= XG20) {
>  		data = xgifb_reg_get(pVBInfo->P3d4, 0x04);
> -		data = data - 1;
> +		data -= 1;
>  		xgifb_reg_set(pVBInfo->P3d4, 0x04, data);
>  		data = xgifb_reg_get(pVBInfo->P3d4, 0x05);
>  		data1 = data;
> @@ -302,14 +302,14 @@ static void XGI_SetCRT1Timing_H(struct vb_device_info *pVBInfo,
>  			xgifb_reg_set(pVBInfo->P3c4, 0x0c, data);
>  			data = pushax;
>  		}
> -		data = data - 1;
> +		data -= 1;
>  		data |= data1;
>  		xgifb_reg_set(pVBInfo->P3d4, 0x05, data);
>  		data = xgifb_reg_get(pVBInfo->P3c4, 0x0e);
>  		data >>= 5;
> -		data = data + 3;
> +		data += 3;
>  		if (data > 7)
> -			data = data - 7;
> +			data -= 7;
>  		data <<= 5;
>  		xgifb_reg_and_or(pVBInfo->P3c4, 0x0e, ~0xE0, data);
>  	}
> @@ -3394,9 +3394,9 @@ static void XGI_SetGroup2(unsigned short ModeNo, unsigned short ModeIdIndex,
>  	xgifb_reg_and_or(pVBInfo->Part2Port, 0x25, 0x0F, temp);
>
>  	tempbx = push2;
> -	tempbx = tempbx + 8;
> +	tempbx += 8;
>  	if (pVBInfo->VBInfo & SetCRT2ToHiVision) {
> -		tempbx = tempbx - 4;
> +		tempbx -= 4;
>  		tempcx = tempbx;
>  	}
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1455033333-31657-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

