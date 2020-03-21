X-GM-THRID: 6805399652543758336
X-Received: by 2002:ac8:7284:: with SMTP id v4mr450904qto.13.1584786334980;
        Sat, 21 Mar 2020 03:25:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6192:: with SMTP id v140ls4984531qkb.4.gmail; Sat, 21
 Mar 2020 03:25:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtPGy/XnHESpd2K0pAPdl58+zZsfrO/rQTm5bkJ3apr7HTVUZmRF27v5e6C3XlOlCt2ZWPw
X-Received: by 2002:a37:bc1:: with SMTP id 184mr11917142qkl.57.1584786333882;
        Sat, 21 Mar 2020 03:25:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584786333; cv=none;
        d=google.com; s=arc-20160816;
        b=YOaWYvmUxETe2OGt2pNFDeYKRbm8DCvOzonP4xzpIKkkr8pbue+CcWxu037s2kJZKv
         UKo0lWHFUR5CxSyPUzFoTJYPrHPUmnEKOOdgvlaLXkCqSmfJOZ3APl3gVhLnne+dWX1W
         PKYUYyrTwdPmKXyVIijjYfhFPT51gEffDY+Nb/GrPk0j2csD4MN33sz640z4m4uqzwaC
         iwrB58cEvy+w5CYcu1aUIU9jJRGFppI1huz2LFpOvLBXrbhgI2gKSsnXmRZK9gvKFbco
         QU0HmyFfgwzbzUJPsg5INT/aROEERjN18sEEyOW++7bXlo45yIgLW4+xeS2XnrEQnl6s
         r4BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GV6AYP7Qr5KcHjwhZEBtuMmcE1Vx0cgZ94j7L8L7P+Q=;
        b=KdpPvjtqLXr70NaySpxeo8jakv2eaOtoGvbRXdYJNfMOLHYxQUY3B/Vf98ftRYIdFV
         AU4hg2ZFMpVtB7QGAQr5dsA1V5Xi7t6BU3byN+s7I11b2ykY8XdG1JWB/qrEqYPrAAgM
         GLZUEOkM9gKmvsg4qI/BVLJ9K5MsSOJaDroxqAYpT6kfuwRkrTldCKiYN2YcOkvhSF+L
         H79fq7BK1TIm7D3ZbwpHNFNQJiPxoB7ehl7Vy7YLrNEa1FSuT82QiLuKGVhBZ4cRrevX
         mNdUwGP+8mU83n0YBQu40me4u11v0pezeF9D4D42yif03P6pEvD01jR5ouf3JrcwqGPp
         q+Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tjpv1N0m;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id r14si659734qtc.5.2020.03.21.03.25.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 03:25:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tjpv1N0m;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id t16so3594744plr.8
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 03:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GV6AYP7Qr5KcHjwhZEBtuMmcE1Vx0cgZ94j7L8L7P+Q=;
        b=Tjpv1N0meLL6K559HHlnLIWF/jI3ZrBg7DyCgthGpNcaf4zYNwVdTujaztCVNMrUd8
         szI3CB4sibRFH3OaajjfaHhlnbyxlqbGRksUsydKfDagmQfSoqHfKsJXfu+YEZdHZWWu
         POD/m/si4TupAEzWvD6uo+MO2/731Wl1hi0v4mJtfBP0+WjvEh3bSPLgtngyHOJazyLd
         LQTu0CKPgOqCKGJjd04dPQzbBBNv7HtQppEfGo5QQLStvPmHpLNBv5vQ8XTIzL1/IsMQ
         KlhXuthhn5Yshug7S4RAUsjyCaVus/7PWfZ55LXn4oYuB4rRXQQazUxgEuyngGJdlbss
         2b5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GV6AYP7Qr5KcHjwhZEBtuMmcE1Vx0cgZ94j7L8L7P+Q=;
        b=fKhJQk/nMwNdKja/WowsrIIXx6tsHbE31imJjC8qHf/d4PdCp7CA92xeifof4w4C8/
         d5Hryp/dGiE+cj6iEHsBiTDXMzehtz1IaZMBN0iUzMyc+IO8uYhHjijOwwGroAPjhHPl
         6hbOgpsiCtpBpSEcP6H72Q5MU1sc/ibJpBwm4TLQs3VVKh34KCLFQ/+soYzejIo9LER9
         mEmu959/M2iJTI55I1N9ugg0JUZwQvv9LOuKbJSPFKiqcd4cOmf7FzbG9nGkhV/f0k5v
         Q7xDOz+beQf7elsCiIqEErdI6OXfm82vSoOQIwrKcJfiZy5AOlxD0IVSTDagjw7KdIo3
         kXww==
