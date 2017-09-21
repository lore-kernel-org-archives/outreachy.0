X-GM-THRID: 6465168256299696128
X-Received: by 10.129.174.93 with SMTP id g29mr4924691ywk.76.1506002319696;
        Thu, 21 Sep 2017 06:58:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.56.92 with SMTP id h28ls839925pgn.4.gmail; Thu, 21 Sep 2017
 06:58:38 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCcUkseBuufxSGi09I5Nb4JDHpXEfPAHQnIDSYdWggrT4+jEVmnfUvKmHltVHSX8UV+Kt3R
X-Received: by 10.84.232.6 with SMTP id h6mr3152021plk.41.1506002318186;
        Thu, 21 Sep 2017 06:58:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506002318; cv=none;
        d=google.com; s=arc-20160816;
        b=qgbwjr4c8IbNfAd7MGAbDLCr38v46Yj7JZLMjEO+KHAcxHLQDKao4Uyto2gxqvhdMM
         LjryEVu99G7hrzfRrHIJ+Z42kGXHdXR9Xgd+pO8G9uFgVuoOx23mPDpDN6o7VMuQ3I9A
         RQYM3VDceJxyvkS0hRV42CSVmsIrRZBMGEvrebxRpPXmk9iT/HuMElNpKS5Hc5AN8YSS
         +sDQkHbwxGxN4sqHj83yYNqMN46f0idra3gBfprMeAz92pBzndDK2HQA9BJuxVF/pB3i
         JwiI0A9vkJRUHP98f1m1+VSR48FGNHZm6RN5hJdsqV9H7o/xuUW8Ii10pjtlZzU25vO/
         RGiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=v1/k4Mbs7nInuCElU3/D3TQLG7ohP7y52SQMYujAAkw=;
        b=Hjha50Yqgd+FLvoBQ3MhqAXd3cTVpifET82c98D5Y3uaRehmJWcTU+5BMQ/Brz0x9+
         OjRpmqV1yMeZUiIKoESiuBC0HkbvnTlxm1dPmE6uWShVhxP9rnuwq6nDjaYAt0i+o0c8
         FhwyMOv98H5xx2Hmy6ZlAsFlxHNJJUuq1SkwdbVjhldVhFRN585cbnhogxSvUzDoL8jy
         nAeBn0/JxFjj6q2l5M4N0agQHHwpxFPXQUhmsjcKFO+F2YtQD59gOc9X7jybTF0O+cp2
         eAgHHSukV+tQ6I9d8T6fRRtACbEGml8iEKY4U7QEDK/MIck4wbVFy0PDboBVbRKeP+tX
         T58w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jonathan.cameron@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=jonathan.cameron@huawei.com
Return-Path: <jonathan.cameron@huawei.com>
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id f191si53752ite.7.2017.09.21.06.58.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 21 Sep 2017 06:58:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jonathan.cameron@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jonathan.cameron@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=jonathan.cameron@huawei.com
Received: from 172.30.72.60 (EHLO DGGEMS414-HUB.china.huawei.com) ([172.30.72.60])
	by dggrg04-dlp.huawei.com (MOS 4.4.6-GA FastPath queued)
	with ESMTP id DHR61107;
	Thu, 21 Sep 2017 21:55:12 +0800 (CST)
Received: from localhost (10.206.48.115) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 21 Sep
 2017 21:55:07 +0800
Date: Thu, 21 Sep 2017 14:54:42 +0100
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: Himanshi Jain <himshijain.hj@gmail.com>,
        Peter Meerwald
	<pmeerw@pmeerw.net>
CC: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>,
        Lars-Peter Clausen
	<lars@metafoo.de>,
        Greg KH <gregkh@linuxfoundation.org>,
        Jonathan Cameron
	<jic23@kernel.org>,
        driverdev <devel@driverdev.osuosl.org>,
        Daniel Baluta
	<daniel.baluta@gmail.com>,
        "Hennerich, Michael"
	<Michael.Hennerich@analog.com>,
        <linux-iio@vger.kernel.org>,
        "Linux Kernel
 Mailing List" <linux-kernel@vger.kernel.org>,
        Nick Desaulniers
	<nick.desaulniers@gmail.com>,
        outreachy-kernel
	<outreachy-kernel@googlegroups.com>,
        Hartmut Knaack <knaack.h@gmx.de>
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
Message-ID: <20170921145442.0000160b@huawei.com>
In-Reply-To: <CAKJRnmMwfxz-98qGnR+cMRC=70rE8CUncE3rR=d3=KQkyoTGRQ@mail.gmail.com>
References: <cover.1505291907.git.himshijain.hj@gmail.com>
	<2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
	<20170913180310.27cbf1b1@archlinux>
	<20170913185805.GB26390@kroah.com>
	<5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
	<A955BE73-0C63-4316-943D-DF9181CE7AC5@jic23.retrosnub.co.uk>
	<CAKJRnmMwfxz-98qGnR+cMRC=70rE8CUncE3rR=d3=KQkyoTGRQ@mail.gmail.com>
Organization: Huawei
X-Mailer: Claws Mail 3.15.0 (GTK+ 2.24.31; x86_64-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.206.48.115]
X-CFilter-Loop: Reflected
X-Mirapoint-Virus-RAPID-Raw: score=unknown(0),
	refid=str=0001.0A020206.59C3C4C1.010E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0,
	ip=0.0.0.0,
	so=2014-11-16 11:51:01,
	dmn=2013-03-21 17:37:32
