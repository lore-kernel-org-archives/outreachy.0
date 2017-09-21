X-GM-THRID: 6465168256299696128
X-Received: by 10.46.43.216 with SMTP id r85mr876742ljr.4.1506002870412;
        Thu, 21 Sep 2017 07:07:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.229.132 with SMTP id i4ls466726lfk.2.gmail; Thu, 21 Sep
 2017 07:07:48 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAxMo9tE8uTVNhEeWCuiUuvH7lGwF+oe0vo27SInkpYQ/qgx6BC3qYMOuz9Co95XOHKxCjW
X-Received: by 10.25.228.65 with SMTP id b62mr600058lfh.37.1506002868929;
        Thu, 21 Sep 2017 07:07:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506002868; cv=none;
        d=google.com; s=arc-20160816;
        b=GDbS969/Yi8yssyyqUXAGu/RfSFoqCJKeqsQ1h4H78YAnElLWxiDCrKly220NaIAH0
         K2m/3FQF58ID5KCEyBWDix3y0rKgYpCHRL1XPmfAVp/4r3h2v0gxkf4rxSP7BEMS29sc
         iBVQngFOULjGS0sXy+LnTbYuO6PgZ0Bjy3g67Uc1RxpdumIA/KF6PfJH5Iz8KpOuCC6D
         scFIbxJN5k7txCqrRoPA+FUAt9d7upP1ckozqulxjpYS4kDb0evJQxg4d80a6/MA3Hxq
         wANjgLCy1QwxM1vOdaaAUqwqCIobIArlYru9rn3NDI/+IjPYRzAm2pIutXizlBw4NCt8
         bxyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=JeOvG1jrCLjXoO4NmH9WDaNPJfEqQkUCsSoorTzYpO8=;
        b=hzAttjPr7B80yjEyAIw0VsFBudx1Jpx4Jt+yV6QjAMmhoOeUPNrOC61E2ZSwkTzgtL
         SkxojrHVhuwzJ0bQTiB3j0bZ9BMO24+4PG7bDC2HKwNyS6At466RWrEWt0WIOWWOoF0p
         FYng4/0NXbDFyLvQGt4VV2Y1YP5dFA3DETLBFPFejj6WiDIGJ27WmiqWGdW6IZK7L7a2
         12vR3BavY8ZfWxA2OXnaZ1S8uX+FfgGBTNV5wtg3pxh/376BpSfer9x/gRPxx/RauDPz
         jUXywNsXriIIcB+7J0I+jKVbMfuUzvAeQarMHUnGevbIO4H5Q0K584zGYuiTVnbN/q5o
         8Iiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 200si385422wmj.0.2017.09.21.07.07.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 07:07:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,425,1500933600"; 
   d="scan'208";a="238287497"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Sep 2017 16:07:47 +0200
Date: Thu, 21 Sep 2017 16:07:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
cc: Himanshi Jain <himshijain.hj@gmail.com>, 
    Peter Meerwald <pmeerw@pmeerw.net>, 
    Jonathan Cameron <jic23@jic23.retrosnub.co.uk>, 
    Lars-Peter Clausen <lars@metafoo.de>, Greg KH <gregkh@linuxfoundation.org>, 
    Jonathan Cameron <jic23@kernel.org>, 
    driverdev <devel@driverdev.osuosl.org>, 
    Daniel Baluta <daniel.baluta@gmail.com>, 
    "Hennerich, Michael" <Michael.Hennerich@analog.com>, 
    linux-iio@vger.kernel.org, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    Nick Desaulniers <nick.desaulniers@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Hartmut Knaack <knaack.h@gmx.de>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] include: linux: sysfs:
 Add __ATTR_NAMED macro
In-Reply-To: <20170921145442.0000160b@huawei.com>
Message-ID: <alpine.DEB.2.20.1709211605500.3160@hadrien>
References: <cover.1505291907.git.himshijain.hj@gmail.com> <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com> <20170913180310.27cbf1b1@archlinux> <20170913185805.GB26390@kroah.com> <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
 <A955BE73-0C63-4316-943D-DF9181CE7AC5@jic23.retrosnub.co.uk> <CAKJRnmMwfxz-98qGnR+cMRC=70rE8CUncE3rR=d3=KQkyoTGRQ@mail.gmail.com> <20170921145442.0000160b@huawei.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Sep 2017, Jonathan Cameron wrote:

