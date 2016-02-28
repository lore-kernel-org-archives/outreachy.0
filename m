X-GM-THRID: 6256430192250585088
X-Received: by 10.25.90.85 with SMTP id o82mr343640lfb.10.1456691070665;
        Sun, 28 Feb 2016 12:24:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.41.213 with SMTP id p204ls361912lfp.58.gmail; Sun, 28 Feb
 2016 12:24:30 -0800 (PST)
X-Received: by 10.112.209.6 with SMTP id mi6mr1152107lbc.15.1456691070036;
        Sun, 28 Feb 2016 12:24:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si613812wmd.1.2016.02.28.12.24.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:24:29 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,517,1449529200"; 
   d="scan'208";a="166252555"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 21:24:29 +0100
Date: Sun, 28 Feb 2016 21:24:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/4] Remove NULL test before
 vfree
In-Reply-To: <20160228201727.GA2287@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1602282124170.2075@localhost6.localdomain6>
References: <20160228201727.GA2287@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 29 Feb 2016, Bhaktipriya Shridhar wrote:

> *** BLURB HERE ***

Not very informative :)

julia

> 
> Bhaktipriya Shridhar (4):
>   staging: rts5208: Remove NULL test before vfree
>   staging: rtl8188eu: core: Remove NULL test before vfree
>   staging: rtl8188eu: os_dep: Remove NULL test before vfree
>   staging: rtl8192e: Remove NULL test before vfree
> 
>  drivers/staging/rtl8188eu/core/rtw_recv.c    |  3 +--
>  drivers/staging/rtl8188eu/core/rtw_sta_mgt.c |  3 +--
>  drivers/staging/rtl8188eu/os_dep/usb_intf.c  |  2 +-
>  drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  6 ++---
>  drivers/staging/rts5208/ms.c                 | 30 ++++++++---------------
>  drivers/staging/rts5208/xd.c                 | 36 ++++++++++------------------
>  6 files changed, 27 insertions(+), 53 deletions(-)
> 
> --
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160228201727.GA2287%40Karyakshetra.
> For more options, visit https://groups.google.com/d/optout.
> 

