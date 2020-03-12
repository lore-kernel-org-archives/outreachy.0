X-GM-THRID: 6803023005726277632
X-Received: by 2002:ab0:1485:: with SMTP id d5mr4139779uae.129.1584001039036;
        Thu, 12 Mar 2020 01:17:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls76614vsd.3.gmail; Thu, 12 Mar
 2020 01:17:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsBL3u8XXEZ4U59Ka1A97d/YO6ZXZjR53qZHJpY5Xf3yNpBWJgO8Qc+8R8NCNI4mdzBVs7G
X-Received: by 2002:a67:320f:: with SMTP id y15mr4833152vsy.157.1584001037941;
        Thu, 12 Mar 2020 01:17:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584001037; cv=none;
        d=google.com; s=arc-20160816;
        b=e4Ah/rBelfQbm2FJ3xAdZB3CzZaP/FefROwzGhpd50FIh0kG20vaPrn3MLuXM3XAAj
         sy5SAIOhzj8+6f5Dw2Seqy0w8tfg6PpdLBq5rVDMYjw6a9NeMcCG2o+IOGkhZjemnyFZ
         UqeIL6EozBWmyQjr13Qw+1gnvLoqR4UgzhOu9bCeK2cbIsZiVEh19JqePkAgCm6bBmug
         1rIxJI83VsJb9qB7YTP4r6IvHq+KFFtTI7tXCqCFQD83jp7G42lofbB8oNaZ7a63Kf7i
         dSjAgT7wIBJiTVFw5kq9t9K1YBteHUJ+9RYsVH3EdHbzJHNVRNHShFVOH6GxRIi1I74X
         Rs3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=br463+BNJdEXY24KT5Th07AuwUENDqEpnBcevUEZxOc=;
        b=Qebvk/s92d6MxUg91QvTeywkjnQJ0RQvT34I6H8gbqOBfe+zm/7N11ydvptrNVp/rx
         xgr/2UV3mzQrnmMba7dpMYD/86Y4On6hdTgLMIt4dnQafXhE88TkTE/Ffu1K1OI1VZAk
         SEnu/O25hu3s+E/+MMbfUnPlVxOVxDEstBzvqjYaYnKnT85nlGTwBDhldJm4fXJcFCNG
         gGFK2wt6+QtV6Wec4dyPIbAGGmYsQksZGGQDxurlwdx5DCXlfNi5C7y+GNSWMzj1nypv
         7X/I4M62Aprzk0lVYUEa7tgyRNcChazlmttUxpqIlBUjvpM4B63WKivVtdpBzM1uBpWp
         UrQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BXdU5sIN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r6si275776vkr.0.2020.03.12.01.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BXdU5sIN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 63577206EB;
	Thu, 12 Mar 2020 08:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584001036;
	bh=PGNd0k/yHcnshZmUqk3dzj9QOBDQZr894TId5uQMdJE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BXdU5sINb8fdQM+Pcq3o/LjLCa5uu1gCjaZAUrJH46zbKLZY27cdhc/Fzcu2KTGiY
	 Tk773uj4kfgpQPFNE7rVGHvXgXM5YaaYGqVUH+s87/4VQS3fT/oOY+BI+MypSlHvUp
	 uPY5zY3drDWTV724p1ZKmH0Wu2QcTlHw1d/7XWfM=
Date: Thu, 12 Mar 2020 09:17:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 5/5] staging: comedi: drivers: use unsigned int
Message-ID: <20200312081714.GD11746@kroah.com>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-6-kgupta@es.iitr.ac.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311184327.25338-6-kgupta@es.iitr.ac.in>

On Thu, Mar 12, 2020 at 12:13:27AM +0530, Kaaira Gupta wrote:
> Change i's type to unsigned instead of signed. It's always positive.
> Reported by coccinelle.
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/drivers/ni_mio_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> index 06ed4b1dd875..034cf8dafaf0 100644
> --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> @@ -888,7 +888,7 @@ static void ni_sync_ai_dma(struct comedi_device *dev)
>  static int ni_ai_drain_dma(struct comedi_device *dev)
>  {
>  	struct ni_private *devpriv = dev->private;
> -	int i;
> +	unsigned int i;

Why is this needed?


