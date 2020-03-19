X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:902:8d94:: with SMTP id v20mr4235341plo.259.1584634579169;
        Thu, 19 Mar 2020 09:16:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls1458046pfy.11.gmail; Thu, 19 Mar
 2020 09:16:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsQTIsebMpFD46QLf+JoSBB4YCjCKeWdMoQyL2hh0ePvA50WjYhWYjMZhUxwI8u0MDGfxSQ
X-Received: by 2002:a05:6a00:2c7:: with SMTP id b7mr4791300pft.226.1584634577585;
        Thu, 19 Mar 2020 09:16:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584634577; cv=none;
        d=google.com; s=arc-20160816;
        b=G5Oe8txoB0hR/0BPhPAkLAin1/OQwMsI0eiMvVaZ/THynJKAfrnrQcW6LyQpP9MIJU
         K6p5/Mh9dtEZ8g7gRCyDQjpoZKX32t1VbaDVkIWwSSpZYdqEVZYNNUXPUJuy+6s80JAc
         1QAL26siPYI+PgU3xqye6koFKd6lqRGhjtUQGrIA8xOHWTkFADyXZ0CD9jokFk51ku4Q
         NRtyLNrO9HJ7xo+Lat4Q50ZwiPFL7nMbvPXAnxR/iDs3f72eBuUZ6oiNfP5eA/RO+vjS
         27ZcCqm8DrclCzM49DQ1zw9ZrH6+w2r95PmpDbbIKsZzHf+eoX1lWdeMsksmr7svraF/
         aW9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yfshhC39biBSdzchj6GiihemTNljr8EJSQyq8KQYNfE=;
        b=xH8+8AiWh7gJ9oNLHpVcFGKdFux+hnwAhqElV4jTRt5pdpZhNHn6xneshI5+QHP093
         Fftx7xNTdVyNsGjxbfaGpfo1lQPNnzOzTDDCThrOvqvcMgvPq8LCvUWDgzo8u1ZZSAve
         OFMvM3CGhA3tt0j92KS9+401GydoEwAIFL6MSoTbUjObvxu2bnhBl2WLXItrGfXczZpZ
         W45XMoTA/nyw+SoCKTdWHKbMdPzlFRE7GmCJCayVaUZn9KSDLqZgnPi42RfVhIJpsZ0X
         aBE7/p0p4J7lUtdz8JxxVSrlDVyMk7FRbNE73qNoffenZZuoc8CtDk1Z7sZmrXtOH2TF
         AnKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rrR/PhBq";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b10si221091pfo.6.2020.03.19.09.16.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 09:16:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rrR/PhBq";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id b72so1661347pfb.11
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 09:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yfshhC39biBSdzchj6GiihemTNljr8EJSQyq8KQYNfE=;
        b=rrR/PhBqsQW2DbgSgjU/i4DlcEhjvnHOv39jEQxizd3DN18RoLPEQ9Fxm9k0Hu7ZH1
         HJrTi1e6xrgZW/JgaY/7CJQ8saZZ1Djwn8KHyb1uNQkyPl1ggiP4IdGbrCYyX73mrV3u
         E2Jp0R0LXmmcZYdDsp5/ehfP83gy4ROvisCc9SWTJuDrRl4C6Qp+CErAeOHhmoeNgwA5
         0EbqFg4of7Jy1kju1rS65RCNfn26hU+y1y9aQ/HUNFjKtK6CFCQSuTiU+S+ZQL82nMzS
         gxZG+1yZnKMHjbKEWRjTBJ0Ahq0vhVy66+8xyUlANCtmiXIHCW1AuwFZ8dpdRY68bX3I
         77FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yfshhC39biBSdzchj6GiihemTNljr8EJSQyq8KQYNfE=;
        b=Zdf9gbCvQJ3oGbvaCLxHceizmeQ7hXE7ubUcpGOmh7ccKtUPkWkAq7tkoyM6vq5RQP
         QL4ob1sdDOkQScENcXkrTypqdiTKlMKVcC15dvA1yXDnrFMt7pQENUO8ujW5QKZRVyfL
         WPsYNWar4O7QywJx8up1GwyRP0XQlfwA63FmPaauzCxqVAF18mFiCvXc4Xf1dOZ6cHPR
         N1c+LTnvGCe6W+EEgiOo0ltX/W1NKZOpPK8Ho+C507jRJqwKkAEf99AbV6EBei08hebK
         N3Qu1+TFA688e7+x+rB/SqCY/nMhJkO3cXi73hqmNUhZKStLtTJ7Z66lhB4+4JsIJfP5
         9zsg==
