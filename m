X-GM-THRID: 6403272126352064512
X-Received: by 10.157.5.168 with SMTP id 37mr438554otd.0.1490898133909;
        Thu, 30 Mar 2017 11:22:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.115 with SMTP id r106ls720418ota.10.gmail; Thu, 30 Mar
 2017 11:22:13 -0700 (PDT)
X-Received: by 10.129.96.84 with SMTP id u81mr442281ywb.118.1490898133557;
        Thu, 30 Mar 2017 11:22:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id b188si1281986ite.3.2017.03.30.11.22.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 11:22:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id w11so6411221itb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 11:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=l4kh0sRP7ji0OWqrNanZn0pYx3Pd5zjCf1t/yVdFgWc=;
        b=BAB36zBuD93PIgTaMPBgd9g4O58GPw6AqNPY0TXvVLC1775qmYK4V0z6bLOgfWH0uR
         mBeGNMQkGH/EXe4rjLJNhhz+d6ZN0ZSFoI+Qc2wxG9pyuaOBB3FR/YIGDrP6ZCCIFKue
         Wpg/xz5cLe19iBPyQI3dWmJcQhthwPqFHVSGYhjkgOyOyePXdVUDSWCNzk+xF48+DYJB
         IwKT9rxPWS+sfEj7HcJy+4Tyj+3qaMrZ+lhchrQk9vZ5uc54y1rBjq/79x6iR7ve2Cka
         +cWb9m6E3MckjThRtTISGVQbffUBwxD49BwkZY9RjYUAaWQ/KAGyNhFJjnXFlPJrDT1d
         7e4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=l4kh0sRP7ji0OWqrNanZn0pYx3Pd5zjCf1t/yVdFgWc=;
        b=AR7cLwllaslXPMmKeNeuFjz5LVvTrMhHJwYaJKWeQVB6QNGsj8dXgVrhMkrzwbuvg7
         DHVe9C5Sz51h60DsKHJx8npOZAYDMIRvtMdLShq7/bF6wAzYpIulIHbLmiUeKVA2oXL8
         g+qe0fTo6+TbW0XwqnG/qkuRWQUAiHOzCgOW3hx3OrxsvvDz7jW5rmS0K0KjKds2exQK
         P/n6gwvB9NRtcx+jg2lsNr+cyKPGDAuYo+ZcHtwxLsZ7+pJGKiaErKiqIWZF6bHfyQYh
         40+auyibnDDSsuo4rAGhzbn+RCYRJfR3hfNGaploZL5j5N415oC75veOEcmBS+jnRQGH
         I6/Q==
X-Gm-Message-State: AFeK/H2ghgjF62Yfrv2C6/sh3nXtGjA9XJqyYo2jfKjmDD+P6cIZVN6YY0zIDdZ2fbzrtQ==
X-Received: by 10.36.1.208 with SMTP id 199mr5942048itk.20.1490898133233;
        Thu, 30 Mar 2017 11:22:13 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id m124sm824994itd.3.2017.03.30.11.22.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 11:22:12 -0700 (PDT)
Date: Thu, 30 Mar 2017 11:22:11 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] iio: adc: replace comma with a
 semicolon
Message-ID: <20170330182210.GA6160@d830.WORKGROUP>
References: <20170330124603.GA29301@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170330124603.GA29301@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 30, 2017 at 06:16:03PM +0530, Arushi Singhal wrote:
> Replace a comma between expression statements by a semicolon. This
> changes the semantics of the code, but given the current indentation
> appears to be what is intended.

Hi Arushi,

Well, you've gotten a lot of comments on this one, and I too, couldn't
resist ;)  My comment is to test things like this out. Of course, you're
not going to go off and test the max11100 driver (BTW - driver name in
Subject line please), but you can write a simple C program to verify
the behavior of commas vs semi-colons in assignment statements.
That'll prove it to yourself, and then you can write the changelog
with confidence. (That this is cosmetic ;))

It's a useful habit to pick up.  When you see a code segment that
makes you wonder, you can often pluck it out of context and try
it in a simple c program.

alisons

> A simplified version of the Coccinelle semantic patch that performs this
> transformation is as follows:
> 
> // <smpl>
> @r@
> expression e1,e2;
> @@
> 
>  e1
> -,
> +;
>  e2;
> // </smpl>
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/iio/adc/max11100.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/max11100.c b/drivers/iio/adc/max11100.c
> index 23c060e1b663..1180bcc22ff1 100644
> --- a/drivers/iio/adc/max11100.c
> +++ b/drivers/iio/adc/max11100.c
> @@ -124,8 +124,8 @@ static int max11100_probe(struct spi_device *spi)
>  	indio_dev->name = "max11100";
>  	indio_dev->info = &max11100_info;
>  	indio_dev->modes = INDIO_DIRECT_MODE;
> -	indio_dev->channels = max11100_channels,
> -	indio_dev->num_channels = ARRAY_SIZE(max11100_channels),
> +	indio_dev->channels = max11100_channels;
> +	indio_dev->num_channels = ARRAY_SIZE(max11100_channels);
>  
>  	state->vref_reg = devm_regulator_get(&spi->dev, "vref");
>  	if (IS_ERR(state->vref_reg))
> -- 
> 2.11.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170330124603.GA29301%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.

