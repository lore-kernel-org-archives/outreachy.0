X-GM-THRID: 6331735722653908992
X-Received: by 10.25.134.193 with SMTP id i184mr468901lfd.26.1474222544728;
        Sun, 18 Sep 2016 11:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.131 with SMTP id e3ls829008lji.29.gmail; Sun, 18 Sep 2016
 11:15:44 -0700 (PDT)
X-Received: by 10.25.200.20 with SMTP id y20mr436013lff.21.1474222543996;
        Sun, 18 Sep 2016 11:15:43 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y6si1100200wmg.0.2016.09.18.11.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 11:15:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,358,1470693600"; 
   d="scan'208";a="193830415"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Sep 2016 20:15:42 +0200
Date: Sun, 18 Sep 2016 20:15:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com, 
    andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Use sizeof structure
 *pointer over sizeof structure in kzalloc().
In-Reply-To: <20160918180816.GA4562@sandhya>
Message-ID: <alpine.DEB.2.10.1609182014510.3350@hadrien>
References: <20160918180816.GA4562@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 18 Sep 2016, Sandhya Bankar wrote:

> This issue was found by checkpatch.
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/file.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
> index 4965d15..5eed33a 100644
> --- a/drivers/staging/lustre/lustre/llite/file.c
> +++ b/drivers/staging/lustre/lustre/llite/file.c
> @@ -657,7 +657,7 @@ restart:
>
>  			goto restart;
>  		}
> -		*och_p = kzalloc(sizeof(struct obd_client_handle), GFP_NOFS);
> +		*och_p = kzalloc(sizeof(*och_p), GFP_NOFS);

This doesn't look right.  The declaration of och_p is:

struct obd_client_handle **och_p = NULL;

So sizeof(*och_p) is just the size of a pointer.

julia

>  		if (!*och_p) {
>  			rc = -ENOMEM;
>  			goto out_och_free;
> --
> 1.7.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160918180816.GA4562%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

