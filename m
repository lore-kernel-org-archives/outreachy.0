X-GM-THRID: 6256436509149233152
X-Received: by 10.25.170.7 with SMTP id t7mr1201754lfe.2.1456690737594;
        Sun, 28 Feb 2016 12:18:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.129 with SMTP id y123ls396570lfd.38.gmail; Sun, 28 Feb
 2016 12:18:57 -0800 (PST)
X-Received: by 10.25.90.85 with SMTP id o82mr340714lfb.10.1456690737049;
        Sun, 28 Feb 2016 12:18:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w128si454180wmd.0.2016.02.28.12.18.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:18:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,517,1449529200"; 
   d="scan'208";a="204957768"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 21:18:56 +0100
Date: Sun, 28 Feb 2016 21:18:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: Use ether_addr_equal_64bits()
 insted of ether_addr_equal().
In-Reply-To: <cover.1456660509.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.02.1602282116200.2075@localhost6.localdomain6>
References: <cover.1456660509.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 28 Feb 2016, Sandhya Bankar wrote:

> Use ether_addr_equal_64bits() insted of ether_addr_equal().
> ether_addr_equal_64bits() is more efficient than ether_addr_equal(), and can be used when each argument is an array within a structure.

This seems to have come to me more slowly than the patches :)

However, it would be good to have the explanation in the patches, because 
that is the only thing that will be committed.  The cover letter just 
exists in the mailing list.

You chould check in each case that the mentioned field is not at the end 
of the structure, ie that it has at least two bytes within the structure 
after it.

However, what I recall from the mailing list discussions on this issue was 
that the condition for the call being valid was considered to be quite 
fragile, and so using this function was not considered to be worth it 
unless performance was really critical.

julia

> 
> Sandhya Bankar (2):
>   [PATCH 1/2] Staging: slicoss: Use ether_addr_equal_64bits() insted of ether_addr_equal().
>   [PATCH 2/2] Staging: rtl8192e: Use ether_addr_equal_64bits() instead of ether_addr_equal().
> 
>  drivers/staging/rtl8192e/rtllib_softmac.c | 5 +++--
>  drivers/staging/slicoss/slicoss.c         | 4 ++--
>  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> -- 
> 1.8.3.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1456660509.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

