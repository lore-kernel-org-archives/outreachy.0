X-GM-THRID: 6334961343676809216
X-Received: by 10.237.33.226 with SMTP id m31mr9064539qtc.19.1475084098081;
        Wed, 28 Sep 2016 10:34:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.13 with SMTP id a13ls609998ioe.18.gmail; Wed, 28 Sep
 2016 10:34:55 -0700 (PDT)
X-Received: by 10.66.123.74 with SMTP id ly10mr9541568pab.104.1475084095868;
        Wed, 28 Sep 2016 10:34:55 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 7si2535577pfw.1.2016.09.28.10.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 10:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id r9so1659069paz.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 10:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WKqxbqbmaGLpGRse8Bxf/soGhef00c7VaMnL3BrsNm0=;
        b=aYKrsNA4MqUxJFzwa/RbKTKoXFJa1jsGK01p1mwDOeFRpetn8z7bY3aMNg+OeJdVub
         BfYaBTRlTdZ1jQnSlp77DeoiWOJmmb2cqOCXsWOa4DwhrJovnJn/L01zhpf7xDApdIcG
         4xzH+AQZgikpDNAZm1K1qOcsyY76Iv06k3FBCBelcNzrCtdx3Fr7pB5UlU/gmHKUBtC2
         UgZb7S11rPmTJsPF19wfIPvtARyk/TM4vN03qJFTdOm2NksybzuAo56Zkst9V9iu/G/o
         Rfu3xmxFmWYO/EMymGwe1kNRoiUZ0a9EmUdPRT1M/qOREaAEpSNjWKvIugHKMWJjCyQd
         yA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WKqxbqbmaGLpGRse8Bxf/soGhef00c7VaMnL3BrsNm0=;
        b=CvODYGzMBaMukYAEE00fcBCoF41CRW0HA7nAb+Latxop4at8NYckMtK5486Uw4Tv1C
         CYbsqO1skaoOMLzyj245V3v8lpw3tPNvMDM3/utpAbQhPRDfwIs7OS615rU34WbI+ZG1
         8GGdFDsVfEUA8fJ4XkYwoCgsk/6Y487g8FzcCbw8N/f/ViSzRcsxsmYwJU6IWkY7kf0x
         9Zb0hsAfLaHoddF9e3SuvXYPDLNGLtSNssywDCJMOjKb7Y6UDsl7FIfUSk9Kfj9SXzG8
         xKv7lfSa6fVz/K1VGd9EBaqOgB6OLGUxCnK6I/FMY3OgsxV35e3sRo4WgDhDJqr4Q9Wl
         UEOg==
X-Gm-Message-State: AA6/9RnNZc+gb+32pQbdFSTdl/w/KVUYRH3r8u4ufXdUm4gxYTKIg60Q3n+UFnOvYx9XQA==
X-Received: by 10.66.185.133 with SMTP id fc5mr50513563pac.71.1475084095488;
        Wed, 28 Sep 2016 10:34:55 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id p7sm14101403paa.3.2016.09.28.10.34.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 10:34:55 -0700 (PDT)
Date: Wed, 28 Sep 2016 10:34:54 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Anchal Jain <anchalj109@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Michael.Hennerich@analog.com,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: cdc: add comment to
 mutex
Message-ID: <20160928173453.GA9841@d830.WORKGROUP>
References: <20160927104504.GA13155@life-desktop>
 <20160927170701.GA18239@d830.WORKGROUP>
 <20160927194634.GA20266@d830.WORKGROUP>
 <CAAbeOSs60S7DuxD30og0w=zP24i2dPrvo=vqPUMCWryJuL-LOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAbeOSs60S7DuxD30og0w=zP24i2dPrvo=vqPUMCWryJuL-LOg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 28, 2016 at 10:30:59PM +0530, Anchal Jain wrote:
