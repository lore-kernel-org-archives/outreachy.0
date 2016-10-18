X-GM-THRID: 6342587309964132352
X-Received: by 10.66.248.132 with SMTP id ym4mr271926pac.146.1476767861617;
        Mon, 17 Oct 2016 22:17:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.57.181 with SMTP id y50ls15126709otb.10.gmail; Mon, 17 Oct
 2016 22:17:41 -0700 (PDT)
X-Received: by 10.157.13.86 with SMTP id 80mr344386oti.18.1476767861029;
        Mon, 17 Oct 2016 22:17:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r142si1346515vkf.2.2016.10.17.22.17.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 22:17:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,508,1473112800"; 
   d="scan'208";a="197110331"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2016 07:17:39 +0200
Date: Tue, 18 Oct 2016 07:17:38 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: arnaud.patard@rtp-net.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: xgifb: Remove unnecessary
 parentheses.
In-Reply-To: <20161017235758.GA21742@lennorien.com>
Message-ID: <alpine.DEB.2.20.1610180717060.2038@hadrien>
References: <20161017235758.GA21742@lennorien.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 17 Oct 2016, Elise Lennion wrote:

> The removed parentheses are unnecessary and don't add readability.
>
> Found using Coccinelle semantic patch:
> @@ expression e, e1, e2; @@
> e &=

Just for information, there is a metavariable type called assignment
operator, that would let you put this all into a single rule.

julia

> (
>         (e1 == e2)
> |
> -       (e1)
> +       e1
> )
>
> @@ expression e, e1, e2; @@
> e |=
> (
>         (e1 == e2)
> |
> -       (e1)
> +       e1
> )
>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index f4bcb156..6467d96 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -507,7 +507,7 @@ static void XGI_SetXG27CRTC(unsigned short RefreshRateTableIndex,
>  	/* SR0B */
>  	Tempax = XGI_CRT1Table[index].CR[5];
>  	Tempax &= 0xC0; /* Tempax[7:6]: SR0B[7:6]: HRS[9:8]*/
> -	Tempbx |= (Tempax << 2); /* Tempbx: HRS[9:0] */
> +	Tempbx |= Tempax << 2; /* Tempbx: HRS[9:0] */
>
>  	Tempax = XGI_CRT1Table[index].CR[4]; /* CR5 HRE */
>  	Tempax &= 0x1F; /* Tempax[4:0]: HRE[4:0] */
> @@ -530,7 +530,7 @@ static void XGI_SetXG27CRTC(unsigned short RefreshRateTableIndex,
>  	Tempax = XGI_CRT1Table[index].CR[5]; /* SR0B */
>  	Tempax &= 0xC0; /* Tempax[7:6]: SR0B[7:6]: HRS[9:8]*/
>  	Tempax >>= 6; /* Tempax[1:0]: HRS[9:8]*/
> -	Tempax |= ((Tempbx << 2) & 0xFF); /* Tempax[7:2]: HRE[5:0] */
> +	Tempax |= (Tempbx << 2) & 0xFF; /* Tempax[7:2]: HRE[5:0] */
>  	/* SR2F [7:2][1:0]: HRE[5:0]HRS[9:8] */
>  	xgifb_reg_set(pVBInfo->P3c4, 0x2F, Tempax);
>  	xgifb_reg_and_or(pVBInfo->P3c4, 0x30, 0xE3, 00);
> @@ -548,12 +548,12 @@ static void XGI_SetXG27CRTC(unsigned short RefreshRateTableIndex,
>  	Tempax >>= 2; /* Tempax[0]: VRS[8] */
>  	/* SR35[0]: VRS[8] */
>  	xgifb_reg_and_or(pVBInfo->P3c4, 0x35, ~0x01, Tempax);
> -	Tempcx |= (Tempax << 8); /* Tempcx <= VRS[8:0] */
> -	Tempcx |= ((Tempbx & 0x80) << 2); /* Tempcx <= VRS[9:0] */
> +	Tempcx |= Tempax << 8; /* Tempcx <= VRS[8:0] */
> +	Tempcx |= (Tempbx & 0x80) << 2; /* Tempcx <= VRS[9:0] */
>  	/* Tempax: SR0A */
>  	Tempax = XGI_CRT1Table[index].CR[14];
>  	Tempax &= 0x08; /* SR0A[3] VRS[10] */
> -	Tempcx |= (Tempax << 7); /* Tempcx <= VRS[10:0] */
> +	Tempcx |= Tempax << 7; /* Tempcx <= VRS[10:0] */
>
>  	/* Tempax: CR11 VRE */
>  	Tempax = XGI_CRT1Table[index].CR[11];
> @@ -1201,12 +1201,12 @@ static void const *XGI_GetLcdPtr(struct XGI330_LCDDataTablStruct const *table,
>  	while (table[i].PANELID != 0xff) {
>  		tempdx = pVBInfo->LCDResInfo;
>  		if (tempbx & 0x0080) { /* OEMUtil */
> -			tempbx &= (~0x0080);
> +			tempbx &= ~0x0080;
>  			tempdx = pVBInfo->LCDTypeInfo;
>  		}
>
>  		if (pVBInfo->LCDInfo & EnableScalingLCD)
> -			tempdx &= (~PanelResInfo);
> +			tempdx &= ~PanelResInfo;
>
>  		if (table[i].PANELID == tempdx) {
>  			tempbx = table[i].MASK;
> @@ -1918,7 +1918,7 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
>  			tempbx |= SetCRT2ToHiVision;
>
>  			if (temp != YPbPrMode1080i) {
> -				tempbx &= (~SetCRT2ToHiVision);
> +				tempbx &= ~SetCRT2ToHiVision;
>  				tempbx |= SetCRT2ToYPbPr525750;
>  			}
>  		}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161017235758.GA21742%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