X-Gm-Message-State: ANhLgQ0+SMzJC0jiG0JJZFMqbyZ8gy6ZrO6XkbK7KivZKXyz1V7ezx3q
	Ozyyz9iTs0pBPn2e55axjofoTCcj
X-Received: by 2002:a17:90a:e7c8:: with SMTP id kb8mr14086355pjb.79.1584786332770;
        Sat, 21 Mar 2020 03:25:32 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.132])
        by smtp.gmail.com with ESMTPSA id v123sm6140571pfv.41.2020.03.21.03.25.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Mar 2020 03:25:32 -0700 (PDT)
Date: Sat, 21 Mar 2020 15:55:23 +0530
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
Message-ID: <20200321102522.GA3019@deeUbuntu>
References: <20200318060038.GB1594471@kroah.com>
 <35afdc4b-bd59-7851-aa4f-3d8807668931@metafoo.de>
 <20200318151924.GB2862853@kroah.com>
 <20200318162353.GA23226@deeUbuntu>
 <alpine.DEB.2.21.2003181727440.2979@hadrien>
 <20200318170051.GA23498@deeUbuntu>
 <b471d6102a731d577fff9f2175d4e35217a45e18.camel@analog.com>
 <alpine.DEB.2.21.2003190802450.3010@hadrien>
 <f783d807e2e74ae492c83eb9827ac43767411808.camel@analog.com>
 <20200319161608.GA14738@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319161608.GA14738@deeUbuntu>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 19, 2020 at 09:46:10PM +0530, DEEPAK VARMA wrote:
