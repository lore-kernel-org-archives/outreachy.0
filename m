X-GM-THRID: 6464655213388103680
X-Received: by 10.13.238.7 with SMTP id x7mr9830979ywe.39.1505239300706;
        Tue, 12 Sep 2017 11:01:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.4 with SMTP id l4ls1721201ita.7.gmail; Tue, 12 Sep 2017
 11:01:39 -0700 (PDT)
X-Received: by 10.202.179.2 with SMTP id c2mr8966842oif.123.1505239299801;
        Tue, 12 Sep 2017 11:01:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505239299; cv=none;
        d=google.com; s=arc-20160816;
        b=jOuTj28kpstw3fcnLstxdmY7wtgw+Z3vfVq1Rvod8xKi1ccmXw8G/2JhQ+XEEyGxnJ
         q5ELh0SYdhlSMjNLEMswEfpntex4Kb9qmEzuvmVW3hs2DisXJuCZxoInolgty/FbxaTY
         ulcZIZ5usDOxNETXwEG2qTa9K2BDovlNX/QIbzMi2X9JYXuaJ4G6R0eQnpns/vp7OjSD
         JxInJTTeZuodEtWWFUdKIbWXpK3u5KTEvga+ybuMVRCiIgymRbMuqm90eKp9FM5nx4Cr
         IuERHgEcbInPqNm5xUoYLEz5dgskPXRVdn2UsjiWDlgWclm4UFyxCzGqqWamiepIX3Qa
         K0Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=3fAXiOuPJQrtAJGHtVY4cmt2RFa99FR9pMG7g2fKwi4=;
        b=esQEbFQlgwfWFOOOD/os4p47ZEGhiBLO7qQLXX8bb5QQVjdbHm/yiMphiF8t9Dcq6R
         KtvneccK9hranIbVm6e2onK0f6heO7B5ZBlZK+ghq7SZc2e6xdD5OHtlho45ccyDfRty
         QSQS4wmDcoKvRoGekOkK6dMzhjH1jH0C9RCc/14RVHfCIj7HqVbrC7D/ZquewiRUBF74
         mMhk4BiO2pwbgjJTfAKB8leRYvcXUuEwp6MCgrRRdX2aAOQsqGPQY9ViNtYnTLaGbfhN
         82WXphb5cIqPWntqEN8niCKEtAg0OFH1jm/uz8XvHEUxAZ3bTREEh0RMeBYPfB4Ssozq
         OmCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fXSZQMc+;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id v25si1228505pfg.11.2017.09.12.11.01.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 11:01:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fXSZQMc+;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v5so6508659pgn.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 11:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3fAXiOuPJQrtAJGHtVY4cmt2RFa99FR9pMG7g2fKwi4=;
        b=fXSZQMc+8uivwtScyY2ruch4jsnMVFEfVbFOMU2T4EmWkUKwQE+CTGXrmP/WCRmqSA
         33oBb5IK+LAQoD4YTvnMImZSqKzsvBNaFze2P1pvfiYisZ+BBKKVsGmZqU1UTWa6VY5e
         pXWrI9bHFkOUMsl3zSBeS9SMmpiS8cJDibRLGuMjOSa10RBXPzZ/za3iZ+NKR7SbmmGr
         yZxPlhFFVN51+0rIZ957Ku8OjYsaK13uQ8EIKUSzLYtuW0iA+Gp4IHApMnyWmLortpq5
         QGAV4/mYYC4Xletq4lxPt8SZUAMy0lwq1lbPDZsXihonOr14z5idbIdfCM6ghhZaopsK
         tplA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3fAXiOuPJQrtAJGHtVY4cmt2RFa99FR9pMG7g2fKwi4=;
        b=qWtiPXZ5XVFzlNCLn7z0XrHAjdPgzwOKM7QWVTHjDxcrbo8GyDv0KGIOprmG/VKAh6
         ZeD9rIG+Cy3RuV9nmb4cohyJCX7oW1qWY4S3mylzB/X3mfiSyypux6jyyM/qlFCtIrMU
         MATLT+LbihcZbDp+8Maj4Eh2sLiaNQr2ld5ATIUZVx2o5yx/2MXjgssuD5H75ubrHOPL
         I4+M1ViZaCBR7Wvdi0hoovU506REWv903eNwRoJybDYNIwFMcouLRx51yu96XNMWnLuq
         e844tx3CjqhtYCbjoW7mAdXE4CulXuD4ewb3vzPp04SYklA2mie2LgppOHkIyLLMMOGZ
         IXuw==
