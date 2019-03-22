X-GM-THRID: 6670775463760101376
X-Received: by 2002:a17:906:5da:: with SMTP id t26mr4107241ejt.64.1553236824784;
        Thu, 21 Mar 2019 23:40:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4c83:: with SMTP id q3ls1448391eju.7.gmail; Thu, 21
 Mar 2019 23:40:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxkBxhA8svvSNJ6zvzfSUF4Spyp5QtlSN6sNJiKURQKdN2AbW6CRPAlTd6wOsByQOHeSQgW
X-Received: by 2002:a17:906:c7c2:: with SMTP id dc2mr3139682ejb.182.1553236823995;
        Thu, 21 Mar 2019 23:40:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553236823; cv=none;
        d=google.com; s=arc-20160816;
        b=LBGd14Jn7FHkzHEMJJir6WN0LfiB9MoivsxLQ7OquhICM9jRMsLng30MJLQU+z5IJJ
         IcxoHg82Ly8stC7ByB8rfxZ456k+JNlIkUHO0QPOd1v/kcOhARmAIEXd40jncCyZEoTN
         +EO7CPsqvbhkdMkXtqLYLexrrHBvjwDpT/bUhNrA7EMMlUcG6q1N1V5GgBzaUZaeiU7V
         r3FQSEpUQZn9HSZ3chKdFn1MgoOyzq1ToahmZNzB+v1dxqH+N1F65A1GxlWNgbXcDPpT
         Zru9xCdEqAgWFdnKHb0uRdquHda/GpjxUrVc160pVXyTNAySINw12iaJI2EI+VJV7Mml
         o8Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=xFlMxhTo15dwDpr6TcmtwBM4bypPKK74JudLg1lwcQs=;
        b=Tgq7JIW09Rkmcb/DTe7eDdT0XvPRWghaU2N8hD45t6gHa5hw6S3iLZVirHK7dfdhWZ
         8T03WA+cdmfEsE8LfrAt3GJ5cwhXtbNdtSZdqya7QaNSTDjSAgC/Fbu/fOFSyb/ckh5Y
         rbowInxhZ3qdYvkoDjd76k3QEg5KFhOamtle+K6zdYsK70excmk/NT67ozhKMV5illop
         S7SrgSV8M0fwc8x+b7uTr97I0d5f9cI3QBOz4JKoRN0Fm80aPgohQpb6Zxj3aoAkOfNy
         ue64v3rzct9qTH3GTuFkL9d/I7ombGRNcl43SgYhCoQbb2jopbG6e12VOpELF1pm9ZBy
         B/kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i17si19206ede.0.2019.03.21.23.40.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 23:40:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,255,1549926000"; 
   d="scan'208";a="375217159"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 07:40:23 +0100
Date: Fri, 22 Mar 2019 07:40:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Use !x in place of
 NULL comparision
In-Reply-To: <20190321093527.8167-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903220739080.2621@hadrien>
References: <20190321093527.8167-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Mar 2019, Bhanusree Pola wrote:

> Test for NULL as !x instead of NULL comparisions for
> functions that return NULL on failure.
> Issue found using coccinelle
> Semantic patch used to solve the problem is as follows
>
> // <smpl>
> @@
> expression x;
> statement S;
> @@
>
> x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
> usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
>
> -if(x==NULL)
> +if(!x)

This may have been accepted already, in which case don't worry about it,
but the semantic patch is not correct.  You need to use the S metavariable
that you declared.  Coccinelle paterns should be complete syntactic units,
so an if needs at least a then branch.

julia

> // </smpl>
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/media/zoran/zoran_driver.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
> index 04f88f9d6bb4..0a99e16e5bd5 100644
> --- a/drivers/staging/media/zoran/zoran_driver.c
> +++ b/drivers/staging/media/zoran/zoran_driver.c
> @@ -332,7 +332,7 @@ static int jpg_fbuffer_alloc(struct zoran_fh *fh)
>
>  		if (fh->buffers.need_contiguous) {
>  			mem = kmalloc(fh->buffers.buffer_size, GFP_KERNEL);
> -			if (mem == NULL) {
> +			if (!mem) {
>  				dprintk(1,
>  					KERN_ERR
>  					"%s: %s - kmalloc failed for buffer %d\n",
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321093527.8167-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

