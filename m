X-GM-THRID: 6466548746929831936
X-Received: by 10.223.150.118 with SMTP id c51mr87363wra.20.1505821731059;
        Tue, 19 Sep 2017 04:48:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.163 with SMTP id y35ls2055218wmh.23.gmail; Tue, 19 Sep
 2017 04:48:50 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDY7D9WIc1EyBzFMHKBSSGbPR6SkdIvX6ikUkL2i7bQEUmMlCKR4MY76p5rsk//Vpan1pSE
X-Received: by 10.28.165.70 with SMTP id o67mr87189wme.10.1505821730166;
        Tue, 19 Sep 2017 04:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505821730; cv=none;
        d=google.com; s=arc-20160816;
        b=ia2fdX6x0lEH6jNCxOHidLJK3lSOZdFokiq5NsQFd9ljg+VTvzbgrxEU9pTiHooRy6
         ecmlCq2hfBHhl2HZqaHHj5akAYMGFXkpa4vgArB9RKdTfa4qivkfjgZ78tiEpdJ/aF5l
         Q4xFKEkJH78fWKbXQFTFHyaB7zodH2Li4olb8kZcohZdveX2/DbJ1mKOsoEidTbBiQPE
         qCZVjYJ9uClY/WC+2mxZqQ7B+w5VunM3zToAiKFNz9WDwbVqYHMlQjKUP0pQVTx46SwW
         TTY3Bf3NRM3j679IlcY6fd4GeeWjSjl5EuBkU1PLisUfTI8U5SVvO2vvVDoeZCldwBKK
         Ziig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=EHz/xeZSABLGZ9GvGOTeiB/NMjpqLGT2fqB1i5cb+JE=;
        b=zfSolTmIRZ+G2N3fD9EXDvJtYYbbs2jWtRabeCqOf+yRcjMeYCGGTEZHpyCxgdYOUe
         GP+Dqou5WTKlAPaFVDxcgOCEBHCEnEgA9SMyx1HypVga/AUL8E3jK8ylHEQcNOBW9YCf
         x+VpP3eoP5XZxK+VSkVCqmlP7VpkQx1BonmyLeAqLxfPfCzX+ZkUT2td1uBFV4ujM74q
         2CRz5IKhh+8Z2HYSSoXfl7fDOBW7VRXG5qUripGDjwJWWm8sQiOmdYiHFD8izjgK7w4r
         fl+sE/NXQFF/XBzhhoqbyYmPBHRBoKBLtCgfuRR76KBnY8BnfF0yTxY2sZB0kwlfROc5
         5Q2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id b130si106571wme.0.2017.09.19.04.48.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 04:48:50 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.131] (helo=sslproxy02.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1duH1E-0003dE-Ty; Tue, 19 Sep 2017 13:48:48 +0200
Received: from [2003:86:2c3f:7000:8200:bff:fe9b:6612]
	by sslproxy02.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1duH1E-0004x2-No; Tue, 19 Sep 2017 13:48:48 +0200
Subject: Re: [PATCH v2] staging: iio: Replace bit shifting with BIT macro
To: Haneen Mohammed <hamohammed.sa@gmail.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
References: <20170919015651.GA4554@Haneen>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <b699803e-febf-7b9b-f2d7-e778d0b993ae@metafoo.de>
Date: Tue, 19 Sep 2017 13:48:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170919015651.GA4554@Haneen>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23852/Tue Sep 19 06:45:05 2017)

On 09/19/2017 03:56 AM, Haneen Mohammed wrote:
> This patch replace bit shifting on 1, and 3 with BIT(x) macro.
> Issue resolved with the following Coccinelle script:

Can you explain why this is an issue and why using the BIT() macro is better
in this case?

These kind of changes need to make semantic sense, the goal should generally
be to improve the legibility of the code, so somebody looking at the code
easier understands what the intention of the code is.

E.g. we can easily write "x *= BIT(2) | BIT(3)" instead of "x *= 12", both
have the same effect. But the later is much easier to understand for the
casual reader.

The intended semantics for BIT() are that we are talking about a single bit
field. There were a few of those in version 1 of your patch, were using the
BIT() macro makes sense. But in my opinion none of the changes in this patch
fall in this category. I mean, what is the meaning of multiplying by
BIT(27)? Maybe we need a POW2() macro for places where we are semantically
speaking are talking about a number that is a power of two.

> @@ -229,7 +229,7 @@ static int ad5933_set_freq(struct ad5933_state *st,
>  		u8 d8[4];
>  	} dat;
>  
> -	freqreg = (u64) freq * (u64) (1 << 27);
> +	freqreg = (u64)freq * (u64)BIT(27);
>  	do_div(freqreg, st->mclk_hz / 4);
>  
>  	switch (reg) {
> @@ -318,7 +318,7 @@ static ssize_t ad5933_show_frequency(struct device *dev,
>  	freqreg = be32_to_cpu(dat.d32) & 0xFFFFFF;
>  
>  	freqreg = (u64)freqreg * (u64)(st->mclk_hz / 4);
> -	do_div(freqreg, 1 << 27);
> +	do_div(freqreg, BIT(27));
>  
>  	return sprintf(buf, "%d\n", (int)freqreg);
>  }
> @@ -452,9 +452,9 @@ static ssize_t ad5933_store(struct device *dev,
>  
>  		/* 2x, 4x handling, see datasheet */
>  		if (val > 1022)
> -			val = (val >> 2) | (3 << 9);
> +			val = (val >> 2) | BIT(10) | BIT(9);
>  		else if (val > 511)
> -			val = (val >> 1) | (1 << 9);
> +			val = (val >> 1) | BIT(9);
>  
>  		dat = cpu_to_be16(val);
>  		ret = ad5933_i2c_write(st->client,
> 


