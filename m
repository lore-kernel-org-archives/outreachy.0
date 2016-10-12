X-GM-THRID: 6340039489286569984
X-Received: by 10.157.38.241 with SMTP id i46mr456039otd.82.1476287575354;
        Wed, 12 Oct 2016 08:52:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.101 with SMTP id t92ls3638205ota.29.gmail; Wed, 12 Oct
 2016 08:52:55 -0700 (PDT)
X-Received: by 10.129.77.87 with SMTP id a84mr467914ywb.30.1476287575021;
        Wed, 12 Oct 2016 08:52:55 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p70si934411vkd.0.2016.10.12.08.52.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 08:52:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 2so2293856vkb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 08:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=t5kpCsu1Xb2GjqD/356mH+Zm/EZor0iI34rHWyBViQE=;
        b=IVeBzhLSlRcYcXPcnSpaj/qkXz5YGhkulf4OuFsQUCjjHSRxY1Yn8v7yo0433mkTaS
         CmXSBl56NgibbYe2Kom5HckCfKL12gE6GWPoPet3ngzrvsf5KPuIgvO0WobhKojBX0bu
         cebXeegb6XlzFpfJFvFgm6iX9Taa4xkbppGcdtfosbRYBLdD9BZKrV3OfxMsJ1NcdQ08
         0SRDkLJH4mRvJbBkVyJKQlkNtDrRV4gAwFLXwKi0o5J2s4mWtSW6MTUkLpPJQKLPn+2w
         UtTbvPp4mMA/JEVdmB4iGdSDxpf2wsUXumObSXrHt4AwPX8uHp75p8aM82Y1Nax5wzEm
         ZZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=t5kpCsu1Xb2GjqD/356mH+Zm/EZor0iI34rHWyBViQE=;
        b=hE3AAd80wWPGB1yriZc1enngTmatXAMDOh1GbHXLFpqq4Vj3hDLxfJ4K/+IlJWyO09
         A8R1g8Yq/kxWhU7ZiJ9fQdbRLYzFErDBi9OEKNn6HOiJNOx6S6FOYIKFMJtmG0Dm7qmD
         6IktPJE1ahbsPc7rFVGeJGH0C1oN5/UQ6T+9QluGpjHjjg/13PIiQ+n1aaTONmaRYS5W
         V4WfpBoGB2/PtgpXUETdmY5ZFS8O5NL25enu4Iqdsl17ix1i59QnNAdqS0yXtTcU0GtJ
         698jbbiLh4lKxoyQePRZN10pr+8XLYlxYHRlKcOHCNnXudd09jXpVVQkpYbbhNdWbGZW
         qCHg==
X-Gm-Message-State: AA6/9RlBj4K2SZ88Rjt50o64Mo0dByZzuIABdA9Vw38HRzzICRjl0gjf9uyrrWQwSDECRg==
X-Received: by 10.31.148.22 with SMTP id w22mr850303vkd.87.1476287574822;
        Wed, 12 Oct 2016 08:52:54 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id n71sm3245344vke.23.2016.10.12.08.52.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 08:52:54 -0700 (PDT)
Date: Wed, 12 Oct 2016 12:52:47 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/7] staging: greybus: Format block comments.
Message-ID: <20161012155247.GA12782@lennorien.com>
References: <20161011031105.GA21887@lennorien.com>
 <20161012132401.GA22452@kroah.com>
 <20161012135508.GC5158@lennorien.com>
 <20161012144015.GA28533@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161012144015.GA28533@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 12, 2016 at 04:40:15PM +0200, Greg KH wrote:
> On Wed, Oct 12, 2016 at 10:55:08AM -0300, Elise Lennion wrote:
> > On Wed, Oct 12, 2016 at 03:24:01PM +0200, Greg KH wrote:
> > > 
> > > Does not apply to my tree :(
> > > 
> > > Can you refresh this whole series and resend it?  Keep the acks that
> > > were sent for some of the patches, and fix up the subject: lines.
> > > 
> > 
> > Ok, I'll create new patches containing the changes without ack.
> 
> No, keep the acks, why delete them?
> 

I think didn't explain myself well. I meant that I'd keep the acks and
send the changes of the non-acks in new patches.

The remaining commits, the ones that don't create conflicts and aren't
acked yet, are all changes in greybus/camera.c. Is it ookay to create
a new patchset with them?

> > This one that doesn't apply, should I just drop it? Your tree is local
> > so I can't see what is different, to adjust the changes, until you push
> > the changes to staging-testing, right?
> 
> My tree is pushed to staging-testing, so you should see this now.  Is it
> not synced up somehow?
>

Yes, I had a lot of trouble syncing the local git branch but now I can
see the changes :)

> thanks,
> 
> greg k-h