> On Thu, Mar 19, 2020 at 07:07:20AM +0000, Ardelean, Alexandru wrote:
> > On Thu, 2020-03-19 at 08:03 +0100, Julia Lawall wrote:
> > > [External]
> > > 
> > > 
> > > 
> > > On Thu, 19 Mar 2020, Ardelean, Alexandru wrote:
> > > 
> > > > On Wed, 2020-03-18 at 22:30 +0530, DEEPAK VARMA wrote:
> > > > > [External]
> > > > > 
> > > > > On Wed, Mar 18, 2020 at 05:28:17PM +0100, Julia Lawall wrote:
> > > > > > On Wed, 18 Mar 2020, DEEPAK VARMA wrote:
> > > > > > 
> > > > > > > On Wed, Mar 18, 2020 at 04:19:24PM +0100, Greg KH wrote:
> > > > > > > > On Wed, Mar 18, 2020 at 04:12:28PM +0100, Lars-Peter Clausen wrote:
> > > > > > > > > On 3/18/20 7:00 AM, Greg KH wrote:
> > > > > > > > > > On Wed, Mar 18, 2020 at 09:58:13AM +0530, Deepak R Varma wrote:
> > > > > > > > > > > Add spaces around operator symbols to improve readability.
> > > > > > > > > > > Warning
> > > > > > > > > > > flagged by checkpatch script.
> > > > > > > > > > > 
> > > > > > > > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > > > > > > > ---
> > > > > > > > > > >   drivers/staging/iio/adc/ad7280a.c | 4 ++--
> > > > > > > > > > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > > > > > 
> > > > > > > > > > > diff --git a/drivers/staging/iio/adc/ad7280a.c
> > > > > > > > > > > b/drivers/staging/iio/adc/ad7280a.c
> > > > > > > > > > > index 19a5f244dcae..34ca0d09db85 100644
> > > > > > > > > > > --- a/drivers/staging/iio/adc/ad7280a.c
> > > > > > > > > > > +++ b/drivers/staging/iio/adc/ad7280a.c
> > > > > > > > > > > @@ -825,14 +825,14 @@ static irqreturn_t
> > > > > > > > > > > ad7280_event_handler(int
> > > > > > > > > > > irq, void *private)
> > > > > > > > > > >   }
> > > > > > > > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
> > > > > > > > > > > -			     in_voltage-
> > > > > > > > > > > voltage_thresh_low_value,
> > > > > > > > > > > +			     in_voltage -
> > > > > > > > > > > voltage_thresh_low_value,
> > > > > > > > > > >   			     0644,
> > > > > > > > > > >   			     ad7280_read_channel_config,
> > > > > > > > > > >   			     ad7280_write_channel_config,
> > > > > > > > > > >   			     AD7280A_CELL_UNDERVOLTAGE);
> > > > > > > > > > >   static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
> > > > > > > > > > > -			     in_voltage-
> > > > > > > > > > > voltage_thresh_high_value,
> > > > > > > > > > > +			     in_voltage -
> > > > > > > > > > > voltage_thresh_high_value,
> > > > > > > > > > >   			     0644,
> > > > > > > > > > >   			     ad7280_read_channel_config,
> > > > > > > > > > >   			     ad7280_write_channel_config,
> > > > > > > > > > 
> > > > > > > > > > Did you try building this code?
> > > > > > > > > > 
> > > > > > > > > > It catches everyone...
> > > > > > > > > 
> > > > > > > > > The problem is it builds. The token is stringyfied and
> > > > > > > > > "in_voltage - voltage_thresh_high_value" is a valid string.
> > > > > > > > 
> > > > > > > > Ah, I thought it used to break the build when it happened.  Oh well,
> > > > > > > > it's still a great "trick" to see if people understand C or not :)
> > > > > > > > 
> > > > > > > Yes, it did build. I am sorry but I am not following you fully. Can
> > > > > > > you
> > > > > > > please let me know if the change I introduced is not good. You may
> > > > > > > please direct me to a document where I can read more about it.
> > > > > > 
> > > > > > The code involves a macro, as indicated by the capital letters.  You
> > > > > > will
> > > > > > see the issue when you look at the definition of the macro.
> > > > > > 
> > > > > > julia
> > > > > 
> > > > > Thank you Julia and all. I got my mistake. I will revert the change.
> > > > > Sorry for the trouble.
> > > > 
> > > > I'll try to make some time to address this somehow, so that checkpatch
> > > > doesn't
> > > > bump into this.
> > > > 
> > > > In the last 2-3 years, I think I saw 3-4 patches trying to address this [for
> > > > various Analog drivers].
> > > > So, don't feel too bad.
> > > 
> > > Maybe a comment?
> > 
> > Comment works for now.
> > Anybody wants to do a patch for that?
> > If nobody sends a patch for this in 1-2 weeks, I'll send one.
> > 
> > Particularly, this would help with review, since people that are unfamiliar with
> > IIO-specific macros would also find it easier at review.
> > 
> > The good part, is that it's only needed for AD7280A.
> > AD7192 has been re-worked, and is no longer on checkpatch's radar.
> > I'm reworking AD7793 now.
> > 
> 
> I will be happy to add a comment around the code area to indicate
> ignore checkpatch warning for the mentioned argument. Please confirm if
> that is what you are expecting to be done.
> 

Hello Alexandru,
could you please confirm if I should add a comment around the code in
ad7280a.c to avoid further changes being made to the string argument?


> Thanks,
> Deepak.
> 
> > 
> > > 
> > > julia
> > > 
> > > > 
> > > > > Deepak.
> > > > > > > Thanks,
> > > > > > > Deepak.
> > > > > > > > thanks,
> > > > > > > > 
> > > > > > > > greg k-h
> > > > > > > 
> > > > > > > --
> > > > > > > You received this message because you are subscribed to the Google
> > > > > > > Groups
> > > > > > > "outreachy-kernel" group.
> > > > > > > To unsubscribe from this group and stop receiving emails from it, send
> > > > > > > an
> > > > > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > > > To view this discussion on the web visit
> > > > > > > https://groups.google.com/d/msgid/outreachy-kernel/20200318162353.GA23226%40deeUbuntu
> > > > > > > .
> > > > > > > 