X-Mirapoint-Loop-Id: 8301ab8ddbd2bdc5016056807b21b1ea

On Mon, 18 Sep 2017 16:19:07 +0530
Himanshi Jain <himshijain.hj@gmail.com> wrote:

> On Thu, Sep 14, 2017 at 2:20 AM, Jonathan Cameron
> <jic23@jic23.retrosnub.co.uk> wrote:
> >
> >
> > On 13 September 2017 12:23:31 GMT-07:00, Lars-Peter Clausen <lars@metafoo.de> wrote:  
> >>On 09/13/2017 08:58 PM, Greg KH wrote:  
> >>> On Wed, Sep 13, 2017 at 06:03:10PM +0100, Jonathan Cameron wrote:  
> >>>> On Wed, 13 Sep 2017 14:14:07 +0530
> >>>> Himanshi Jain <himshijain.hj@gmail.com> wrote:
> >>>>  
> >>>>> Add __ATTR_NAMED macro similar to __ATTR but taking name as a
> >>>>> string instead of implicit conversion of argument to string using
> >>>>> the macro _stringify(_name).
> >>>>>
> >>>>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> >>>>> ---
> >>>>>  include/linux/sysfs.h | 7 +++++++
> >>>>>  1 file changed, 7 insertions(+)
> >>>>>
> >>>>> diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
> >>>>> index aa02c32..20321cf 100644
> >>>>> --- a/include/linux/sysfs.h
> >>>>> +++ b/include/linux/sysfs.h
> >>>>> @@ -104,6 +104,13 @@ struct attribute_group {
> >>>>>    .store  = _store,                                               \
> >>>>>  }
> >>>>>
> >>>>> +#define __ATTR_NAMED(_name, _mode, _show, _store) {                       \  
> >>>>
> >>>> I'm not sure about the naming here.  The normal __ATTR macro is also
> >>>> 'named'.  Maybe something as awful as
> >>>>
> >>>> __ATTR_STRING_NAME ?
> >>>>
> >>>> Greg what do you think?  
> >>>
> >>> ick ick ick.
> >>>  
> >>>> This is all to allow us to have names with operators in them without
> >>>> checkpatch complaining about them... A worthwhile aim just to stop
> >>>> more people wasting time trying to 'fix' those cases by adding  
> >>spaces.  
> >>>
> >>> Yeah, but this really seems "heavy" for just a crazy sysfs name in a
> >>> macro.  Adding a whole new "core" define for that is a hard sell...
> >>>
> >>> I also want to get rid of the "generic" __ATTR type macros, and force
> >>> people to use the proper _RW and friends instead.  I don't want to  
> >>add  
> >>> another new one that people will start to use that I later have to
> >>> change...
> >>>
> >>> So no, I don't like this, how about just changing your macros  
> >>instead?  
> >>> No one else has this problem :)  
> >>
> >>Nobody else realized they have this problem yet. E.g. there are a few
> >>users
> >>of __ATTR in block/genhd.c that have the same issue and are likely to
> >>generate the same false positives from static checkers.  
> >
> > For IIO there is the option of moving these over to the core generated available callbacks, but
> > that won't work in every case and is a more major change.  I need to shift a few more drivers
> > over to the available callbacks and see how well it works out.  Might find time to do one in a
> >  gap between interesting talks this afternoon...  
> 
> Can I help you in this? It is about exploring options as far as I can
> make out, although can't really understand what options are those for
> now.

You are welcome to have a go.  However the relevant code isn't all that
well tested so I'd want to actually get enough of the setup to run to see
if it works (which is trickier).  I doubt anyone has ready access
to this hardware.

Anyhow, to see what I mean see : 

https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/tree/drivers/iio/dac/dpot-dac.c

In particular dpot_dac_read_avail() and 

static const struct iio_chan_spec dpot_dac_iio_channel = {
	.type = IIO_VOLTAGE,
	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW)
			    | BIT(IIO_CHAN_INFO_SCALE),
	.info_mask_separate_available = BIT(IIO_CHAN_INFO_RAW),
	.output = 1,
	.indexed = 1,
};

What this does is allow the core to create *_available attributes
(sometimes this is required by in kernel consumers of the channels as they
need to know the range of the channel for example).

The intent ultimately is to move drivers over to this interface and hopefully
get rid of the majority of remaining hand specified attrs.

It's always been well down the todo list though as it is easy to get wrong
in a given driver and we need to get more emulation in place to allow
testing of the various drivers. There are a couple of ways of doing such
emulation (i2c devices can use the i2c-stub framework, or we can do full blown
qemu emulation) - both are interesting diversions.

Also I promised to write the ABI docs (see the original patches introducing
it for some docs) but haven't actually done so yet which makes it tricky
to tell people to start using this stuff even in new drivers!

Anyhow, whilst you are welcome to look at this it might be a high risk choice
for where to get started during the outreachy applications period.

Still nothing wrong with being brave, but perhaps discuss with Alison, Daniel
or Julia.

Thanks,

Jonathan

> 
> Or do you want me to put comments to not to fix this checkpatch
> warning as you suggested earlier?
> 
> >
> > If I am feeling really keen I might write this missing docs I promised a while back on that stuff. Jet lag dependant...
> >
> > Jonathan  
> >>
> >>--
> >>To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> >>the body of a message to majordomo@vger.kernel.org
> >>More majordomo info at  http://vger.kernel.org/majordomo-info.html  
> >
> > --
> > Sent from my Android device with K-9 Mail. Please excuse my brevity.  
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html


