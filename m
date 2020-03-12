X-GM-THRID: 6803023005726277632
X-Received: by 2002:a4a:1ec3:: with SMTP id 186mr2185087ooq.66.1584001009935;
        Thu, 12 Mar 2020 01:16:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls1277655oto.3.gmail; Thu, 12 Mar
 2020 01:16:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs05eRRub4uC9b/zghVxQFxZ6+PTERHGq5maUpUKntDvdxRJehHM6qQeWaS0nEk0bKj1/jY
X-Received: by 2002:a9d:7745:: with SMTP id t5mr5593227otl.282.1584001008836;
        Thu, 12 Mar 2020 01:16:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584001008; cv=none;
        d=google.com; s=arc-20160816;
        b=BWSSCaiWMq7UoWQOni7f0wBRmgEi6o/bcT9IN78oVt2bkmLJFiG1Mx0ItIUVAcEaaD
         +ZW3ausWwZea7PzBrMZUNQ9WYWdn1HZ+dpCq2cNb/mwf/8rCp+mOwkqzlE+qS9gUonP1
         4gSAsn+tl0HS3BQLm181KvWCzdRgTQvrsBwQhNLiz1ERqiWBLlXWlzY4h1OxWk9WBp0u
         hDd6b5In1T5Jf4gAEKqq5usDqoXVdnKM448YzePaBtyAJvs/BEFPLvLCpXN91SaHBJPQ
         wLWSmy2NN48OBVASiigQOLcqo04ROIdX7JZ2rbysjGcpLFil8qtlqM8iEXoz/YIYi9np
         xRSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7pidaUUES8XrdfCGntxHbGr3NCVqOfheyRgJm57Cidg=;
        b=KEecd/1rxj8O5VGTqVUthna6wo71EdMcgXxpNmZOFMuUOmY5gRQ6/VFcIwA95H76kx
         OkO8c3GBNkVa47cBOxh74z0RAXg0aw+k84jxYJHmF4HNT+9My0VFn3397/nsM3omPOjL
         Y7ZKQDXf7umz2CUgUQDGCf28QIQ+LBQEHDtjdZT0Bzzx/gEj/RiuLa1iEzlD6eJgxY4M
         ylxG+KfYPBpPIluIR9/5go9QcIcbtGTLmtsnSpmhPQGXX/oeb2/JB/Q6JZ0Ux/fQ4nbl
         aHfsDKIFzvHzC48XKLNtzm60ESa0mJ4k+IemmrOD8s2zq6FVxCo7JxYiDJ2S3/oZ0g0a
         MMlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=N5dYdNqh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d11si318291otk.5.2020.03.12.01.16.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:16:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=N5dYdNqh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6F6DE206EB;
	Thu, 12 Mar 2020 08:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584001007;
	bh=ZuHhCeJgRx2hjpkz3NivHuEnvHQiAb88uO5799UurF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N5dYdNqhtoIWiYAaA9j9Lh0wRjGxULsVe564wF1fK+3UyWrWwvI32pCf+Y1m38QBB
	 6EqGlyIW3+/7IpgwTaWHHG1bcijWrljkU9nmSQDgZb9lvzu2cgA79PG4PnEScxQJyD
	 LXWyqpBg5gbk/atu8lRGV86RXmsgG83upC/6LXS0=
Date: Thu, 12 Mar 2020 09:16:45 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/5] staging: comedi: ni_mio_common.c: reformat code
Message-ID: <20200312081645.GB11746@kroah.com>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-2-kgupta@es.iitr.ac.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311184327.25338-2-kgupta@es.iitr.ac.in>

On Thu, Mar 12, 2020 at 12:13:23AM +0530, Kaaira Gupta wrote:
> reformat the arguments given to ni_stc_writew() to increase code
> readability in ni_mio_common.c
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/drivers/ni_mio_common.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> index b72a40a79930..06ed4b1dd875 100644
> --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> @@ -2445,9 +2445,9 @@ static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>  #endif
>  
>  	if (cmd->start_src == TRIG_NOW) {
> -		ni_stc_writew(dev, NISTC_AI_CMD2_START1_PULSE |
> -				   devpriv->ai_cmd2,
> -			      NISTC_AI_CMD2_REG);
> +		ni_stc_writew(dev, devpriv->ai_cmd2 |
> +				NISTC_AI_CMD2_START1_PULSE,
> +				NISTC_AI_CMD2_REG);

No, the original is correct.  What caused you to want to rewrite this?

thanks,

greg k-h

