X-GM-THRID: 6889250886437044224
X-Received: by 2002:a37:e213:: with SMTP id g19mr11301556qki.147.1604247285120;
        Sun, 01 Nov 2020 08:14:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:8744:: with SMTP id j65ls5759727qkd.1.gmail; Sun, 01 Nov
 2020 08:14:43 -0800 (PST)
X-Received: by 2002:a37:4f51:: with SMTP id d78mr11029292qkb.445.1604247283794;
        Sun, 01 Nov 2020 08:14:43 -0800 (PST)
Received: by 2002:a05:620a:2495:b029:142:7499:cf3a with SMTP id i21-20020a05620a2495b02901427499cf3amsqkn;
        Sun, 1 Nov 2020 01:22:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxY+KZWqC7kQBNOOX1xs34pHj6UcngmD7HxdqSuMbvustVMIz63KytzYC4S3ld/XWiEZCeL
X-Received: by 2002:adf:fd49:: with SMTP id h9mr14250689wrs.115.1604222540160;
        Sun, 01 Nov 2020 01:22:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604222540; cv=none;
        d=google.com; s=arc-20160816;
        b=XOA9y2wDQkxUKzVcSMTcLxi/Hjv97t5/DDjJVQbw6vlwbK0t+ZZiPSvSzw9dYvzxSg
         oA8t18fdLNPCPtiHfXCbygWiXjpvSyDgZzm94YxgD1FhV1ZpCOodlQ+DiFsegp/91Rs4
         9z6WtOfiCgPcXbkpTF/iJNa4loDDlqbSC3rYzf/ogrrGuaszIyy1zbla0zX5PNorB294
         e2n0XLeY1owGSVWOM+yVSAuwJDG3gCwmj1w5vMzS2m3unuY1rRxRzqMMS//JCQ2waL8w
         C7IcM+ujTwXlGjQgrv5Ydu3eTLJ7Lvjdc/jfjVQP2xMqA1pGNpslF1WfITmh/ysT2Kl5
         UtAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=DIePVJLm7jFmE7mVjhd4h6se4wOo+ayfAVqJ3ZjVSt8=;
        b=CBLawZ+1zUilgc80cIrGGadUCdCbf+Ha0W4I5jDimnlskEyCh/jVRw360k7PEoMmmB
         cWXb2MytlIvt/tKAY6D8mrZ9+kGCMrQkDsnRT6AGaa+l1T4s4itW5YCx3qN3mUFYpRY9
         ucKIqtV8gi1ualQnZWM/Clleqb5ILCMeobMula/EFefyFjZ7FHi8Q7AxwQWWY+mFzfzw
         DOyhiAKCkz7WkQO49gW/WJJDdAkXNJLJfcwLIIFYO73ogMheqKfq0rkqIS291/dXvLfy
         9gjpoeAiz2GhOS828INPmr7wMaI8SacC/PHaZwL5vr/Fl9JEA5M5zV20a6Z5p+Xint/M
         QF3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
Return-Path: <sam@ravnborg.org>
Received: from asavdk4.altibox.net (asavdk4.altibox.net. [109.247.116.15])
        by gmr-mx.google.com with ESMTPS id n19si270757wmk.1.2020.11.01.01.22.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2020 01:22:20 -0800 (PST)
Received-SPF: neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) client-ip=109.247.116.15;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
Received: from ravnborg.org (unknown [188.228.123.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by asavdk4.altibox.net (Postfix) with ESMTPS id AAF35804F6;
	Sun,  1 Nov 2020 10:22:17 +0100 (CET)
Date: Sun, 1 Nov 2020 10:22:16 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
	Purism Kernel Team <kernel@puri.sm>,
	Ondrej Jirman <megous@megous.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Subject: Re: [PATCH] drm/panel: st7703: use DEFINE_DEBUGFS_ATTRIBUTE with
 debugfs_create_file_unsafe()
Message-ID: <20201101092216.GB1166694@ravnborg.org>
References: <20201030033150.GA275009@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201030033150.GA275009@my--box>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
	a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
	a=kj9zAlcOel0A:10 a=S4BYaaioAAAA:8 a=pGLkceISAAAA:8 a=e5mUnYsNAAAA:8
	a=P2jyfWBKOuCc-NuxQl4A:9 a=CjuIK1q_8ugA:10 a=NWVoK91CQyQA:10
	a=gP6mnyLQ4wGU0PyH625T:22 a=Vxmtnl_E_bksehYqCbjh:22

Hi Deepak

On Fri, Oct 30, 2020 at 09:01:50AM +0530, Deepak R Varma wrote:
> Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
> function in place of the debugfs_create_file() function will make the
> file operation struct "reset" aware of the file's lifetime. Additional
> details here: https://lists.archive.carbon60.com/linux/kernel/2369498
> 
> Issue reported by Coccinelle script:
> scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Based on discussions triggered by other patches doing the same
replacement I will ignore this patch for now.
If the conclusions are that this is indeed the right thing to do then
please let us know so we can apply this patch.

Thanks,
	Sam

> ---
> Please Note: This is a Outreachy project task patch.
> 
>  drivers/gpu/drm/panel/panel-sitronix-st7703.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> index c22e7c49e077..89b71d4f810d 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> @@ -502,15 +502,14 @@ static int allpixelson_set(void *data, u64 val)
>  	return 0;
>  }
>  
> -DEFINE_SIMPLE_ATTRIBUTE(allpixelson_fops, NULL,
> -			allpixelson_set, "%llu\n");
> +DEFINE_DEBUGFS_ATTRIBUTE(allpixelson_fops, NULL, allpixelson_set, "%llu\n");
>  
>  static void st7703_debugfs_init(struct st7703 *ctx)
>  {
>  	ctx->debugfs = debugfs_create_dir(DRV_NAME, NULL);
>  
> -	debugfs_create_file("allpixelson", 0600, ctx->debugfs, ctx,
> -			    &allpixelson_fops);
> +	debugfs_create_file_unsafe("allpixelson", 0600, ctx->debugfs, ctx,
> +				   &allpixelson_fops);
>  }
>  
>  static void st7703_debugfs_remove(struct st7703 *ctx)
> -- 
> 2.25.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

