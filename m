X-GM-THRID: 2067485687808
X-Received: by 10.112.145.133 with SMTP id su5mr188383lbb.17.1424845267085;
        Tue, 24 Feb 2015 22:21:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.132 with SMTP id b4ls779614lah.33.gmail; Tue, 24 Feb
 2015 22:21:06 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr196535lbc.22.1424845266651;
        Tue, 24 Feb 2015 22:21:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l8si1228487wia.0.2015.02.24.22.21.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 22:21:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,643,1418079600"; 
   d="scan'208";a="123270448"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Feb 2015 07:21:05 +0100
Date: Wed, 25 Feb 2015 07:21:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH v5 0/6] Staging: emxx_udc: Fix
 checkpatch.pl warnings
In-Reply-To: <20150225045825.GA13573@example.com>
Message-ID: <alpine.DEB.2.02.1502250720490.2063@localhost6.localdomain6>
References: <20150225045825.GA13573@example.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

You seem to have sent the cover letter four times, and not the patch.

julia

On Wed, 25 Feb 2015, Haneen Mohammed wrote:

> This patchset fixes the following coding style issues found by
> checkpatch.pl:
> Do not add new typedefs.
> Use of volatile is usually wrong.
> printk(KERNEL_ERR not prefered.
> 
> Changes in v5:
> - Fix spelling mistakes
> - Justify the removal of volatile
> - Replaced pr_err with dev_err when possible
> Changes in v4:
> - Patchset broken into smaller patches
> Changes in v3:
> - Create patchset from two patches
> Changes in v2:
> - First patch reversion
> 
> Haneen Mohammed (6):
>   Staging: emxx_udc: Fix do not add new typedefs
>   Staging: emxx_udc: Remove volatile from union usb_regs_access
>   Staging: emxx_udc: Replace custom printk macro ERR with pr_err
>   Staging: emxx_udc: Replace custom printk macro ERR with dev_err
>   Staging: emxx_udc: Remove custom printk macro ERR
>   Staging: emxx_udc: Clean dev_err() logging
> 
>  drivers/staging/emxx_udc/emxx_udc.c | 142 ++++++++++++++++++------------------
>  drivers/staging/emxx_udc/emxx_udc.h |  27 ++++---
>  2 files changed, 84 insertions(+), 85 deletions(-)
> 
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150225045825.GA13573%40example.com.
> For more options, visit https://groups.google.com/d/optout.
> 

