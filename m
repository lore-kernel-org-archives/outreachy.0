X-GM-THRID: 6807884729429262336
X-Received: by 2002:a05:651c:106c:: with SMTP id y12mr10513735ljm.170.1585085094318;
        Tue, 24 Mar 2020 14:24:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4d15:: with SMTP id r21ls1373022lfi.0.gmail; Tue, 24 Mar
 2020 14:24:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtDWsoZ5UZXbmCDa1EpLYyE8I5kWGcEZUhY285usE7TS7ln94Yxc3u4AFokuKiTZJf8Uv4D
X-Received: by 2002:a05:6512:3191:: with SMTP id i17mr40868lfe.33.1585085092902;
        Tue, 24 Mar 2020 14:24:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585085092; cv=none;
        d=google.com; s=arc-20160816;
        b=agNtGk68yLgietZjUKajYXCOaw9tMwSGr4+/uFTxKaNZOUeDZNq3Sps1fld+w6sz3e
         eFTS6rNHqLwwW7qxhlDAYhtpEO0e/33VUIWzDTGiH+GYnUHPcZS8xa0OIC1hF4AZ0Lka
         wzihIO24oa2w88yBEP/9ihChM3JOHkIxi75PVjiQ+ATl6vEe0mTReJ4epcDEExyJQgog
         yGV2y8u+6rITKyRJYBK1CBaDXzjBRSjQwowO5Ggi8XgfWFwedBtUHOJWUOXPeS/Qx2VZ
         mDP0sUEyvayFJL2WpuCvFVRaHKglIb+/TrAK7KyKctS86kurReNWGo+wf/1gIAA6ikmY
         3Z9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qM6oYs0TcRkqH1LfIlvCqetUBzYOclcRMXcAeWP+69U=;
        b=iWlSKAf7zyCajepla47g/4u1KTey6rM2OJsbglVjg+tBlk0BcegrSpT5FJL3BlymKg
         5JW/wxqv45VR2l2+YMNjeqq1djUXUQkbAOD8V5bLqUdiRGiuaQOLH8wSJlojMM8q2aEL
         T5RswIaTOZm1MVEifRXIqPi7EbBeFClhzqUHDGC6LFf4stXMtvjcrtjIf56NmaLdYgfJ
         /avWuystIxEFVOEwg+gVR45uPnIE4+F6Cdh3RsR8cwRBlOe3pHKSmiaMaPiwYIO/Tavs
         TQ8YzvmT0yIp8pucJu1s/ReC5IfgYe3H8TWMkkhqLH9RksTi8cuaLv3SfpIbvhda/4pd
         PTfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m11si1033932ljj.2.2020.03.24.14.24.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:24:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,301,1580770800"; 
   d="scan'208";a="442012748"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2020 22:24:52 +0100
Date: Tue, 24 Mar 2020 22:24:51 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/6] Staging: kpc2000: kpc_dma: Use
 sizeof(*var) in kzalloc().
In-Reply-To: <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003242224130.3306@hadrien>
References: <cover.1585082157.git.jane.pnx9@gmail.com> <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 24 Mar 2020, Sam Muhammed wrote:

> Modify struct allocations in kzalloc() to match the
> coding standards.
>
> Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
> over kzalloc(sizeof(struct var)...)

You could consider why the former is better than the latter (although not
everyone agrees that this is the case).

julia

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

