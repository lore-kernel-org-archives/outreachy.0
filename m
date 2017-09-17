X-GM-THRID: 6466548746929831936
X-Received: by 10.107.169.219 with SMTP id f88mr7128005ioj.136.1505673059555;
        Sun, 17 Sep 2017 11:30:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.76 with SMTP id c73ls4158115itb.10.canary-gmail; Sun, 17
 Sep 2017 11:30:58 -0700 (PDT)
X-Received: by 10.31.65.9 with SMTP id o9mr12240899vka.57.1505673058812;
        Sun, 17 Sep 2017 11:30:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505673058; cv=none;
        d=google.com; s=arc-20160816;
        b=PUWFgHAJPdIuRcszWwSCRddYumGQGIaFbrijnOJXl4Tz3COQVCbWg87RPDJWSnnCHx
         C/A33kZa9ZhPe7Lxbzx/Rj9Z2ahhzb+pXhJECePdLta2FVcEMbaxpZe0GvEYxN+cF2DI
         Ap64oNEyUpwJincTVES1qT+TqeY11mxJ/kiAzuOWE3fxkE8JixMQMhg7gykH2pwOQ0Lv
         nUk7kUBaxPGBffFRutLTJ8tBEuvAhlSLAQ9dsJWBKOWnVM+6hmAB7iXbzGEeMOv+CgTY
         4yQwviSiRH+OG+DUqW34X99U15spfQUqPEu7+caV1j3anLKj9B09ztfzX+loW+VXD3A9
         bffw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=FrrXDMV9ndL4pLUGF4y5++5RuCIXmTzbUL8/qsP9dkM=;
        b=IsMsCNSudcrgjTMnyZngg82GhQrimjOh494gvMj9nTSqKhn+CtVnFkTzhvowYlbbb8
         GtDwfkazytcSW5lTpoujbwtcvLziUre6IKFS8ObID87UCodBxeTKdnAMH61ICwIFkJAY
         C+HYMhb2cCsoFAu1VERXwjH1mXaCXwmM6VFhQFrndTJkZm92n3/ouGVGOlyNQH0ZhCbv
         kBEDnWadQp6V409Une2KWnckVngSnNsFOnJZ7tIcxk7j8NreYuHBgYmLLR3ZVOHlO+f8
         vf7LOx8TnWLxwWyLtO3M4pCTvQPsXL57W1bUR4WfsvfsUCzUDg8miyjwhebk94oHv8vl
         IY2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E/Odb5/C;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id k76si552723pfb.5.2017.09.17.11.30.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 11:30:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E/Odb5/C;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v5so4073512pgn.4
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Sep 2017 11:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FrrXDMV9ndL4pLUGF4y5++5RuCIXmTzbUL8/qsP9dkM=;
        b=E/Odb5/Cbdn/kcJPC+zxhrj7YiSOCAX9g7ok6n+YUgRsNvnqkdzVxK6hhIPp6G5cmG
         LnmHO+6dQMncy4985BivdVurq78O/QORWoF/CSMIJfDAAyMptPSl9YYsk7JJZSrcOFOW
         i4C/APM9wEb8S8DQdsbHxE2qEabU8Zmb602/y+E6MRwJ2AVpuOwBGtlp39Fj1tNC3myC
         CXtIBuw7QjwaQPIJoG2my/zv3RDA/DHAHSN4P/DeOfBsrMJGID3bSeTo920jnUd54mAu
         mKHq9GSukRLT+0jymKzPUZehW1hnmJ6stf/SVd07nlPAZrnXl3oLlxJf1X4qS45SuQZy
         CHiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FrrXDMV9ndL4pLUGF4y5++5RuCIXmTzbUL8/qsP9dkM=;
        b=nKIbCf0iS4WYQkzrQjydHmca+HsAumCOMNnFcFsnkaMOK6ZZRFThIFiqdBIrl8WeUS
         bsDDEyrNTjkBeL7Grlp8aKBzufaFo1E3Wp6j3kJlmfIdfeAG1Fj0AQ0wgGmJV+EshYbh
         2r+J9lJvWVaocUk/4SCXKI2sIGcBr+8VVSoJOQZme3ceA4h2brIh4XI7mqocS1xNV92q
         RjU0wA+GGxfve30uia8cRNYHrlen4+/PeQuC3pkdJSsdUALM6xjv3jCk/wIN5yLMQWoR
         x3tMoxbnJhtnAEqqyLulMUWyTtQkZTkW6IA7t4qSFWqOWPNxQSS0hLhvnBdL/OfCVWJ4
         T3zg==
