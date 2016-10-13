X-GM-THRID: 6340039489286569984
X-Received: by 10.13.221.198 with SMTP id g189mr2108815ywe.73.1476393757223;
        Thu, 13 Oct 2016 14:22:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.182 with SMTP id s51ls6950303ota.14.gmail; Thu, 13 Oct
 2016 14:22:36 -0700 (PDT)
X-Received: by 10.157.46.211 with SMTP id w77mr2439819ota.63.1476393756944;
        Thu, 13 Oct 2016 14:22:36 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id x14si2090584vkd.3.2016.10.13.14.22.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 14:22:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id b186so4179580vkb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 14:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AKs6DSSzhVI/1SIcwCU4Roj4rWJJeZPjG4ss91/7uzM=;
        b=t2mBDOkoj5AFdiadvDQKWELXQmL6NsU+0qOtwt64uNlbZ2FuhrJ2M/8Gyc8WZ0B6W5
         8/n9FejwQ3bF4rFyUYKT28me7x0bV+bVfhPwvJZ3WlbYTTQPmi6f9zA4MTthsTEEkIIj
         pNvxjCfxgcXoLudxSo9WnEuZZ0+2pSwVEdBb/oNY/V7qq1VdWh4pjuVxzdVSN8W3mSuw
         y0ue0k1+Qj5JJz306Cs0Ry7w0GTSH1wci1hkE1U+IgPWXeV6jSMDjbPS54eaqgyZwFQh
         1P3CF8z2gKHLkd19mFmgLQ64BqQhRmS7cBfw2PUy6IoH6QbR0jyLp0LPm3/0QiAi648x
         /WTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AKs6DSSzhVI/1SIcwCU4Roj4rWJJeZPjG4ss91/7uzM=;
        b=mVZxPK0l0ARGcbpOnk8YAbngwR6KCMHPzhZ7SMZJTDBW+iwajMyKQ2gCXU3jHGDkNr
         IGjG2e8zOUC5zdhvLs4hP6IsYOUakPy0gx+iq3jMDQUIPuibfyzNe4gzrGfdDnrJy6xb
         tVp3JrS/1ceWxrsYBhKogsW0iGpr8C6lp/BR0wF5WoTSzKrlY4wTJzQIGRcgoEFEW2RA
         QeD4+wPVWxdfyW412LNieJxxeaDF0B0dJsDFAIyBPVU5QOlQySJLoHqdXDBgXCWe6OvS
         14s4mldAxRQi8AhWa4CZ3QQHDJcJEsVtj48SuPX/Ldm+/g/XqeeSPyC45XxSKZwidO5D
         cV0g==
X-Gm-Message-State: AA6/9RlGwLNyhiCe+Mba2twE0ihysuYfK+zwP1qkCIa8fKQl5Ppyr+mRe0lEJu9BvdXSUA==
X-Received: by 10.31.142.137 with SMTP id q131mr6387607vkd.157.1476393756774;
        Thu, 13 Oct 2016 14:22:36 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id o15sm5998165vkd.21.2016.10.13.14.22.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 14:22:35 -0700 (PDT)
Date: Thu, 13 Oct 2016 18:22:28 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, hvaibhav.linux@gmail.com, johan@kernel.org,
	elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/7] staging: greybus: Format
 block comments.
Message-ID: <20161013212228.GA7227@lennorien.com>
References: <20161011031105.GA21887@lennorien.com>
 <20161012132401.GA22452@kroah.com>
 <20161012135508.GC5158@lennorien.com>
 <20161012144015.GA28533@kroah.com>
 <20161012155247.GA12782@lennorien.com>
 <alpine.DEB.2.10.1610130719280.3260@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610130719280.3260@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 13, 2016 at 07:19:45AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 12 Oct 2016, Elise Lennion wrote:
> 
> > On Wed, Oct 12, 2016 at 04:40:15PM +0200, Greg KH wrote:
> > > On Wed, Oct 12, 2016 at 10:55:08AM -0300, Elise Lennion wrote:
> > > > On Wed, Oct 12, 2016 at 03:24:01PM +0200, Greg KH wrote:
> > > > >
> > > > > Does not apply to my tree :(
> > > > >
> > > > > Can you refresh this whole series and resend it?  Keep the acks that
> > > > > were sent for some of the patches, and fix up the subject: lines.
> > > > >
> > > >
> > > > Ok, I'll create new patches containing the changes without ack.
> > >
> > > No, keep the acks, why delete them?
> > >
> >
> > I think didn't explain myself well. I meant that I'd keep the acks and
> > send the changes of the non-acks in new patches.
> >
> > The remaining commits, the ones that don't create conflicts and aren't
> > acked yet, are all changes in greybus/camera.c. Is it ookay to create
> > a new patchset with them?
> 
> I think you should just send the same series again.
> 
> julia
> 

Ok, I'll resend the remaining patches.

thank you,

elise