> On Mon, 18 Sep 2017 16:19:07 +0530
> Himanshi Jain <himshijain.hj@gmail.com> wrote:
>
> > On Thu, Sep 14, 2017 at 2:20 AM, Jonathan Cameron
> > <jic23@jic23.retrosnub.co.uk> wrote:
> > >
> > >
> > > On 13 September 2017 12:23:31 GMT-07:00, Lars-Peter Clausen <lars@metafoo.de> wrote:
> > >>On 09/13/2017 08:58 PM, Greg KH wrote:
> > >>> On Wed, Sep 13, 2017 at 06:03:10PM +0100, Jonathan Cameron wrote:
> > >>>> On Wed, 13 Sep 2017 14:14:07 +0530
> > >>>> Himanshi Jain <himshijain.hj@gmail.com> wrote:
> > >>>>
> > >>>>> Add __ATTR_NAMED macro similar to __ATTR but taking name as a
> > >>>>> string instead of implicit conversion of argument to string using
> > >>>>> the macro _stringify(_name).
> > >>>>>
> > >>>>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> > >>>>> ---
> > >>>>>  include/linux/sysfs.h | 7 +++++++
> > >>>>>  1 file changed, 7 insertions(+)
> > >>>>>
> > >>>>> diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
> > >>>>> index aa02c32..20321cf 100644
> > >>>>> --- a/include/linux/sysfs.h
> > >>>>> +++ b/include/linux/sysfs.h
> > >>>>> @@ -104,6 +104,13 @@ struct attribute_group {
> > >>>>>    .store  = _store,                                               \
> > >>>>>  }
> > >>>>>
> > >>>>> +#define __ATTR_NAMED(_name, _mode, _show, _store) {                       \
> > >>>>
> > >>>> I'm not sure about the naming here.  The normal __ATTR macro is also
> > >>>> 'named'.  Maybe something as awful as
> > >>>>
> > >>>> __ATTR_STRING_NAME ?
> > >>>>
> > >>>> Greg what do you think?
> > >>>
> > >>> ick ick ick.
> > >>>
> > >>>> This is all to allow us to have names with operators in them without
> > >>>> checkpatch complaining about them... A worthwhile aim just to stop
> > >>>> more people wasting time trying to 'fix' those cases by adding
> > >>spaces.
> > >>>
> > >>> Yeah, but this really seems "heavy" for just a crazy sysfs name in a
> > >>> macro.  Adding a whole new "core" define for that is a hard sell...
> > >>>
> > >>> I also want to get rid of the "generic" __ATTR type macros, and force
> > >>> people to use the proper _RW and friends instead.  I don't want to
> > >>add
> > >>> another new one that people will start to use that I later have to
> > >>> change...
> > >>>
> > >>> So no, I don't like this, how about just changing your macros
> > >>instead?
> > >>> No one else has this problem :)
> > >>
> > >>Nobody else realized they have this problem yet. E.g. there are a few
> > >>users
> > >>of __ATTR in block/genhd.c that have the same issue and are likely to
> > >>generate the same false positives from static checkers.
> > >
> > > For IIO there is the option of moving these over to the core generated available callbacks, but
> > > that won't work in every case and is a more major change.  I need to shift a few more drivers
> > > over to the available callbacks and see how well it works out.  Might find time to do one in a
> > >  gap between interesting talks this afternoon...
> >
> > Can I help you in this? It is about exploring options as far as I can
> > make out, although can't really understand what options are those for
> > now.
>
> You are welcome to have a go.  However the relevant code isn't all that
> well tested so I'd want to actually get enough of the setup to run to see
> if it works (which is trickier).  I doubt anyone has ready access
> to this hardware.
>
> Anyhow, to see what I mean see :
>
> https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/tree/drivers/iio/dac/dpot-dac.c
>
> In particular dpot_dac_read_avail() and
>
> static const struct iio_chan_spec dpot_dac_iio_channel = {
> 	.type = IIO_VOLTAGE,
> 	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW)
> 			    | BIT(IIO_CHAN_INFO_SCALE),
> 	.info_mask_separate_available = BIT(IIO_CHAN_INFO_RAW),
> 	.output = 1,
> 	.indexed = 1,
> };
>
> What this does is allow the core to create *_available attributes
> (sometimes this is required by in kernel consumers of the channels as they
> need to know the range of the channel for example).
>
> The intent ultimately is to move drivers over to this interface and hopefully
> get rid of the majority of remaining hand specified attrs.
>
> It's always been well down the todo list though as it is easy to get wrong
> in a given driver and we need to get more emulation in place to allow
> testing of the various drivers. There are a couple of ways of doing such
> emulation (i2c devices can use the i2c-stub framework, or we can do full blown
> qemu emulation) - both are interesting diversions.
>
> Also I promised to write the ABI docs (see the original patches introducing
> it for some docs) but haven't actually done so yet which makes it tricky
> to tell people to start using this stuff even in new drivers!
>
> Anyhow, whilst you are welcome to look at this it might be a high risk choice
> for where to get started during the outreachy applications period.
>
> Still nothing wrong with being brave, but perhaps discuss with Alison, Daniel
> or Julia.

Himanshi,

From a practical point of view, being brave would definitely be taken into
account.  But be sure that you have some accepted patches during the
application period as well.  If you spend all your time on this and it
doesn't work out, that would be too bad.

julia

>
> Thanks,
>
> Jonathan
>
> >
> > Or do you want me to put comments to not to fix this checkpatch
> > warning as you suggested earlier?
> >
> > >
> > > If I am feeling really keen I might write this missing docs I promised a while back on that stuff. Jet lag dependant...
> > >
> > > Jonathan
> > >>
> > >>--
> > >>To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> > >>the body of a message to majordomo@vger.kernel.org
> > >>More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > >
> > > --
> > > Sent from my Android device with K-9 Mail. Please excuse my brevity.
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170921145442.0000160b%40huawei.com.
> For more options, visit https://groups.google.com/d/optout.
>

