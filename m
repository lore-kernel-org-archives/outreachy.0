X-GM-THRID: 6251802816159940608
X-Received: by 10.107.11.222 with SMTP id 91mr15546693iol.7.1455910966624;
        Fri, 19 Feb 2016 11:42:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.36 with SMTP id c33ls308330qge.30.gmail; Fri, 19 Feb
 2016 11:42:46 -0800 (PST)
X-Received: by 10.140.143.200 with SMTP id 191mr14245859qhp.3.1455910966038;
        Fri, 19 Feb 2016 11:42:46 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id yd9si1840443pab.1.2016.02.19.11.42.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 11:42:45 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fy10so55181852pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 11:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9E+Yei7H9AIMxPRvH2mV6GcExfv4AnvnNpP54fr5ixc=;
        b=DQtRX/ZO4WKR/Qf2wMWNE7o/1Ajshn2rJ8hQ7A9BJi5GngEw8aW/aLzQJZQK8p6wER
         UNlJRUN2aQrKkBd0oZn3vC16h4MNI2HYs7uaoPG3Bdo4BXI1Ndd2RVsYEUbBwe1i8TJg
         nyERT4QjJpp3b4hVRezUjjaRQtayrISlijeZnl+bfP8UMGNdZXSXWZajhEWxKtzD/fh3
         mULt1wmrxPx1aMNSECp3a0U36ugvmIWNjvVlg+TO6I7qKJb23Uuj2CfPZu5edVVVdZzI
         //CGEO80qiwYBww4caV9KB1UhFJ2b/H4CoiY8DDUzbm0Bxm8twu7eIOqHv+8rxjo0+gM
         6jUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=9E+Yei7H9AIMxPRvH2mV6GcExfv4AnvnNpP54fr5ixc=;
        b=OcsP4im8zEVYeOPwkN8GHYKmRj9BNClSPNuAOPLxnCgJMuz8V9wRB/eGAE+nXdTXgo
         hS01RPnOgMqDPVetLlGMdyMYu6uRIGqfaQHudUrFfYeJ1cZLNs/bf+ZQBYpBDSEw3Cv3
         rCewOT+qyCMGMHNfhpgtfMMF+PdxkneQdV0O7rM+1q8uvwhHBlUTGtgnaxLZRyJZuWC7
         uG24FKQkAINBYuu7m9L3DzhXvM6181jS7SE7iZkcOLpAnA/WFpznO9U9dDjnpu+VB5GS
         7KurstpypJnah2RlLtWnT6txpeTQc9FtMLhnTjWY2ChkbkUXkhQQxrar2WcJdA4EyMqO
         0ciA==
X-Gm-Message-State: AG10YOS3xDDM7hyF1OFW6vvaSyjIb0rdDI19VStq1QjdrvDc5OSggttQlcJcMkzvofY5iw==
X-Received: by 10.66.160.7 with SMTP id xg7mr20323455pab.10.1455910965887;
        Fri, 19 Feb 2016 11:42:45 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id q8sm19509111pfa.70.2016.02.19.11.42.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 11:42:45 -0800 (PST)
Date: Fri, 19 Feb 2016 11:42:44 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 2/3] staging: wilc1000:
 host_interface: replace semaphores with mutexes
Message-ID: <20160219194243.GA8963@d830.WORKGROUP>
References: <cover.1455609607.git.amsfield22@gmail.com>
 <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
 <20160216181605.GA2534@d830.WORKGROUP>
 <4301281.rimkg3iJVl@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4301281.rimkg3iJVl@wuerfel>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 16, 2016 at 10:34:11PM +0100, Arnd Bergmann wrote:
> On Tuesday 16 February 2016 10:16:07 Alison Schofield wrote:
> > On Tue, Feb 16, 2016 at 12:31:42AM -0800, Alison Schofield wrote:
> > > Replace semaphores with mutexes in the host_interface driver.
> > > 
> > > This is a safe performance improvement because the usage model
> > > meets the principle of ownership for mutexes: the thread that
> > > locks is the same thread that unlocks.
> > > 
> > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > ---
> > 
> > Arnd,
> > Thanks for the review and redirection. I will use it to learn more
> > about the usage of semas, mutexes, and the wait_for_completion too.
> 
> You're welcome. Feel free to ask me on IRC if you need more help
> on this. I saw your question the other day, but you were gone when
> I tried to reply about the down_timeout().
> 
> > Greg,
> > I hear you and will abandon this patch.  It was no easy task figuring
> > out the purpose of these locks (just to comment them), so that should
> > have been a red flag that perhaps this wasn't the wisest choice for
> > my first attempt at lock changes.  Learned some stuff and moving on...
> 
> For this specific driver, I've done a number a number of patches myself
> and found that the maintainers at Atmel were rather responsive and
> able to test my patches on their systems.
> 
> It might still be worthwhile to follow up doing one semaphore at a time,
> I'll gladly do an detailed review of those patches.
> 
> There are also some easy unused semaphores in drivers/staging/rtl8712/
> and drivers/staging/rtl8723au that you can take care of.
> 
> 	Arnd

A new patch follows that replaces one semaphore with a completion.
This particular semaphore is part of a subset in the host_if_drv
structure that are essentially being used to communicate completion
of messages sent to the host interface.

My intent here would be to get this one reviewed to verify I'm on the
right track. Next, I'll ask Atmel maintainers if they would be
willing/able to test such a set of patches. If yes, I'd create the
patchset, get it reviewed, and send to Atmel for test.

(A review and update of those global semaphores the host_interface could
follow.)

alisons


