X-GM-THRID: 6886754504094515200
X-Received: by 2002:a19:6816:: with SMTP id d22mr593325lfc.132.1603449063217;
        Fri, 23 Oct 2020 03:31:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:84c1:: with SMTP id g184ls278137lfd.3.gmail; Fri, 23 Oct
 2020 03:31:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyphE7xQHCNDoJmbHigVCjCsXrcTagjWI7wd8lpvJUg1TzTQDX8xwY9E1CM37m3T52PVC8n
X-Received: by 2002:a19:9d3:: with SMTP id 202mr582115lfj.329.1603449060828;
        Fri, 23 Oct 2020 03:31:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603449060; cv=none;
        d=google.com; s=arc-20160816;
        b=QmsHkOCIJM+uVCjXr+sInY5uPo/MieJOlIkcdx6IC9vpRnC0gWWDI9eCBymBNMNv0U
         qeKens+eCv9rKApHM1hbaM5QkjyYbcv9EJ91fhDJIuiMa7Ny6JBxswankEyx66xVRQyt
         caXln764r/pqBUdFKY6C/w99S6NJHZUD4/mhe1XFH+Z1mzQyZmMVY28o+xBxGMpweBYI
         Hr4WuzKxiB2FVFokyPH4+9Z6p5h9RkMo9SIk0w/i+4v0ukTWpEAy+sGqhwccfw2kVHv9
         tGm3INwl7k4HEiNr8zvx/dJ8OTFhhp+7TBTzgLxAW9TZ2LJrwNmJyRftY7lYLxMm4Wxt
         pIfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=HogFMsSlD4uqYCSt+ZmLs+NgUy2bUCK2H3Vju3vCmIo=;
        b=uATGx2DZQ6Y3qddoClO64bmf0soq5ipd+b0OgN1EcOnZPUsiSd7SJ6dYg0+tgegNDI
         jXcGzYbB/mBWBLi+39WsqMgVdwcAs5U6KqeCYlHbS53I0AeZ88R8bDpz6OuUCTH3JG1S
         47nTuSbo11fo9v1eRuXBriukQpekJHYB1qMUWyKuu7sqAejWIulWLbWdkSTyAiyYUKku
         EMZc2Fyj/WKQ0t5mdl/Bearuz/3r0OnD3UH6Fsj42FKQfoGUDNTQT/DahyBygsTdQsIr
         ZX3W+zZyT+eVDEh6dj9T1ZXn6+KmXOuA+pvXMa67ZrJOPED6Am0Ae9TBewn6JbyLpWc8
         5pjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a16si44708lfr.5.2020.10.23.03.31.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 03:31:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,407,1596492000"; 
   d="scan'208";a="474018331"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Oct 2020 12:30:59 +0200
Date: Fri, 23 Oct 2020 12:30:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Elena Afanasova <eafanasova@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging/rtl8192e: replace kmalloc
 with kzalloc
In-Reply-To: <20201023100317.4473-1-eafanasova@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010231230340.2707@hadrien>
References: <20201023100317.4473-1-eafanasova@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 23 Oct 2020, Elena Afanasova wrote:

> kmalloc() and memset() calls can be replaced with kzalloc().

It would be nice to say why the change is correct.

julia

> Found with Coccinelle.
>
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_tx.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
> index e0d79daca24a..c9959bb4ab63 100644
> --- a/drivers/staging/rtl8192e/rtllib_tx.c
> +++ b/drivers/staging/rtl8192e/rtllib_tx.c
> @@ -205,12 +205,10 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
>  	struct rtllib_txb *txb;
>  	int i;
>
> -	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
> -		      gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
>  	if (!txb)
>  		return NULL;
>
> -	memset(txb, 0, sizeof(struct rtllib_txb));
>  	txb->nr_frags = nr_frags;
>  	txb->frag_size = cpu_to_le16(txb_size);
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201023100317.4473-1-eafanasova%40gmail.com.
>

