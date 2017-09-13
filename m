X-GM-THRID: 6465168256299696128
X-Received: by 10.28.27.195 with SMTP id b186mr5517wmb.23.1505338197515;
        Wed, 13 Sep 2017 14:29:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.12.143 with SMTP id 137ls1154724wmm.0.canary-gmail; Wed, 13
 Sep 2017 14:29:56 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBd3g7RXbPT0ZcCPZIwxAEhxGCrous8N7ATHUrkHI0JKNuFzZZHaj7Gl2uybq7E8Li3GN1o
X-Received: by 10.28.137.14 with SMTP id l14mr5128wmd.15.1505338196460;
        Wed, 13 Sep 2017 14:29:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505338196; cv=none;
        d=google.com; s=arc-20160816;
        b=BV63CSoMKeR/J7Y3PgwVQ2lK5sN3hblMzH8UAl7L6eg4C9lmeDy/35F7f7QGaCqdeZ
         Oc4c1zMAMe6sBDTmCoNlXc9lg8JrTqG4ACxoUdEGmegDxPSE5Z9ga04C9ILZpY2vixyH
         ldDJpLvL/KVB5h25vVlhy8FdwKiGTziWywn3mul40jFITkpVKlig+xExD2tePTdcyVAy
         u+Ln7rvnS3f3l18ebTFuTkymigLuP1S2QDSm/FtSvySSTdLVp2Rkhz7iXn3NdpNOAIMC
         XB2Q6RaOV/9NAxQIC6Fcgw2El1kOl/5/Nkjpjx5BLON85gr5V+/ol0zd3q6YG/MXhcFo
         8UBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=N7DTrA6cDLWn49ImdFdFoAsmuHhnU58oNXoV0GdA9ww=;
        b=zLfbh44WoTd8/A2vgWbhfec3S20AjlQU381vlZEhuqLeE/Ll0gAkDarhHrb+k+p802
         zRpTypTVr7uTdEjNncoHYwA6ZgCap0BepwuuW8YHQ/IgFIaZQ2LBRJwUybnaD0n/9Kgl
         fwbsRmrWymwlvXAJXaoFqmeFCCgmVfLFnt1/gAFXfDZd9DNAVfX1Cj/M9V8kKA8xKG1s
         udFF6fWaYrVLyUZIgEWYAJcwD0fUZ+SpKLKYA6r6ZKKKYvDwvJciftqZrS1xizekoJiK
         w6G21rhRBYJr97Y1EY0JGm8K315x27pW2VoucWgN1OJTWS+Pxjmxpukpbe5lAlNHlv/3
         ayvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p70si171027wma.1.2017.09.13.14.29.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 14:29:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E4CA6989;
	Wed, 13 Sep 2017 21:29:54 +0000 (UTC)
Date: Wed, 13 Sep 2017 14:29:52 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Jonathan Cameron <jic23@kernel.org>, devel@driverdev.osuosl.org,
	daniel.baluta@gmail.com, pmeerw@pmeerw.net,
	Michael.Hennerich@analog.com, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
	outreachy-kernel@googlegroups.com,
	Himanshi Jain <himshijain.hj@gmail.com>, knaack.h@gmx.de
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
Message-ID: <20170913212952.GD9288@kroah.com>
References: <cover.1505291907.git.himshijain.hj@gmail.com>
 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
 <20170913180310.27cbf1b1@archlinux>
 <20170913185805.GB26390@kroah.com>
 <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Wed, Sep 13, 2017 at 09:23:31PM +0200, Lars-Peter Clausen wrote:
> On 09/13/2017 08:58 PM, Greg KH wrote:
> > On Wed, Sep 13, 2017 at 06:03:10PM +0100, Jonathan Cameron wrote:
> >> On Wed, 13 Sep 2017 14:14:07 +0530
> >> Himanshi Jain <himshijain.hj@gmail.com> wrote:
> >>
> >>> Add __ATTR_NAMED macro similar to __ATTR but taking name as a
> >>> string instead of implicit conversion of argument to string using
> >>> the macro _stringify(_name).
> >>>
> >>> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> >>> ---
> >>>  include/linux/sysfs.h | 7 +++++++
> >>>  1 file changed, 7 insertions(+)
> >>>
> >>> diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
> >>> index aa02c32..20321cf 100644
> >>> --- a/include/linux/sysfs.h
> >>> +++ b/include/linux/sysfs.h
> >>> @@ -104,6 +104,13 @@ struct attribute_group {
> >>>  	.store	= _store,						\
> >>>  }
> >>>  
> >>> +#define __ATTR_NAMED(_name, _mode, _show, _store) {			\
> >>
> >> I'm not sure about the naming here.  The normal __ATTR macro is also
> >> 'named'.  Maybe something as awful as
> >>
> >> __ATTR_STRING_NAME ? 
> >>
> >> Greg what do you think?
> > 
> > ick ick ick.
> > 
> >> This is all to allow us to have names with operators in them without
> >> checkpatch complaining about them... A worthwhile aim just to stop
> >> more people wasting time trying to 'fix' those cases by adding spaces.
> > 
> > Yeah, but this really seems "heavy" for just a crazy sysfs name in a
> > macro.  Adding a whole new "core" define for that is a hard sell...
> > 
> > I also want to get rid of the "generic" __ATTR type macros, and force
> > people to use the proper _RW and friends instead.  I don't want to add
> > another new one that people will start to use that I later have to
> > change...
> > 
> > So no, I don't like this, how about just changing your macros instead?
> > No one else has this problem :)
> 
> Nobody else realized they have this problem yet. E.g. there are a few users
> of __ATTR in block/genhd.c that have the same issue and are likely to
> generate the same false positives from static checkers.

Then fix the broken static checkers :)

