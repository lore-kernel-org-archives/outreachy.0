X-GM-THRID: 6661198938033356800
X-Received: by 2002:adf:e412:: with SMTP id g18mr496802wrm.9.1550931723237;
        Sat, 23 Feb 2019 06:22:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:280a:: with SMTP id o10ls1057544wmo.11.gmail; Sat, 23
 Feb 2019 06:22:02 -0800 (PST)
X-Google-Smtp-Source: AHgI3IagXyfVSLww4bF6wfsvlffjkAPG+1ozaCqjxAVW/jTmrhFysT6rXQkR55odXOcImOAJjQJh
X-Received: by 2002:a7b:c3d8:: with SMTP id t24mr514457wmj.6.1550931722044;
        Sat, 23 Feb 2019 06:22:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550931722; cv=none;
        d=google.com; s=arc-20160816;
        b=Lc9rNJ1G2+1kEDvlfGwHraXNEKer7zXFXE66KIz5ghbCg6qmHU16jnphV589pxTy5F
         kWqs3DUEV6rXEmod28jmWoKvBh3Mu07tewxkMwtzVmdVlk9fCc7Bjp+OvhL6T4Ko9wYN
         3/q7WrbA61RSZdmzLJe/ez+6Smxl9avom0onuGEJY8ANpmFjbrEtcgLObVsE1pQn4Eg9
         LldF2rYDW8vai3utkQSgPmtEAE+O0SbSl4cD1c25q9NRLX75E4oiM3leljfwvxgO/ES8
         PrzhfnfCc8KTRKUccKYuLNTfy0ku2jjRO87yviqh0Eo3XUAxzeSDiTDKDCrtjGx5mkfE
         JKrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=nFIcQizVk0RlIt7YvUG1bb7s0Ndg6an2+tFmSTt/XfA=;
        b=v9+UCse5yvgQ+dhnoptQ2IuAiIVB3eXrA1hSs0vuMvrl6xoO3ngkvVAmfxQ4ZZtdHy
         rP9qj8spPgpGcDocIivYshKTLQZu1VVl7N+fsSCjgEgS+MjUtu/98cdK2+9r7ccextHI
         +oiUVjkbhq8+1RFe00JLYIftAsuIvgyp9O2ovz949wVE63QyRaouaOxkoz4YzuAHQbFU
         93C8Q2asqUS2JYRul+zIDZc95FyEnjtg/4fcwDhEArDWp+BqNthvJgRa9zHicl3WU58w
         E5XB/ZPxeMsOFebRQNFOulpEwjKHNn6TLNtt+oxh8gAbkFFJIjOpjCe3xPXZydO2hhW5
         6erw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q192si160917wme.3.2019.02.23.06.22.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 06:22:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,404,1544482800"; 
   d="scan'208";a="297106322"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 15:21:45 +0100
Date: Sat, 23 Feb 2019 15:21:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtlwifi: Remove code guarded
 by undefined macros
In-Reply-To: <20190223141335.6650-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1902231518560.2551@hadrien>
References: <20190223141335.6650-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Feb 2019, Bhanusree Pola wrote:

> removes the code block guarded by never set CONFIG_PM defines

Imperative means no "s".  Each sentence in the log message should start
with a capital letter and end with a period.

How do you know that CONFIG_PM is never set?  The CONFIG means that it is
part of the configuration system, so you shouldn't be looking for a
#define.  You would need to poke around in make menuconfig, maks xconfig,
etc, but this could be complex.

julia

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtlwifi/base.c | 15 ---------------
>  1 file changed, 15 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
> index 35df2cf60619..88838ab9e428 100644
> --- a/drivers/staging/rtlwifi/base.c
> +++ b/drivers/staging/rtlwifi/base.c
> @@ -423,21 +423,6 @@ static void _rtl_init_mac80211(struct ieee80211_hw *hw)
>  	/* hw->max_rates = 1; */
>  	hw->sta_data_size = sizeof(struct rtl_sta_info);
>
> -/* wowlan is not supported by kernel if CONFIG_PM is not defined */
> -#ifdef CONFIG_PM
> -	if (rtlpriv->psc.wo_wlan_mode) {
> -		if (rtlpriv->psc.wo_wlan_mode & WAKE_ON_MAGIC_PACKET)
> -			rtlpriv->wowlan.flags = WIPHY_WOWLAN_MAGIC_PKT;
> -		if (rtlpriv->psc.wo_wlan_mode & WAKE_ON_PATTERN_MATCH) {
> -			rtlpriv->wowlan.n_patterns =
> -				MAX_SUPPORT_WOL_PATTERN_NUM;
> -			rtlpriv->wowlan.pattern_min_len = MIN_WOL_PATTERN_SIZE;
> -			rtlpriv->wowlan.pattern_max_len = MAX_WOL_PATTERN_SIZE;
> -		}
> -		hw->wiphy->wowlan = &rtlpriv->wowlan;
> -	}
> -#endif
> -
>  	/* <6> mac address */
>  	if (is_valid_ether_addr(rtlefuse->dev_addr)) {
>  		SET_IEEE80211_PERM_ADDR(hw, rtlefuse->dev_addr);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190223141335.6650-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

