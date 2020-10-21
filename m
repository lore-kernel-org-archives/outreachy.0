X-GM-THRID: 6885936091088551936
X-Received: by 2002:a9d:2a8a:: with SMTP id e10mr1357149otb.3.1603259393459;
        Tue, 20 Oct 2020 22:49:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:40e:: with SMTP id 14ls1075193otc.4.gmail; Tue, 20 Oct
 2020 22:49:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzVya0wItUaF8SsBxrheLF1PRa4IoFXKzsdd36Bb82nHxXmt5r4YoU09LiYv8Zn4Gw9CjXB
X-Received: by 2002:a05:6830:19ce:: with SMTP id p14mr1406943otp.315.1603259392185;
        Tue, 20 Oct 2020 22:49:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603259392; cv=none;
        d=google.com; s=arc-20160816;
        b=L39knFit/W6riIUSQ7cIm1qP6+EOXIsuohfCKlA3VRY5sJkxMjgEvdOiaR5+hBvwRU
         2UjnM2LjCI/QR5eECYaozi4NcaNPbh2yE53l6MIi+nK3j+w1KG5XAnc36Z4nfOxzMxi0
         qAGJpbOt0R30RQBDM1kTuD2hwfEcFtk8J2aU/jGYlHuAT2U+FJpcAn7q21Z6K8yHYL8I
         fAcn+XgIxV4MbDzr900uSpymyv7yjv33M5J/hvyUtVR3Tzr4xiRP1DbACmWWaZ9WC3Kp
         c+HSSQg3wmWZr/nCO2MFIOfVJCh+8EqgbfaN3lKMj1jBe2/rkchEYr9Z/05kx/f/uEHy
         rD0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U1BOs1xDWcVEIyehC+CxeCIZhqBDAHYzurgFvLN3yX4=;
        b=JX/0m+zVf6OmEMa7DLZccfMQGwC7Aiv/NMQZW3P3fISEjKQkEpXRw6uwWyBsmFNktx
         JHC7Z8jneGkQejtcmIE0Xu0pNWI2y/fJd4jjA8nwxnl6/KFNdXkfqeKMskMnN2CKGKnQ
         SSnKffx34tH0Sk4fXIDLEHsdyg7PX9Tc8YxUNm6NRufmU9BWtzSxbs3tLlZRmMwPOddy
         jYIDR2fniN5lajmsFYX+4oqmVa7UvOGtLzWX0Ny1pLWqd8FkdjGB1TTnnmCYc6F+/5jq
         DB8kPeJVGmKkgFEKxoh9X8bbwOfJ11K41UAVoWTlWaAkGzWGEtQC86EQebN+Sf2LzMKW
         vXPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1l88VW0c;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si79296otc.0.2020.10.20.22.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 22:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1l88VW0c;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6895322242;
	Wed, 21 Oct 2020 05:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603259391;
	bh=taOpv62xMFjvC91g/I0bBiGPpCcTG7wKO1QE0K78oxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1l88VW0cQcJEsH2SRohMJ+92fOAFGHxtxFhuFN48Y1Ys3dCarVt+eDhuDwdKQvlUy
	 tBcR8yFCfLpE0quNCbMrpwfQQCbD1/cuzOMBtGkUN/XlEksid2j34jO5MFRZSYrlco
	 00JBO5eHfBP2WvbPksSgQYbWjRfnmAD2PPU9xpSs=
Date: Wed, 21 Oct 2020 07:50:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <20201021055031.GA975815@kroah.com>
References: <273abf291f47286a702d2a53445e7a6efcf9972b.1603256795.git.mh12gx2825@gmail.com>
 <5d757cf6f97533b48aa471db6efc100acfb8f517.1603256795.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d757cf6f97533b48aa471db6efc100acfb8f517.1603256795.git.mh12gx2825@gmail.com>

On Wed, Oct 21, 2020 at 10:40:21AM +0530, Deepak R Varma wrote:
> Rename show_engine_regs to engine_regs_show as per the convention
> followed. Issue reported by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> index 7698e5ef2a7c..b6d1afbd452d 100644
> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> @@ -50,7 +50,7 @@ static void kpc_dma_del_device(struct kpc_dma_device *ldev)
>  }
>  
>  /**********  SysFS Attributes **********/
> -static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *attr, char *buf)
> +static ssize_t  engine_regs_show(struct device *dev, struct device_attribute *attr, char *buf)
>  {
>  	struct kpc_dma_device *ldev;
>  	struct platform_device *pldev = to_platform_device(dev);
> @@ -80,7 +80,7 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
>  		ldev->desc_completed
>  	);
>  }
> -static DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
> +static DEVICE_ATTR(engine_regs, 0444, engine_regs_show, NULL);

Shouldn't this just be using a DEVICE_ATTR_RO() macro instead?  Make
that change and the name will be fixed up at the same time.

And did checkpatch really complain about this?  What was the actual
message it produced?

thanks,

greg k-h

