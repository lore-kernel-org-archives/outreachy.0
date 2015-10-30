X-GM-THRID: 6211002090683105280
X-Received: by 10.50.110.6 with SMTP id hw6mr2614321igb.7.1446216456796;
        Fri, 30 Oct 2015 07:47:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.67.69 with SMTP id l5ls172667igt.21.gmail; Fri, 30 Oct 2015
 07:47:36 -0700 (PDT)
X-Received: by 10.66.228.169 with SMTP id sj9mr6511758pac.24.1446216456358;
        Fri, 30 Oct 2015 07:47:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id sm2si710286pab.0.2015.10.30.07.47.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 07:47:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so79690288pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 07:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=lt2gApsk89vxEVGDo1bZNOBsRLJm7maoa5ez/re6efo=;
        b=S2TnBEcQveKKf5zFDMEhlXI5oWvRmcQtjH8u7oL6qwTHOegNXE1qWuPnyk9z5Kft8Z
         mA9UP1BPN62eRluvLokfozmdoPtrfZZdfQ3BjH5qh3R8QQAtbg0H9GhRfVoIBRidCWhG
         xfU+jO8U3MtmwtLXtEgC1eJo7wedZAOjrzd29Iz9Rp+ECwbdXfp6MKzRcArj5aRjhNWt
         OpZn/GqFFNuOj92A1Rjm8X+yovxxVPeWTsegm8ZnmXuE3jdoRCZYVUtyrQccnl51UKEE
         NL+EDO0ZwAXfrTxlEKZ22Yo5KeHiryEBe6UJ9lW/yUcDnAVxMeQH1pwOPlGf/7L++h1F
         MYXw==
X-Received: by 10.68.139.65 with SMTP id qw1mr4620873pbb.34.1446216456254;
        Fri, 30 Oct 2015 07:47:36 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.253])
        by smtp.gmail.com with ESMTPSA id ub4sm8666045pac.29.2015.10.30.07.47.35
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 07:47:35 -0700 (PDT)
Date: Fri, 30 Oct 2015 22:47:32 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] depmod: modules in dependency cycles
Message-ID: <20151030144731.GA3063@Socrates-Mint>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel@googlegroups.com
References: <20151029094006.GA15647@Socrates-Mint>
 <alpine.DEB.2.10.1510291541310.2505@hadrien>
 <20151030064138.GA4398@Socrates-Mint>
 <alpine.DEB.2.02.1510300745180.2253@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510300745180.2253@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 07:47:40AM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 30 Oct 2015, Eva Rachel Retuya wrote:
> 
> > On Thu, Oct 29, 2015 at 03:41:54PM +0100, Julia Lawall wrote:
> > > 
> > > 
> > > On Thu, 29 Oct 2015, Eva Rachel Retuya wrote:
> > > 
> > > > Hi,
> > > >
> > > > After successfully finishing a few patches and rebasing my branch to
> > > > obtain the latest updates, I have run into this problem that keeps me
> > > > from updating my kernel and therefore won't let me test patch/es I
> > > > intend to send.
> > > >
> > > > A snippet of my "failed" installation can be found here:
> > > > http://pastebin.com/8WzV1Ayn
> > > >
> > > > I'd like to ask for help as to how to resolve this issue. My searches so
> > > > far did not yield enough information for me to successfully solve this
> > > > on my own. What I am doing lately was to boot to my stable kernel
> > > > (3.16.0-38), copy its config to .config as directed from the tutorial. Compile the kernel and install (sudo make modules_install install). The end result are as indicated on the pastebin link. Even booting from my last-known working "latest" kernel (rc5) yields the same result.
> > > 
> > > I usually use make allyesconfig.  Maybe try that.
> > > 
> > > julia
> > >
> > 
> > I tried allyesconfig and was able to install the modules fine without the dependency issue popping out. However, I cannot seem to load any module (modprobe/insmod) without it spouting 'directory not found' messages. Before the dependency issue, modprobe works. I also checked the directory that should house the said modules and it looked fine to me.
> > 
> > Right now I'm retracing my steps, incorporating the advice so far. I will update again after a few hours of my progress whether the new issue still persists.
> 
> Considering that there are only four more days for submitting patches, I 
> would suggest that you spend your time on that now, and solve the module 
> issue afterwards.  For now, you don't need to be actually testing your 
> patches, just compiling them.  Most patches are very hard to test anyway, 
> because you don't have the relevant device.  For the actual internship 
> it's different, if your mentor can send a device to you.  So it is 
> important to solve the problem.  It is just not quite so urgent.
> 
> julia

Okay, I will. The only reason I kept fixated on resolving that issue is
that I think it keeps me from successfully installing modules I wish to
load with modprobe/insmod.

I have a question with the small task for the projects, does that need
to be fulfilled by Nov.2 also?

Eva

