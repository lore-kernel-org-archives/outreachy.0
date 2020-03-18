X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:902:8d8d:: with SMTP id v13mr4713780plo.260.1584548643005;
        Wed, 18 Mar 2020 09:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:3103:: with SMTP id x3ls5111547pfx.2.gmail; Wed, 18 Mar
 2020 09:24:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuqla6bMhqmaO4x1MjgT9G4tL1vrNRXRjL9/gmxFqkOgDjGGTqAbIDjw/pacwXOOStkSVhV
X-Received: by 2002:a63:6d8e:: with SMTP id i136mr5616995pgc.325.1584548641181;
        Wed, 18 Mar 2020 09:24:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584548641; cv=none;
        d=google.com; s=arc-20160816;
        b=OhMkxQRHn+3eOYEXsg9PVaLbUAXoU9lxT6Ivwn3NcW/NniwYx0f9fYNP1Tba5jU03y
         r6kS8Gswi65s5RmHes2dKe3V/S5dTn07VLbS6tWrRDkB6EnUJMLO+miTAMFn52YyVuZ8
         h7TQotIaTUt9a5oc1xfFjXHf/pWP5wH1srwc09pPsaQMX2s3Gm6qWc0YHSgtY5YgaVW1
         ulJHNXE79aaEKCeHp/Ln42255QbkASs2PjkbI1j66lCQICV5Mwph4H3k4SaiUqv4/0vX
         7q5ubLt35hufr9spF0Eb85dblIcw7FgGNT3HCGt2uCvpR/MQsc/AOBx/NJXmhZED6EEv
         LT3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sfRBQs5Dz5VvxU1A2guJOa7lJTCHsI6FTFKGIebxiLg=;
        b=QOv84V1CvybJGk1FNiq0tzzuNcC6/cbYXNRC02LYNkKRcLSUGqaq7llLfnKi6psSyD
         t93vgO748sgP/NDl9ZspsUBzdkUEDqC4OCJGWcm9e2mujGUb3OQocLwotu+rAV5JNiUG
         heUPRdfo05bHXgpnLbBnnTCvx8lS61Ar1Zv+ve+9yGOsSrTuFbx82nu5A0MjdySIAPsN
         ch22NXHUQvZfZ21Mlqi0gv8A3LLNKpgyUHbZiA5qPM0evDb5ffUKj6HjN384USPcOG/p
         NrO2ZSzgOBUxtx08EKqwx2bviDy+wqtMR6s5K+pvRCkHPKLA2pXuH8kBLHoR3bgItAuU
         BCww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDQ1IytF;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id h10si92983pju.1.2020.03.18.09.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 09:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDQ1IytF;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id nu11so1426752pjb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 09:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sfRBQs5Dz5VvxU1A2guJOa7lJTCHsI6FTFKGIebxiLg=;
        b=uDQ1IytFO3yVt58CQ2Td/kbum+bs7anqBJTh1zRZ+9i5iiRwYoy6yv5Qu1YveN/2bb
         PnBoO2IIDsY+W3icf/CJUauBBhg05s3x7bjwIld/bhqu72f1spMoiRXMGCgk70A6mzjo
         CjNHQ8oyJXICLbjvkPuR1oUa63VdrzTPDbyn5Yu5a1YpkTyS3U7CMcXL+gW9Z3j+pI7m
         mk2TDs+cWCuHXD5VX2vlu89+F1Xp4Y6Eq55aWw85HM6AIatlzTIZ3GpldQpIUKAiHKOT
         sJaW9ZEyJH+VRicCoV+iJ+bysnrBT7zBkKX906ex+8VlCqYDA6jihEQUzC7qwjtv6rTB
         gdlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sfRBQs5Dz5VvxU1A2guJOa7lJTCHsI6FTFKGIebxiLg=;
        b=Nd3runiEQrha2F6C6nYXHUxF9GugDFU2DOULvK12DSHEBM8blKC7fCwA4Q1xKWx2es
         FD52GqdEfArSuI3bUnwYxRMKdSJhOJkr83D0txOVW2xB5y/FsO4hqw5lx3Zxc8IzJA6C
         xV4N6T0LiDg7+cOpV+iY6YOh7Z2nE0OBYIOZuRXpzxvxmP2waBTWHXL37KLvUsPfOFLj
         RFjeRVyPNkvV3X73An14fAKp4pdrUBY5k8Xi1isVyOCixubF33gqi5kLsu9IgYLepd95
         F1QJgVmJLxbitQhGp6wpqg7JUxSiHR5cQ8zVzuhzYz8PmBiAkmFIT7ZMiqapqWJxdFSp
         Zc/g==
X-Gm-Message-State: ANhLgQ3EWQw7ymg/hrgCKlsnZd3G+DflaAoTJpKMAsxtwmCGLDqFGuzE
	bxUXHSYPnqCUtkoaPWTL9oA=
X-Received: by 2002:a17:902:aa88:: with SMTP id d8mr4525413plr.201.1584548640964;
        Wed, 18 Mar 2020 09:24:00 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id y131sm7280908pfg.25.2020.03.18.09.23.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 09:24:00 -0700 (PDT)
Date: Wed, 18 Mar 2020 21:53:55 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, outreachy-kernel@googlegroups.com,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [PATCH 2/2] staging: iio: adc: ad7280a: Add spaces around
 operators
Message-ID: <20200318162353.GA23226@deeUbuntu>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
 <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>
 <20200318060038.GB1594471@kroah.com>
 <35afdc4b-bd59-7851-aa4f-3d8807668931@metafoo.de>
 <20200318151924.GB2862853@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200318151924.GB2862853@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 18, 2020 at 04:19:24PM +0100, Greg KH wrote:
> On Wed, Mar 18, 2020 at 04:12:28PM +0100, Lars-Peter Clausen wrote:
> > On 3/18/20 7:00 AM, Greg KH wrote:
> > > On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
> > > > Add spaces around operator symbols to improve readability. Warning
> > > > flagged by checkpatch script.
> > > > 
> > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > ---
> > > >   drivers/staging/iio/adc/ad7280a.c | 4 ++--
> > > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > > > index 19a5f244dcae..34ca0d09db85 100644
> > > > --- a/drivers/staging/iio/adc/ad7280a.c
> > > > +++ b/drivers/staging/iio/adc/ad7280a.c
> > > > @@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
> > > >   }
> > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > > > -			     in_voltage-voltage_thresh_low_value,
> > > > +			     in_voltage - voltage_thresh_low_value,
> > > >   			     0644,
> > > >   			     ad7280_read_channel_config,
> > > >   			     ad7280_write_channel_config,
> > > >   			     AD7280A_CELL_UNDERVOLTAGE);
> > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > > > -			     in_voltage-voltage_thresh_high_value,
> > > > +			     in_voltage - voltage_thresh_high_value,
> > > >   			     0644,
> > > >   			     ad7280_read_channel_config,
> > > >   			     ad7280_write_channel_config,
> > > 
> > > Did you try building this code?
> > > 
> > > It catches everyone...
> > 
> > The problem is it builds. The token is stringyfied and
> > "in_voltage - voltage_thresh_high_value" is a valid string.
> 
> Ah, I thought it used to break the build when it happened.  Oh well,
> it's still a great "trick" to see if people understand C or not :)
> 
Yes, it did build. I am sorry but I am not following you fully. Can you
please let me know if the change I introduced is not good. You may
please direct me to a document where I can read more about it.

Thanks,
Deepak.
> thanks,
> 
> greg k-h