X-Gm-Message-State: AHPjjUjgJWUTyBZfA1L8ni+k85TK2izBJ8CEapDyg5JC5G02crt6H+fG
	WrHGRU7L3LlfQXchecI=
X-Google-Smtp-Source: ADKCNb6T4D7bYC01bZF/k7Uoerk4uPZWTPAvbv8F400s3eulXrvLHJHPr0kk9S3Ju8xAKtYDAxlWIQ==
X-Received: by 10.98.245.8 with SMTP id n8mr30422141pfh.108.1505673058426;
        Sun, 17 Sep 2017 11:30:58 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id p127sm10432650pfp.168.2017.09.17.11.30.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 11:30:57 -0700 (PDT)
Date: Sun, 17 Sep 2017 12:30:54 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: Replace bit shifting
 with BIT macro
Message-ID: <20170917183054.GA14467@Haneen>
References: <20170917011142.GA26676@Haneen>
 <alpine.DEB.2.20.1709170853500.2248@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709170853500.2248@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Sep 17, 2017 at 08:56:40AM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 16 Sep 2017, Haneen Mohammed wrote:
> 
> > This patch replace bit shifting on 0, 1, 2, and 3 with BIT(x) macro.
> > Issue resolved with the following Coccinelle script:
> >
> > @r1@
> > identifier x;
> > constant int g;
> > @@
> > (
> > 0<<\(x\|g\)
> > |
> > 1<<\(x\|g\)
> > |
> > 2<<\(x\|g\)
> > |
> > 3<<\(x\|g\)
> > )
> >
> > @script:python b@
> > g2 <<r1.g;
> > y;
> > @@
> >
> > coccinelle.y = int(g2) + 1
> >
> > @c@
> > constant int r1.g;
> > identifier b.y;
> > @@
> > (
> > -(1 << g)
> > +BIT(g)
> > |
> > -(0 << g)
> > + 0
> > |
> > -(2 << g)
> > +BIT(y)
> > |
> > -(3 << g)
> > +(BIT(y) | BIT(g))
> > )
> 
> Really good job on the semantic patch.
> 
> 

Thank you! I remember you helped me with it two years ago :)

> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> >  drivers/staging/iio/impedance-analyzer/ad5933.c | 38 ++++++++++++-------------
> >  1 file changed, 19 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > index 3d539ee..83d1a92 100644
> > --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> > +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > @@ -35,32 +35,32 @@
> >  #define AD5933_REG_IMAG_DATA		0x96	/* R, 2 bytes*/
> >
> >  /* AD5933_REG_CONTROL_HB Bits */
> > -#define AD5933_CTRL_INIT_START_FREQ	(0x1 << 4)
> > -#define AD5933_CTRL_START_SWEEP		(0x2 << 4)
> > -#define AD5933_CTRL_INC_FREQ		(0x3 << 4)
> > +#define AD5933_CTRL_INIT_START_FREQ	BIT(4)
> > +#define AD5933_CTRL_START_SWEEP		BIT(5)
> > +#define AD5933_CTRL_INC_FREQ		(BIT(5) | BIT(4))
> >  #define AD5933_CTRL_REPEAT_FREQ		(0x4 << 4)
> >  #define AD5933_CTRL_MEASURE_TEMP	(0x9 << 4)
> >  #define AD5933_CTRL_POWER_DOWN		(0xA << 4)
> >  #define AD5933_CTRL_STANDBY		(0xB << 4)
> 
> I'm not sure that this is a good idea.  Its more confusing than helpful to
> have the different styles mixed up.
> 
> 

I see. I wasn't sure how to convert the others so I left them.
I'll remove the bit macro from #define then.

Thank you!
Haneen

