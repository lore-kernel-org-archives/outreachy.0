X-GM-THRID: 6463137391711354880
X-Received: by 10.28.128.131 with SMTP id b125mr17280wmd.18.1504820758519;
        Thu, 07 Sep 2017 14:45:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.43.71 with SMTP id r68ls39921wmr.14.gmail; Thu, 07 Sep 2017
 14:45:57 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4JSHFg7FdsGrBF9qEC80ZAnU8hj4us5qbOJY62j/oMhqG/4hLNQyF1KTIFatCfcyvcj2a/
X-Received: by 10.28.145.206 with SMTP id t197mr19613wmd.11.1504820757437;
        Thu, 07 Sep 2017 14:45:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504820757; cv=none;
        d=google.com; s=arc-20160816;
        b=c93cfhDCY6176m816dHBMcVey6j0yJo/tacSKuLvJv26rpmW7oZ8hd9lmLlWqKey5K
         ro+mBR6DbhO6ZlD+auBQ1JaASUB9X+HqAOa9f0CyH5CrCmV/+TK58HK0oCJumMv1bJMc
         6mmQoOQCTVVTLfb/xhjvgjdu1i6Y50RGxB9rxFLP+CHhIpudJBcOw3jYyHzVldjVOVFB
         VUygyhnpJqtvwg26aSce0H6fK/dbdN2dGUiXPH9NUO4e3nOLUNv9K+DJGE+IHg4MJLqm
         GcWXerIZCjKWJquct1ekSerXOvnCNUEW3l7/KwG+QjWzo6AorZrGMAw+cSrgzQgXE5kA
         92+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=0FliMc4xqL+GmIdI96JatsIypM630joJjQA9ex64gTc=;
        b=bRphhLQGhm4+2yNhYlgMRY2kdZPJbCJGXYiucAsb6SyRNC+oNSIKimKOnUsQc81D3K
         c6ARoSrcOszucXoSEI9vS/p1v2NF0bD6Phu1xHY/neoA9X2WW/Ko5rVVhVvfGXd6/bK3
         c4tntZgmq3tn1qjBM3itm/IJLEVdepyRElbKBgiFgDI6yzBZKO1Q1yk2YzTuiBEj+fjI
         HQzJ9WRZ+EZxummG61Yn9b3aqSKWDAgpWvANQYTb/l9z9qUH/pbPNdUyyEhsbeNE75sF
         epNogq90wLa5UL6fUTaG4qwQuC6dsOo3oqXFpBhEdkn6UPOleD/U5LNrbM+5s01dz0UL
         v0RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b196si9270wmd.2.2017.09.07.14.45.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 14:45:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,360,1500933600"; 
   d="scan'208";a="290072714"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Sep 2017 23:45:57 +0200
Date: Thu, 7 Sep 2017 23:45:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: harsha <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:pi433:pi433_if.c:Fixes minor
 typo errors
In-Reply-To: <1504816316-9331-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709072344310.11126@hadrien>
References: <1504816316-9331-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, harsha wrote:

> Fixes checkpatch warning -- "occured" and "succesfully" are misspelled

Thanks for the patch.  The change looks ok, but the subject line is not.
Use git log --oneline on the affected file to see what others have done.
In general, you cannot guess what the subject line should be.  But in
almost all cases, there is a space after each : and a filename, if it
needs to be included, does not have an extension.

julia

>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
> index 6b9b7df..6a10478 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -473,7 +473,7 @@ struct pi433_instance {
>  	}
>
>
> -	/* rx done, wait was interrupted or error occured */
> +	/* rx done, wait was interrupted or error occurred */
>  abort:
>  	dev->interrupt_rx_allowed = true;
>  	SET_CHECKED(rf69_set_mode(dev->spi, standby));
> @@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
>  		if (retval)
>  			return retval;
>
> -		dev_dbg(&device->spi->dev, "%s succesfully configured", name);
> +		dev_dbg(&device->spi->dev, "%s successfully configured", name);
>  	}
>
>  	return 0;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504816316-9331-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

