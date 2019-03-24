X-GM-THRID: 6671889180677636096
X-Received: by 2002:a19:a908:: with SMTP id s8mr9487203lfe.160.1553420403255;
        Sun, 24 Mar 2019 02:40:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:3802:: with SMTP id f2ls1277997lfa.0.gmail; Sun, 24 Mar
 2019 02:40:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxNv29W7o4UmolIv6++1fQbKtR/XmxRvI2Yg7ELdBSpn3+GJlBcHBXUklfA/Pa1TFHQFXWM
X-Received: by 2002:a19:7d84:: with SMTP id y126mr9305250lfc.124.1553420402427;
        Sun, 24 Mar 2019 02:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553420402; cv=none;
        d=google.com; s=arc-20160816;
        b=DTlK8DpFiFSW/dUZvmm2whe8g+U7Zaqncdgz+32T6Gi22JLqMsApPOnvPqoA2AaqNJ
         6aqX9UAOTjrHXY9QeioMSfotaWz8McF6zvND7uSo0GvX8oUN0UnKbQw1eKc9ERsjNgwt
         tN9cO1SF/F9GaO+jSSzrJMUsOSwgdTuYV0CIEJJYH9QLvRo4gGEb1AtgJVizLdxhcnUJ
         e1NVT4pc+OE+tYTssoNxFWo1XPZCQyVdi5NnefbgGbip5KsV8PJ9YIOt1fsYPKwxqvnW
         AwuHO486Uw/+rtU83P0G0ftmiNfvPEjS5kZwb8ghdVdUbTTuCRbDIL50z7kaU1q15v6V
         3xUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2TZJSyEdWPPSyLo0pq96hqDM0/dGCW80lGhdfHUXG2M=;
        b=aDXPGY2nq87pKTelpLjEdbnLEkNAu+1L+3GRByf9QRiUS7lw1FZO4gcRC2vaEV4KAy
         calILYdrnPTXJolnRgvkSn7pa4Y/+RQfGUdRnurf47zukn8UY/If6SgFD812CTKMCjY5
         Kk65yo5rzZievWruJocCh+3RI+rJ2sPWfsrMUAfkhFU3oiEVlc5DOVT2NqaPlyF1sSBj
         rjO+gm+AUgww4/kYi8fyviD6/AJMXm8UB7BBRydsLq0cDLlmJVj6rWpyOAO6NsbvjrpJ
         9jMNhvJX+4wyCk/aldsm6m+xMjGy+8MbEMJLJBX1kOiR1XwFtI/8GejksSiAW+2XWs0L
         vgtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y1si790494lfe.1.2019.03.24.02.40.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 02:40:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300519766"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 10:40:01 +0100
Date: Sun, 24 Mar 2019 10:40:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anushka Shukla <anushkacharu9@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: card.h: fix the
 comment style
In-Reply-To: <20190324093706.16308-1-anushkacharu9@gmail.com>
Message-ID: <alpine.DEB.2.21.1903241038290.2526@hadrien>
References: <anushkacharu9@gmail.com> <20190324093706.16308-1-anushkacharu9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Mar 2019, anushkacharu9@gmail.com wrote:

> From: Anushka Shukla <anushkacharu9@gmail.com>
>
> -Fix the comment style
> -Replace '//' by '*/' to follow linux kernel coding style

I don't understand the log message.  You have two -s, but you do only one
thing.

Actually, the -s are not a good idea.  They use a character that has an
undefined meaning as a replacement for words that express the connection
between the pieces of information you are providing.  Since it is very
important for a log message to be understandable, please don't use - and
instead find words to express what you mean.

julia

>
> Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
> ---
>  drivers/staging/vt6656/card.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
> index 0a91d9ba4688..75cd340c0cce 100644
> --- a/drivers/staging/vt6656/card.h
> +++ b/drivers/staging/vt6656/card.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0+
> +/* SPDX-License-Identifier: GPL-2.0+ */
>  /*
>   * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
>   * All rights reserved.
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190324093706.16308-1-anushkacharu9%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

