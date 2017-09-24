X-GM-THRID: 6469118697195700224
X-Received: by 10.28.236.83 with SMTP id k80mr260325wmh.29.1506236733172;
        Sun, 24 Sep 2017 00:05:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.154.16 with SMTP id z16ls2107416wrb.4.gmail; Sun, 24 Sep
 2017 00:05:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAmcTTHbHxoA4jOxoFtY3pVxoDbiTy1pRZArYvBFuaWjt5IKNUKHY3IQXjv5IR/3ayKuK+p
X-Received: by 10.28.71.131 with SMTP id m3mr267419wmi.19.1506236732296;
        Sun, 24 Sep 2017 00:05:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506236732; cv=none;
        d=google.com; s=arc-20160816;
        b=Wa7BGk4Y40cqEn1xKIelot2GpLTM7uRJTwI1fYCI9cw0WS4wZmn4FT0zMwf2v1VJYF
         SphW2zWiWQf0KLvXWPBFVqN9lUwnTSyUbEeU9SQlAjiT8rynzFlYwRALhoeDyi79R84t
         JlhhSFDYTfYYQmD6xXXH+BbQr/S73ssInyg9UzlQ8tV1Oqu/Yj8NIOREwUUoOa7zdK/k
         M7d4vejBGaptgYlR2UBfwbCKNw3SIIQwTH9edDFq2kvy5nNsyLAZ1rujd89ij4CwF5Cx
         IDu8Bu89HV90YlGViVB2tb15hsub03+/wq9mJx5y+M/5lZ9g+Bx66vCz56/FifRf8026
         MaRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ooqp4nMWgWlTJWBO28zPgy5Ebc9dc2goFBQ0X8Lef4o=;
        b=WaSDT9u9LxsB+Mr9iVJTNgZEqA40Hu8ifZrd1sX3D0ZoYF8RM34K86ebAkmjNcumt6
         kGFsw2+yEgtIpXJE0dXy2Gh4zzM7DjRskzemiAQzxCTDdUR1JRctPF+7jLrj2J8yHCTW
         JDb0cLLeH6q5zHO1GE0J5CzRAhUd5mMAyHCpnsrSdsMDvKsFakwljzg+xuWmIac2UuSi
         mpv1h//mZKT57H6o1BrJTIvouMVtnyysFjPCOda/mwfZzdbhAF2ofvPJeQd8BH/bbqM1
         ADcCMl9kcRUBcfrT/IMeovKcd0ZsluNy5wxahokagLmg5tXh5qmYTJMeZEDnLNDmZsVC
         DLEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d82si266324wmd.1.2017.09.24.00.05.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Sep 2017 00:05:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,431,1500933600"; 
   d="scan'208";a="292452952"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Sep 2017 09:05:31 +0200
Date: Sun, 24 Sep 2017 09:05:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: atomisp: Use
 kmalloc_array instead of kmalloc
In-Reply-To: <20170923232419.21625-1-georgiana.chelu93@gmail.com>
Message-ID: <alpine.DEB.2.20.1709240900140.2101@hadrien>
References: <20170923232419.21625-1-georgiana.chelu93@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Sep 2017, Georgiana Chelu wrote:

> Prefer kmalloc_array over kmalloc with multiply
> because kmalloc_array performs additional checks
> before memory allocation.
>
> Fix the following issues reported by :
> * WARNING: Prefer kmalloc_array over kmalloc with multiply
> * CHECK: Alignment should match open parenthesis
>
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>
> ---
>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> index 11162f595fc7..22dbd79fe123 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> @@ -725,8 +725,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
>
>  	pgnr = bo->pgnr;
>
> -	bo->page_obj = kmalloc(sizeof(struct hmm_page_object) * pgnr,
> -				GFP_KERNEL);
> +	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
> +				     GFP_KERNEL);
>  	if (unlikely(!bo->page_obj)) {
>  		dev_err(atomisp_dev, "out of memory for bo->page_obj\n");

If you want to make a series on this code, the error message here and in
the next case are not necessary - kmalloc will generate a backtrace on
failure that will make the same information available.  Alse, the
unlikely's do not look necessary.  The compiler can figure it out for
itself.

>  		return -ENOMEM;
> @@ -990,7 +990,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
>  	struct vm_area_struct *vma;
>  	struct page **pages;
>
> -	pages = kmalloc(sizeof(struct page *) * bo->pgnr, GFP_KERNEL);
> +	pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
>  	if (unlikely(!pages)) {
>  		dev_err(atomisp_dev, "out of memory for pages...\n");
>  		return -ENOMEM;

It looks like you have missed a call just under this one?

julia

> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170923232419.21625-1-georgiana.chelu93%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

