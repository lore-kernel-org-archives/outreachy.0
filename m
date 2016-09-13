X-GM-THRID: 6329663993990348800
X-Received: by 10.13.201.3 with SMTP id l3mr19363095ywd.24.1473757177850;
        Tue, 13 Sep 2016 01:59:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.30 with SMTP id j30ls15236ioi.30.gmail; Tue, 13 Sep 2016
 01:59:37 -0700 (PDT)
X-Received: by 10.36.133.2 with SMTP id r2mr14849975itd.13.1473757177315;
        Tue, 13 Sep 2016 01:59:37 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 142si3347181pfx.2.2016.09.13.01.59.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 01:59:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g202so9358120pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 01:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=m8cXmStAMUOZgqwmG7+kAHHMKsfOHcslDYxSsV3pSo0=;
        b=FsxcI3vlNH7l0r0YUW7ov/zpYNVZhaM2VgWraBCEPaaWVyMDg/ETrDjmU94XNZZQgZ
         pVDjqkkOze3buIi2TxWUM26u3zMpbFH4ffi4iuvshPM+slsCFGcss27XeQOMGCHTIyrp
         IlI12JTjicQlzV4i2azYJeY1Zp3dBHFVTQEDST5cte83RF8w719wyirW3i3ogj0WDgn6
         YmcHITXe3JVQBej+ncCDaHjipxMomd+xwxRwtGr64+7HmeYSTnTWO/hMMAaztCxHAKSF
         ZvswzH68IAWhhmzPKvqPwVy1EgL35PWHmJiO/zWoO4l2NOn59qvGbgh5xRRxbqNtfIAX
         K9Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=m8cXmStAMUOZgqwmG7+kAHHMKsfOHcslDYxSsV3pSo0=;
        b=mEfEUDjjj179wq6DWCsyQpRtAMgUFE6sy2AkZMnwhbVxmVkthX6iK57ITJKfg3xcLM
         yqo9vdnkg/HCtWE7VJWM7ogQDXXWaU6eEQSpzIFQ8I7P/RpBnC9Cgs8EiWHpsXZg8Y+J
         Z7Dw1SjK4VLCn20q5e0ISPM9tV/9EeQFHBoAVJKukhKTF7wTn2gLYLeSqXjtM7/YhNSF
         VnQ9w2cGTXp4D9jm/apOj1aW0xLYmGxmY20WSr3c5Z4JLQkysTOGMoB06Dp3tV2N4RiR
         LoEVXX899Z1dYqFi2Gx92+ZLGVyvWGDNQNU6auDev+ZkG08anAtKD4V+ps45W+TlnU7B
         jI6g==
X-Gm-Message-State: AE9vXwPl5WROE0xJoAfBfsbD/VE6Haf62s/prYvBDRQXwkKJ/Is4vC3ndCsQJwyaNIYgaQ==
X-Received: by 10.98.202.135 with SMTP id y7mr41806898pfk.10.1473757176959;
        Tue, 13 Sep 2016 01:59:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.94])
        by smtp.gmail.com with ESMTPSA id p74sm29564430pfk.68.2016.09.13.01.59.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 01:59:36 -0700 (PDT)
Date: Tue, 13 Sep 2016 16:59:29 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: most: move assignment out of
 function call
Message-ID: <20160913085928.GA4540@Socrates-DK>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
References: <1473739629-17286-1-git-send-email-eraretuya@gmail.com>
 <alpine.DEB.2.10.1609130642490.3330@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609130642490.3330@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 13, 2016 at 06:47:37AM +0200, Julia Lawall wrote:
> On Tue, 13 Sep 2016, Eva Rachel Retuya wrote:
> 
> > Pull out assignment used as a function argument before the function call to
> > improve readability. Change was made by hand while the following coccinelle
> > script was used to pinpoint the issue:
> >
> > @a@
> > identifier func;
> > expression list E;
> > position p;
> > @@
> >
> > func@p(E);
> >
> > @script:python b@
> > E << a.E;
> > func << a.func;
> > p << a.p;
> > arg_list;
> > @@
> > arg_list = []
> > for i in E:
> >     if (        '=' in i
> >         and not '"' in i
> > 	and not '==' in i
> > 	and not '!=' in i
> > 	and not '<=' in i
> > 	and not '>=' in i
> >        ):
> >        print "function: " + func + " has assignment at arg: " + i
> >        print "in file: " + p[0].file + " , line: " + p[0].line
> >        arg_list.append(i)
> > for j in arg_list:
> >     print j
> 
> This is definitely inventive :).  It's really nice that you thought of
> combining pattern matching and python.  On the other hand, I think that it
> could have been done easily with only pattern matching too.  In recent
> versions of ocaml, there is a metavariable type
> 
> assignment operator a;
> 
> Then you can say eg x a e, for any kind of assignment of e to x.
> 
> No need to update the semantic patch for this case, though.
> 

Noted! Thank you for the feedback.

> 
> > Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> > ---
> >  drivers/staging/most/aim-sound/sound.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/most/aim-sound/sound.c b/drivers/staging/most/aim-sound/sound.c
> > index 9c64580..e9d6b67 100644
> > --- a/drivers/staging/most/aim-sound/sound.c
> > +++ b/drivers/staging/most/aim-sound/sound.c
> > @@ -236,12 +236,12 @@ static int playback_thread(void *data)
> >  		bool period_elapsed = false;
> >  		int ret;
> >
> > +		mbo = most_get_mbo(channel->iface, channel->id,
> > +				   &audio_aim);
> 
> Does &audio_aim not fit on the same line?
> 
> >  		wait_event_interruptible(
> >  			channel->playback_waitq,
> >  			kthread_should_stop() ||
> > -			(channel->is_stream_running &&
> 
> Unfortunately, in the end, it looks like this may not be correct, because
> the most_get_mbo call should only happen if channel->is_stream_running is
> true.  To make the change, you would need to pull the condition out of the
> argument list too.
> 

Thanks for pointing this out. Looks like I'm going to drop this patch
because it is entirely wrong due to reasons both you and Greg stated.

> julia
> 
> > -			 (mbo = most_get_mbo(channel->iface, channel->id,
> > -					     &audio_aim))));
> > +			(channel->is_stream_running && mbo));
> >  		if (!mbo)
> >  			continue;
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1473739629-17286-1-git-send-email-eraretuya%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

