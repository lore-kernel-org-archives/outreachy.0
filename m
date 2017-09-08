X-GM-THRID: 6463264709450661888
X-Received: by 10.84.210.68 with SMTP id z62mr1457039plh.2.1504863997975;
        Fri, 08 Sep 2017 02:46:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.146.214 with SMTP id u205ls2938053iod.10.gmail; Fri, 08
 Sep 2017 02:46:37 -0700 (PDT)
X-Received: by 10.202.169.211 with SMTP id s202mr1237258oie.3.1504863997407;
        Fri, 08 Sep 2017 02:46:37 -0700 (PDT)
Received: by 10.202.84.148 with SMTP id i142msoib;
        Fri, 8 Sep 2017 02:40:02 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDGLlxuAJ4+EEholGs7VOuWrfQNDHx2DHU+iHwAHcZuX8hT7CwI9XqcjV5yhXZsl/QUvOoE
X-Received: by 10.55.159.86 with SMTP id i83mr1187701qke.41.1504863602098;
        Fri, 08 Sep 2017 02:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504863602; cv=none;
        d=google.com; s=arc-20160816;
        b=jRoSey6kQzBOGsQLQ8O0FIHDIvDRE2hBdX3mh/x12na7RKWSFJdP09oqb0Fw16z5eW
         eJQaKnUr3s1IQlBgV0EpsHF4eTRozWJq8y+ImDd7SV82ObuHcQGSOkhCTOZzzIobPyds
         TtojRQlT9VNAiVlacBM8ue9AZ3aLL4y6E7fg6NBvVrBqOzZRUmRJoCIAIXHpfHqJsBxr
         +nLvbiz0CDTuWdjtnA6n5aXeDwsYn1f9TR2qCvfiWgbiSzvF6ff1Of3YMAGYahEaoSGN
         +aXX0pHtUGS/U2ZhHTJQanymdEVxwhy0pyzrMtBhCQ9ZNoDeV/yTUPCufd311j3yveub
         dYXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=9f8iM/G50M0gFKnQ1Tf0QRSCJdsqwfcHWhlUx7C4muM=;
        b=TjMMdNMUxqP5lKMSCHHpTfzEeaZOgkxym3GHT1+SZrHG3mqYudWz7TvIFphius0v4c
         HnN3jPH1NrrGnST2MtNfCr1BnUaC09kWUNFb/dt7BxgjZdx9Kgzm8bK/Cz59b69GdHxB
         2kokO6ZcYInOwLKSqkicVO+2TMAWkf+hm9jwU7vvf7dMO9KCXkYdrIPiSiGKRnFHw4sa
         lJXjfHqt97SjjLhhk5YtQgZBLCxKiYs5EViGlO5PMdhFqJFbjIE8uWUMRC7LSTLB+596
         VayZ8JmJ6kog06pSlAFSPo7IcezB/mcF5pmDTy3t6H3F9znBj0CkCH7idcZNfC6Pgric
         lpiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jonathan.cameron@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=jonathan.cameron@huawei.com
Return-Path: <jonathan.cameron@huawei.com>
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id g19si210056pfd.14.2017.09.08.02.40.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 02:40:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of jonathan.cameron@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jonathan.cameron@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=jonathan.cameron@huawei.com
Received: from 172.30.72.60 (EHLO DGGEMS410-HUB.china.huawei.com) ([172.30.72.60])
	by dggrg04-dlp.huawei.com (MOS 4.4.6-GA FastPath queued)
	with ESMTP id DGV54838;
	Fri, 08 Sep 2017 17:33:15 +0800 (CST)
Received: from localhost (10.206.48.115) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 8 Sep 2017
 17:33:08 +0800
Date: Fri, 8 Sep 2017 10:32:57 +0100
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
CC: Himanshi Jain <himshijain.hj@gmail.com>,
        <outreachy-kernel@googlegroups.com>, <lars@metafoo.de>,
        <Michael.Hennerich@analog.com>, <jic23@kernel.org>, <knaack.h@gmx.de>,
        <pmeerw@pmeerw.net>, <gregkh@linuxfoundation.org>,
        <linux-iio@vger.kernel.org>, <devel@driverdev.osuosl.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] Staging: iio: adc: Added Space around binary op.
Message-ID: <20170908103257.00002165@huawei.com>
In-Reply-To: <DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk>
References: <20170908044752.GA6199@himanshi-Inspiron-5558>
	<DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk>
Organization: Huawei
X-Mailer: Claws Mail 3.15.0 (GTK+ 2.24.31; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.206.48.115]
X-CFilter-Loop: Reflected
X-Mirapoint-Virus-RAPID-Raw: score=unknown(0),
	refid=str=0001.0A090205.59B263DC.000A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0,
	ip=0.0.0.0,
	so=2014-11-16 11:51:01,
	dmn=2013-03-21 17:37:32
X-Mirapoint-Loop-Id: baec6dda5f4ba42d4436880dff1d48e7

On Fri, 8 Sep 2017 07:29:06 +0100
Jonathan Cameron <jic23@jic23.retrosnub.co.uk> wrote:

> On 8 September 2017 05:47:52 BST, Himanshi Jain <himshijain.hj@gmail.com> wrote:
> >Added space around(one on each side of) binary
> >operator(-) as preferred according to kernel
> >coding style.
> >
> >Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>  
> 
> Take a closer look at that macro. It isn't doing what you think...  
> To give a hint, changing this breaks userspace.

Ok, I'm bored of this particular one coming up. When you have
worked out what is going on Himanshi, would you mind putting
together a patch adding a comment describing why it is a bad
idea to 'fix' this?  That would be a very useful patch as
far as I'm concerned :)

There aren't that many cases of this in IIO so adding a comment
on each of them is probably reasonable just to avoid wasting
people's time on fixing them! (I think we have had more than
5 such goes this year so far...)

Jonathan

> 
> Jonathan
> 
> 
> >---
> > drivers/staging/iio/adc/ad7192.c | 2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >diff --git a/drivers/staging/iio/adc/ad7192.c
> >b/drivers/staging/iio/adc/ad7192.c
> >index d11c6de..1aee662 100644
> >--- a/drivers/staging/iio/adc/ad7192.c
> >+++ b/drivers/staging/iio/adc/ad7192.c
> >@@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
> > }
> > 
> > static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> >-			     in_voltage-voltage_scale_available,
> >+			     in_voltage - voltage_scale_available,
> > 			     0444, ad7192_show_scale_available, NULL, 0);
> > 
> > static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,  
> 


