X-GM-THRID: 6393685966647721984
X-Received: by 10.46.84.69 with SMTP id y5mr1338978ljd.21.1488648593934;
        Sat, 04 Mar 2017 09:29:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.71 with SMTP id q68ls1189880ljb.40.gmail; Sat, 04 Mar
 2017 09:29:52 -0800 (PST)
X-Received: by 10.46.88.9 with SMTP id m9mr1264788ljb.25.1488648592970;
        Sat, 04 Mar 2017 09:29:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si553075wmh.1.2017.03.04.09.29.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:29:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,242,1484002800"; 
   d="scan'208";a="263125190"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2017 18:29:48 +0100
Date: Sat, 4 Mar 2017 18:29:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    speakup@linux-speakup.org, linux-rpi-kernel@lists.infradead.org, 
    outreachy-kernel@googlegroups.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: Clean up tests if NULL
 returned on failure
In-Reply-To: <1488646015-7059-1-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703041829220.2072@hadrien>
References: <1488646015-7059-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, simran singhal wrote:

> This patch series tests if functions like kmalloc/kzalloc return NULL
> on failure. When NULL represents failure, !x is commonly used.
>
> simran singhal (3):
>   staging: rtl8192u: Clean up tests if NULL returned on failure
>   staging: speakup: Clean up tests if NULL returned on failure
>   staging: vc04_services: Clean up tests if NULL returned on failure

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c      | 2 +-
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c       | 2 +-
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c         | 2 +-
>  drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c              | 4 ++--
>  drivers/staging/speakup/main.c                                 | 2 +-
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c | 2 +-
>  6 files changed, 7 insertions(+), 7 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488646015-7059-1-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

