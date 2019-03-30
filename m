X-GM-THRID: 6673980980256047104
X-Received: by 2002:a05:600c:c1:: with SMTP id u1mr643311wmm.2.1553928384303;
        Fri, 29 Mar 2019 23:46:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fe8c:: with SMTP id l12ls123152wrr.17.gmail; Fri, 29 Mar
 2019 23:46:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzV9m66/NJSZHIFQl7dtLIM9U9vsPDScdnEF+HsC6znTNUE/5CSph53kE7PHqh7xI7s5mCh
X-Received: by 2002:adf:ef50:: with SMTP id c16mr1326203wrp.24.1553928383511;
        Fri, 29 Mar 2019 23:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553928383; cv=none;
        d=google.com; s=arc-20160816;
        b=EkglZR+27/g0fO5ffP/OSoN9r/ox2hqVaVd1PhBmxJEozQEzKINv8jLdKeIq0sNt2e
         VB+0V4uk5I14ipEnoGCTjDah9K+OpwiwA/MShJczJgOt/4oZbOoDI02UjCEEvn58Mz57
         SAVJv4xMlDg4Qdvh5MbcUr1gDfLq03cX4YI9t9YfznxPflUowgyi66CAY0Tg1K2TlHrt
         edsLenws7xzQXqVQPR0sFLoVJrTacGKTjDvA1XSzPXrMveUEEyFEXb4zwQd0Lz89baJm
         ERDTbqpEFDbE32vyn9iduCkawv/woZXbkZz5s29mYsZhAisL3ZuFQ1kfDcyQVNnODTjW
         VZuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=srY1bzujNkrk0oWEKsvDd2cPIGu9h+TxzOVstXzrMLk=;
        b=oEIxDfqj104+iDxsLQ8wwZejuacE7s+CLEQ6Ibi4OtC4rzf5BoN1f6q1eXiPaFY4Kr
         6NP8HbON9eyO/dc7rdqJU9ps6eeeuhe20qlRPFZy4u7kP35mL1/ZSbXUg1lHz0P7y8SI
         fA+koxVkOBQJwWq8x+Z0DRKfxYURDj9zPyncSDJVOLs7WXbnp1rX0YmqrAADqXQNs/pk
         l412eC6g0GU4WyJfYrBcWNVqbcfzT+YVpY1uIybpeLab3v9BotrP4yWrSaHbnsmtbYAC
         S8VJySoHb4g4mQcaxgUo/YxBNT9JxWC81lufrYKHqE/Ix9YOYBQKWZn0pMaAFjfGKTIW
         aBXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n5si272723wrj.0.2019.03.29.23.46.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 23:46:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,287,1549926000"; 
   d="scan'208";a="376436466"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 07:46:23 +0100
Date: Sat, 30 Mar 2019 07:46:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Remove multiple
 assignments
In-Reply-To: <20190330005429.29931-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903300745250.2817@hadrien>
References: <20190330005429.29931-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, Vatsala Narang wrote:

> Remove multiple assignments by factorizing them to get rid of checkpatch warning.
> The semantic patch to solve the issue is as follows:
>
> @@
> expression x,y,z;
> @@
>
> -x=y=z;
> +x=z;
> +y=z;
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/rtl8712/xmit_linux.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
> index 8bcb0775411f..eb3bc46cc977 100644
> --- a/drivers/staging/rtl8712/xmit_linux.c
> +++ b/drivers/staging/rtl8712/xmit_linux.c
> @@ -38,8 +38,10 @@ static uint remainder_len(struct pkt_file *pfile)
>  void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)
>  {
>  	pfile->pkt = pktptr;
> -	pfile->cur_addr = pfile->buf_start = pktptr->data;
> -	pfile->pkt_len = pfile->buf_len = pktptr->len;

It was a good initiative to use Coccinelle for this, but I think the code
was ok as is.  It makes more clear that a certain set of fields all have
the same value.

julia

> +	pfile->cur_addr = pktptr->data;
> +	pfile->buf_start = pktptr->data;
> +	pfile->pkt_len = pktptr->len;
> +	pfile->buf_len = pktptr->len;
>  	pfile->cur_buffer = pfile->buf_start;
>  }
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190330005429.29931-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

