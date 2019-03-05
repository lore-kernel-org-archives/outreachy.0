X-GM-THRID: 6664782574497300480
X-Received: by 2002:a5b:404:: with SMTP id m4mr620459ybp.100.1551772101139;
        Mon, 04 Mar 2019 23:48:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:60c1:: with SMTP id u184ls1909218ybb.3.gmail; Mon, 04
 Mar 2019 23:48:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqzYFWlZ1ghdKr8RsLdxq8Y4vhgJQbxNPb0dODfLbUWQ806/VjYX0LSYDwLoJtDNJUOvhtS5
X-Received: by 2002:a25:5cb:: with SMTP id 194mr518676ybf.23.1551772099035;
        Mon, 04 Mar 2019 23:48:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551772099; cv=none;
        d=google.com; s=arc-20160816;
        b=hcYCFlSF84tK+qfzYa83CtzCCQIC8jsF8FwV0b7xHCdIng9j2zF3QqB2rW8qqEHgPz
         PiB9xiuGvd8l+5VCP7KCndLq1BOA/LYOTgNjp9enOMmdDZH+hhrs+w9EcAgqDWAEdZid
         Tr/jlnSeMX2wVrUUGtoGdG86uazl0MB2ofRcm6dOUOOLWfqh/Y5RWz67wySZjvXECn9w
         H32p+V8q3KcfJ/QOE3z8FqmvIplQzrIRD2ONdePBxshwTncnlJ+GBl1U3YIYxnF0KUFF
         zyzse4CuH/bf5J9maXugHu2PEJJEad6oAOFpmLjlRiM6cyRp+ol2UI3NEbMC88dd2EbT
         CmkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=STmhcnftu0+7DxMTlSudDT6zY8pvKKlTDwYwsYPZUdc=;
        b=uYsRFzp0fuKxH5YUMdTN0I6wE/XfBmPLS8Ynza3Q/t4voPZMXE1pgk0rzPbYKEFgXK
         3Hd05gJboBi4iK7vK3yu456S6pkbu7IM/9QbehwTV5zaFqeS+pVyd4nBuuHbcIZGBx+g
         zyCS82mUMC4V2D2y0TQUH9ODpjSoY8KDYU/Ni7VPKskPrHD8yLH/uune0q8fHacVV4J+
         aOE4yEtqYlina+wAmg/YcR3LMwZbZV/XSJaOy3OFo27xtXVBdHQvfpfVkOb4SWazxbxd
         b1WHnEGDLFe0AwySmGz6Ak+opTaeeyMuhyurwJZpp2Sc6CelX6KbWJhWeofR6dCU173H
         WR4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yfd2MzuV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f23si419709yba.3.2019.03.04.23.48.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:48:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yfd2MzuV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 92D842082C;
	Tue,  5 Mar 2019 07:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551772098;
	bh=wWMmojjRYHOxr0mWavNTm3ZJcckoEiQvUCerHPPgkBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yfd2MzuVwn3YyYK5tpJKl9PObbGb2aG4B1LEpDktzDsHXgw3nO1G98se6brvmY4mI
	 HEvPrhhDX899RE6qH8e5ZfHj/qHnbUkgs+ctCC37jBA8wsaNOQlxO5up2qIyA3D4Bj
	 8ze8ZGkBUOtZQPF4rCpqN61eQA094WDvEuhsmA4s=
Date: Tue, 5 Mar 2019 08:48:15 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: fbtft: Avoid CamelCase.
Message-ID: <20190305074815.GD6158@kroah.com>
References: <20190305060005.GA7726@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190305060005.GA7726@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 11:30:05AM +0530, Bhagyashri Dighole wrote:
> Fix coding style issues detected by checkpatch.pl `CHECK: Avoid
> CamelCase`.
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/fbtft/fb_watterott.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> index 0a5206d..7e9c57b 100644
> --- a/drivers/staging/fbtft/fb_watterott.c
> +++ b/drivers/staging/fbtft/fb_watterott.c
> @@ -90,13 +90,13 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	return 0;
>  }
>  
> -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> +#define rgb565torgb323(c) ((((c) & 0xE000) >> 8) |\
>  			   (((c) & 000600) >> 6) |\
>  			   (((c) & 0x001C) >> 2))
> -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> +#define rgb565torgb332(c) ((((c) & 0xE000) >> 8) |\
>  			   (((c) & 000700) >> 6) |\
>  			   (((c) & 0x0018) >> 3))
> -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> +#define rgb565torgb233(c) ((((c) & 0xC000) >> 8) |\
>  			   (((c) & 000700) >> 5) |\
>  			   (((c) & 0x001C) >> 2))
>  
> @@ -122,7 +122,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
>  	for (i = start_line; i <= end_line; i++) {
>  		pos[1] = cpu_to_be16(i);
>  		for (j = 0; j < par->info->var.xres; j++) {
> -			buf8[j] = RGB565toRGB332(*vmem16);
> +			buf8[j] = rgb565torgb332(*vmem16);

It looks like 2 of those #defines are not even used.  Please make this a
patch series of two patches, the first one removing the unused #defines,
and the second changing the name.

But, this is a define, so all CAPS is normal for that.

How about changing this to an inline function instead?  That would allow
you to name it rgb565_to_rgb332() which is much more understandable and
provide good typechecking.

thanks,

greg k-h

