X-GM-THRID: 6330315371322540032
X-Received: by 10.46.71.207 with SMTP id u198mr1127201lja.2.1473916689637;
        Wed, 14 Sep 2016 22:18:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.23 with SMTP id m23ls113324wma.3.gmail; Wed, 14 Sep 2016
 22:18:09 -0700 (PDT)
X-Received: by 10.28.152.87 with SMTP id a84mr149568wme.7.1473916689268;
        Wed, 14 Sep 2016 22:18:09 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si48267wmd.1.2016.09.14.22.18.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 22:18:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="193413487"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 07:18:03 +0200
Date: Thu, 15 Sep 2016 07:17:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Malcolm Priestley <tvboxspy@gmail.com>, 
    Alison Schofield <amsfield22@gmail.com>, 
    maomao xu <albert008.xu@gmail.com>, Othmar Pasteka <pasteka@kabsi.at>, 
    Parth Sane <laerdevstudios@gmail.com>, 
    Wolfram Sang <wsa-dev@sang-engineering.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: vt6656: main_usb: Remove
 unnecessary blank lines
In-Reply-To: <CAFrQyDHKq8Ktv05E5zpQfiDfQGgceZu5B19WXF1bdhJT=w6tYg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609150717060.6078@hadrien>
References: <CAFrQyDHKq8Ktv05E5zpQfiDfQGgceZu5B19WXF1bdhJT=w6tYg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-410603604-1473916684=:6078"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-410603604-1473916684=:6078
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 15 Sep 2016, Namrata A Shettar wrote:

> This patch resolves checkpatch issue of unnecessary blank lines.
>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vt6656/main_usb.c
> b/drivers/staging/vt6656/main_usb.c
> index 0594828..d79f07f 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -692,7 +692,6 @@ static void vnt_bss_info_changed(struct ieee80211_hw
> *hw,
>         if (changed & BSS_CHANGED_BSSID && conf->bssid)
>                 vnt_mac_set_bssid_addr(priv, (u8 *)conf->bssid);
>
> -
>         if (changed & BSS_CHANGED_BASIC_RATES) {
>                 priv->basic_rates = conf->basic_rates;
>
> @@ -814,7 +813,6 @@ static void vnt_configure(struct ieee80211_hw *hw,
>                 } else {
>                         rx_mode &= ~(RCR_MULTICAST | RCR_BROADCAST);
>                 }
> -
>         }
>
>         if (changed_flags & (FIF_OTHER_BSS | FIF_BCN_PRBRESP_PROMISC)) {
> @@ -925,8 +923,7 @@ static const struct ieee80211_ops vnt_mac_ops = {
>
>  int vnt_init(struct vnt_private *priv)
>  {
> -
> -       if (!(vnt_init_registers(priv)))
> +        if (!(vnt_init_registers(priv)))

Here you seem to have added an extra space.  Actually all the spaces
should be removed, and there should be a tab.  But in any case it is not a
blank line change.

julia

>                 return -EAGAIN;
>
>         SET_IEEE80211_PERM_ADDR(priv->hw,
> priv->permanent_net_addr);[cleardot.gif]
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAFrQyDHKq8Ktv05E5zpQfiD
> fQGgceZu5B19WXF1bdhJT%3Dw6tYg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-410603604-1473916684=:6078--

