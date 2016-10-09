X-GM-THRID: 6339413407077236736
X-Received: by 10.159.48.19 with SMTP id h19mr4574263uab.32.1476009994622;
        Sun, 09 Oct 2016 03:46:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.207.70 with SMTP id y67ls2511351itf.18.gmail; Sun, 09 Oct
 2016 03:46:32 -0700 (PDT)
X-Received: by 10.66.147.34 with SMTP id th2mr6446164pab.24.1476009992868;
        Sun, 09 Oct 2016 03:46:32 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a62si1638832vke.2.2016.10.09.03.46.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 03:46:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,466,1473112800"; 
   d="scan'208";a="196133572"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 12:46:08 +0200
Date: Sun, 9 Oct 2016 12:46:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Removes unnecessary
 blank lines.
In-Reply-To: <20161009104136.GA4465@euri>
Message-ID: <alpine.DEB.2.10.1610091244520.3462@hadrien>
References: <20161009104136.GA4465@euri>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 9 Oct 2016, Varsha Rao wrote:

> This patch fixes the chechpatch issue of multiple blank
> lines,by removing them.

Please resend with a space after the comma, checkpatch spelled correctly,
and longer text lines, up to around 72 characters.

julia

>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c    | 1 -
>  drivers/staging/vt6655/device_main.c | 1 -
>  drivers/staging/vt6655/mac.c         | 1 -
>  drivers/staging/vt6655/power.c       | 1 -
>  drivers/staging/vt6655/power.h       | 1 -
>  5 files changed, 5 deletions(-)
>
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index dae1e87..6e25d01 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -2162,7 +2162,6 @@ bool BBbVT3253Init(struct vnt_private *priv)
>  				byVT3253B0_AIROHA2230[ii][0],
>  				byVT3253B0_AIROHA2230[ii][1]);
>
> -
>  		/* {{ RobertYu:20050223, request by JerryChung */
>  		/* Init ANT B select,TX Config CR09 = 0x61->0x45,
>  		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index f109eea..9b2ec25 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -1272,7 +1272,6 @@ static void vnt_remove_interface(struct ieee80211_hw *hw,
>  	priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;
>  }
>
> -
>  static int vnt_config(struct ieee80211_hw *hw, u32 changed)
>  {
>  	struct vnt_private *priv = hw->priv;
> diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
> index 8e13f7f..d3f4eb2 100644
> --- a/drivers/staging/vt6655/mac.c
> +++ b/drivers/staging/vt6655/mac.c
> @@ -147,7 +147,6 @@ void MACvSetShortRetryLimit(struct vnt_private *priv,
>  	iowrite8(byRetryLimit, io_base + MAC_REG_SRT);
>  }
>
> -
>  /*
>   * Description:
>   *      Set 802.11 Long Retry Limit
> diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
> index 7d6e746..1506b1b 100644
> --- a/drivers/staging/vt6655/power.c
> +++ b/drivers/staging/vt6655/power.c
> @@ -133,7 +133,6 @@ PSvDisablePowerSaving(
>  	priv->bPWBitOn = false;
>  }
>
> -
>  /*
>   *
>   * Routine Description:
> diff --git a/drivers/staging/vt6655/power.h b/drivers/staging/vt6655/power.h
> index d82dd8d..d619c42 100644
> --- a/drivers/staging/vt6655/power.h
> +++ b/drivers/staging/vt6655/power.h
> @@ -46,7 +46,6 @@ PSvEnablePowerSaving(
>  	unsigned short wListenInterval
>  );
>
> -
>  bool
>  PSbIsNextTBTTWakeUp(
>  	struct vnt_private *
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161009104136.GA4465%40euri.
> For more options, visit https://groups.google.com/d/optout.
>

