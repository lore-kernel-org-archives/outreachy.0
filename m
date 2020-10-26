X-GM-THRID: 6885936091088551936
X-Received: by 2002:a17:902:8341:b029:d4:e3fa:e464 with SMTP id z1-20020a1709028341b02900d4e3fae464mr13731764pln.66.1603685165363;
        Sun, 25 Oct 2020 21:06:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7809:: with SMTP id p9ls1713979pll.7.gmail; Sun, 25
 Oct 2020 21:06:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvzvCVRZWqvhs6edmJFnHTf4eOh1QtKFdWHiqMRLZWaX0Zx4qLw9x94PouvWmEMaFM7Eku
X-Received: by 2002:a17:90a:1f07:: with SMTP id u7mr18045754pja.69.1603685163756;
        Sun, 25 Oct 2020 21:06:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603685163; cv=none;
        d=google.com; s=arc-20160816;
        b=xQpY+ljDe6IhSaoHRIniy6sLjlPP7LnTTDXjx7BmrewT/GeijBHcTo47djbJX0SJ7O
         h3cuCgrDqGzouPH4B4fUPpETF81oKaGwxnWED2A2anoeUnD5rlREFv2SjM53dEaTD3Rj
         4KO2WbPn3p/7uV12bOUg+AqEy+YyRa38wFPNupezW4oZ/CwqMAriX2VZpjzPKcfegGwN
         h9m56WLiRIP1a0uaE1ulITPk4Zt1pu1VJJmqXyxvtgsTIU4N6wbAnmYFPW6ECA1z119i
         U87GjVANslrdDc2Qq3dQ8gCXQWnVXkjeC0fcz+DcyaFEr5t087aLNlWJkKmguiAFDlmH
         dhZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xVfxj2SJXKZDQe2jFyLqHxnAk0B1Wn2HRYAoGKP3T2s=;
        b=xfTMOO+K6fHr1mIO+z8+h54Yq3di2Ub6oVHATmhmNT4FJre45/xgbbY4eQmjVFGsjq
         gf9gqSw8tnM+kWM/u4nYAZcIvVYyh36A07zKdEABlJtfoDGvJjkQDQOCmWiWCLOcZHUQ
         xD2x5u50TnjT0C9EQ77zpxVaCLkqfvcMQwBOIUQmSe6S0lR6avv4dgWlWFJA7947auCP
         cp0KqQ9xJgFs4nhgUl/mmDLQeULTZdIGKYvx8GTD10VsEkwe2ADSr8cTfNgOInAzZ0kh
         kxTRMlAbfITq4h9pK0j2ANOsHwwSskRlWhGtmjjIghQpD4NSyu32ZKpzuVfudO3Mr3iF
         Ovbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=alIttjOx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id p4si525148pjo.1.2020.10.25.21.06.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 21:06:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=alIttjOx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id b6so1179024pju.1
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2020 21:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xVfxj2SJXKZDQe2jFyLqHxnAk0B1Wn2HRYAoGKP3T2s=;
        b=alIttjOxictJHNfAP61wJMKR1D5PdIP9um/7kTsdrZrykKuYFNpM3dp5/fZDnFyrpQ
         Ix163nV8W1WrAcQepyqmQVN7ju0vHOHUw44S82v2IyoHQssdbxiiGXeShOiwwx3Y6CE4
         5V1KOpeeTdbYnqSNJYmTZFXqHgqfaNoHVW+kA5K+K3C9GeNq1qj+9KF1geIRxIuz2bqD
         GkDSiNJBJqRRuYkItZi+RZPH7crIiRYYNZIYc6qT8BxougqfrCmvLIU02utgMClR7EAN
         +YY8CRMl5WaqJsECrAShukt4sMUPpVPknj3VrVupXThyWcV9MiYu/dgiMmRvhABsOmEf
         DX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xVfxj2SJXKZDQe2jFyLqHxnAk0B1Wn2HRYAoGKP3T2s=;
        b=Xv3K105Q9o1euqWrE/5nMVvJYWjwfUPCZX1Kliur6S1dtOqGPqV8W/SGyb2L+aSOFX
         qEUHDXgYOIPbcAR1k+eZGxaGxCLOcHB+J+EqibpkP6aztvTcayg/TZGH7YDC8oBreUb7
         Z1WPSG1Ce0wedh1M54Av9/PHpYgIOESUsKd3s0qDNgi0zUrwoiDAUqzcOK72p0j0cf3O
         2QEsGA8XkexkkOe+lTfTSRfk2VN3AsXpE90egb37TxOcbFeLgVbIGBv+JdZ0YTOAg1Z5
         hxnMWR/gG1EmjiFXYQkUuDC16l9W7MHogSu41Qp87wousezuEeUzhI6E8G9e5IzST5Du
         Aoyw==
X-Gm-Message-State: AOAM531F0/4HP6DQZRvwbhMvePfb6Lpu0Fh5iDtRjlehFqoBELuUx8D/
	qgEgMH7ja7Zlncreu/f0/YU=
X-Received: by 2002:a17:902:b18f:b029:d5:e3d3:9b87 with SMTP id s15-20020a170902b18fb02900d5e3d39b87mr12131420plr.78.1603685163536;
        Sun, 25 Oct 2020 21:06:03 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id m19sm9339001pgn.93.2020.10.25.21.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 21:06:03 -0700 (PDT)
Date: Mon, 26 Oct 2020 09:35:58 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Cc: mh12gx2825@gmail.com
Subject: Re: [PATCH v2 2/2] staging: kpc2000: kpc_dma: rename show function
 per convention
Message-ID: <20201026040558.GD5074@my--box>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <8e02f6d8a4263971b90f73820fd855a31da3f8fc.1603264617.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8e02f6d8a4263971b90f73820fd855a31da3f8fc.1603264617.git.mh12gx2825@gmail.com>

On Wed, Oct 21, 2020 at 01:05:25PM +0530, Deepak R Varma wrote:

Hello,
Requesting a review / ack for this patch.

Thank you,
Deepak.

> Rename show_engine_regs show function to engine_regs_show as per the
> convention followed. The show function macro DEVICE_ATTR is replaced
> by DEVICE_ATTR_RO. Issue reported by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v1:
>    - Replace DEVICE_ATTR by DEVICE_ATTR_RO as suggested by Greg.
> 
>  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> index 7698e5ef2a7c..aa9f96793e59 100644
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
> +static DEVICE_ATTR_RO(engine_regs);
>  
>  static const struct attribute *ndd_attr_list[] = {
>  	&dev_attr_engine_regs.attr,
> -- 
> 2.25.1
> 

