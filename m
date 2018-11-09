X-GM-THRID: 6621495393645494272
X-Received: by 2002:ab0:23c7:: with SMTP id c7mr8211073uan.17.1541785639317;
        Fri, 09 Nov 2018 09:47:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2145:: with SMTP id t5ls232554ual.5.gmail; Fri, 09 Nov
 2018 09:47:18 -0800 (PST)
X-Google-Smtp-Source: AJdET5eVUStCaHvE+MMYxGgPSwxK8qR7kKG0tkoBJ+AM2PZAqgA6WGh6QC9V0H4cZl09B5Pjc2dO
X-Received: by 2002:ab0:6401:: with SMTP id x1mr8210603uao.19.1541785638560;
        Fri, 09 Nov 2018 09:47:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541785638; cv=none;
        d=google.com; s=arc-20160816;
        b=oObkR3Huy+A3dEEcv5+zTqZw9qVrrTswakJ16bStwMeBTsR+cGA4DOaAWeq+z8c1cj
         F0i/BPJIRAGq2v3cs/OXRVfMTTh2vPaAWXL9bU1tAkArFzwZMs0DAqxTnEk4k1oDydm9
         eeyKAIMoWfzcY3X7+uylH9lFjCN6YArcbFgzmDFRvF67WzLN00H5Ucon3eJVss6dS2Rr
         WE/KqKT3aRqr1RX27K5pp8Oq5OvLvGYegsStPK+HX0EJZRDuWi8oFpD5Wffl/rJ6iLnl
         ckkqA/33lfb8M7LwPqX2CoJUZzA9pZ/OrW7ndANa/PqzzGNswb7GAq+3kxQc4zs5nXp7
         1Acg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gGNpWvUWmoHGr0UscrZOMRSVdwnkVsCo5+IoLoH+vsU=;
        b=fVnvO4L5e1+P4F8rcJzQ+5l3b/JotGdk9RzL3rDeUH5iX4SrRoZIVrEjpuqPl/QpGw
         bV7Wjce2qEsna6bhUchnUGkS0CLGfLNjumaZTP2KHc4c8xqWhWgZGylG5OQJGD5bXe77
         FCzvzEL6TRg7NrFa+WxPgRWiJ/Pbg/jAI2BR4oIe5wCdQsafRc1q/uxEivMSWIriQknF
         asme/OYGgsbiFhkrHpOjRm4ke7QVg5agmbDBfBcpdARPGuR/z94ALytMDHf3pJ4ww3iK
         i4krrcXivUNSCOUs7SDjC0hlP0SS80K56fS9bIC/ASewqz2w30LyoExibinBX80GVqgm
         rLVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RzxBh/lF";
       spf=pass (google.com: domain of srs0=8jp/=nu=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=8JP/=NU=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=8JP/=NU=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t15si475940ual.1.2018.11.09.09.47.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 09:47:18 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=8jp/=nu=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RzxBh/lF";
       spf=pass (google.com: domain of srs0=8jp/=nu=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=8JP/=NU=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (71-6-98-120.static-ip.telepacific.net [71.6.98.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2F71620827;
	Fri,  9 Nov 2018 17:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541785637;
	bh=J4fKoqtGvTOL1AiRUx2X6BdEBCuKktNxulAFnQnKoDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RzxBh/lFdjwG2N8QMXD2wrwKP99SN1mur7U1yssYWDp54B5xCxh3OCHkI3sDIr6D4
	 tFGSc3FdDSfnGh+SEKPvSS96WgTxtTiYfblr4cogqZiqQKUgrtFd6+1kembz1J40E4
	 4wXTg84vFziwO6G7mGM3AIy1cc3oZ5jL99dhBZ5A=
Date: Fri, 9 Nov 2018 09:47:16 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 03/15] staging: greybus: add a blank line after
 declaration
Message-ID: <20181109174716.GA5821@kroah.com>
References: <cover.1541771591.git.code@wizofe.uk>
 <8a1f2c0553ce7d4719c5684370c78c0638624378.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8a1f2c0553ce7d4719c5684370c78c0638624378.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Nov 09, 2018 at 01:53:39PM +0000, Ioannis Valasakis wrote:
> Add a blank line after the struct declaration.
> Reported by checkpatch.
> 
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/control.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> index 643ddb9e0f92..9c453e0b1b33 100644
> --- a/drivers/staging/greybus/control.h
> +++ b/drivers/staging/greybus/control.h
> @@ -24,6 +24,7 @@ struct gb_control {
>  	char *vendor_string;
>  	char *product_string;
>  };
> +
>  #define to_gb_control(d) container_of(d, struct gb_control, dev)

Traditionally the "to_SOMETHING" #defines are right after the structure
definition.  So this is fine as-is.  I'll just drop it from the queue.

thanks,

greg k-h