> > -#define AD5933_CTRL_RANGE_2000mVpp	(0x0 << 1)
> > -#define AD5933_CTRL_RANGE_200mVpp	(0x1 << 1)
> > -#define AD5933_CTRL_RANGE_400mVpp	(0x2 << 1)
> > -#define AD5933_CTRL_RANGE_1000mVpp	(0x3 << 1)
> > +#define AD5933_CTRL_RANGE_2000mVpp	0
> > +#define AD5933_CTRL_RANGE_200mVpp	BIT(1)
> > +#define AD5933_CTRL_RANGE_400mVpp	BIT(2)
> > +#define AD5933_CTRL_RANGE_1000mVpp	(BIT(2) | BIT(1))
> >  #define AD5933_CTRL_RANGE(x)		((x) << 1)
> >
> > -#define AD5933_CTRL_PGA_GAIN_1		(0x1 << 0)
> > -#define AD5933_CTRL_PGA_GAIN_5		(0x0 << 0)
> > +#define AD5933_CTRL_PGA_GAIN_1		BIT(0)
> > +#define AD5933_CTRL_PGA_GAIN_5		0
> 
> Again, this mixes styles.  Even though 0 << 0 is pretty silly as
> computation, it lines up well with what is above.
> 
> >  /* AD5933_REG_CONTROL_LB Bits */
> > -#define AD5933_CTRL_RESET		(0x1 << 4)
> > -#define AD5933_CTRL_INT_SYSCLK		(0x0 << 3)
> > -#define AD5933_CTRL_EXT_SYSCLK		(0x1 << 3)
> > +#define AD5933_CTRL_RESET		BIT(4)
> > +#define AD5933_CTRL_INT_SYSCLK		0
> > +#define AD5933_CTRL_EXT_SYSCLK		BIT(3)
> 
> Likewise.
> 
> >  /* AD5933_REG_STATUS Bits */
> > -#define AD5933_STAT_TEMP_VALID		(0x1 << 0)
> > -#define AD5933_STAT_DATA_VALID		(0x1 << 1)
> > -#define AD5933_STAT_SWEEP_DONE		(0x1 << 2)
> > +#define AD5933_STAT_TEMP_VALID		BIT(0)
> > +#define AD5933_STAT_DATA_VALID		BIT(1)
> > +#define AD5933_STAT_SWEEP_DONE		BIT(2)
> >
> >  /* I2C Block Commands */
> >  #define AD5933_I2C_BLOCK_WRITE		0xA0
> > @@ -229,7 +229,7 @@ static int ad5933_set_freq(struct ad5933_state *st,
> >  		u8 d8[4];
> >  	} dat;
> >
> > -	freqreg = (u64) freq * (u64) (1 << 27);
> > +	freqreg = (u64)freq * (u64)BIT(27);
> >  	do_div(freqreg, st->mclk_hz / 4);
> >
> >  	switch (reg) {
> > @@ -318,7 +318,7 @@ static ssize_t ad5933_show_frequency(struct device *dev,
> >  	freqreg = be32_to_cpu(dat.d32) & 0xFFFFFF;
> >
> >  	freqreg = (u64)freqreg * (u64)(st->mclk_hz / 4);
> > -	do_div(freqreg, 1 << 27);
> > +	do_div(freqreg, BIT(27));
> >
> >  	return sprintf(buf, "%d\n", (int)freqreg);
> >  }
> > @@ -452,9 +452,9 @@ static ssize_t ad5933_store(struct device *dev,
> >
> >  		/* 2x, 4x handling, see datasheet */
> >  		if (val > 1022)
> > -			val = (val >> 2) | (3 << 9);
> > +			val = (val >> 2) | (BIT(10) | BIT(9));
> 
> This would be better without the parentheses on (BIT(10) | BIT(9)
> 
> julia
> 
> >  		else if (val > 511)
> > -			val = (val >> 1) | (1 << 9);
> > +			val = (val >> 1) | BIT(9);
> >
> >  		dat = cpu_to_be16(val);
> >  		ret = ad5933_i2c_write(st->client,
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170917011142.GA26676%40Haneen.
> > For more options, visit https://groups.google.com/d/optout.
> >

