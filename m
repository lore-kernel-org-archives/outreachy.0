X-GM-THRID: 6335076166751223808
X-Received: by 10.25.139.9 with SMTP id n9mr1616677lfd.22.1475048920305;
        Wed, 28 Sep 2016 00:48:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.210 with SMTP id f79ls31531lji.1.gmail; Wed, 28 Sep 2016
 00:48:39 -0700 (PDT)
X-Received: by 10.25.99.71 with SMTP id x68mr1672526lfb.28.1475048919498;
        Wed, 28 Sep 2016 00:48:39 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id e21si504920wmc.2.2016.09.28.00.48.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 00:48:39 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1bp9ba-0003wp-QA; Wed, 28 Sep 2016 09:48:39 +0200
Received: from [46.244.244.13] (helo=[192.168.178.23])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1bp9bZ-0004LE-VS; Wed, 28 Sep 2016 09:48:38 +0200
Subject: Re: [PATCH v3] iio: temperature: maxim_thermocouple: Replace unsigned
 int with __be16/__be32 to fix endianness warnings
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <20160927181039.GA16272@sayli-HP-15-Notebook-PC>
Cc: Matt Ranostay <mranostay@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>
From: Lars-Peter Clausen <lars@metafoo.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <b967fc9a-58a2-214c-89d4-d56ddb8b65bd@metafoo.de>
Date: Wed, 28 Sep 2016 09:48:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160927181039.GA16272@sayli-HP-15-Notebook-PC>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22265/Wed Sep 28 07:37:38 2016)

On 09/27/2016 08:10 PM, sayli karnik wrote:
> Fix following endianness warnings using sparse:
> warning: cast to restricted __be16
> warning: cast to restricted __be32
> Use __be16 type for incoming read data when storage_bytes equals 2 and
> __be32 when storage_bytes equals 4.
> Also, the patch fixes the following bug:
> Variable 'buf' which is an unsigned int (32 bits) points to a location where
> only 2 bytes of data are placed during spi_read(). These 2 bytes go in the
> upper bytes. be16_to_cpu() casts buf to 16 bits. When storage_bytes equals 2,
> (for thermocouple chip-MAX6675) this will work on Little Endian systems but
> will give invalid data on Big Endian systems. The patch fixes this bug existing
> on Big Endian systems for chip MAX6675.
> Additionally, the patch removes space after a type cast as suggested by
> checkpatch.pl.
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> Fixes: 1f25ca11d84a ("iio: temperature: add support for Maxim thermocouple chips")

Thanks for the patch. This looks good and I think can be applied as is. But
there is one detail that could be changed to improve the patch even further,
see the comment inline.

> ---
> Changes in v3:
> Updated the commit message
> Updated the changelog to include explanation to the bug fix
> Fixed the checkpatch issue: CHECK: No space is necessary after a cast
> Added the fixes tag
> 
>  drivers/iio/temperature/maxim_thermocouple.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
> index 39dd202..01cad6e 100644
> --- a/drivers/iio/temperature/maxim_thermocouple.c
> +++ b/drivers/iio/temperature/maxim_thermocouple.c
> @@ -123,22 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
>  {
>  	unsigned int storage_bytes = data->chip->read_size;
>  	unsigned int shift = chan->scan_type.shift + (chan->address * 8);
> -	unsigned int buf;
> +	__be16 buf1;
> +	__be32 buf2;

buf1 and buf2 are not really meaningful names. You always have to think
about that other people are going to look at this code as well in the
future. E.g. imagine yourself browsing through some random code and you'd
see two variable called buf1 and buf2, would you be able to easily remember
which is the 16-bit and which the 32-bit buffer while trying to understand
the code? I know that I wouldn't and always would have to go back to the
definition to double check. If you give them some more semantically relevant
names, like e.g. buf16 and buf32 it becomes a lot easier to remember.

>  	int ret;
>  
> -	ret = spi_read(data->spi, (void *) &buf, storage_bytes);
> -	if (ret)
> -		return ret;
> -
>  	switch (storage_bytes) {
>  	case 2:
> -		*val = be16_to_cpu(buf);
> +		ret = spi_read(data->spi, (void *)&buf1, storage_bytes);
> +		*val = be16_to_cpu(buf1);
>  		break;
>  	case 4:
> -		*val = be32_to_cpu(buf);
> +		ret = spi_read(data->spi, (void *)&buf2, storage_bytes);
> +		*val = be32_to_cpu(buf2);
>  		break;
>  	}
>  
> +	if (ret)
> +		return ret;
> +
>  	/* check to be sure this is a valid reading */
>  	if (*val & data->chip->status_bit)
>  		return -EINVAL;
> 


