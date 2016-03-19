X-GM-THRID: 6263794151847886848
X-Received: by 10.112.136.35 with SMTP id px3mr2771232lbb.8.1458406803451;
        Sat, 19 Mar 2016 10:00:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.205.202 with SMTP id d193ls657204lfg.2.gmail; Sat, 19 Mar
 2016 10:00:02 -0700 (PDT)
X-Received: by 10.112.170.42 with SMTP id aj10mr2772868lbc.1.1458406802917;
        Sat, 19 Mar 2016 10:00:02 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f75si104884wme.3.2016.03.19.10.00.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 10:00:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,361,1454972400"; 
   d="scan'208";a="208907920"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Mar 2016 18:00:02 +0100
Date: Sat, 19 Mar 2016 18:00:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/4] Staging: rtl8188eu: Remove
 NULL comparision.
In-Reply-To: <cover.1458376695.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.02.1603191759130.2259@localhost6.localdomain6>
References: <cover.1458376695.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 19 Mar 2016, Sandhya Bankar wrote:

> Remove NULL comparision.This patch is found by checkpatch.pl script.
> Changes in v2:
> *Correcting the heading.
> 
> Sandhya Bankar (4):
>   Staging: rtl8188eu: Remove NULL comparision.
>   Staging: rtl8188eu: Remove NULL comparision.
>   Staging: rtl8188eu: Use !x instead of x == NULL.
>   Staging: rtl8188eu: Use !x instead of x == NULL.

Theer are repeated subject lines here, which is going to cause problems.  
You could use the file name, without the .c, to differentiate between 
them.

julia

> 
>  drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c | 2 +-
>  drivers/staging/rtl8188eu/hal/hal_intf.c             | 2 +-
>  drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c      | 2 +-
>  drivers/staging/rtl8188eu/hal/usb_halinit.c          | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1458376695.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

