X-GM-THRID: 6388545566354178048
X-Received: by 10.107.168.13 with SMTP id r13mr4865065ioe.58.1487450111112;
        Sat, 18 Feb 2017 12:35:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.78 with SMTP id u75ls1975545ioi.50.gmail; Sat, 18 Feb
 2017 12:35:10 -0800 (PST)
X-Received: by 10.99.217.21 with SMTP id r21mr4839634pgg.144.1487450110220;
        Sat, 18 Feb 2017 12:35:10 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id i189si774734iti.0.2017.02.18.12.35.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:35:09 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cfBik-0004Uj-N6; Sat, 18 Feb 2017 21:35:06 +0100
Received: from [93.104.172.232] (helo=[192.168.178.44])
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cfBik-0005Gf-D5; Sat, 18 Feb 2017 21:35:06 +0100
Subject: Re: [PATCH 1/3] staging: iio: ad7152: Use BIT() macro for left
 shifting 1
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <cover.1487448326.git.karniksayli1995@gmail.com>
 <2f967b89d81cadb4a96a3ce38e4bd5571fb2bd8c.1487448326.git.karniksayli1995@gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <26f4107f-41ec-b504-10f0-e857a110d35c@metafoo.de>
Date: Sat, 18 Feb 2017 21:35:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <2f967b89d81cadb4a96a3ce38e4bd5571fb2bd8c.1487448326.git.karniksayli1995@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23086/Sat Feb 18 17:48:58 2017)

On 02/18/2017 09:20 PM, sayli karnik wrote:
> Replace left shifting on 1 with the BIT(x) macro as suggested by
> checkpatch.pl.
> 
> Done with coccinelle:
> @@ int g; @@
> 
> -(1 << g)
> +BIT(g)
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Hi,

Thanks for the patch. When doing these kind of conversions special care
needs to be taken to make sure that they make semantical sense.

The BIT(x) transform for example should only be done for single bit bitfields.

[...]
>  /* Status Register Bit Designations (AD7152_REG_STATUS) */
> -#define AD7152_STATUS_RDY1		(1 << 0)
> -#define AD7152_STATUS_RDY2		(1 << 1)
> -#define AD7152_STATUS_C1C2		(1 << 2)
> -#define AD7152_STATUS_PWDN		(1 << 7)
> +#define AD7152_STATUS_RDY1		BIT(0)
> +#define AD7152_STATUS_RDY2		BIT(1)
> +#define AD7152_STATUS_C1C2		BIT(2)
> +#define AD7152_STATUS_PWDN		BIT(7)

This is correct, these are all single bit bitfields.

>  
>  /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
> -#define AD7152_SETUP_CAPDIFF		(1 << 5)
> +#define AD7152_SETUP_CAPDIFF		BIT(5)
>  #define AD7152_SETUP_RANGE_2pF		(0 << 6)
> -#define AD7152_SETUP_RANGE_0_5pF	(1 << 6)
> +#define AD7152_SETUP_RANGE_0_5pF	BIT(6)

This on the other hand is a multi-bit field with 1 being one of the possible
values. Hence this should be part of the second patch and use GENMASK instead.

In general when you have a whole bunch of values following the scheme of y
<< x. With 1 << x being one of them use GENMASK() rather than BIT().

>  #define AD7152_SETUP_RANGE_1pF		(2 << 6)
>  #define AD7152_SETUP_RANGE_4pF		(3 << 6)
>  #define AD7152_SETUP_RANGE(x)		((x) << 6)
>  
>  /* Config Register Bit Designations (AD7152_REG_CFG) */
> -#define AD7152_CONF_CH2EN		(1 << 3)
> -#define AD7152_CONF_CH1EN		(1 << 4)
> +#define AD7152_CONF_CH2EN		BIT(3)
> +#define AD7152_CONF_CH1EN		BIT(4)
>  #define AD7152_CONF_MODE_IDLE		(0 << 0)
> -#define AD7152_CONF_MODE_CONT_CONV	(1 << 0)
> +#define AD7152_CONF_MODE_CONT_CONV	BIT(0)

Same here.

>  #define AD7152_CONF_MODE_SINGLE_CONV	(2 << 0)
>  #define AD7152_CONF_MODE_OFFS_CAL	(5 << 0)
>  #define AD7152_CONF_MODE_GAIN_CAL	(6 << 0)
>  
>  /* Capdac Register Bit Designations (AD7152_REG_CAPDAC_XXX) */
> -#define AD7152_CAPDAC_DACEN		(1 << 7)
> +#define AD7152_CAPDAC_DACEN		BIT(7)
>  #define AD7152_CAPDAC_DACP(x)		((x) & 0x1F)
>  
>  /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
> 