X-Gm-Message-State: AHPjjUhRhZ/i7k7wSBdj26UNWBt0KpfugJmqQplltoXmBUH9RjNbQpS3
	ZlUfY0KC1Skl6g==
X-Google-Smtp-Source: ADKCNb7jnBPxOdHeRuC4J2P0LvCGImjOlpLRFrz+bgDeieZi6mbhc6XAMJh7kuxr9251KYQZav7RwQ==
X-Received: by 10.98.89.91 with SMTP id n88mr16023787pfb.280.1505239299263;
        Tue, 12 Sep 2017 11:01:39 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id r81sm12283886pfj.106.2017.09.12.11.01.37
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Sep 2017 11:01:38 -0700 (PDT)
Date: Tue, 12 Sep 2017 23:31:32 +0530
From: himanshi <himshijain.hj@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	"Hennerich, Michael" <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
	driverdev <devel@driverdev.osuosl.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	nick.desaulniers@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] Fixed IIO_DEVICE_ATTR_NAMED API to
 take name as a string and added "" around names
Message-ID: <20170912180132.GB4607@himanshi-Inspiron-5558>
References: <20170911224348.GA13259@himanshi-Inspiron-5558>
 <CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Thanks for the review Daniel! I will change the imperative mood for the commit 
message once the other changes are finalised too and as suggested by Julia,
would try to make the description specific than general.

I tried to think of adding subsystem to the commit subject but could not 
conclude any because of the files involved.
I like the idea of splitting the patch into 2 as you suggested but I
have a doubt that adding the new MACROS to different sysfs files can be put into 1
patch with the subsystem you mentioned but changing the existing
IIO_DEVICE_ATTR_NAMED to use IIO_ATTR_NAMED (sysfs file again) would be included
in the second patch if I am not wrong. So would it be fine to keep the
subsystem as iio for the second patch?

