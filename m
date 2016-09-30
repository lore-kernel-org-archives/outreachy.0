X-GM-THRID: 6336070668192317440
X-Received: by 10.46.71.203 with SMTP id u194mr504480lja.29.1475239540880;
        Fri, 30 Sep 2016 05:45:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.18 with SMTP id u18ls398536wmd.14.canary; Fri, 30 Sep
 2016 05:45:40 -0700 (PDT)
X-Received: by 10.194.126.165 with SMTP id mz5mr535744wjb.5.1475239540235;
        Fri, 30 Sep 2016 05:45:40 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id w16si263110wmd.0.2016.09.30.05.45.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 05:45:40 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.131] (helo=sslproxy02.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1bpxC0-00071d-GY; Fri, 30 Sep 2016 14:45:32 +0200
Received: from [2003:86:2c57:7e00:8200:bff:fe9b:6612]
	by sslproxy02.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1bpxC0-0006Cq-9K; Fri, 30 Sep 2016 14:45:32 +0200
Subject: Re: [PATCH] staging: iio: ad7192: implement IIO_CHAN_INFO_SAMP_FREQ
To: Eva Rachel Retuya <eraretuya@gmail.com>, Michael.Hennerich@analog.com,
 jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
References: <1475231304-3021-1-git-send-email-eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
From: Lars-Peter Clausen <lars@metafoo.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <21ebde28-4670-bfa5-a171-d7547bb84b26@metafoo.de>
Date: Fri, 30 Sep 2016 14:45:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <1475231304-3021-1-git-send-email-eraretuya@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22278/Fri Sep 30 11:41:32 2016)

On 09/30/2016 12:28 PM, Eva Rachel Retuya wrote:
> Use IIO_CHAN_INFO_SAMP_FREQ to implement the sampling_frequency attribute
> instead of using IIO_DEV_ATTR_SAMP_FREQ() macro.
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>

Hi,

Thanks for the patch. There is one tiny bug in the patch, see in the inline
review.

The commit message can also be slightly improved. A commit message should
typically contain why, what and how. For trivial cases some of these might
be omitted but it is always a good idea to include them regardless. In this
case the commit message only includes the what. The how is trivial, so that
is OK. But the why is missing and not necessarily obvious to everybody, e.g.
consider somebody reading the log 5 years from now.

For the why part the commit message could contain that this driver
originally predates the availability of the IIO_CHAN_INFO_SAMP_FREQ
attribute which is why it was not using it and using it has some advantages
like it can be access by in-kernel consumers. And it also reduces the code size.

[...]
> @@ -548,7 +499,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>  			    long mask)
>  {
>  	struct ad7192_state *st = iio_priv(indio_dev);
> -	int ret, i;
> +	int ret, i, div;
>  	unsigned int tmp;
>  
>  	ret = iio_device_claim_direct_mode(indio_dev);
> @@ -572,10 +523,25 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>  				break;
>  			}
>  		break;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		if (!val)
> +			return -EINVAL;

The direct return here bypasses the iio_device_release_direct_mode() and
will keep the direct mode locked. This sould instead be

if (!val) {
	ret = -EINVAL;
	break;
}

> +
> +		div = st->mclk / (val * st->f_order * 1024);
> +		if (div < 1 || div > 1023) {
> +			ret = -EINVAL;
> +			goto out;

Since this is in a switch statement and we want to jump to the end of the
switch I'd just use break, instead of introducing a new label.

> +		}
> +
> +		st->mode &= ~AD7192_MODE_RATE(-1);
> +		st->mode |= AD7192_MODE_RATE(div);
> +		ad_sd_write_reg(&st->sd, AD7192_REG_MODE, 3, st->mode);
> +		break;
>  	default:
>  		ret = -EINVAL;
>  	}
>  
> +out:
>  	iio_device_release_direct_mode(indio_dev);
>  
>  	return ret;

