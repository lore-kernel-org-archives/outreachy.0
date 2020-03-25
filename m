X-GM-THRID: 6808044843867045888
X-Received: by 2002:a92:7a0d:: with SMTP id v13mr3354924ilc.175.1585139976058;
        Wed, 25 Mar 2020 05:39:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9ac1:: with SMTP id x1ls351236ion.11.gmail; Wed, 25 Mar
 2020 05:39:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvjcBHlPdK9/KM9jP/W1wnVlNqW9gnlpfD/A2pI4FOtVxMS7mj474IZne+1pwempXjM9S3Y
X-Received: by 2002:a05:6602:210f:: with SMTP id x15mr2810786iox.34.1585139974947;
        Wed, 25 Mar 2020 05:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585139974; cv=none;
        d=google.com; s=arc-20160816;
        b=XJAEaiwT+pvBEVrlhIcydYpipnT3AKXs/X/UE81mdNh6FnA5fA2wA8HK3GPWIuEJzp
         C330hVCUqVfgfZgDRbyZX9mFCdaerGAUkgfBFnvWKMwC3C0ClbqU0NUGsUo08iTk0TKi
         g8rVjYLVRI/QcNX9d3pAVLlDz1zo2UP/BDBr0gpQtJbq1hUnfwSvuX6SfnGRPkyvbHrh
         squ5nt00kEDg3RNN40YR3gMBuUxhEmajypkuopxPpLfpkYyHLj0lvLuG4OgM9nwv+3Tm
         q8kCweT7JnBSltMVhI3UyxP8nnW2zVvLHAPfTCg6Bp5q/SZBA7Y6gWALBApgiRgdfgeV
         hVbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lddoH1SozIg/wjLZMGpRpvFtUOVq26N2GE2bity7C9A=;
        b=0D2BoHp1jyzji/cvj1TPfhfXqtOO+dHuy3hX+SlSkbNJrUj4EoXkdfk5MND8fGVeKI
         pZUEUbns7YYiO524q3hLcrGvUk4ihdF/3Shfscm0MkpcroDPhaF3SG9sgC1BRyNlCjEK
         t+UTcmnZaoWs5uhMwoO84BAyJzOXNWn5QTS3a6XBtglXrrahcxwyn28j/Gk1If3C0hXI
         TYFJqW+HrbGeg7x+q4jAUXT8TTrz+l4cjcJGfubA2a3m0di/jLF0rDuwlcrT/VIi7zt1
         f3Qhtea7xsq4kX7CQfLNThQPpJtx73Q5pboJXJFkEuaXq2OWZ7yLE7VZQIoX+KWUXd91
         uE9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tbKQ8XrO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u6si1647336ili.3.2020.03.25.05.39.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tbKQ8XrO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C64D12077D;
	Wed, 25 Mar 2020 12:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585139974;
	bh=fCfrXOpaFtqANoxXgT1yCkCq7hU9tzAHnEp63rqFwsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tbKQ8XrOLuaUQ58eUKMF5rkUAkOi7UyrNWj5ls27lCdDfTqQBdv7Vof35ANKM0MUy
	 sQZA8j3XH54/XnDBOjurQQHNt2EBdcQOsnmLk14HXUFVCvvp7owjF9b9te+DIwN1Z/
	 n5AL5kpSEhgop8uqcLwl2dqJFB9ilsOV9xMG/lUw=
Date: Wed, 25 Mar 2020 13:39:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, perex@perex.cz, sbrivio@redhat.com
Subject: Re: [PATCH 2/6] staging: hp100: Add blank line between end of
 comment and function definition
Message-ID: <20200325123931.GC3454907@kroah.com>
References: <20200325072905.29066-1-debsoumyajit100@gmail.com>
 <20200325072905.29066-3-debsoumyajit100@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200325072905.29066-3-debsoumyajit100@gmail.com>

On Wed, Mar 25, 2020 at 12:59:01PM +0530, Soumyajit Deb wrote:
> Add blank line after end of multiline comment "*/" and start of function
> definition for better readability of the code.
> Reported by checkpatch.pl
> 
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index d421b2978ae6..0614366ef914 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -348,6 +348,7 @@ static __init int hp100_isa_probe1(struct net_device *dev, int ioaddr)
>   err:
>  	return -ENODEV;
>  }
> +
>  /*
>   * Probe for ISA board.
>   * EISA and PCI are handled by device infrastructure.
> @@ -1095,6 +1096,7 @@ static int hp100_open(struct net_device *dev)
>  }
>  
>  /* The close function is called when the interface is to be brought down */
> +
>  static int hp100_close(struct net_device *dev)

No, please do not add a blank line here, the comment describes the
function.  Not very well, but that's a different story :)

thanks,

greg k-h

