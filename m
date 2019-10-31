X-GM-THRID: 6753896393761357824
X-Received: by 2002:a9d:7219:: with SMTP id u25mr5052710otj.342.1572537410629;
        Thu, 31 Oct 2019 08:56:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:a65:: with SMTP id 92ls651140otg.7.gmail; Thu, 31 Oct
 2019 08:56:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz3dEZUhALnhhztHVzaBb6NRJgXfp7M3Lr2XIjo9jHc2/VBNFfjyJVFom4EFATCFNUstBk4
X-Received: by 2002:a9d:6205:: with SMTP id g5mr3670977otj.244.1572537409680;
        Thu, 31 Oct 2019 08:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572537409; cv=none;
        d=google.com; s=arc-20160816;
        b=tW/YqCSISLOnsgfctR0IDIkPNI8q5MC3w8atJymCjJJvuNaaCDQXL/JvXXf3u7uQ0W
         AYqhtOf35PxnXjWdnYLP+6M/jxOcxxtCYBL8WAHXP5HfiiZJY6fAwz4Hu2nVr2GIPENj
         1rdNCe2XOm7qNTTRSluZkT7J4R7QpT6OL4gXdNxS03lFRNwdudIwYJIRZgSGH+epRxcz
         Z2HZYJR9fSuDrqk/8DFYy6oxls36WKjhDuxiMqfox05PVNK4y9Lx+yfWDkX63YMzvjbc
         OYif9RKEcoGrZevRa7lyCAVPFwMaXC/dF9k8QRtPqcFwjzd+QxFVxoUhFqL4w9pwP1uX
         TxTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3Rl21jHvGJGTyEDFFbOfFMu2w9v1w0lArYmFkJufQVE=;
        b=Qltj+6HMwPbW14k8d6DMD/cRmHDKUjEWJuOL2AqV+0Xc4r6tAAt8BIPuCN7vUe5CMn
         cScQwRnk6qRawi1m7qhEYP7fbdM7hc4vp3kdHunECsgJfS7cnbP4DZITqFlOmlLYqgNQ
         tRhfDbqbi4sWTVtPuWKxltKVd5ebllafO6pRY00YXEmLNnFGlSGtkIO5rOX3AU7wOaSe
         WFERKKDKA7cc9PcxAXH/AGvJrMeublqzx2LZnS3Pw0nLv7olMfQEMRSjnPgXTG0wZrkN
         0StwzHJnMsjoO4GNbysk02NULpwkG9PmesFNinAHcx0hPBad/SDA7xirGJRlbiVg1itu
         oCww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NP8AeiMJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 144si259840oii.2.2019.10.31.08.56.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Oct 2019 08:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NP8AeiMJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5D5B32087F;
	Thu, 31 Oct 2019 15:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572537408;
	bh=irXflQRVOtrHNHNoii7I4XouvEQzEvw59lPpWNy3Haw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NP8AeiMJ/ZuP2QdJkpmmxL+twvX8Ehjz42AguvDr9/jZJIsddLlD+8WMOiYIKUy0c
	 MSixHEwUQWLqvvPIeyK3OyCk7OyoNzbmx3gEn58i2VGmlDsAjPISs+sJYcbqXFMjv8
	 oE47/0D98kA5S/qS3XpLQSjczFTvWq4TzuryrpAs=
Date: Thu, 31 Oct 2019 16:56:46 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net
Subject: Re: [PATCH 1/2] staging: vc04_services: Remove typedefs in vchi
Message-ID: <20191031155646.GB748425@kroah.com>
References: <cover.1572513863.git.jamal.k.shareef@gmail.com>
 <c558be2e5faa156604a46f695961ebf79a5cbe26.1572513863.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c558be2e5faa156604a46f695961ebf79a5cbe26.1572513863.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 31, 2019 at 02:27:12AM -0700, Jamal Shareef wrote:
> Remove enum, opaque struct pointer, and function pointer typedefs from
> header files and files which include them. Issue found by checkpatch.
> 
> Remove unused API typedef in vchi_common.h because it did not allow
> patch to build.

I don't understand this sentance, why is it in the changelog?

And can you break this down into "one typedef removal per patch" please?
That makes it much easier to review and verify all is correct.

Also, one note below:
>  // Opaque handle for a VCHI instance
> -typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
> +struct vchi_instance_h;

Why the "_h" at the end?  Shouldn't this just be:
	struct vchi_instance_handle;
?

thanks,

greg k-h

