X-GM-THRID: 6612972487393148928
X-Received: by 2002:a9d:119b:: with SMTP id v27mr21341557otf.73.1539788306902;
        Wed, 17 Oct 2018 07:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:2947:: with SMTP id d65ls14130732otb.13.gmail; Wed, 17
 Oct 2018 07:58:26 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63Rft6ssp8oWk1TP+MbTvldtppITGmNQhm/DPs0YDHNi7kab8QoGo/YmZDCzapul/WRg6Y5
X-Received: by 2002:a9d:411c:: with SMTP id o28mr20184044ote.66.1539788306007;
        Wed, 17 Oct 2018 07:58:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539788305; cv=none;
        d=google.com; s=arc-20160816;
        b=P5z9+YpWQEiTXvfTQw42M0egiGGC6aQ03OvXDbuxXo0iBoBDBEEoowSY8Pr3f1DLL7
         WpAMtI4SoAql4fyzNECuVrzFy1WVc3BhQhtw5cYUp5p3TTO6MDcCD8t3es83wZ6ShG2Q
         4P+/bYsTBmF0Mqg7mfG76pAWqSDhzeid8ItVhdMEiaBRWqe0AK1B7pBNCXgUGeS/nt2i
         Xsz3NEJtWWSEmFrF5f7aqcIzq30yX9sGwjthjLReozDDjk6MveMBWzQbq9dHPuH38mte
         C6bhDT+317T/vHOotX5qFsVQAS9EbBIH7fxFli1Y0YNrEyrWrED3lFLccYSXqI8Vfae+
         nxnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MdiAtzhZ1B2Yf0Zq0AObTI7jcD1hwPM0Z0G5zt2LZFQ=;
        b=vdvz/kiDV12Fkw7mXPxgaKrxgNb1VTDmH/4YQEzw4Mr3FWDQjGrtCaZGkyU3PI2dS0
         NiM5PxgpuZDbjl7DLUHpoWI3oZRx878qqIK+S1/Hs1k7DysUsDJwsvESxht/ypjDonBE
         E/yUZREPHCdCJptmyimU8Rwt09V0IjbI6mxNCZedB3CTWwKfFbIITk8TSAGeCpfReHH8
         syEdnIA9GD6vmzLjtvsfG+KGFZwFWsB4HRzc309XBLDpDZNM2BppTwehXunV6Kbn1BPk
         tsDb1+8UARl5CAPDam2spLB9HuQAszE7VRaaojtx4rJpVFAP0m5738jDGXmsXJr9/xLf
         yGqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TZFWlteU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x7si1083367oth.4.2018.10.17.07.58.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 07:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TZFWlteU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CA3AC2150F;
	Wed, 17 Oct 2018 14:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1539788305;
	bh=1YNBN0SBWtjodADNrh/Kwtb41xdMAGI2MpXJSkEap6o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TZFWlteUkWITpyDZU2IwBZ2aRRrwFp7ZNwmaltmc7Kengrsz4vJDF5HVpWNe6jxXT
	 KBbau5+0dnNLhDC3Wrb+45vFdtm9DNyYIpKDO5J3RxyxMwrvCqJQMEJ69b0eB8aMKO
	 5L1kiiXD2k4X7Pt8X7ZzmI1nuXxqXl+V7CzqqnwQ=
Date: Wed, 17 Oct 2018 10:58:23 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nishad Kamdar <nishadkamdar@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: iio: ad7816: Switch to the gpio descriptor
 interface
Message-ID: <20181017145823.GC135013@sasha-vm>
References: <20181017144716.GA11485@nishad>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20181017144716.GA11485@nishad>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 17, 2018 at 08:17:20PM +0530, Nishad Kamdar wrote:
>+	chip->rdwr_pin = devm_gpiod_get(&spi_dev->dev, "rdwr", GPIOD_IN);
>+	if (IS_ERR(chip->rdwr_pin)) {
>+		ret = PTR_ERR(chip->rdwr_pin);
>+		dev_err(&spi_dev->dev, "Failed to request rdwr GPIO: %d\n",
>+			ret);
> 		return ret;
> 	}
>-	gpio_direction_input(chip->rdwr_pin);
>-	ret = devm_gpio_request(&spi_dev->dev, chip->convert_pin,
>-				spi_get_device_id(spi_dev)->name);
>-	if (ret) {
>-		dev_err(&spi_dev->dev, "Fail to request convert gpio PIN %d.\n",
>-			chip->convert_pin);
>+	chip->convert_pin = devm_gpiod_get(&spi_dev->dev, "convert", GPIOD_IN);
>+	if (IS_ERR(chip->convert_pin)) {
>+		ret = PTR_ERR(chip->convert_pin);
>+		dev_err(&spi_dev->dev, "Failed to request convert GPIO: %d\n",
>+			ret);
> 		return ret;
> 	}
>-	gpio_direction_input(chip->convert_pin);
>-	ret = devm_gpio_request(&spi_dev->dev, chip->busy_pin,
>-				spi_get_device_id(spi_dev)->name);
>-	if (ret) {
>-		dev_err(&spi_dev->dev, "Fail to request busy gpio PIN %d.\n",
>-			chip->busy_pin);
>+	chip->busy_pin = devm_gpiod_get(&spi_dev->dev, "busy", GPIOD_IN);
>+	if (IS_ERR(chip->busy_pin)) {
>+		ret = PTR_ERR(chip->busy_pin);
>+		dev_err(&spi_dev->dev, "Failed to request busy GPIO: %d\n",
>+			ret);
> 		return ret;
> 	}

Hm, from what I can tell devm_gpio_request() is allocating some memory,
which makes this a series of 4 allocations.

What happens if the fourth allocation fails? Do we leak the first three?

--
Thanks,
Sasha

