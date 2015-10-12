X-GM-THRID: 6203986156822986752
X-Received: by 10.112.169.34 with SMTP id ab2mr5854945lbc.23.1444670676606;
        Mon, 12 Oct 2015 10:24:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.100 with SMTP id w4ls869348wiz.25.gmail; Mon, 12 Oct
 2015 10:24:36 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr5931823wjb.3.1444670676149;
        Mon, 12 Oct 2015 10:24:36 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id bh7si547709wib.1.2015.10.12.10.24.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:24:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id q8so67823905wij.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=uXVSlfTZWmCknT63Hts23PKQDh0/97WAru3pJg4u79Q=;
        b=vi5Z+386mZDZ5xR47JnWBekdXRLqjSPHxmmdi6j+sql8LHGiJ2RcDEK3bX7sJIlV5g
         i2G0WzUQESiTZEaBzCfkJPxWmL9P4qTkbeuMZiHsLkO6yBSBgcfVE8XoRplk6evmEGLe
         DRc9kLbXSGPLNeN+csbpzDR4C6sXU+JF3SyIt6tcwmvtRbvc7AvNlZmSTRHuaF2R62Zc
         6lLgcNGqxxrrUnFS97mWcIkYD0IL9tiFF4JyNh4PFrHUDjMJM+pU09r2VgR4kNGd6XjJ
         7/5P9ad6mU52uM7mGvIOKu43HBpIL/H0kZor4yGGyxSAG9ZJ3x7DimTCU90QXeOXVcb0
         9xiQ==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr31716626wjc.42.1444670676012;
 Mon, 12 Oct 2015 10:24:36 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 10:24:35 -0700 (PDT)
In-Reply-To: <1444540283-9605-2-git-send-email-shraddha.6596@gmail.com>
References: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
	<1444540283-9605-2-git-send-email-shraddha.6596@gmail.com>
Date: Mon, 12 Oct 2015 20:24:35 +0300
Message-ID: <CAEnQRZB0qVEWg+grjZYOid7kM-kvGyRY=zg7EDDb4VoJ1oCAJw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 1/3] Staging: rtl8192u: ieee80211:
 ieee80211_softmac: Remove commented printk messages
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 11, 2015 at 8:11 AM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> Remove commented printk since it is not needed
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v4-
>  No change.
> Changes in v3-
>  No change.
> Changes in v2-
>  No change.
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index f2d09fe..c443e2e 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -1272,7 +1272,6 @@ static void ieee80211_associate_step1(struct ieee80211_device *ieee)
>         else{
>                 ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATING ;
>                 IEEE80211_DEBUG_MGMT("Sending authentication request\n");
> -               //printk(KERN_WARNING "Sending authentication request\n");
>                 softmac_mgmt_xmit(skb, ieee);
>                 //BUGON when you try to add_timer twice, using mod_timer may be better, john0709
>                 if (!timer_pending(&ieee->associate_timer)) {
> @@ -1735,11 +1734,9 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
>                 return 0;
>         */
>         dtim = ieee->current_network.dtim_data;
> -       //printk("DTIM\n");
>         if(!(dtim & IEEE80211_DTIM_VALID))
>                 return 0;
>         timeout = ieee->current_network.beacon_interval; //should we use ps_timeout value or beacon_interval
> -       //printk("VALID\n");
>         ieee->current_network.dtim_data = IEEE80211_DTIM_INVALID;
>
>         if(dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)& ieee->ps))
> --
> 2.1.4
>