> >Ahah ;) I've been wondering when someone would get around
> >to these.  There are a lot of these CHECK's in IIO.
> >
> >Following on Julia & Greg's comments, you do need to
> >explore what the lock is for and give a succinct comment.
> >
> >Unfortunately, when you: git grep "struct mutex", even in
> >upstream iio, you won't find too many examples...but you'll
> >find a few.  Usually, simply say /* protect <something> */
> >
> >Fortunately, in this case, there is a comment for it, just
> >in the wrong place - scroll up. That makes your task easier,
> >although I still would suggest condensing it to a short phrase that
> >fit adjacent to the definition.
> 
> 
> 
> 
> I according to your suggestion I read the comment above the "struct
> ad7150_chip_info"
> And check the other files where they used the "struct mutex"
> 
> As you said to use just simply /* protect <something> */
> then in the comment, Mention some hardware stuff what was that stuff ?
> so I can make the comment.
> 
> 

That header comment says:
state_lock: ensure consistent state of this structure wrt the hardware.

At the risk of being overly pedantic...the lock will make sure that the state
data in this structure always accurately reflects the state of the
hardware.  When you look above at the structure fields...all those u8
items, I'm guessing they are settings in the hardware.  So, when parts
of this driver start changing those settings, we need to use a lock
so that simultaneous writes of that state data don't conflict

If there had not been that comment to tell us what the lock was for,
we would have had to go review all the places it was used to create
the comment.

So, back to your task of shrinking that comment.  I see it's the
last item in the struct, so we wouldn't mess up the beauty of the
struct by making a multiline comment.  Probably not needed though,
since the nice header comment is available a short scroll away.

Shortened version of that to append could be:
	struct mutex state_lock;	/* protect hardware state */

I'd suggest going with similar and sending it out for further review.
Your CC list looks off.  Seems it should have picked up iio maintainers,
reviewers, and the linux-iio list.

Need to put driver name in commit msg (iio: cdc: ad7150)

alisons

> On Wed, Sep 28, 2016 at 1:16 AM, Alison Schofield <amsfield22@gmail.com>
> wrote:
> 
> > On Tue, Sep 27, 2016 at 10:07:02AM -0700, Alison Schofield wrote:
> > > On Tue, Sep 27, 2016 at 04:15:12PM +0530, Anchal Jain wrote:
> > > > Fix the checkpatch.pl issues:
> > > > CHECK: struct mutes definition without comment
> > > >
> > > > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > >
> > > Ahah ;) I've been wondering when someone would get around
> > > to these.  There are a lot of these CHECK's in IIO.
> > >
> > > Following on Julia & Greg's comments, you do need to
> > > explore what the lock is for and give a succinct comment.
> > >
> > > Unfortunately, when you: git grep "struct mutex", even in
> > > upstream iio, you won't find too many examples...but you'll
> > > find a few.  Usually, simply say /* protect <something> */
> > >
> > > Fortunately, in this case, there is a comment for it, just
> > > in the wrong place - scroll up. That makes your task easier,
> > > although I still would suggest condensing it to a short phrase that
> > > fit adjacent to the definition.
> > >
> > > alisons
> >
> > Although, this change is 'just a comment', if you do a few of them
> > you'll begin developing an understanding of where and why things
> > are locked in IIO drivers.  That's where the value is - you are
> > exploring the code and figuring things out.
> >
> > Good patches for honing your patching skills.
> >
> > alisons
> >
> >
> > > > ---
> > > >  drivers/staging/iio/cdc/ad7150.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/iio/cdc/ad7150.c
> > b/drivers/staging/iio/cdc/ad7150.c
> > > > index f6b9a10..88c6ebe 100644
> > > > --- a/drivers/staging/iio/cdc/ad7150.c
> > > > +++ b/drivers/staging/iio/cdc/ad7150.c
> > > > @@ -78,7 +78,7 @@ struct ad7150_chip_info {
> > > >     u8 mag_timeout[2][2];
> > > >     int old_state;
> > > >     char *conversion_mode;
> > > > -   struct mutex state_lock;
> > > > +   struct mutex state_lock; /*generic mutex for cdc and drivers*/
> > > >  };
> > > >
> > > >  /*
> > > > --
> > > > 1.9.1
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send
> > an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com
> > .
> > > > To view this discussion on the web visit https://groups.google.com/d/
> > msgid/outreachy-kernel/20160927104504.GA13155%40life-desktop.
> > > > For more options, visit https://groups.google.com/d/optout.
> >

