X-GM-THRID: 6339413407077236736
X-Received: by 10.66.232.4 with SMTP id tk4mr6253942pac.31.1476010866704;
        Sun, 09 Oct 2016 04:01:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.90.20 with SMTP id v20ls2654646ita.10.gmail; Sun, 09 Oct
 2016 04:01:05 -0700 (PDT)
X-Received: by 10.36.147.4 with SMTP id y4mr2006141itd.6.1476010865140;
        Sun, 09 Oct 2016 04:01:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p131si2354557vkf.1.2016.10.09.04.01.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 04:01:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,466,1473112800"; 
   d="scan'208";a="196134135"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 13:01:03 +0200
Date: Sun, 9 Oct 2016 13:01:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6655: Removes unnecessary
 blank lines.
In-Reply-To: <20161009105650.GA11365@euri>
Message-ID: <alpine.DEB.2.10.1610091300200.3462@hadrien>
References: <20161009105650.GA11365@euri>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

If this is a v2, there should be a comment under the --- describing what
is the change since v1.

Search for v2 in the tutorial.

julia

On Sun, 9 Oct 2016, Varsha Rao wrote:

> This patch fixes the checkpatch issue of
> multiple blank lines, by removing them.
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161009105650.GA11365%40euri.
> For more options, visit https://groups.google.com/d/optout.
>