X-Gm-Message-State: ANhLgQ3IO8/t5bDtdQotaWX5Q689LS/+2rlp6wsQPKnvbSRncUJtR1Ve
	n9W33yGfBK4zZ5fVEXnM1c8=
X-Received: by 2002:a63:c54b:: with SMTP id g11mr4177225pgd.164.1584634577220;
        Thu, 19 Mar 2020 09:16:17 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id o128sm3151789pfg.5.2020.03.19.09.16.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Mar 2020 09:16:16 -0700 (PDT)
Date: Thu, 19 Mar 2020 21:46:10 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Cc: "julia.lawall@inria.fr" <julia.lawall@inria.fr>,
	"kieran.bingham@ideasonboard.com" <kieran.bingham@ideasonboard.com>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
	"jic23@kernel.org" <jic23@kernel.org>,
	"Hennerich, Michael" <Michael.Hennerich@analog.com>,
	"lars@metafoo.de" <lars@metafoo.de>,
	"knaack.h@gmx.de" <knaack.h@gmx.de>,
	"daniel.baluta@gmail.com" <daniel.baluta@gmail.com>,
	"pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: iio: adc: ad7280a:
 Add spaces around operators
Message-ID: <20200319161608.GA14738@deeUbuntu>
References: <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>
 <20200318060038.GB1594471@kroah.com>
 <35afdc4b-bd59-7851-aa4f-3d8807668931@metafoo.de>
 <20200318151924.GB2862853@kroah.com>
 <20200318162353.GA23226@deeUbuntu>
 <alpine.DEB.2.21.2003181727440.2979@hadrien>
 <20200318170051.GA23498@deeUbuntu>
 <b471d6102a731d577fff9f2175d4e35217a45e18.camel@analog.com>
 <alpine.DEB.2.21.2003190802450.3010@hadrien>
 <f783d807e2e74ae492c83eb9827ac43767411808.camel@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f783d807e2e74ae492c83eb9827ac43767411808.camel@analog.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 19, 2020 at 07:07:20AM +0000, Ardelean, Alexandru wrote:
