X-GM-THRID: 6340039489286569984
X-Received: by 10.129.42.193 with SMTP id q184mr1280234ywq.119.1476335988703;
        Wed, 12 Oct 2016 22:19:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.57.181 with SMTP id y50ls5276074otb.10.gmail; Wed, 12 Oct
 2016 22:19:48 -0700 (PDT)
X-Received: by 10.200.52.23 with SMTP id u23mr1213561qtb.80.1476335988234;
        Wed, 12 Oct 2016 22:19:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t8si1636684vkb.2.2016.10.12.22.19.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 22:19:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,338,1473112800"; 
   d="scan'208";a="240561910"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2016 07:19:46 +0200
Date: Thu, 13 Oct 2016 07:19:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, hvaibhav.linux@gmail.com, 
    johan@kernel.org, elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/7] staging: greybus: Format
 block comments.
In-Reply-To: <20161012155247.GA12782@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610130719280.3260@hadrien>
References: <20161011031105.GA21887@lennorien.com> <20161012132401.GA22452@kroah.com> <20161012135508.GC5158@lennorien.com> <20161012144015.GA28533@kroah.com> <20161012155247.GA12782@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 12 Oct 2016, Elise Lennion wrote:

> On Wed, Oct 12, 2016 at 04:40:15PM +0200, Greg KH wrote:
> > On Wed, Oct 12, 2016 at 10:55:08AM -0300, Elise Lennion wrote:
> > > On Wed, Oct 12, 2016 at 03:24:01PM +0200, Greg KH wrote:
> > > >
> > > > Does not apply to my tree :(
> > > >
> > > > Can you refresh this whole series and resend it?  Keep the acks that
> > > > were sent for some of the patches, and fix up the subject: lines.
> > > >
> > >
> > > Ok, I'll create new patches containing the changes without ack.
> >
> > No, keep the acks, why delete them?
> >
>
> I think didn't explain myself well. I meant that I'd keep the acks and
> send the changes of the non-acks in new patches.
>
> The remaining commits, the ones that don't create conflicts and aren't
> acked yet, are all changes in greybus/camera.c. Is it ookay to create
> a new patchset with them?

I think you should just send the same series again.

julia

>
> > > This one that doesn't apply, should I just drop it? Your tree is local
> > > so I can't see what is different, to adjust the changes, until you push
> > > the changes to staging-testing, right?
> >
> > My tree is pushed to staging-testing, so you should see this now.  Is it
> > not synced up somehow?
> >
>
> Yes, I had a lot of trouble syncing the local git branch but now I can
> see the changes :)
>
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161012155247.GA12782%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

