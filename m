X-GM-THRID: 6612972487393148928
X-Received: by 2002:a2e:5d10:: with SMTP id r16-v6mr668374ljb.17.1539702640385;
        Tue, 16 Oct 2018 08:10:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2b94:: with SMTP id r20-v6ls1247803ljr.18.gmail; Tue, 16
 Oct 2018 08:10:39 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60CfJUVR7f9l6RbbanOjpl6z2eTVBRPr+AUifwA8CE/IziEmVzjnJH9/HCnKNNPRYvnb2iF
X-Received: by 2002:a2e:4710:: with SMTP id u16-v6mr647517lja.40.1539702639306;
        Tue, 16 Oct 2018 08:10:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539702639; cv=none;
        d=google.com; s=arc-20160816;
        b=jYFjHSmRL2AL0gqYE9BeLLCtMnlGWbPue01q4UdXWaF7dlUauYcu1to/NungOOT9j8
         l4B18jEodYwlnYw7p6Fip+uOXx+g+hcu32+jttHciJ2L2w4fgHTTXa4495YjFhHdUOm9
         7tTlqKiy4gHSpVkF4iRvua1a8jUN+t4w9XvkzQF4/i3Z5vPX/LsXbVYHuGTgcceAyNWL
         QJCzPi+13RIzV3S5XXunSoTncSKVeQn0sss/ozVvu41NA2kkxPShB5J9YXVl0GHr9xzC
         FKHlLPYK9zScy6N/u+7xVZHTPXe/1OuVLxgH9yfsSlkbkKbb9vwJuyx+28v2a7RdjVxw
         3HtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=QWzq7iFzuRdSl4iKivTY3UHEiHbY1ZMdnxGxnzrhSqE=;
        b=gYaKrZ5NXZTnG7tNslCdUMbMwgAFB7hZngEuZusYPaLw3WQuATtg//fB252Va/JUUh
         mKP52yKV5JP1hTDgJjRaypI+dJ+FFv60GTFFDrm0PRGRqF633j1g0M4xB2rk8Zt2xgy4
         jcbMUeH5ZMteKVwKQqO1pzo8GC68+Q3sm5Z8RGd7WUlJocY1cGS2Zmpzy92UC9Mv5Sgi
         +v0da9+E6lHjHDXuPJ2jqXC+ugTkqxNKB9+5TlRzoj6yFe/IDSWJTfzPPxOeiqxhJr9N
         o1eHGtUHwKI0kBweXK5oHkkRWjoi5fP+3srLES09M0exyoqW7M2rgjv5ZTWkuJre0iYC
         UFjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id f192-v6si297317lff.4.2018.10.16.08.10.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 16 Oct 2018 08:10:39 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.46.172.2] (helo=sslproxy05.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <lars@metafoo.de>)
	id 1gCQzQ-0003hv-Ka; Tue, 16 Oct 2018 17:10:32 +0200
Received: from eisbaer.ursus-maritimus.org ([78.47.220.141] helo=[127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89)
	(envelope-from <lars@metafoo.de>)
	id 1gCQzQ-000Eji-5E; Tue, 16 Oct 2018 17:10:32 +0200
Subject: Re: [PATCH] staging: iio: ad7816: Switch to the gpio descriptor
 interface
To: Nishad Kamdar <nishadkamdar@gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20181016144623.GA9890@nishad>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <929c42b8-34e7-60bb-5bd4-31faf53d62c2@metafoo.de>
Date: Tue, 16 Oct 2018 17:10:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181016144623.GA9890@nishad>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.100.1/25042/Tue Oct 16 15:01:23 2018)

On 10/16/2018 04:46 PM, Nishad Kamdar wrote:
> Use the gpiod interface for rdwr_pin, convert_pin and busy_pin
> instead of the deprecated old non-descriptor interface.
> 
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>

Hi,

Thanks for the patch, this looks good.

One thing about the error messages though.

> +	chip->rdwr_pin = devm_gpiod_get(&spi_dev->dev, "rdwr", GPIOD_IN);
> +	if (IS_ERR(chip->rdwr_pin)) {
> +		ret = PTR_ERR(chip->rdwr_pin);
>  		dev_err(&spi_dev->dev, "Fail to request rdwr gpio PIN %d.\n",
> -			chip->rdwr_pin);
> +			ret);

This previously showed the pin number which has now been replaced with the
error code. The message doesn't make that much sense semantically anymore.
Maybe replace it with something like

	"Failed to request rdwr GPIO: %d\n", ret

>  		return ret;

