X-GM-THRID: 6211002090683105280
X-Received: by 10.129.145.71 with SMTP id i68mr6103428ywg.1.1446216564970;
        Fri, 30 Oct 2015 07:49:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.165 with SMTP id w34ls1345051qge.68.gmail; Fri, 30 Oct
 2015 07:49:24 -0700 (PDT)
X-Received: by 10.129.156.198 with SMTP id t189mr6431779ywg.26.1446216564476;
        Fri, 30 Oct 2015 07:49:24 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si749706pac.2.2015.10.30.07.49.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 07:49:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy1so70503813pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 07:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=Vm5K/zGMko9+JjAjVLFeK5rhIXbpmQ4UAwBsJOxyJsA=;
        b=ogmA+cwU2NFe5o5f+0MLhQ/Cx+MgDk0mBrzs1FrVq7xQpN2cLGWNSis95blvzLPfvd
         3QOE4v5DnXbp18ENb8cgO9vjpmgFEryGZO6bwV9QYGj6hOUTv6fkhNp0nYClamj6Yqxk
         jjv+k53EVHlMMJbuabI3gZvecflhsUHAq7G7gxVCgRal6D3QrlqKajKsAKIDWf2/JucM
         YW9Hu520DWTofrQHArKlTQ3LZ36fFEKrSycywXktcljP6iXB7wODctqbKrO+Av8dK5te
         BprOvA7MVDt6HzoMxGCEGpaGyt2/QZqzySITOrNg5Ti/GNxIfxhSjshz8AagENYaLVuz
         Tyww==
X-Received: by 10.68.57.171 with SMTP id j11mr9345710pbq.17.1446216564353;
        Fri, 30 Oct 2015 07:49:24 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.253])
        by smtp.gmail.com with ESMTPSA id tn2sm8724624pac.0.2015.10.30.07.49.23
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 07:49:23 -0700 (PDT)
Date: Fri, 30 Oct 2015 22:49:21 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] depmod: modules in dependency cycles
Message-ID: <20151030144920.GB3063@Socrates-Mint>
Mail-Followup-To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	outreachy-kernel@googlegroups.com
References: <20151029094006.GA15647@Socrates-Mint>
 <alpine.DEB.2.10.1510291541310.2505@hadrien>
 <20151030064138.GA4398@Socrates-Mint>
 <20151030065741.GA31483@sudip-pc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151030065741.GA31483@sudip-pc>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 12:29:08PM +0530, Sudip Mukherjee wrote:
> On Fri, Oct 30, 2015 at 02:41:41PM +0800, Eva Rachel Retuya wrote:
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
> Can you also reset your tree before your next try. Maybe something has
> changed. git reset --hard <tree/branch>
> 
> regards
> sudip

I tried this but still the dependency issue persist. Thank you
for the idea regardless.

Eva

