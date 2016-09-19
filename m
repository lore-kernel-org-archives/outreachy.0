X-GM-THRID: 6332043627755208704
X-Received: by 10.28.203.3 with SMTP id b3mr531986wmg.17.1474294751337;
        Mon, 19 Sep 2016 07:19:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.81 with SMTP id 78ls198696ljf.20.gmail; Mon, 19 Sep 2016
 07:19:10 -0700 (PDT)
X-Received: by 10.25.152.10 with SMTP id a10mr3112422lfe.4.1474294750706;
        Mon, 19 Sep 2016 07:19:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si2024892wmd.1.2016.09.19.07.19.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:19:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,362,1470693600"; 
   d="scan'208";a="237395049"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 16:19:10 +0200
Date: Mon, 19 Sep 2016 16:19:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, ganesh.krishna@microchip.com, 
    aditya.shankar@microchip.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: wilc1000: Code cleanup
In-Reply-To: <1474293770-22208-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609191618590.3203@hadrien>
References: <1474293770-22208-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Sep 2016, Bhumika Goyal wrote:

> This patchset declares some functions as static and remove their
> declaration from headers. Also, drop prototypes of some already
> static functions.

Isn't this a v2?

julia

>
> Bhumika Goyal (2):
>   Staging: wilc1000: Drop static function prototypes
>   Staging: wilc1000: Make functions wilc_mac_{open/close} static
>
>  drivers/staging/wilc1000/linux_wlan.c             | 30 ++++++++++-------------
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  3 ---
>  drivers/staging/wilc1000/wilc_wlan.h              |  3 ---
>  3 files changed, 13 insertions(+), 23 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474293770-22208-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

