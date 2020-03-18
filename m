X-GM-THRID: 6805399652543758336
X-Received: by 2002:a92:c7b1:: with SMTP id f17mr2398533ilk.288.1584511242948;
        Tue, 17 Mar 2020 23:00:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8787:: with SMTP id f7ls4015184ion.3.gmail; Tue, 17 Mar
 2020 23:00:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtSRlngL6ixPJEnMf+SPGvWYr4QDZen7JMi7pPESZdJ3Fw17CfKH/24q5jCU98H3LHfvKSe
X-Received: by 2002:a5d:9b19:: with SMTP id y25mr2192344ion.94.1584511241674;
        Tue, 17 Mar 2020 23:00:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584511241; cv=none;
        d=google.com; s=arc-20160816;
        b=F0zrRf+fWYbkmYmiEa4OwgDwQCKx1TISuEOBtITS10F114fBPeEDGbj5DzxOO6fV7L
         8AyAWnngi9E+VgNKxUtK/3JUlDMeFtRZvNZYv/Ye5/XGjZDw83hFX9E5WuDsVG9uqMXv
         XiC7UT5WrrzXXR4Li0z0XDMztFIA5X+jJju/8/+VMzG0Vcui2TzzUx4J7IoiPhQtHMPu
         Ca+9ACW2xacSIp5Q4bIPz26XMCB1B/Hop1Su5ChZWDbiiy0hU8fffkSTIfZFnZxV8oya
         rkQhmuv5p/YoSxz0a29VOFJ38v2KdrTEhZmbgftBQ0nSJSb1uLMZKW4e3mfM81SJOO7p
         vGPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eb0fIkDrcmVFnL83OFuNNVeqpGgbfaBmHD4Fj/OR4kw=;
        b=06Ci3BC0nrDNuvoXz+hmTgI750QX5Mav5BIrn05etH28Rf0wmGbyTcLaFcV5cGRbQA
         2cfQlm4esCpiAL081wbP8pWL/HkM2os+rkwZ9bHlX13m3fp61oANB6Hd/jH0A6YhdwWq
         EjPT1OSRgyZdpbiMV+pDlvXZoK+o6GeR+cmY9ttjGtiXsbY9tbxrzVrHqTDv+NY1PA3F
         EjDqq+6yb/8oKDPYb5E4Fo0KCUquTj1Yqgd8xofJx8MxkDSOf2gT5Ro6P1OSlcXkSIdh
         EvDOb22oy86F+STPqicxdE29Qor9uUxVOXaYAUWnnqDA0i/+SaRzg+MQP6yqnxYEy2TA
         2vxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iRk7MYaX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s201si330604ilc.0.2020.03.17.23.00.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 23:00:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iRk7MYaX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6F2B620663;
	Wed, 18 Mar 2020 06:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584511240;
	bh=Mrp1ZWa1/1//Q7ikRp0WQlifb4RVW51A5g2NkRUbeyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iRk7MYaX69a/Zb8xfs5T26yfQsXKT30FRO/ctgQl9JwUfIXvSALOQtGq3ZslH2UBE
	 lSk2gl59jhCJxf+x8j+6WVEgZ5/msclaOMn4buewe6oS9Ucr3m9qaJAwdLWxIPGOIb
	 ThQ8EINJgHQXYQWbDD7VXQAwPE6HhayJnoDkBrnI=
Date: Wed, 18 Mar 2020 07:00:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, stefan.popa@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 2/2] staging: iio: adc: ad7280a: Add spaces around
 operators
Message-ID: <20200318060038.GB1594471@kroah.com>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>

On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
> Add spaces around operator symbols to improve readability. Warning
> flagged by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> index 19a5f244dcae..34ca0d09db85 100644
> --- a/drivers/staging/iio/adc/ad7280a.c
> +++ b/drivers/staging/iio/adc/ad7280a.c
> @@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
>  }
>  
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> -			     in_voltage-voltage_thresh_low_value,
> +			     in_voltage - voltage_thresh_low_value,
>  			     0644,
>  			     ad7280_read_channel_config,
>  			     ad7280_write_channel_config,
>  			     AD7280A_CELL_UNDERVOLTAGE);
>  
>  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> -			     in_voltage-voltage_thresh_high_value,
> +			     in_voltage - voltage_thresh_high_value,
>  			     0644,
>  			     ad7280_read_channel_config,
>  			     ad7280_write_channel_config,

Did you try building this code?

It catches everyone...

greg k-h

