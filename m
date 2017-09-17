X-GM-THRID: 6466548746929831936
X-Received: by 10.25.155.140 with SMTP id d134mr555451lfe.28.1505631403714;
        Sat, 16 Sep 2017 23:56:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.13.1 with SMTP id 1ls653906ljn.15.gmail; Sat, 16 Sep 2017
 23:56:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBPATZxofosx/zbWjzroae7ijI8bKQMGiRh+MkF9FOjn7YT6yxFXD2B/Qzw7q91sRnusuTV
X-Received: by 10.25.169.1 with SMTP id s1mr552952lfe.29.1505631402303;
        Sat, 16 Sep 2017 23:56:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505631402; cv=none;
        d=google.com; s=arc-20160816;
        b=ZypYWDdmpgdxfRph/DfSvx8+Jahhb4iEStAxh4RbsAmDqa1AIdOOQMCQS8eQZuaSye
         klm+kpIPOyJUP6cOJfrY8Y4H1A+RpaUKBVQW/OpYITKX7yY5giY1XxWCqYkq+rI/W+nr
         EDQ1XsGvsFUxiRSon72mH2F6E/u41V2zKP7pxOM5WJMLN2bERxmB6wq/bjJOeE+F4Zpv
         kRSQN8MLOORs/F/KtEsK7KSdEjupU2jWt6SnxhraQu/dp+biE7HSvG7QEp1nMTHjX3yd
         X0awpdUWwg99FytiL/Y7DlLSYO3yu0Mea9vUxJwAXQZ3i/YWW5xH/fKntAo5RNt1FdKY
         A0RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Ojund0h7+yguoB1Qt2S86Zq8lbR0qCJdZqz+wksjrhs=;
        b=DwVHLmDasYqvIwv2MFHFUzKLivs1fLeMLDRC+akGHd1NUs8xFS/PMXeF+33Wc/34SG
         D6loud3HiPwzIm1kYEQp//o+Dy8hT2DAOUBmbWPqm+Kx5bnWdVf17kg2fOb0AqL18eJF
         0iU8pJ2gMfWRAcGLHxn8wULeon8CVM+1s9bn+IzXhXmtZjhdTkLTzhXW7kvpD9tyJYp/
         S2zGeyHVl1/f/YGqPruBGAntu4MqYD5hz/85GF++ISAvNuQwxcQx323l3EhEZMpMnn1L
         Zb267YHUknw+PCvUpRxE/UD9W7ijKMysaZOfn/Hut0FS0NuU69TxTmssyqnhMzLiCfyY
         8tVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m74si291852wma.0.2017.09.16.23.56.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 23:56:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,406,1500933600"; 
   d="scan'208";a="237759633"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Sep 2017 08:56:41 +0200
Date: Sun, 17 Sep 2017 08:56:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Lars-Peter Clausen <lars@metafoo.de>, 
    Michael Hennerich <Michael.Hennerich@analog.com>, 
    Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Replace bit shifting
 with BIT macro
In-Reply-To: <20170917011142.GA26676@Haneen>
Message-ID: <alpine.DEB.2.20.1709170853500.2248@hadrien>
References: <20170917011142.GA26676@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Haneen Mohammed wrote:

> This patch replace bit shifting on 0, 1, 2, and 3 with BIT(x) macro.
> Issue resolved with the following Coccinelle script:
>
> @r1@
> identifier x;
> constant int g;
> @@
> (
> 0<<\(x\|g\)
> |
> 1<<\(x\|g\)
> |
> 2<<\(x\|g\)
> |
> 3<<\(x\|g\)
> )
>
> @script:python b@
> g2 <<r1.g;
> y;
> @@
>
> coccinelle.y = int(g2) + 1
>
> @c@
> constant int r1.g;
> identifier b.y;
> @@
> (
> -(1 << g)
> +BIT(g)
> |
> -(0 << g)
> + 0
> |
> -(2 << g)
> +BIT(y)
> |
> -(3 << g)
> +(BIT(y) | BIT(g))
> )

Really good job on the semantic patch.


