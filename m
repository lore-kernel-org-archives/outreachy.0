X-GM-THRID: 6250655488927596544
X-Received: by 10.194.62.69 with SMTP id w5mr104943wjr.5.1455345069653;
        Fri, 12 Feb 2016 22:31:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.210 with SMTP id o201ls238891wmg.6.gmail; Fri, 12 Feb
 2016 22:31:09 -0800 (PST)
X-Received: by 10.28.30.147 with SMTP id e141mr130787wme.0.1455345069040;
        Fri, 12 Feb 2016 22:31:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si184239wme.0.2016.02.12.22.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:31:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,438,1449529200"; 
   d="scan'208";a="202920156"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Feb 2016 07:31:08 +0100
Date: Sat, 13 Feb 2016 07:31:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Remove multiple assignments
In-Reply-To: <cover.1455343091.git.bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602130729450.2225@localhost6.localdomain6>
References: <cover.1455343091.git.bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 13 Feb 2016, Bhumika Goyal wrote:

> This patchset removes multiple assignment by factorizing them.
> Made a coccinelle script to match cases:
> @@
> identifier a,b;
> constant c;
> @@
> -a=b=c;
> +a=c;
> +b=c;

The double assgnments are actually a bit annoying from a Coccinelle point 
of view.  But probably from a human developer point of view, the original 
code is better, because it is more concise, and anyway the assignments are 
completely trivial.

julia

> 
> Bhumika Goyal (2):
>   Staging: wlan-ng: Remove multiple assignments
>   Staging: media: Remove multiple assignments
> 
>  drivers/staging/media/davinci_vpfe/dm365_isif.c | 3 ++-
>  drivers/staging/wlan-ng/p80211wep.c             | 6 ++++--
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1455343091.git.bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

