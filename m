X-GM-THRID: 6388545566354178048
X-Received: by 10.99.126.69 with SMTP id o5mr4506929pgn.65.1487450450253;
        Sat, 18 Feb 2017 12:40:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.242.196 with SMTP id j187ls1381764ith.3.canary-gmail; Sat,
 18 Feb 2017 12:40:49 -0800 (PST)
X-Received: by 10.107.131.160 with SMTP id n32mr4580628ioi.47.1487450449411;
        Sat, 18 Feb 2017 12:40:49 -0800 (PST)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id g205si885452ita.2.2017.02.18.12.40.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:40:49 -0800 (PST)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1cfBoF-0004gu-Hn; Sat, 18 Feb 2017 21:40:47 +0100
Received: from [93.104.172.232] (helo=[192.168.178.44])
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1cfBoF-0002fg-8w; Sat, 18 Feb 2017 21:40:47 +0100
Subject: Re: [PATCH 2/3] staging: iio: ad7152: Use GENMASK() macro for left
 shifts
To: sayli karnik <karniksayli1995@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <cover.1487448326.git.karniksayli1995@gmail.com>
 <92240a3dca0138880fe47a7df0a5e6df869c8199.1487448326.git.karniksayli1995@gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <0b5ef4d0-14b5-1196-8bc4-deda9d8f75ce@metafoo.de>
Date: Sat, 18 Feb 2017 21:40:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <92240a3dca0138880fe47a7df0a5e6df869c8199.1487448326.git.karniksayli1995@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23086/Sat Feb 18 17:48:58 2017)

On 02/18/2017 09:21 PM, sayli karnik wrote:
> Use GENMASK() macro for left shifting integers.
> Done using coccinelle:
> @@ int a,b; @@
> 
> -(a << b)
> +GENMASK(a, b)
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Hi,

Thanks for the patch. Looks mostly good, but please rework the patch for
version 2 to address the comments for patch 1.

Some additional comments inline.

[...]
>  /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
>  #define AD7152_SETUP_CAPDIFF		BIT(5)
> -#define AD7152_SETUP_RANGE_2pF		(0 << 6)
> +#define AD7152_SETUP_RANGE_2pF		GENMASK(0, 6)
>  #define AD7152_SETUP_RANGE_0_5pF	BIT(6)
> -#define AD7152_SETUP_RANGE_1pF		(2 << 6)
> -#define AD7152_SETUP_RANGE_4pF		(3 << 6)
> +#define AD7152_SETUP_RANGE_1pF		GENMASK(2, 6)
> +#define AD7152_SETUP_RANGE_4pF		GENMASK(3, 6)
>  #define AD7152_SETUP_RANGE(x)		((x) << 6)

AD7152_SETUP_RANGE() can also use the GENMASK() macro

[...]
>  /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
> -#define AD7152_CFG2_OSR(x)		(((x) & 0x3) << 4)
> +#define AD7152_CFG2_OSR(x)		GENMASK(((x) & 0x3), 4)

The extra parenthesis around (x) & 0x3 are no needed when using the macro
(the macro will add them).


