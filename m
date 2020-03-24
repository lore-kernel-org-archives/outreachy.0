X-GM-THRID: 6807884729429262336
X-Received: by 2002:a1c:988d:: with SMTP id a135mr33503wme.16.1585085035990;
        Tue, 24 Mar 2020 14:23:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls95323wmc.0.gmail; Tue, 24 Mar
 2020 14:23:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtfL6L4KE/jGQKrZLPMVbm1d365csRp7F3XsKuiWRG97WXNK0D2nsLIXTv3gaN/8yAYQXMb
X-Received: by 2002:a1c:b7d7:: with SMTP id h206mr1245775wmf.143.1585085033447;
        Tue, 24 Mar 2020 14:23:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585085033; cv=none;
        d=google.com; s=arc-20160816;
        b=IEASlQaIHcDaRJhmSpbfjhkIo0aPKlZG2WN1qX4OQjROWHfYnxvjwQSAUvkuGNIqat
         XzSnOuPc0aTjBl6drcrLTzaVJT2CChJIde6Mj9yPyQDvtxvBzsHlSV1OZkASTwbdYPme
         zxX5JZTgP1l+Q5o2uH7FAqGO/uanC5vWlvSfKj/X1ov5DPqLMdVqb79ldHZmiJcoPXm2
         wRfRKvC9dKtXou4RbmnZFnmtVU5/ATvVSBecJ4g67khuiGcridfXoZe/9TdCTVfm4Gc3
         v2WO5tsAIRtUxIEI5y0sori+RZROKQjgKDFRZ6yuR6/UQIUUTqqV04l50UfPx0gFu7UU
         4FIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wR+NzGxu4oNzNEqrf9/skLn4AkQzP+QSI1vSi5dtoB8=;
        b=NK7zDAnCm709HjwsXPJcvGZoLrgaXEvUCn7XWYewk45v8k3f1a+rD3IfWgSqGrd71q
         arcwLJQ3bXyHfUPPEzgIvlJG10jZdOtCIrqy6ONzc4ME4wpenTGsaBzrKjV7nZuq9kZt
         du6TGiQsNRNzN53mYxbJqpB/f6UtGAGPr8kGlkmRjLUZdk9q7k/fEtimkbtTec8oaGvT
         rHM07X+Zh1h38DbNaNnEqvNkpjREyoT3KmBl5GDXw+GdmsU4rqLhlCf82OkJxiTDboSc
         ExRhHtk5Cvv3e6EhgpAZACGZz47kZ6+obGh9UsAbqn+74sYdW38Kxmx8L+grUsBphuCC
         tMWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d6si318125wrq.3.2020.03.24.14.23.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:23:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,301,1580770800"; 
   d="scan'208";a="442012618"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2020 22:23:53 +0100
Date: Tue, 24 Mar 2020 22:23:52 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/6] Staging: kpc2000: kpc_dma: Use
 sizeof(*var) in kzalloc().
In-Reply-To: <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003242223220.3306@hadrien>
References: <cover.1585082157.git.jane.pnx9@gmail.com> <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 24 Mar 2020, Sam Muhammed wrote:

> Modify struct allocations in kzalloc() to match the
> coding standards.

The subject line is more informative than the log message...  Modify
doesn't say anything about what you did.

julia

>
> Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
> over kzalloc(sizeof(struct var)...)
>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c        | 2 +-
>  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index 5eb6c5f24feb..21ebab7dbc7b 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -253,7 +253,7 @@ int  kpc_dma_open(struct inode *inode, struct file *filp)
>  		return -EBUSY; /* already open */
>  	}
>
> -	priv = kzalloc(sizeof(struct dev_private_data), GFP_KERNEL);
> +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
>  		return -ENOMEM;
>
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> index ec79a8500caf..25ea16a1981e 100644
> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> @@ -98,7 +98,7 @@ int  kpc_dma_probe(struct platform_device *pldev)
>  	int rv = 0;
>  	dev_t dev;
>
> -	struct kpc_dma_device *ldev = kzalloc(sizeof(struct kpc_dma_device), GFP_KERNEL);
> +	struct kpc_dma_device *ldev = kzalloc(sizeof(*ldev), GFP_KERNEL);
>
>  	if (!ldev) {
>  		dev_err(&pldev->dev, "%s: unable to kzalloc space for kpc_dma_device\n", __func__);
> ---
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9%40gmail.com.
>

