X-GM-THRID: 6399601653123645440
X-Received: by 10.129.136.6 with SMTP id y6mr16194625ywf.157.1490038444895;
        Mon, 20 Mar 2017 12:34:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.182 with SMTP id w51ls83368ota.3.gmail; Mon, 20 Mar
 2017 12:34:04 -0700 (PDT)
X-Received: by 10.157.40.138 with SMTP id s10mr13631776ota.97.1490038444263;
        Mon, 20 Mar 2017 12:34:04 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id h35si1049025ywk.0.2017.03.20.12.34.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 12:34:04 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cq33y-0007uE-GV; Mon, 20 Mar 2017 20:33:54 +0100
Received: from [93.104.160.39] (helo=[192.168.178.40])
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cq33y-0002bs-7m; Mon, 20 Mar 2017 20:33:54 +0100
Subject: Re: [PATCH v3] staging: ad7606: Replace mlock with driver private
 lock
To: Arushi Singhal <arushisinghal19971997@gmail.com>
References: <20170320185616.GA17444@arushi-HP-Pavilion-Notebook>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <fe1d918f-76e0-8574-c234-fc2fc9268c59@metafoo.de>
Date: Mon, 20 Mar 2017 20:33:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170320185616.GA17444@arushi-HP-Pavilion-Notebook>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23221/Mon Mar 20 13:24:47 2017)

On 03/20/2017 07:56 PM, Arushi Singhal wrote:
[...]
> @@ -413,6 +413,7 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
>  	st = iio_priv(indio_dev);
>  
>  	st->dev = dev;
> +	mutex_init(&st->lock);

This is nitpicking, but putting this in the middle of the assignments has a
bit of a weired flow it. Either put it above or below the assignments.

>  	st->bops = bops;
>  	st->base_address = base_address;
>  	/* tied to logic low, analog input range is +/- 5V */
> diff --git a/drivers/staging/iio/adc/ad7606.h b/drivers/staging/iio/adc/ad7606.h
> index 746f9553d2ba..5d59bdd78727 100644
> --- a/drivers/staging/iio/adc/ad7606.h
> +++ b/drivers/staging/iio/adc/ad7606.h
> @@ -14,6 +14,7 @@
>   * @name:		identification string for chip
>   * @channels:		channel specification
>   * @num_channels:	number of channels
> + * @lock		protect sensor state

This documentation is for struct ad7607_chip_info, but you are adding the
field to struct ad7606_state.

>   */
>  
>  struct ad7606_chip_info {
> @@ -37,6 +38,7 @@ struct ad7606_state {
>  	bool				done;
>  	void __iomem			*base_address;
>  
> +	struct mutex			lock; /* protect sensor state */
>  	struct gpio_desc		*gpio_convst;
>  	struct gpio_desc		*gpio_reset;
>  	struct gpio_desc		*gpio_range;
> 


