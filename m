X-GM-THRID: 6889250886437044224
X-Received: by 2002:ac8:2c21:: with SMTP id d30mr10725930qta.156.1604247284948;
        Sun, 01 Nov 2020 08:14:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aad6:: with SMTP id g22ls2889005qvb.10.gmail; Sun, 01
 Nov 2020 08:14:43 -0800 (PST)
X-Received: by 2002:a0c:db89:: with SMTP id m9mr12467075qvk.26.1604247283778;
        Sun, 01 Nov 2020 08:14:43 -0800 (PST)
Received: by 2002:a37:4685:0:b029:15e:d70c:89db with SMTP id t127-20020a3746850000b029015ed70c89dbmsqka;
        Sun, 1 Nov 2020 08:02:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwTal2rFldaM3Oytjn3hS1ucx3/pKhmAVunrGshA2QEERAQhem5LDRLEQIwmvFjmDktEgWZ
X-Received: by 2002:a17:906:14d1:: with SMTP id y17mr11866767ejc.15.1604246570085;
        Sun, 01 Nov 2020 08:02:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604246570; cv=none;
        d=google.com; s=arc-20160816;
        b=zIw0HcKViw3yA1Lqgv9BrptGbfqggoPxoIw31AjIvLU9GZyh0VH8LGh1mUMofRkdlK
         mt6uoPB5t5lqZOe1ToBuWgp4Y+zvy5x/fbM9Fo8CdoWGGsdfCKZ3sQhzLFp0Wek2Q+VZ
         RilYRIKV3Oh1wKVs1vwHSnXFNk+CNol+v9ajHQyv/Bdt2ds5XnXUsgpcWoTKkCs0HX3A
         gIKrePq/SN0Dbi8S/shcE1LAoZCBi+Q8e6/ZPxGf6MWuvbvhUDo/oAJkEWHxDktYDOUe
         wVfBJ3zrSdA2SXKYY85GTMSJP2blUZZvzZI620UpV94WonOsZJHQtA9dGDP4x2JQQSM9
         znRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=//f8AvNNc6uYFJLxeQTbxX7On6S99bmBSIKExbGJtX0=;
        b=o7QY8W5SCrjYXIaKLfRAPKKefIMLopfPCj7QxB+XKL7+T6UJN4pN3VLxTnRBwgRKTJ
         1kz91LksNRATyzL8rA6MkZNPbJ5dW2YQxCTFN1mKJaa/dFf0EVCQzAwhyQN6H+A6uwW9
         Rwt/QADlFgcfCLq9R8mSBy28sro9N5ZRrPd3JtnFy1caLegKB5Zjp/Z1XxdjB3RJFCHN
         Ny49iSiEGOO2OAjnCgIzhQXC1+2Ep1Nwga5qv8OiAUrzTgcNo8oPwISogxv2G5Ai8cSF
         6nwMBQ0TbUsgAKe1xY8sPAFwIOoZgY80a/F1aE9hc1hno1NMoedevcHluFR1XRLXZZ0f
         vpVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of agx@sigxcpu.org designates 24.134.29.49 as permitted sender) smtp.mailfrom=agx@sigxcpu.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=puri.sm
Return-Path: <agx@sigxcpu.org>
Received: from honk.sigxcpu.org (honk.sigxcpu.org. [24.134.29.49])
        by gmr-mx.google.com with ESMTPS id u2si414314edp.5.2020.11.01.08.02.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2020 08:02:50 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of agx@sigxcpu.org designates 24.134.29.49 as permitted sender) client-ip=24.134.29.49;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of agx@sigxcpu.org designates 24.134.29.49 as permitted sender) smtp.mailfrom=agx@sigxcpu.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=puri.sm
Received: from localhost (localhost [127.0.0.1])
	by honk.sigxcpu.org (Postfix) with ESMTP id 06A7BFB03;
	Sun,  1 Nov 2020 17:02:49 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
	by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sz3em8frl4Bd; Sun,  1 Nov 2020 17:02:47 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
	id 22DD74463D; Sun,  1 Nov 2020 17:02:47 +0100 (CET)
Date: Sun, 1 Nov 2020 17:02:47 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Purism Kernel Team <kernel@puri.sm>,
	Ondrej Jirman <megous@megous.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, melissa.srw@gmail.com,
	daniel.vetter@ffwll.ch
Subject: Re: [PATCH] drm/panel: st7703: use DEFINE_DEBUGFS_ATTRIBUTE with
 debugfs_create_file_unsafe()
Message-ID: <20201101160247.GA3193@bogon.m.sigxcpu.org>
References: <20201030033150.GA275009@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201030033150.GA275009@my--box>

Hi,
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

Reviewed-by: Guido G�nther <agx@sigxcpu.org>

Cheers,
 -- Guido

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

