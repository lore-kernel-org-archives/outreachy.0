X-GM-THRID: 6463264709450661888
X-Received: by 10.99.115.17 with SMTP id o17mr1505284pgc.123.1504865382098;
        Fri, 08 Sep 2017 03:09:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.200.74 with SMTP id y71ls3012691iof.48.gmail; Fri, 08 Sep
 2017 03:09:39 -0700 (PDT)
X-Received: by 10.36.66.133 with SMTP id i127mr1145385itb.3.1504865379554;
        Fri, 08 Sep 2017 03:09:39 -0700 (PDT)
Received: by 10.202.205.139 with SMTP id d133msoig;
        Fri, 8 Sep 2017 02:47:10 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCL1XFrLM/boiPLpTFqqnimX55jh5FCoCZGo/2NkjPDuwCDXLgrtTcXcXUfmrxOwyL74Xh5
X-Received: by 10.176.80.228 with SMTP id d33mr1371765uaa.53.1504864030516;
        Fri, 08 Sep 2017 02:47:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504864030; cv=none;
        d=google.com; s=arc-20160816;
        b=zovUkLGBh6YFgt0tiRNz65NHve0NvmjDcPEZO403y/dyE4HfsN3LiznEKelJqr7spT
         bTxNpG1wDlDMNgXuxmk5Cdvq7wH4O3cEqNmNKztS0zpu1L5REEoH2rTj38tdFSy9d0Li
         Ky2T5SLo2LlnTBzxgC96ryXRluplKoSpLusciGRffj0VCuY444jvnj2f1C+02xG0YFBI
         xRxL9J9Z2RlwLtet2PTn/PePiGJ1MYqKxhmbtecsRqhZNHghSV/TKo0YsOJL4NX6KMU9
         m3CMTBxq4lc3MakEg0g+zJ+IjldymEkBdNfz3jw2y8r8FGC4osEVIp21+7FIKQMVfqrv
         vB6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=cspjdphtwHx22ECCnjo+yrxQV2GIeqM5YOoUK+Sy6cc=;
        b=n7ks+ap4UbbVeRGPKmseNZ5Gk3kLV+tMyJqvGXQMuIXQdM5NGWGgwxVDy2K1jDtj31
         O70+NWtHPwWou8HQiiDxe2tckD2rtqBD2SMBjP+QOV5dniPSkelkHjTabPlAxhNN1dBg
         djMXwk/VsZZiMX9zFdP2bd3W7Lxb7zyEotuhUtZhtricxmCOAj/YCTIRob7pfBbnz7oS
         c2fNwnN6ExvnpxabnYxp0JdOeAr1vIY2oDsaF5XIEE5UcYUbKAFvRcKZnKXLF4qjIdYj
         KU6wh7J/mZL62L1lXL//de9dNRVrVrAkKXuxKEXGqbgPPcwkEH6mJ6qwehw1PFU4+jz/
         z7nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jonathan.cameron@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=jonathan.cameron@huawei.com
Return-Path: <jonathan.cameron@huawei.com>
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id a74si203044pfg.16.2017.09.08.02.47.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 02:47:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jonathan.cameron@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jonathan.cameron@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=jonathan.cameron@huawei.com
Received: from 172.30.72.60 (EHLO DGGEMS406-HUB.china.huawei.com) ([172.30.72.60])
	by dggrg05-dlp.huawei.com (MOS 4.4.6-GA FastPath queued)
	with ESMTP id DGX56816;
	Fri, 08 Sep 2017 17:46:33 +0800 (CST)
Received: from localhost (10.206.48.115) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 8 Sep 2017
 17:46:28 +0800
Date: Fri, 8 Sep 2017 10:46:17 +0100
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: Lars-Peter Clausen <lars@metafoo.de>
CC: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>,
        Himanshi Jain
	<himshijain.hj@gmail.com>,
        <outreachy-kernel@googlegroups.com>, <Michael.Hennerich@analog.com>,
        <jic23@kernel.org>, <knaack.h@gmx.de>, <pmeerw@pmeerw.net>,
        <gregkh@linuxfoundation.org>, <linux-iio@vger.kernel.org>,
        <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] Staging: iio: adc: Added Space around binary op.
Message-ID: <20170908104617.00001edf@huawei.com>
In-Reply-To: <2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de>
References: <20170908044752.GA6199@himanshi-Inspiron-5558>
	<DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk>
	<20170908103257.00002165@huawei.com>
	<2e3476f0-9e7e-2701-220a-5fb178d68d2e@metafoo.de>
Organization: Huawei
X-Mailer: Claws Mail 3.15.0 (GTK+ 2.24.31; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.206.48.115]
X-CFilter-Loop: Reflected
X-Mirapoint-Virus-RAPID-Raw: score=unknown(0),
	refid=str=0001.0A090201.59B266FB.00B3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0,
	ip=0.0.0.0,
	so=2014-11-16 11:51:01,
	dmn=2013-03-21 17:37:32
X-Mirapoint-Loop-Id: caaef987b64bbca50d84e04b2b5143ba

On Fri, 8 Sep 2017 11:37:56 +0200
Lars-Peter Clausen <lars@metafoo.de> wrote:

> On 09/08/2017 11:32 AM, Jonathan Cameron wrote:
> > On Fri, 8 Sep 2017 07:29:06 +0100
> > Jonathan Cameron <jic23@jic23.retrosnub.co.uk> wrote:
> >   
> >> On 8 September 2017 05:47:52 BST, Himanshi Jain <himshijain.hj@gmail.com> wrote:  
> >>> Added space around(one on each side of) binary
> >>> operator(-) as preferred according to kernel
> >>> coding style.
> >>>
> >>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>    
> >>
> >> Take a closer look at that macro. It isn't doing what you think...  
> >> To give a hint, changing this breaks userspace.  
> > 
> > Ok, I'm bored of this particular one coming up. When you have
> > worked out what is going on Himanshi, would you mind putting
> > together a patch adding a comment describing why it is a bad
> > idea to 'fix' this?  That would be a very useful patch as
> > far as I'm concerned :)
> > 
> > There aren't that many cases of this in IIO so adding a comment
> > on each of them is probably reasonable just to avoid wasting
> > people's time on fixing them! (I think we have had more than
> > 5 such goes this year so far...)
> >   
> 
> I'd much rather fix this API so that you have to put "" around the name so
> that it is clear that it is a string, rather than doing the implicit
> conversion to string using preprocessor magic. Better to have a
> self-documenting API then having to add a comment to each user of the API.

Good point.

So Himanshi, feel like taking this on?

Jonathan

> 
> > Jonathan
> >   
> >>
> >> Jonathan
> >>
> >>  
> >>> ---
> >>> drivers/staging/iio/adc/ad7192.c | 2 +-
> >>> 1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/staging/iio/adc/ad7192.c
> >>> b/drivers/staging/iio/adc/ad7192.c
> >>> index d11c6de..1aee662 100644
> >>> --- a/drivers/staging/iio/adc/ad7192.c
> >>> +++ b/drivers/staging/iio/adc/ad7192.c
> >>> @@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
> >>> }
> >>>
> >>> static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> >>> -			     in_voltage-voltage_scale_available,
> >>> +			     in_voltage - voltage_scale_available,
> >>> 			     0444, ad7192_show_scale_available, NULL, 0);
> >>>
> >>> static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,    
> >>  
> >   
> 


