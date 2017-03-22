X-GM-THRID: 6400149763723886592
X-Received: by 10.157.36.202 with SMTP id z68mr17904565ota.132.1490172783914;
        Wed, 22 Mar 2017 01:53:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls492234iod.49.gmail; Wed, 22 Mar
 2017 01:53:03 -0700 (PDT)
X-Received: by 10.107.128.169 with SMTP id k41mr10802259ioi.72.1490172783142;
        Wed, 22 Mar 2017 01:53:03 -0700 (PDT)
Return-Path: <arndbergmann@gmail.com>
Received: from mail-ot0-x232.google.com (mail-ot0-x232.google.com. [2607:f8b0:4003:c0f::232])
        by gmr-mx.google.com with ESMTPS id e196si104952itc.2.2017.03.22.01.53.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 01:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 2607:f8b0:4003:c0f::232 as permitted sender) client-ip=2607:f8b0:4003:c0f::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 2607:f8b0:4003:c0f::232 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: by mail-ot0-x232.google.com with SMTP id i1so166323440ota.3
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 01:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=zJWaKS6rbXwSmTYtGafP64u4RZqI3eKj0J1Y8MNNA/I=;
        b=gFTafkXlCZtqCbEqJN4nvJwguPw3Ui52qK9Nwp6MqNejW5/vBTk5NMEOQLTvzp2gX6
         cFQliuXZUg5DFUra8qV7HdFjXlULCENKT/TCL1Yc00q8cC/qT/2++OuCdxsEp29FYcQl
         qzH61rir2Yb9qSdQ8bF28qcHmCjb+Nc1BF5aeei2z65An0tQo0CfGrleWudWYEvgaEFB
         KrvxedwFjn5wG5v3HQolNBFnJVydzSzKPEjhNWPgHypwA+owq/CbM1k3O7Xk33IjAB2q
         JdaVLzw241dwSY+4PbSLMQc+tzrQcWYdq5QZJar6u3NbX2oIPxW+K2cni7L73ebGfHp1
         hkLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=zJWaKS6rbXwSmTYtGafP64u4RZqI3eKj0J1Y8MNNA/I=;
        b=kW+vGj2KZFkqwutpE7HpooBJmJGU7aUg9qa0CpeddqjbsmnendlnEKjz2D/XV1X5L6
         7ksVEFDMsWG0jFtlW4YDsOoXB7C+PHfxsS8mJiS/rG3MV3ZvwG8dueuvd1qwx5FUIWmK
         DnUO0Ww9bfdg70/X8o8pvh+BK1O+A6s/YfvT1FGUAIKEuoaSFkCaSUUwIkDJ0RETPf6G
         k16sGUd+al3Z+sbMFn5KeYKTl2vCPuGoXwWwqQfTw7GET+T/KZMdDgXYIN4SlngWH93D
         0NxkL2nL9HASl/kzE04PiRjyRAOrx74FteuzyctpIKH1DPDMXDvFUW06naMUVUJolrnT
         7JjA==
X-Gm-Message-State: AFeK/H0RhKw2emuwNIU11NAgXsRMH9CbSZ0Cq3dGtJxjQKMpiJZIgxyUV4oNt2CcOjgpp0mT459Axj3aHmeqEw==
X-Received: by 10.157.1.171 with SMTP id e40mr24681668ote.41.1490172782902;
 Wed, 22 Mar 2017 01:53:02 -0700 (PDT)
MIME-Version: 1.0
Sender: arndbergmann@gmail.com
Received: by 10.157.5.145 with HTTP; Wed, 22 Mar 2017 01:53:02 -0700 (PDT)
In-Reply-To: <20170322024942.GA21242@arushi-HP-Pavilion-Notebook>
References: <20170322024942.GA21242@arushi-HP-Pavilion-Notebook>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 22 Mar 2017 09:53:02 +0100
X-Google-Sender-Auth: Khk_lNpJ1h0AbRJZF2M_cfhFwH4
Message-ID: <CAK8P3a2sKZK7mRsWKnLsz6b9TYy_LdxhVCUnxUpkEOHZRDrdpA@mail.gmail.com>
Subject: Re: staging: iio: Replace a bit shift by a use of BIT.
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fbdev@vger.kernel.org, 
	devel@driverdev.osuosl.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 3:49 AM, Arushi Singhal
<arushisinghal19971997@gmail.com> wrote:

> @@ -232,7 +232,7 @@ static int ad7150_write_event_config(struct iio_dev *indio_dev,
>         if (ret < 0)
>                 goto error_ret;
>
> -       cfg = ret & ~((0x03 << 5) | (0x1 << 7));
> +       cfg = ret & ~((0x03 << 5) | (BIT(7)));
>
>         switch (type) {
>         case IIO_EV_TYPE_MAG_ADAPTIVE:

While the change in the #defines is not unusual, this particular change
here makes it harder to read, so I'd recommend leaving it alone, or changing
it to use symbolic names instead of the bit masks.

>  /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
> -#define AD7746_VTSETUP_VTEN            (1 << 7)
> +#define AD7746_VTSETUP_VTEN            (BIT(7))
>  #define AD7746_VTSETUP_VTMD_INT_TEMP   (0 << 5)
> -#define AD7746_VTSETUP_VTMD_EXT_TEMP   (1 << 5)
> +#define AD7746_VTSETUP_VTMD_EXT_TEMP   (BIT(5))

Why did you leave one of them unchanged?

    Arnd

