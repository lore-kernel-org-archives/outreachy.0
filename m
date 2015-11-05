X-GM-THRID: 6209266424669536256
X-Received: by 10.182.28.70 with SMTP id z6mr7246893obg.41.1446747604213;
        Thu, 05 Nov 2015 10:20:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.13 with SMTP id 13ls819867ioh.91.gmail; Thu, 05 Nov 2015
 10:20:03 -0800 (PST)
X-Received: by 10.107.136.215 with SMTP id s84mr8882291ioi.21.1446747603763;
        Thu, 05 Nov 2015 10:20:03 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id vy6si863010pbc.1.2015.11.05.10.20.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2015 10:20:03 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id dm15so70075526pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Nov 2015 10:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=TfvQdUlbg0wQ7kaBXiMPra/455mVBOEZ406FITOINtI=;
        b=d2t9xgjtLLMe++5ZRFaKGEQ814zVtTRWHP+4BT7oTYW1JwVm7UnkSbiBWfgRiym9df
         2OV8u1L48HFDJOolH2J0A9EpGc7AUdKLaamKskeOqdM9yZE6zcSzj6eFa1OBLL4mNVdp
         p/kuCjoLzA6R6Vxl6cySYducv+E7/JJztyF1E3ECdCxKSqBqYX7vdtM9RUxH1vL/ORf8
         oD898HCmavSE7Qbqy2JCx3vNzB+iJJTzbAYMpQ63A3IHUDMvFJamosUy8V+k1ekyCxrl
         mMh620CoNKIHhBaPSClbj5w6qaDVenBvBYmwdRQGeIsgjkqqZ4KisOCzvuG3bfH/2EP+
         gmNg==
X-Received: by 10.66.153.139 with SMTP id vg11mr10935664pab.118.1446747603589;
        Thu, 05 Nov 2015 10:20:03 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.7])
        by smtp.gmail.com with ESMTPSA id sb4sm848891pbb.55.2015.11.05.10.20.02
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 05 Nov 2015 10:20:03 -0800 (PST)
Date: Fri, 6 Nov 2015 02:19:59 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: mt29f_spinand: Replace
 udelay function with usleep_range
Message-ID: <20151105181955.GA6328@Socrates-Mint>
Mail-Followup-To: Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel@googlegroups.com
References: <1445707491-28304-1-git-send-email-eraretuya@gmail.com>
 <5775905.RiZkvh7Klu@wuerfel>
 <20151031085329.GA25133@Socrates-Mint>
 <8309352.N5ZdtU6YYI@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8309352.N5ZdtU6YYI@wuerfel>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Nov 02, 2015 at 09:12:10PM +0100, Arnd Bergmann wrote:
> On Saturday 31 October 2015 16:53:31 Eva Rachel Retuya wrote:
> > On Fri, Oct 30, 2015 at 10:32:40PM +0100, Arnd Bergmann wrote:
> > > On Sunday 25 October 2015 01:24:51 Eva Rachel Retuya wrote:
> > > > Use 'usleep_range' instead of 'udelay' to elapse time. For
> > > > spinand_reset, define the upper limit by a factor of 2 to keep the wait
> > > > short while still allowing a "good enough" range for wakeup. Define the
> > > > range 250us - 1ms for spinand_cmdfunc to provide enough leeway before
> > > > issuing spinand_reset. Checkpatch found this issue.
> > > > 
> > > > CHECK: usleep_range is preferred over udelay; see
> > > > Documentation/timers/timers-howto.txt
> > > 
> > > You are missing here an explanation about how you verified that the
> > > conversion is safe: Are you sure that the spinand_reset() function
> > > is never called from "atomic" context?
> > 
> > Please correct me if I'm wrong. I look up similar patches before this
> > and scanned the code taking into consideration what was discussed. In
> > this case, I didn't see any indication that it is not allowed to sleep
> > and also by looking at the probe function containing
> > "devm_kzalloc(..., GFP_KERNEL). The caller/s of the reset function does
> > not indicate whether it is on "lock status" and from my analysis, the
> > use of "udelay()" simply wants to elapse time before proceeding.
> 
> Your analysis is a bit flawed, because you look at the probe function
> that uses a pointer to spinand_reset(), and the probe function can clearly
> sleep as you describe here, but it is not obvious whether the callers
> of the 'cmdfunc' pointers are allowed to sleep as well.
>  
> > Do you think it operates in atomic context?
> 
> I was commenting on the fact that your changelog text did not describe
> whether you checked at all, or how you came to the conclusion that it
> was safe.
> 
> I have checked the code myself now, and found that the function already
> sleeps, so it is safe to add other sleeping function calls, and the
> change in your patch is good.
> 
> This is important to get right, especially when you modify someone
> else's code, because whether code is called in atomic context or not
> is fundamental knowledge in the kernel, and getting it wrong can
> result in bugs that are hard to find.
> 
> Can you try again to figure out why this is a safe conversion?
> 
> 	Arnd
>

I'm sorry for the late response!

The change from udelay to usleep is a safe conversion because the
spinand_reset() calls spinand_cmd(). The return value of the latter
depends on the return value of spi_sync() which is a function that is
allowed to sleep therefore, I have confirmed that spinand_reset() is
not in atomic context.

I hope I got it right this time. Thank you for bringing this up.
Eva