On Tue, Sep 12, 2017 at 10:53:26AM +0300, Daniel Baluta wrote:
> Hi Himanshi,
> 
> On Tue, Sep 12, 2017 at 1:43 AM, Himanshi Jain <himshijain.hj@gmail.com> wrote:
> > Fixed IIO_DEVICE_ATTR_NAMED API to take name as a
> > string instead of implicit conversion to string using
> > preprocessors. Added double quotes around names in
> > existing usage of IIO_DEVICE_ATTR_NAMED.
> 
> Always use imperative mood in commit subject (Fix instead of Fixed).
> 
> The subject should contain a tag, which describes the subsytem/files affected.
> 
> I would split this patch into:
> 
> 1) sysfs: iio: Introduce *_ATTR_NAMED
> 
> and explain here why do we need  __ATTR_NAMED and IIO_ATTR_NAMED
> 
> 2) iio: Use new IIO_DEVICE_ATTR_NAMED API
> 
> But of course, lets wait to see Lars and Jonathan's opinions.
> thanks,
> Daniel.
> 
> >
> > Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> > ---
> >  drivers/iio/adc/ad7793.c          | 2 +-
> >  drivers/staging/iio/adc/ad7192.c  | 2 +-
> >  drivers/staging/iio/adc/ad7280a.c | 4 ++--
> >  include/linux/iio/sysfs.h         | 6 +++++-
> >  include/linux/sysfs.h             | 7 +++++++
> >  5 files changed, 16 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/iio/adc/ad7793.c b/drivers/iio/adc/ad7793.c
> > index e6706a0..d74e324 100644
> > --- a/drivers/iio/adc/ad7793.c
> > +++ b/drivers/iio/adc/ad7793.c
> > @@ -420,7 +420,7 @@ static ssize_t ad7793_show_scale_available(struct device *dev,
> >  }
> >
> >  static IIO_DEVICE_ATTR_NAMED(in_m_in_scale_available,
> > -               in_voltage-voltage_scale_available, S_IRUGO,
> > +               "in_voltage-voltage_scale_available", S_IRUGO,
> >                 ad7793_show_scale_available, NULL, 0);
> >
> >  static struct attribute *ad7793_attributes[] = {
> > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > index d11c6de..daff38c 100644
> > --- a/drivers/staging/iio/adc/ad7192.c
> > +++ b/drivers/staging/iio/adc/ad7192.c
> > @@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
> >  }
> >
> >  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> > -                            in_voltage-voltage_scale_available,
> > +                            "in_voltage-voltage_scale_available",
> >                              0444, ad7192_show_scale_available, NULL, 0);
> >
> >  static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,
> > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > index f85dde9..fd32e9a 100644
> > --- a/drivers/staging/iio/adc/ad7280a.c
> > +++ b/drivers/staging/iio/adc/ad7280a.c
> > @@ -750,14 +750,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> >  }
> >
> >  static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > -               in_voltage-voltage_thresh_low_value,
> > +               "in_voltage-voltage_thresh_low_value",
> >                 0644,
> >                 ad7280_read_channel_config,
> >                 ad7280_write_channel_config,
> >                 AD7280A_CELL_UNDERVOLTAGE);
> >
> >  static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > -               in_voltage-voltage_thresh_high_value,
> > +               "in_voltage-voltage_thresh_high_value",
> >                 0644,
> >                 ad7280_read_channel_config,
> >                 ad7280_write_channel_config,
> > diff --git a/include/linux/iio/sysfs.h b/include/linux/iio/sysfs.h
> > index ce9426c..49c81a4 100644
> > --- a/include/linux/iio/sysfs.h
> > +++ b/include/linux/iio/sysfs.h
> > @@ -55,6 +55,10 @@ struct iio_const_attr {
> >         { .dev_attr = __ATTR(_name, _mode, _show, _store),      \
> >           .address = _addr }
> >
> > +#define IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)             \
> > +       { .dev_attr = __ATTR_NAMED(_name, _mode, _show, _store),        \
> > +         .address = _addr }
> > +
> >  #define IIO_ATTR_RO(_name, _addr)       \
> >         { .dev_attr = __ATTR_RO(_name), \
> >           .address = _addr }
> > @@ -85,7 +89,7 @@ struct iio_const_attr {
> >
> >  #define IIO_DEVICE_ATTR_NAMED(_vname, _name, _mode, _show, _store, _addr) \
> >         struct iio_dev_attr iio_dev_attr_##_vname                       \
> > -       = IIO_ATTR(_name, _mode, _show, _store, _addr)
> > +       = IIO_ATTR_NAMED(_name, _mode, _show, _store, _addr)
> >
> >  #define IIO_CONST_ATTR(_name, _string)                                 \
> >         struct iio_const_attr iio_const_attr_##_name                    \
> > diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
> > index aa02c32..20321cf 100644
> > --- a/include/linux/sysfs.h
> > +++ b/include/linux/sysfs.h
> > @@ -104,6 +104,13 @@ struct attribute_group {
> >         .store  = _store,                                               \
> >  }
> >
> > +#define __ATTR_NAMED(_name, _mode, _show, _store) {                    \
> > +       .attr = {.name = _name,                                         \
> > +                .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },             \
> > +       .show = _show,                                                  \
> > +       .store = _store,                                                \
> > +}
> > +
> >  #define __ATTR_PREALLOC(_name, _mode, _show, _store) {                 \
> >         .attr = {.name = __stringify(_name),                            \
> >                  .mode = SYSFS_PREALLOC | VERIFY_OCTAL_PERMISSIONS(_mode) },\
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170911224348.GA13259%40himanshi-Inspiron-5558.
> > For more options, visit https://groups.google.com/d/optout.