>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/iio/impedance-analyzer/ad5933.c | 38 ++++++++++++-------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> index 3d539ee..83d1a92 100644
> --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> @@ -35,32 +35,32 @@
>  #define AD5933_REG_IMAG_DATA		0x96	/* R, 2 bytes*/
>
>  /* AD5933_REG_CONTROL_HB Bits */
> -#define AD5933_CTRL_INIT_START_FREQ	(0x1 << 4)
> -#define AD5933_CTRL_START_SWEEP		(0x2 << 4)
> -#define AD5933_CTRL_INC_FREQ		(0x3 << 4)
> +#define AD5933_CTRL_INIT_START_FREQ	BIT(4)
> +#define AD5933_CTRL_START_SWEEP		BIT(5)
> +#define AD5933_CTRL_INC_FREQ		(BIT(5) | BIT(4))
>  #define AD5933_CTRL_REPEAT_FREQ		(0x4 << 4)
>  #define AD5933_CTRL_MEASURE_TEMP	(0x9 << 4)
>  #define AD5933_CTRL_POWER_DOWN		(0xA << 4)
>  #define AD5933_CTRL_STANDBY		(0xB << 4)

I'm not sure that this is a good idea.  Its more confusing than helpful to
have the different styles mixed up.


> -#define AD5933_CTRL_RANGE_2000mVpp	(0x0 << 1)
> -#define AD5933_CTRL_RANGE_200mVpp	(0x1 << 1)
> -#define AD5933_CTRL_RANGE_400mVpp	(0x2 << 1)
> -#define AD5933_CTRL_RANGE_1000mVpp	(0x3 << 1)
> +#define AD5933_CTRL_RANGE_2000mVpp	0
> +#define AD5933_CTRL_RANGE_200mVpp	BIT(1)
> +#define AD5933_CTRL_RANGE_400mVpp	BIT(2)
> +#define AD5933_CTRL_RANGE_1000mVpp	(BIT(2) | BIT(1))
>  #define AD5933_CTRL_RANGE(x)		((x) << 1)
>
> -#define AD5933_CTRL_PGA_GAIN_1		(0x1 << 0)
> -#define AD5933_CTRL_PGA_GAIN_5		(0x0 << 0)
> +#define AD5933_CTRL_PGA_GAIN_1		BIT(0)
> +#define AD5933_CTRL_PGA_GAIN_5		0

Again, this mixes styles.  Even though 0 << 0 is pretty silly as
computation, it lines up well with what is above.

>  /* AD5933_REG_CONTROL_LB Bits */
> -#define AD5933_CTRL_RESET		(0x1 << 4)
> -#define AD5933_CTRL_INT_SYSCLK		(0x0 << 3)
> -#define AD5933_CTRL_EXT_SYSCLK		(0x1 << 3)
> +#define AD5933_CTRL_RESET		BIT(4)
> +#define AD5933_CTRL_INT_SYSCLK		0
> +#define AD5933_CTRL_EXT_SYSCLK		BIT(3)

Likewise.

>  /* AD5933_REG_STATUS Bits */
> -#define AD5933_STAT_TEMP_VALID		(0x1 << 0)
> -#define AD5933_STAT_DATA_VALID		(0x1 << 1)
> -#define AD5933_STAT_SWEEP_DONE		(0x1 << 2)
> +#define AD5933_STAT_TEMP_VALID		BIT(0)
> +#define AD5933_STAT_DATA_VALID		BIT(1)
> +#define AD5933_STAT_SWEEP_DONE		BIT(2)
>
>  /* I2C Block Commands */
>  #define AD5933_I2C_BLOCK_WRITE		0xA0
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
> +			val = (val >> 2) | (BIT(10) | BIT(9));

This would be better without the parentheses on (BIT(10) | BIT(9)

julia

>  		else if (val > 511)
> -			val = (val >> 1) | (1 << 9);
> +			val = (val >> 1) | BIT(9);
>
>  		dat = cpu_to_be16(val);
>  		ret = ad5933_i2c_write(st->client,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170917011142.GA26676%40Haneen.
> For more options, visit https://groups.google.com/d/optout.
>

