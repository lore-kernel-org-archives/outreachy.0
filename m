X-GM-THRID: 6752367287959814144
X-Received: by 2002:a63:6b0a:: with SMTP id g10mr13638953pgc.296.1572160375728;
        Sun, 27 Oct 2019 00:12:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b304:: with SMTP id i4ls4151694pgf.9.gmail; Sun, 27 Oct
 2019 00:12:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy6IrH+4ezqhoaWxSamSjt0CpiWJJqv4tcDJ24Ft0YUdgfMpyj+qD6Vts3EPPXXgdQ3rU6+
X-Received: by 2002:a62:ab03:: with SMTP id p3mr14105383pff.88.1572160374706;
        Sun, 27 Oct 2019 00:12:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572160374; cv=none;
        d=google.com; s=arc-20160816;
        b=XrrpR0XXmOsW5XuaiEpqZUyY0Ocz1yghqdSJyrHGNe/scENyonV9gRhwFf7/dBYHZo
         BKBJH+mtGgoi8HsHu5C5BR7FpPLHcBY2pFluCNrYEtVp0eDowCD9UvT8FB4eDARBY8rH
         Pmm/DfkHjf19Zzekr0n0RH1ps5hasP2tVW3bPstsU++Au9+9hll3OFhI37KWKmC8l3Gq
         KacMP4G920mwIvQ+0cpQvgCOzTBaLBjKSIsZxyUgVKtdfX7yGmRkBfNBlGNBhMjxC/MD
         pBeC1mbIlJsIEYC59syhCYrwK+I+Cd+YuZbI0hWX+TLgUhjONm1XYuqzvfnJya1cgx2E
         80dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7ZfOgMFIyanOuuPz0GvBlkavxPZnT+FwtlkjMZGzgOU=;
        b=ucMGGEkCINLV7fOhIlOqd5r/JP3NXYOwWeAGX+tCvKZUjy6oZo9DtkhyrZi1JX/chs
         qaA+SA5lEx+/s+kRFWOYaPhRewbXfuCcDq5VcP0CxP0nJ8IXl6iv7HpFQeTQcMJ9a5lL
         n1hLaA89fPJ+WRm2A2HUZQDePqmpD3NyRp261Sq6xFcJFiN4DbpyRHifLCFHfPTVkKDI
         ZkviVO8ry1NC5yBT8hbeaESZBGdy1K27UEbEnWE/CVFZxV/XjrTR+lIWVkuYyuDuSFX5
         I6WDjpwQLIrm1iRGhWdO9P+0b1jw3wI0wskXXUvX+6kQOO1GW++Lr1Evvxx98l+GJu4N
         41wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="OH8Ux/Tc";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v16si355000pjy.3.2019.10.27.00.12.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 00:12:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="OH8Ux/Tc";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ECCF620679;
	Sun, 27 Oct 2019 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572160374;
	bh=Z3xjgBRftTN1ovpK6SpaKiNT8IianwC7YBZpdVIF/Q4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OH8Ux/TcESlUfsiUIhF4+51DmPT7+pyCfUCAl8R8KTvSSJrAdw8pOEJi43d4AtIXj
	 L3IniGR/gCcT6VfCsanInULxw9CcEPCRR/IsDyUSWfEYPBt7bjEPqT8LnnYoxTLPhL
	 FVd4DtW304KUeGnQRR56zFchNL45YwI/f7N8qTD8=
Date: Sun, 27 Oct 2019 08:12:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>
Subject: Re: [PATCH] staging: greybus: Fix line ending with a '('
Message-ID: <20191027071240.GB1704509@kroah.com>
References: <20191027063338.GA27717@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191027063338.GA27717@linux-kernel-dev>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 27, 2019 at 06:33:38AM +0000, Frank A. Cancio Bello wrote:
> checkpatch.pl message:
> "CHECK:OPEN_ENDED_LINE: Lines should not end with a '('"
> 
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
>  .../staging/greybus/audio_manager_module.c    | 32 ++++++++-----------
>  .../staging/greybus/audio_manager_private.h   |  7 ++--
>  2 files changed, 16 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
> index 2bfd804183c4..1b52dd116e38 100644
> --- a/drivers/staging/greybus/audio_manager_module.c
> +++ b/drivers/staging/greybus/audio_manager_module.c
> @@ -70,9 +70,8 @@ static void gb_audio_module_release(struct kobject *kobj)
>  	kfree(module);
>  }
>  
> -static ssize_t gb_audio_module_name_show(
> -	struct gb_audio_manager_module *module,
> -	struct gb_audio_manager_module_attribute *attr, char *buf)
> +static ssize_t gb_audio_module_name_show(struct gb_audio_manager_module *module,
> +		struct gb_audio_manager_module_attribute *attr, char *buf)

Same thing here, your line is too long now, it's fine as-is.

thanks,

greg k-h

