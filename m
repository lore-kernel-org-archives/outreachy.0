X-GM-THRID: 6612972487393148928
X-Received: by 2002:a1c:2355:: with SMTP id j82-v6mr566697wmj.5.1539848439153;
        Thu, 18 Oct 2018 00:40:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9645:: with SMTP id y66-v6ls491819wmd.17.gmail; Thu, 18
 Oct 2018 00:40:38 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60rlUIWhNFGyFtx/gmLTGQU76Im1WkUTp32Us237VUXyCX4W+Ul9cLZqI23I2TQ7LzbDIlk
X-Received: by 2002:a1c:8681:: with SMTP id i123-v6mr570345wmd.13.1539848438200;
        Thu, 18 Oct 2018 00:40:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539848438; cv=none;
        d=google.com; s=arc-20160816;
        b=UxXDYA4LcacRXvzSgZLBjmOZwLNnrZLqomTfCVwZrG0g+bIhJdbQyAR3gaaHpwuWjW
         byczCHwHXYu46DeAfIR290sB+hluY95xnWpn+AyJuzKVPReQLskLm6aY76YbW0lIVB1q
         v9umilQGpL7Nqk6HWuZ/zGol5Jw8K/x2Bnaxh8SqgfPe91zJpWHEJdht3lEm7VqkKZS/
         V53vLg80mSPufa3/ixuPOfWMbFzGIBHlh6ueQ6C3eafX5gGcqun66GR2zlFjPNikx6is
         DMX2U2PZerJcfVxQLPbK5I0PjHpFhMWeeFw3Q+CrYTx98sb+ngMiBjrW+zdMCZwTh4b6
         Rm5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=G7tls1vMtOowlCtXjwDKGc1+LLoQ3769F5wAFJXEVKE=;
        b=CnPefVIay9MJu0yVXZxBWzRJfStFUkRX56ljmtwWwkg4tTzSuGNZF7QE/MgXgaaMKB
         sPKuqRzB7QrDbpgaI9PKDO+vNkXoENmQlJ5YdJvSYLVUWXNLMBjw4Hqikapo+WDEWg1D
         KSqd4vzrlrEpENHY7PVvPGeVKOYU5pz9eo7llQGoY7keUzX1r56lkkFNHqa+SJUKnGHF
         OFjwD/DkvnIf1n+8HaP3Eq3MSss0LM6959LyGLAeB7JosF+p0c0A+9Ubufc1t/GYEqLP
         yW9qmE+zIWF8dtSt36POHFlc8x1yb13q9J4TTIcj3NJOJYgsYmMYGwSkc6hAGg4vuZ6k
         Q+Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id z62-v6si59390wmc.2.2018.10.18.00.40.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 18 Oct 2018 00:40:38 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.46.172.3] (helo=sslproxy06.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <lars@metafoo.de>)
	id 1gD2uy-0001JM-86; Thu, 18 Oct 2018 09:40:28 +0200
Received: from eisbaer.ursus-maritimus.org ([78.47.220.141] helo=[127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89)
	(envelope-from <lars@metafoo.de>)
	id 1gD2ux-0005u0-Su; Thu, 18 Oct 2018 09:40:28 +0200
Subject: Re: [PATCH v2] staging: iio: ad7816: Switch to the gpio descriptor
 interface
To: Phil Reid <preid@electromag.com.au>,
 Nishad Kamdar <nishadkamdar@gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20181017144716.GA11485@nishad>
 <fdcb085c-cf34-3310-f5ab-5795d5997977@electromag.com.au>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <e3d4308c-9608-db52-c51e-5bb5d126284a@metafoo.de>
Date: Thu, 18 Oct 2018 09:40:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <fdcb085c-cf34-3310-f5ab-5795d5997977@electromag.com.au>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.100.1/25047/Thu Oct 18 06:56:19 2018)

On 10/18/2018 09:28 AM, Phil Reid wrote:
[...]
>> +    chip->rdwr_pin = devm_gpiod_get(&spi_dev->dev, "rdwr", GPIOD_IN);
>> +    if (IS_ERR(chip->rdwr_pin)) {
>> +        ret = PTR_ERR(chip->rdwr_pin);
>> +        dev_err(&spi_dev->dev, "Failed to request rdwr GPIO: %d\n",
>> +            ret);
>>           return ret;
>>       }
>> -    gpio_direction_input(chip->rdwr_pin);
> 
> The RD/WR pin is an input to the AD78xx. So this doesn't make sense being
> GPIOD_IN.

One thing at a time. This patch is a straight forward conversion to the GPIO
descriptor interface. It keeps the existing semantics of the driver as they are.

Now these semantics are obviously wrong and should be fixed but that should
be a separate patch from changing the interface.

