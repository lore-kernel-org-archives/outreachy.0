X-GM-THRID: 6886889197397868544
X-Received: by 2002:adf:eccb:: with SMTP id s11mr13947223wro.135.1603650620961;
        Sun, 25 Oct 2020 11:30:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7e4e:: with SMTP id z75ls3339060wmc.0.canary-gmail; Sun,
 25 Oct 2020 11:30:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyrFf+U6EjUEC4Hy78Zi+OUmLvSJhdb5EP3mFIvFvABEKngLT9DF4El0gFFEi1qJMs06rFU
X-Received: by 2002:a1c:cc:: with SMTP id 195mr13195172wma.52.1603650618996;
        Sun, 25 Oct 2020 11:30:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603650618; cv=none;
        d=google.com; s=arc-20160816;
        b=dne0UlUjYT5lx5JeAmpGQXL8AgepR8w1K9ejhF5NuvQgvGZwMylqGp0LKw0rAwyNPf
         5CCl+nn+WWtOoQCQqVGGUzgj+jZ2o96TsIot1Y20VykwisIPXgw5P8KugrJUVTXC4ZB1
         ACDeHG9C88nu144Nn+mNZskXy9k4bLKCuNbcrTqo68PeI3ihd8jw+sMTGYeyJgb77L0T
         9XjxkKJ8FOBbHGwQDQ4m+vCx+OTbxqTfXYQ+rUL2PKaQBOqSvJ4VYSBQKuyI4c2Ln3YK
         YumYLHQ1pQbLqtuvxDWKWE2B6xZdrzwfF5dGnoYvRHPY4Mrxb3Y+Ugg85vAGCeGMa9N3
         vU1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tja4M2Bk0OrLJWUDdxMeOloSEPoiQTWj8Q8SYrKAUG4=;
        b=0D8ot7oXXx1VGROW5sgNuQdafidVEQFQd1W9a4hBtGpGVutnXNwBE3CemLNOc8f+tA
         4Cb27on8p6Y99r4rRMaMLm+7Esxfag3Rr34MsXWpNzK+mIyTRlkaWXJZC0dgHaKxeBvx
         MGk0ICrHR6fDEw5JrS1eiTrn6QUDf2GjYLFupwAFvhKESJ+fY+xmt3/BU9UM84LfVIwi
         H4/rOaZAn9vahMihPNqaN+cIucAc5OiSIz40YvCTHzBpBYe+dAx2TVZQ+gEiXrMwDrX8
         EjDiugOH3YMhCJ963dEQNieexpsN3q4VBfH3uaqaC3GscarTswlw81vk6H/3xJyF3dkQ
         En5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o138si135681wme.2.2020.10.25.11.30.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 11:30:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,416,1596492000"; 
   d="scan'208";a="362719124"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2020 19:30:18 +0100
Date: Sun, 25 Oct 2020 19:30:17 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Elena Afanasova <eafanasova@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192u: ieee80211:
 replace kmalloc/memset with kzalloc
In-Reply-To: <43e637becf35f98a952c38ee1a5b690798c62c75.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010251929380.2714@hadrien>
References: <43e637becf35f98a952c38ee1a5b690798c62c75.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 25 Oct 2020, Elena Afanasova wrote:

> Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
> Found with Coccinelle.
>
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
> Changes in v3:
>         - use array_size()
> Changes in v2:
>         - correct the subject line
>         - correct the commit message
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 63a561ab4a76..53ce97aae206 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
>  {
>  	struct ieee80211_txb *txb;
>  	int i;
> -	txb = kmalloc(
> -		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
> -		gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + array_size(sizeof(u8 *), nr_frags), gfp_mask);

There is no need to exceed 80 characters here.

julia

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
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/43e637becf35f98a952c38ee1a5b690798c62c75.camel%40gmail.com.
>

