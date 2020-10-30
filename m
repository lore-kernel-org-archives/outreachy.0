X-GM-THRID: 6889248551394607104
X-Received: by 2002:a25:e053:: with SMTP id x80mr1532885ybg.382.1604041835841;
        Fri, 30 Oct 2020 00:10:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:a268:: with SMTP id b95ls2509189ybi.10.gmail; Fri, 30
 Oct 2020 00:10:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxhgg0vEzuK2YcbIWavn2kRCpSPwYxOJvgeMQmyq9MNli+6z0SIEWv+r3K9H0yJMnVos+x9
X-Received: by 2002:a25:e6d0:: with SMTP id d199mr1825023ybh.398.1604041834022;
        Fri, 30 Oct 2020 00:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604041834; cv=none;
        d=google.com; s=arc-20160816;
        b=nZxnosF2q0FlaNVn8+dyGd92NjaulAcDyFykaWnnQGRwIalRoFPsx9B8uIvUG1V4pz
         Zr+uB9iZlfqVUTEwd+pwUQrGRGyFUsGTdzy6yQKARYS/C0pw6C1jkmM+DOSbdNpuVxfX
         qvsQvvxLGX/IR2rAOJdzAZLQlRsXVVazucdaxHenAkPTAdd1gcdnd4CeMEAjiVsBRQCA
         WsbJHlAUnyhxSc7y88OsEFGXKU66mhV/AFWIvcXv/ONQ+X934UCUlLP3CzwnsGvwD753
         bYEday4LhWv1141Fpo5dUacBx4NRqwwBNbBr/D0kpEUt7K/Ej3UencyYFUKY9TeWhXpX
         f3zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qSGvMnq7wt5MrQXXO3LNSCv8hGR7UtSHkhjqrccTkYM=;
        b=cdOVeTZd+lluiRj6BAtR6pz/shEvj1O3pP5Hp+GMOmV5E2SZdAFHV4vv5OBfuCWBbq
         R+01r5ZV6Ao15Il9emDK0zIlRJW22T/KnXyynHSO5OGYZobyYm8Mfw4xrDULVjK+fL9t
         72Nxjhi8uCcKcDCcLDod4c95V3ZEZ8G/pUBrg3d66Y2bVlM5ymH7JjO2GLKygM9qMivN
         K9y+VKgHGLcD/iYTvO341UDRNoZnml4A2GDhboYs+9DzTXDwFsHIxw+YSbQ1cdwlGshR
         wR517xaO7Rhu4iTL5ZfpDUJZd/v0YnDwmdz8hJdRL+S+NWOwY+Kr26B5GmKljJbPxqtn
         ssqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="wp8/hvRE";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r8si347994ybl.1.2020.10.30.00.10.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 00:10:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="wp8/hvRE";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1665120723;
	Fri, 30 Oct 2020 07:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1604041832;
	bh=6UZfI9KlukChYkAwmZBY+j32nu5aC1F84wLitkAFcHg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wp8/hvRE/LfhJJ1P3TNOzq9lgzVnDlBRiSdLAl6MZXbf1TkKDHk95RR2Xjzd6+IUb
	 tgKDQcRYbI6wWvk5mHsZThQB/1uDo+V8qIpoGs4X6ScEv9ONzxbN9egoDEZGb29nxz
	 T8j3F0UclYetTTGfjJGzHyDJSfrpyLmCI0/UquMY=
Date: Fri, 30 Oct 2020 08:11:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, melissa.srw@gmail.com,
	daniel.vetter@ffwll.ch
Subject: Re: [Outreachy kernel] [PATCH] drm/amdgpu: use
 DEFINE_DEBUGFS_ATTRIBUTE with debugfs_create_file_unsafe()
Message-ID: <20201030071120.GA1493629@kroah.com>
References: <20201030032245.GA274478@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201030032245.GA274478@my--box>

On Fri, Oct 30, 2020 at 08:52:45AM +0530, Deepak R Varma wrote:
> Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
> function in place of the debugfs_create_file() function will make the
> file operation struct "reset" aware of the file's lifetime. Additional
> details here: https://lists.archive.carbon60.com/linux/kernel/2369498
> 
> Issue reported by Coccinelle script:
> scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Please Note: This is a Outreachy project task patch.
> 
>  drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> index 2d125b8b15ee..f076b1ba7319 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c
> @@ -1551,29 +1551,29 @@ static int amdgpu_debugfs_sclk_set(void *data, u64 val)
>  	return 0;
>  }
>  
> -DEFINE_SIMPLE_ATTRIBUTE(fops_ib_preempt, NULL,
> -			amdgpu_debugfs_ib_preempt, "%llu\n");
> +DEFINE_DEBUGFS_ATTRIBUTE(fops_ib_preempt, NULL,
> +			 amdgpu_debugfs_ib_preempt, "%llu\n");

Are you sure this is ok?  Do these devices need this additional
"protection"?  Do they have the problem that these macros were written
for?

Same for the other patches you just submitted here, I think you need to
somehow "prove" that these changes are necessary, checkpatch isn't able
to determine this all the time.

thanks,

greg k-h

