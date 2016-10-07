X-GM-THRID: 6338470134532800512
X-Received: by 10.176.4.45 with SMTP id 42mr5342106uav.37.1475882009832;
        Fri, 07 Oct 2016 16:13:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.169 with SMTP id u41ls2333613iou.49.gmail; Fri, 07 Oct
 2016 16:13:25 -0700 (PDT)
X-Received: by 10.67.14.202 with SMTP id fi10mr879765pad.52.1475882005492;
        Fri, 07 Oct 2016 16:13:25 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si6258904par.0.2016.10.07.16.13.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 16:13:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t25so3503577pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 16:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TaLZO/6zB81OzwLs7WUS1PChRS9wkY1jJIGyhwk02Yo=;
        b=Dh7trgaPu6I855aa4TBj1T82gyZ5fUjyrScmK4aRNfaHpOnzRHClqrIpzNf2dg1j5B
         Rg+GUIP2wbFu+IDiraai7OaH03G0OVmVW78Nr7INWNi+n4Yd3Ampk+e79Zus9JAO238C
         8ODhAkVUvCaI1Lou8jX909beozT3hlSTKKlIUIjjkquo+m9kLX5vtoGI2qmrgQfM3WH5
         GckDwU365Fgj6VWxDJCFhO6tSb2ZMfNnPTQ5eXp0RRDqEYyUwcoDh0Op25T4QaYbfPMV
         EY6+q7v8kev3mK7qfo1jcSgPAELCmvqmWMpsLABK9PccPG0UJ5Fg+qUzKk2SsMwwpM1D
         bgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TaLZO/6zB81OzwLs7WUS1PChRS9wkY1jJIGyhwk02Yo=;
        b=gm+8EjY+zZB1opUKOWZeFUy+8ilrmYUmCdH/2w0vnV2j05lRj8IqGSxRITLCheZdIV
         8HorYTwPgvlkZexaawEjaAi1NXDzAOq4MN9Y13XkD2hsiYkWxr6XebGp9R2PdBtd5hHQ
         mdyM++FIzMj6bxu/e3HSTbDcRnkcTfuhioJYqb+a53bOXFuBfhakdLf66CV3S6SiUJr1
         7papqeyIUQ/n/V79ra5w8bspbzC4qMitfl7GvUDFVmqpn5dho0U38EYFY6MLpBbH7g7s
         kqUztlbfHwV9CxcssS1XJ5G5Una3n44VvUg0LDuyjEkdk0buHvVUiTgmBLwu+OplFzrK
         TAbA==
X-Gm-Message-State: AA6/9Rky6sg5UtwyTHU1CjHZyTgAUghGbg05SEVcbB0b/z8lYFRPSAHkGn2pDjwvo3d72w==
X-Received: by 10.98.50.1 with SMTP id y1mr31444837pfy.62.1475882005270;
        Fri, 07 Oct 2016 16:13:25 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id t67sm16536781pfd.32.2016.10.07.16.13.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 16:13:24 -0700 (PDT)
Date: Fri, 7 Oct 2016 16:13:22 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: i4l: move open brace to
 previous line
Message-ID: <20161007231321.GA3256@localhost>
References: <20161006214116.GA10879@localhost>
 <alpine.DEB.2.10.1610070722510.3074@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610070722510.3074@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Oct 07, 2016 at 07:23:12AM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 6 Oct 2016, Elizabeth Ferdman wrote:
> 
> > Fix checkpatch error "open brace should be on previous line" since only
> > functions should have their opening brace on a new line.
> >
> > Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> > ---
> >  drivers/staging/i4l/act2000/module.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
> > index 0573f51..4746a62 100644
> > --- a/drivers/staging/i4l/act2000/module.c
> > +++ b/drivers/staging/i4l/act2000/module.c
> > @@ -19,8 +19,7 @@
> >  #include <linux/slab.h>
> >  #include <linux/init.h>
> >
> > -static unsigned short act2000_isa_ports[] =
> > -{
> > +static unsigned short act2000_isa_ports[] = {
> >  	0x0200, 0x0240, 0x0280, 0x02c0, 0x0300, 0x0340, 0x0380,
> >  	0xcfe0, 0xcfa0, 0xcf60, 0xcf20, 0xcee0, 0xcea0, 0xce60,
> >  };
> 
> Not related to this patch, but could this array be const?
> 
hey julia,
i'm looking into that but I don't know how to definitively answer that
question... what's a good way to go about that?

So far I've looked at the file, searched for occurrences of that array
in the file, and I don't see the array being altered. However it is
passed to some functions as in if(somefunction(act2000_isa_ports))...
And then those functions pass it to other functions. The functions
aren't saying const to show that they won't be altering the array. 

So it's kind of hard to know if it ever gets changed. Do you think that
just adding the word "const" after static, and then successfully 
compiling would mean that it does work? 

thanks,
liz

> julia
> 
> > --
> > 2.1.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161006214116.GA10879%40localhost.
> > For more options, visit https://groups.google.com/d/optout.
> >

