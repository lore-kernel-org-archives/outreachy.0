X-GM-THRID: 6886754983149043712
X-Received: by 2002:a2e:9951:: with SMTP id r17mr626592ljj.37.1603449161860;
        Fri, 23 Oct 2020 03:32:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls660454lff.1.gmail; Fri, 23 Oct
 2020 03:32:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy+5UqrB8Fy2TDWILgkx9zKpvhgWQwassW8SgXWcR3xejvPIzr+NMAWt25Pl1HZFTdUTJoA
X-Received: by 2002:ac2:5ecc:: with SMTP id d12mr556373lfq.487.1603449159717;
        Fri, 23 Oct 2020 03:32:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603449159; cv=none;
        d=google.com; s=arc-20160816;
        b=oVQa6X6uwHAmAVPgNAD8cYFCti2YPWbFEJY3/Dh9fLZIzkqhnV/9JOB2S6oghtCi3m
         txndmrBQe7yq29DW8pagy6uFe4q2dwJStdPN5hMxzMX7l3dVjJrNGzMuFmANyS433oXN
         wznZ2iOwWOL1p16SGRmj9A+YpRjq3uM0ztj0F6VStS/eaOUI8LNJs0Prt3tgAe/rkN8S
         ERP7/IrZoYCzelpd/TEdmrYeraovFu4RIgLt8EoXo/bNNYNZYy+AydnsuXryZ4yPumQp
         usa7fCr4d6So7DdLss1XMB+WV/Rr4mGqcfkyTnKaGYbt4oBQ0C3XeHfXOKxeS+OKULpK
         Sq7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7GbqIHRkwO+7KyulorKljsfx4hYSrMc4gdla03QB0Fg=;
        b=P+zEvAKClxrk1UImU8XQFpPhTJ+eItaWVQjkBFeE/l9dmI0vGVRTYF9Rfpm0vEaq3L
         pc8Y+tU6OfvxtG7rXRoSaV67i+Xv4ga3CteWHqjvrW/F3ifACBsb7Lg2iYfd0s+iKQv/
         y6PZhQfomezwFAKxRE3wOsdS9BWCcAkfdRQGrYbkG6wZfs6QPih24n3JEJnlt7JicSHT
         NzOKdrYpx++CIE5szYlejRLZdlR4Ud+G+aaANOAfdg/Tc2CYCPQeyQtakSUzbKxoPMKv
         dv/pw+vKzORDQGJ2e76jgA3hB420CHdER8SITKZxy1BCQ/7FmDvxQ9Ibbjp6XXMavNns
         Ekew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e15si26552lfq.1.2020.10.23.03.32.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 03:32:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,407,1596492000"; 
   d="scan'208";a="474018530"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Oct 2020 12:32:31 +0200
Date: Fri, 23 Oct 2020 12:32:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Elena Afanasova <eafanasova@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging/rtl8192u/ieee80211: replace
 kmalloc with kzalloc
In-Reply-To: <20201023100507.4569-1-eafanasova@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010231231440.2707@hadrien>
References: <20201023100507.4569-1-eafanasova@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The above is not the right subject line for this file (ie the part to the
left of the colon).  You should use git log --oneline on this file to see
what others have done.

julia

On Fri, 23 Oct 2020, Elena Afanasova wrote:

> kmalloc() and memset() calls can be replaced with kzalloc().
> Found with Coccinelle.
>
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 63a561ab4a76..fb8483c499b3 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
>  {
>  	struct ieee80211_txb *txb;
>  	int i;
> -	txb = kmalloc(
> -		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
> -		gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
>  	if (!txb)
>  		return NULL;
>
> -	memset(txb, 0, sizeof(struct ieee80211_txb));
>  	txb->nr_frags = nr_frags;
>  	txb->frag_size = __cpu_to_le16(txb_size);
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201023100507.4569-1-eafanasova%40gmail.com.
>

