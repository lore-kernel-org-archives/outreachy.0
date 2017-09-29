X-GM-THRID: 6470117861435113472
X-Received: by 10.98.20.210 with SMTP id 201mr659087pfu.18.1506692062631;
        Fri, 29 Sep 2017 06:34:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.132.103 with SMTP id 94ls2032062ple.9.gmail; Fri, 29 Sep
 2017 06:34:21 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCIbgCL5cSeTJzFtG4fj5Fckn0Y7T9DK6/CCkzHQ1An86ZJl+USq2x+R1laM8Osrj6has5m
X-Received: by 10.84.160.227 with SMTP id v32mr687312plg.29.1506692061550;
        Fri, 29 Sep 2017 06:34:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506692061; cv=none;
        d=google.com; s=arc-20160816;
        b=NOsqL/41DWyQK0Tn2+NqeRQw90gmlLtyvwHQ3EIfG2eCpL+NzcSX6B9H8du4dMCBhV
         YmmqC7OxDxdSNIJ2AH65F0rANaALfXAw6xoQ7Ol4+m96bIov59M6PgkEys6J/+oXfrKC
         xbQu6pbe4kn/ljoETpkJDOLOIsJq9ZHaYjhdFkODQoQ6px/aI09NbDA5GoHenoGEbesH
         vltQiLPgasfwEhcpoVHD7aOy17PgaFUqrdnN+9gEIJdmstcHQn7fqhybLZcSz7lzB9Gf
         vasn7xBl8Df7DM7Cb5ZN9uYiOBpiNsETzzzb6EwmJhKlyZbM6sDucR0XDFD/OEQb+/+8
         5qKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=LejJt/7LeBda6jqNMEen/5LZOvNRuFGeYLDqKOystE8=;
        b=GRPFbsD9rUk25wMIHUq2aRfCbtacw5q+pDtsJonL+0iWZGCvVGYh+m51pkJFUfWD9g
         TiJLlFDXeBMXHdkNCiiusY+lm28ljqxlHxyl9RShsNCrEqP03iuG3+Y7cp+dR674joHD
         bqd8A0xOdI58manpDpQ8YVwO7i7M4H5yiqGAP6sB0agV+Z0LcTqTBigPO/wxj7VmQjM3
         s7HqxAB+UScXK1v6vIgazVVJrAIUcYLGebzjgkEH4pRRo8G7nMxht0zKEVTc3HnglXNw
         G+g0Z5cKts8qlEhQP+gpOaDiVgWbh73ZAHn3zD4Ot+kkHcrIkRQoUZ50zevq+EC8/JL6
         365g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id f13si556315pfj.11.2017.09.29.06.34.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 06:34:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [195.81.232.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B4E75AAC;
	Fri, 29 Sep 2017 13:34:20 +0000 (UTC)
Date: Fri, 29 Sep 2017 15:34:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [Outreachy kernel] [PATCH v2 02/10] Staging: media: atomisp:
 Remove useless 'out of memory' messages
Message-ID: <20170929133417.GA4057@kroah.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
 <6994f57188755df17d3ef47a36a4f4ec032dcb4d.1506436974.git.georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6994f57188755df17d3ef47a36a4f4ec032dcb4d.1506436974.git.georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Tue, Sep 26, 2017 at 09:01:30AM -0700, Georgiana Chelu wrote:
> OOM (Out Of Memory Manager) reports memory allocation fails,
> so there is no need for the error messages.
> 
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> ---
> 
> Changes in v2:
> * this is a new patch added to the patchset
> 
>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> index 5232327..8667466 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
> @@ -728,7 +728,6 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
>  	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
>  				GFP_KERNEL);
>  	if (unlikely(!bo->page_obj)) {
> -		dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
>  		return -ENOMEM;
>  	}

The { } should also be removed when you do this.  Please fix that up
here.

thanks,

greg k-h