> On Thu, 2020-03-19 at 08:03 +0100, Julia Lawall wrote:
> > [External]
> > 
> > 
> > 
> > On Thu, 19 Mar 2020, Ardelean, Alexandru wrote:
> > 
> > > On Wed, 2020-03-18 at 22:30 +0530, DEEPAK VARMA wrote:
> > > > [External]
> > > > 
> > > > On Wed, Mar 18, 2020 at 05:28:17PM +0100, Julia Lawall wrote:
> > > > > On Wed, 18 Mar 2020, DEEPAK VARMA wrote:
> > > > > 
> > > > > > On Wed, Mar 18, 2020 at 04:19:24PM +0100, Greg KH wrote:
> > > > > > > On Wed, Mar 18, 2020 at 04:12:28PM +0100, Lars-Peter Clausen wrote:
> > > > > > > > On 3/18/20 7:00 AM, Greg KH wrote:
> > > > > > > > > On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
> > > > > > > > > > Add spaces around operator symbols to improve readability.
> > > > > > > > > > Warning
> > > > > > > > > > flagged by checkpatch script.
> > > > > > > > > > 
> > > > > > > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > > > > > > ---
> > > > > > > > > >   drivers/staging/iio/adc/ad7280a.c | 4 ++--
> > > > > > > > > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > > > > 
> > > > > > > > > > diff --git a/drivers/staging/iio/adc/ad7280a.c
> > > > > > > > > > b/drivers/staging/iio/adc/ad7280a.c
> > > > > > > > > > index 19a5f244dcae..34ca0d09db85 100644
> > > > > > > > > > --- a/drivers/staging/iio/adc/ad7280a.c
> > > > > > > > > > +++ b/drivers/staging/iio/adc/ad7280a.c
> > > > > > > > > > @@ -825,14 +825,14 @@ static irqreturn_t
> > > > > > > > > > ad7280_event_handler(int
> > > > > > > > > > irq, void *private)
> > > > > > > > > >   }
> > > > > > > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > > > > > > > > > -			     in_voltage-
> > > > > > > > > > voltage_thresh_low_value,
> > > > > > > > > > +			     in_voltage -
> > > > > > > > > > voltage_thresh_low_value,
> > > > > > > > > >   			     0644,
> > > > > > > > > >   			     ad7280_read_channel_config,
> > > > > > > > > >   			     ad7280_write_channel_config,
> > > > > > > > > >   			     AD7280A_CELL_UNDERVOLTAGE);
> > > > > > > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > > > > > > > > > -			     in_voltage-
> > > > > > > > > > voltage_thresh_high_value,
> > > > > > > > > > +			     in_voltage -
> > > > > > > > > > voltage_thresh_high_value,
> > > > > > > > > >   			     0644,
> > > > > > > > > >   			     ad7280_read_channel_config,
> > > > > > > > > >   			     ad7280_write_channel_config,
> > > > > > > > > 
> > > > > > > > > Did you try building this code?
> > > > > > > > > 
> > > > > > > > > It catches everyone...
> > > > > > > > 
> > > > > > > > The problem is it builds. The token is stringyfied and
> > > > > > > > "in_voltage - voltage_thresh_high_value" is a valid string.
> > > > > > > 
> > > > > > > Ah, I thought it used to break the build when it happened.  Oh well,
> > > > > > > it's still a great "trick" to see if people understand C or not :)
> > > > > > > 
> > > > > > Yes, it did build. I am sorry but I am not following you fully. Can
> > > > > > you
> > > > > > please let me know if the change I introduced is not good. You may
> > > > > > please direct me to a document where I can read more about it.
> > > > > 
> > > > > The code involves a macro, as indicated by the capital letters.  You
> > > > > will
> > > > > see the issue when you look at the definition of the macro.
> > > > > 
> > > > > julia
> > > > 
> > > > Thank you Julia and all. I got my mistake. I will revert the change.
> > > > Sorry for the trouble.
> > > 
> > > I'll try to make some time to address this somehow, so that checkpatch
> > > doesn't
> > > bump into this.
> > > 
> > > In the last 2-3 years, I think I saw 3-4 patches trying to address this [for
> > > various Analog drivers].
> > > So, don't feel too bad.
> > 
> > Maybe a comment?
> 
> Comment works for now.
> Anybody wants to do a patch for that?
> If nobody sends a patch for this in 1-2 weeks, I'll send one.
> 
> Particularly, this would help with review, since people that are unfamiliar with
> IIO-specific macros would also find it easier at review.
> 
> The good part, is that it's only needed for AD7280A.
> AD7192 has been re-worked, and is no longer on checkpatch's radar.
> I'm reworking AD7793 now.
> 

I will be happy to add a comment around the code area to indicate
ignore checkpatch warning for the mentioned argument. Please confirm if
that is what you are expecting to be done.

Thanks,
Deepak.

> 
> > 
> > julia
> > 
> > > 
> > > > Deepak.
> > > > > > Thanks,
> > > > > > Deepak.
> > > > > > > thanks,
> > > > > > > 
> > > > > > > greg k-h
> > > > > > 
> > > > > > --
> > > > > > You received this message because you are subscribed to the Google
> > > > > > Groups
> > > > > > "outreachy-kernel" group.
> > > > > > To unsubscribe from this group and stop receiving emails from it, send
> > > > > > an
> > > > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > > To view this discussion on the web visit
> > > > > > https://groups.google.com/d/msgid/outreachy-kernel/20200318162353.GA23226%40deeUbuntu
> > > > > > .
> > > > > > 

