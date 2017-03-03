X-GM-THRID: 6393296356207755264
X-Received: by 10.223.131.193 with SMTP id 59mr73381wre.21.1488557248490;
        Fri, 03 Mar 2017 08:07:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.6 with SMTP id i6ls1006427ljb.3.gmail; Fri, 03 Mar 2017
 08:07:27 -0800 (PST)
X-Received: by 10.25.216.154 with SMTP id r26mr506169lfi.7.1488557247874;
        Fri, 03 Mar 2017 08:07:27 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v201si199422wmv.3.2017.03.03.08.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 08:07:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,237,1484002800"; 
   d="scan'208";a="215485793"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 17:07:27 +0100
Date: Fri, 3 Mar 2017 17:07:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, david.kershner@unisys.com, 
    sparmaintainer@unisys.com, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net, 
    florian.c.schilhabel@googlemail.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 0/3] Replace "the the " with
 "the"
In-Reply-To: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703031706500.3490@hadrien>
References: <1488556746-599-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 3 Mar 2017, simran singhal wrote:

> This patch series replace "the the " with "the" in various drivers.
>
> v3:
>   -Resend the complete patch series.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
>
> simran singhal (3):
>   staging: wlan-ng: Replace "the the " with "the"
>   staging: rtl8192u: Replace "the the " with "the"
>   staging: unisys: Replace "the the " with "the"
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
>  drivers/staging/unisys/visorbus/visorbus_main.c   | 2 +-
>  drivers/staging/wlan-ng/prism2sta.c               | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488556746-599-1-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

