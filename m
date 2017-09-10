X-GM-THRID: 6464205911885873152
X-Received: by 10.25.115.131 with SMTP id h3mr617282lfk.44.1505065520450;
        Sun, 10 Sep 2017 10:45:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.145.147 with SMTP id t141ls775968wmd.12.canary-gmail; Sun,
 10 Sep 2017 10:45:19 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAWBaPcwjgr5x9B45HycUvsJoTeQvJAB/QWozaw7P3+TEn3Z97MPc9OvMZyLf/+lvaVvr65
X-Received: by 10.28.154.68 with SMTP id c65mr46323wme.5.1505065519471;
        Sun, 10 Sep 2017 10:45:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505065519; cv=none;
        d=google.com; s=arc-20160816;
        b=EsB6aAeP/9H5RTQfKD3nMb+XqTJ/aqrrwsrDou2ep13Gs2SW1lNwY4Nk7Haa6kuDvP
         wu2RYlYgaAXDRaMfLIk/h4MYLxMuV9DmaVgLV3XX/oRS5bR99dpUKenRUVdhQ+CyxUJ5
         hYHYQdaaZipGAfU0Cul8AUyoqAEeG4dm9hkEUesWNuFH02nRWstJUsBDpwzDg+1WKoKr
         iT02076WZz1eRLcln4a2EpjlRpSRwCutlS/3z7Fp/LaPmpn+kMyS/N3mA2d8Iu3gIQIb
         LxnzhtSS8SCk0BXt3DAIc4hD8VsD7ipl+2xiTxQTlWnZAqZO8Zby6qwoqM1AryTQnaRK
         vweQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=2FcO9KKCW132B/EW3QsiCtDYUplhCGB//HBDuYgnbgw=;
        b=ZeqFqVfg7j1uz7zZcsHioZzbfy1fNvTCy/GpyNT3NhjGPW4VU5u+yc5IsQYTs8e2H0
         D0/jtln4iOw/xljade3hwqs44k1eclbvFPir17/XJRvtudYuHbAe8a+oZadAMK8t74+5
         EDMZVtlakhhn8uTK9+aL/3KtgZwOyHMOcMD0rrxklGERusuaBkyyK87Nk4CSzkEt1kbK
         77zCvk8j6YKDqxasc+Siuo8h4L89aAWCVUxE5YjUxs0l0Z44m+8jlYeIjnYI2qoUhGVk
         OYlnsx16jQ4g42G0pEEEzh+eoXPnm0Cm5c1llf0zxdknrdHJPI4GEq3pD60ovztpA58F
         uYcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r185si254493wma.9.2017.09.10.10.45.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:45:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,374,1500933600"; 
   d="scan'208";a="290376180"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 19:45:18 +0200
Date: Sun, 10 Sep 2017 19:45:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Arnaud Patard <arnaud.patard@rtp-net.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] checkpatch cleanup
In-Reply-To: <1505065180-4480-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709101941420.4580@hadrien>
References: <1505065180-4480-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line should indicate dome information about the affected
file(s).

The subject line should indicate what is done in more detail.

There should be a log message describing what is done and why.

I'm not sure to see the commonality in what you have done below.  Each
patch should do only one thing

On the positive side, it looks like you have got the mailing process
figured out, but please go back to the tutorial and read everything about
creating patches again, because it seems that you have missed all the main
points.

It can be helpful to look at the patches of others on the mailing list as
well.

julia

On Sun, 10 Sep 2017, Aastha Gupta wrote:

> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index cea128b..5c86c84 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -73,7 +73,8 @@ static void XGI_SetSeqRegs(struct vb_device_info *pVBInfo)
>  		/* Get SR1,2,3,4 from file */
>  		/* SR1 is with screen off 0x20 */
>  		SRdata = XGI330_StandTable.SR[i];
> -		xgifb_reg_set(pVBInfo->P3c4, i + 1, SRdata); /* Set SR 1 2 3 4 */
> +		/* Set SR 1 2 3 4 */
> +		xgifb_reg_set(pVBInfo->P3c4, i + 1, SRdata);
>  	}
>  }
>
> @@ -649,11 +650,10 @@ static void XGI_UpdateXG21CRTC(unsigned short ModeNo,
>
>  	xgifb_reg_and(pVBInfo->P3d4, 0x11, 0x7F); /* Unlock CR0~7 */
>  	if (ModeNo == 0x2E &&
> -	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
> -						      RES640x480x60))
> +	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC == RES640x480x60))
>  		index = 12;
> -	else if (ModeNo == 0x2E && (XGI330_RefIndex[RefreshRateTableIndex].
> -				Ext_CRT1CRTC == RES640x480x72))
> +	else if (ModeNo == 0x2E &&
> +		(XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC == RES640x480x72))
>  		index = 13;
>  	else if (ModeNo == 0x2F)
>  		index = 14;
> @@ -5479,9 +5479,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
>  						   ModeIdIndex))
>  				return 0;
>
> -		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
> -						Ext_ModeFlag & ModeTypeMask;
> -
> +		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask;
>  		pVBInfo->SetFlag = 0;
>  		pVBInfo->VBInfo = DisableCRT2Display;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505065180-4480-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

