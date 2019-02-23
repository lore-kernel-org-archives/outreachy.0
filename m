X-GM-THRID: 6661153650381946880
X-Received: by 2002:adf:b692:: with SMTP id j18mr456885wre.8.1550928170250;
        Sat, 23 Feb 2019 05:22:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d17:: with SMTP id t23ls1039692wmt.14.gmail; Sat, 23
 Feb 2019 05:22:49 -0800 (PST)
X-Google-Smtp-Source: AHgI3IabEr+12CKVCjyJraVkBNm+son8sAOMnuXkPUbQAPPLZx9kTx+BllDzk7Y0Vi0X2zyYuEsA
X-Received: by 2002:a1c:c3c5:: with SMTP id t188mr504117wmf.15.1550928169461;
        Sat, 23 Feb 2019 05:22:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550928169; cv=none;
        d=google.com; s=arc-20160816;
        b=l+HQeJvWTfQPf4HQqeVLAIpe85R+yu2inLCEhC/g4eqqUrWPGjVKcfUBUI/ve30/5l
         vz03HeKbzecq+oLmSEOq44bKmQAZ7vu24eErRalfKxFLTc7bhuDWHMoPs+W1/w/sRjlV
         +/aesuEq1AbRNhieRiZAje0qqjaP4E1IchTgq7+N+8InHOcAPj8nurFj3mFAHtRhxjkF
         76T+KkfAc4BwkwPaYjCnWqw3l+6hiM414mM0SA4rV4Y6y9dZVXCEfEa/D47c7uoP9coU
         vcb1RVLVh3g+DxIBfZErxOyxxbYmt27uB9lULlvhRXZnccnGqVlBGa3ArZ2BnFWXRqKY
         WvrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=v915eR+ESpnU52ZATOqSnH5VKKsQiZKrCZ68VYvaFBQ=;
        b=icLzG2s29KHj/UYZsgNpZ4VF46e35p7at6RLOe76voL6oN6q/nBUhUPEHHmtYqnjv9
         9A4zb459SxBnjpsCH5b5ar//9CawJhdHontfug1Abkq+Vg2duz4R8RRKeZg2IuUm+ljc
         qQXX5zHuLP3sSlHnmuixUikTjtzwa0GWCad6xzkqx4/NrL4F7nWwWZe4jpCk7NlwwpTq
         Yq835Ndqevigr/IAWuuw3Ka6bRssBSPPe/jyk9W0tsnkFDjF8Yu1S3h9tHRmTJER0Qbv
         31nwQv/X5LrqdiCUOhYdghBlt0+GPvYzCeljwnj+D5UfnEUwutnRCE0Pm20AJe2N0m5m
         ktAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f2si199627wrq.5.2019.02.23.05.22.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 05:22:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,403,1544482800"; 
   d="scan'208";a="297103495"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 14:22:48 +0100
Date: Sat, 23 Feb 2019 14:22:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: jreuter@yaina.de, linux-hams@vger.kernel.org, linux-kernel@vger.kernel.org, 
    davem@davemloft.net, ralf@linux-mips.org, netdev@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] net: ax25: Fix multiple blank lines
 warning
In-Reply-To: <20190223111751.14620-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1902231421530.2551@hadrien>
References: <20190223111751.14620-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 23 Feb 2019, Jules Irenge wrote:

You need a commit message here.

> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  net/ax25/af_ax25.c | 2 --

This is the same file as in your previous patch, so they should be in a
series.

But please work on files in drivers/staging instead.

julia

>  1 file changed, 2 deletions(-)
>
> diff --git a/net/ax25/af_ax25.c b/net/ax25/af_ax25.c
> index 5048790a75f6..2da349b7854a 100644
> --- a/net/ax25/af_ax25.c
> +++ b/net/ax25/af_ax25.c
> @@ -49,8 +49,6 @@
>  #include <net/ip.h>
>  #include <net/arp.h>
>
> -
> -
>  HLIST_HEAD(ax25_list);
>  DEFINE_SPINLOCK(ax25_list_lock);
>
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190223111751.14620-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

