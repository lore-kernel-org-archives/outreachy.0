X-GM-THRID: 6335813974195437568
X-Received: by 10.67.5.39 with SMTP id cj7mr821090pad.144.1475177236377;
        Thu, 29 Sep 2016 12:27:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.6 with SMTP id n6ls1482247ion.17.gmail; Thu, 29 Sep
 2016 12:27:15 -0700 (PDT)
X-Received: by 10.66.124.162 with SMTP id mj2mr940094pab.25.1475177235774;
        Thu, 29 Sep 2016 12:27:15 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id a3si1171444paw.1.2016.09.29.12.27.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 12:27:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id cd13so27303214pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 12:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Jpxhj7KmcylFAXMWoQ25dHXb9kAznImzyf/GsBA90/g=;
        b=yNSAkO85PHh9TeGVl4aLsj40UfNOynn+RqLiODiTgIJ+AgnVhs+KjLiP8biJM0g5Wz
         vNW2QyHG1Y8hLStFF6yL3oAA8c9dCQHFhhIpuHDUlIGrkzPPSTvVYAVguYNf+9cqAxml
         WIju7wJi+AhFCf+lKc569udznOLG2RgUHpp2Fp9DXoZp/1xD1OMAgtSlv8pSGBYLIsGu
         Ip3v4WK+D7SJXmNwOXJLXZUEOYS1YBezdcT1K1hJu0VGzmJKalwmhM4K5nJnsPcstEq1
         pHFsjXXYOJETS3l4hQ/4F54FDZLn8LkfuRxi6oUqBmFJc0aIAcPfUXPJ+SoMZTWKZU/N
         tCPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Jpxhj7KmcylFAXMWoQ25dHXb9kAznImzyf/GsBA90/g=;
        b=EsKLXUFTaCyMpODmyzLfH0lc/bNa0xQmiw/m6Xot+mOMsNh+or1u3Yj0b55IRmQXeh
         UX3KP9GxdD5sWJ6xopWaXnOm5QC2WxNH317aUzxDUPxMT3+q+UHLkX3lCfOpWj4tmOJI
         KgKg0Qmnuhq9owD8sPKweavIaimZIWRsiqNSnlRdhXWx1ZDt89y9rjaT2mHaN6Jf3g2S
         lxCf5M/KNNFfvpm8ByAw9JBOHo0aGLsuCcrxL4ip90EP9LT6XgK7L407QOZePDLvi3kk
         s43QDrgcDt5ZMIsi6e/Z038wftyrDABnFkvSueam9AZytrYIILBrn9ep07nrIH/YIjg6
         BxLA==
X-Gm-Message-State: AA6/9Rm1LrTImP+QanHfdjflsq/LqkTIG6Vku2wmIzkfSvwcCsp7FqNpvyMX4kiV6O8j5g==
X-Received: by 10.66.245.204 with SMTP id xq12mr5102686pac.37.1475177235522;
        Thu, 29 Sep 2016 12:27:15 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id o5sm22152457pfb.9.2016.09.29.12.27.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 12:27:15 -0700 (PDT)
Date: Thu, 29 Sep 2016 12:27:13 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] mail delivery subsystem failure
Message-ID: <20160929192712.GA4242@localhost>
References: <20160929175401.GB3294@localhost>
 <alpine.DEB.2.10.1609292023060.3160@hadrien>
 <20160929183847.GD3294@localhost>
 <alpine.DEB.2.10.1609292058190.3160@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609292058190.3160@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Sep 29, 2016 at 08:59:37PM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 29 Sep 2016, Elizabeth Ferdman wrote:
> 
> > On Thu, Sep 29, 2016 at 08:25:12PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Thu, 29 Sep 2016, Elizabeth Ferdman wrote:
> > >
> > > > I'm trying to group-reply to a message Julia sent about my patch. It
> > > > fails to send and I get this error for each recipient from Mail Delivery
> > > > Subsystem: "Delivery to the following recipient failed permanently:"
> > > >
> > > > It's making it impossible to group-reply from mutt because google thinks
> > > > it's spam... I tried doing it a second time but the same thing happened.
> > > > I believe I've group replied before and it worked fine.
> > > >
> > > > Technical details of permanent failure:
> > > > Message rejected. See https://support.google.com/mail/answer/69585 for
> > > > more information.
> > >
> > > I'm the moderator of the group, so normally I should get informed about
> > > any messages that are considered to be spam.  I haven't gotten anything
> > > recently, and I didn't see anything in the web interface.
> > >
> > > On the other hand, I see that you did spell my name incorrectly:
> > >
> > > juia.lawall@lip6.fr,
> > >
> > The ellipsis is how google groups abbreviates all email addresses in the
> > mailing list; I wrote out your full email address when I sent it.
> > > Maybe lip6.fr is reacting in some way that google groups doesn't like?
> > >
> > Possibly: here's what i'm getting:
> > Delivery to the following recipient failed permanently:
> >
> >      juia.lawall@lip6.fr
> 
> This is the problem.  The first name in my email address is julia, not
> juia.  You left out the l.  I'm surprised that it would cause no one else
> to receive the mail, though.
> 
> julia
> 

Hey Julia, 
I did spell your name wrong in that particular thread but it wasn't
spelled wrong when i group replied (separate thread). I actually just
hit 'g' in mutt to group reply. 
Even when i only reply to outreachy-kernel@googlegroups.com, 
it refuses to go through. I tried sending it lots of times.
Mutt is not showing any errors.

To save some time I'm just going to paste what I've been trying to
respond to this whole time here:
-----------------------------------------------------------------------
> > Replace the unique arithmetic macro expression with a built-in
> I don't understand "unique arithmetic macro expression".
>
What I meant to say was that the author wrote his own rounding
expression instead of using a built in function that achieved the same
thing. I was trying to be concise but I guess I should have just said
that directly. Do you have a better idea? I can submit a v3
with a better description.
> > function from linux/kernel.h DIV_ROUND_CLOSEST(x, divisor).
>
> Some blank lines are deleted at the end of the patch.  This seems like
> a
> separate change.
>
Oh, I did delete two blank lines at the very end of the file, out of
habit and not realizing that would distract from the change.
I could just go back in and add those two blank lines to clear that up.

Liz
-------------------------------------------------------------------


> >
> >      Technical details of permanent failure:
> >      Google tried to deliver your message, but it was rejected by the
> >      server for the recipient domain lip6.fr by isis.lip6.fr.
> >      [2001:660:3302:283c::2].
> >
> >      The error that the other server returned was:
> >      550 5.1.1 <juia.lawall@lip6.fr>... User unknown
> >
> > > In any case, you can try just dropping me from the CC list.  I will get
> > > the message via the group anyway.
> > >
> > Good idea i will try that.
> > Liz
> > > julia
> > >
> > >
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160929175401.GB3294%40localhost.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160929183847.GD3294%40localhost.
> > For more options, visit https://groups.google.com/d/optout.
> >

