X-GM-THRID: 6202672545102036992
X-Received: by 10.182.19.226 with SMTP id i2mr13043448obe.13.1444694466058;
        Mon, 12 Oct 2015 17:01:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.215.162 with SMTP id oj2ls1452272obc.15.gmail; Mon, 12 Oct
 2015 17:01:05 -0700 (PDT)
X-Received: by 10.182.50.138 with SMTP id c10mr26767442obo.38.1444694465678;
        Mon, 12 Oct 2015 17:01:05 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id uv4si30496pac.0.2015.10.12.17.01.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 17:01:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (mobile-166-176-185-12.mycingular.net [166.176.185.12])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C6F54360;
	Tue, 13 Oct 2015 00:01:04 +0000 (UTC)
Date: Mon, 12 Oct 2015 17:01:03 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: Daniel Baluta <daniel.baluta@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 5/9] staging: iio: adc: add spaces
 around binary operators
Message-ID: <20151013000103.GA23613@kroah.com>
References: <cover.1444419393.git.ciorneiioana@gmail.com>
 <d94402f948a0d2561ee046fd5fcb56ea562ab1bf.1444419393.git.ciorneiioana@gmail.com>
 <CAEnQRZAZ0f5p3myoNWSdzF=WhxoPWMxNLYn+wcHThYz_YrqKzg@mail.gmail.com>
 <CAHWJYFm8t+=JB7RGOb1xVtFVrn8fDvT0eVyH5jxio2yojcohpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHWJYFm8t+=JB7RGOb1xVtFVrn8fDvT0eVyH5jxio2yojcohpQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 12, 2015 at 10:00:30PM +0300, Ioana Ciornei wrote:
> On Mon, Oct 12, 2015 at 7:38 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> > On Fri, Oct 9, 2015 at 10:51 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> >> Add spaces around binary operators like -, +, * etc
> >> in order to improve readability
> >>
> >> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> >> ---
> >>
> >> Changes in v2:
> >>     - nothing
> >> Changes in v3:
> >>     - nothing
> >>
> >>  drivers/staging/iio/adc/ad7192.c  | 2 +-
> >>  drivers/staging/iio/adc/ad7280a.c | 4 ++--
> >>  drivers/staging/iio/adc/ad7816.c  | 2 +-
> >>  3 files changed, 4 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> >> index e7212c8..1bae258 100644
> >> --- a/drivers/staging/iio/adc/ad7192.c
> >> +++ b/drivers/staging/iio/adc/ad7192.c
> >> @@ -377,7 +377,7 @@ ad7192_show_scale_available(struct device *dev,
> >>  }
> >>
> >>  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> >> -                            in_voltage-voltage_scale_available,
> >> +                            in_voltage - voltage_scale_available,
> >
> > This is not ok :). in_voltage-voltage_scale_available is the name of
> > an IIO sysfs
> > attribute exposed to user space. '-' is a part of the name, there is
> > no binary operator
> > here.
> >
> > If checkpatch complains about this then it's a false positive.
> 
> 
> Yes, checkpatch generated a warning and also there were no build errors.
> Sorry about this. I will send a v2.

You mean "v4", right?  This is v3 already...

