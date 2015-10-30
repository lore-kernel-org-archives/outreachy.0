X-GM-THRID: 6211002090683105280
X-Received: by 10.50.142.1 with SMTP id rs1mr1084747igb.0.1446187307437;
        Thu, 29 Oct 2015 23:41:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.138 with SMTP id 10ls370984qgz.51.gmail; Thu, 29 Oct
 2015 23:41:45 -0700 (PDT)
X-Received: by 10.129.82.193 with SMTP id g184mr5005650ywb.44.1446187305582;
        Thu, 29 Oct 2015 23:41:45 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si576228pac.2.2015.10.29.23.41.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 23:41:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hk11so65041291pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 23:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=NHbd2lAGkVrzUQFA158nq339qj/7h46HaysdHrblE0Q=;
        b=ow3ib1ulzdVajgfy/b9sy0e2RlPf+QM12svgz0JFFcggvbhlZz/fAVn/OKrn1KYDen
         Al1ypwOsJNGjr84OJDyel/2KmpIA7IPTclrRHiGf/uOuEY1do7nkNKwn0qU+CK2ilhUr
         kL1UXxarPQVFtBJk9t+ZjneAzta20OMvA4oGdk/W3gycQbAvTjfi3+PSFwnV0gm2DhxY
         rIJ6mFAV9urWAm3sVpBPR4cHGGNPTxdEaG+LQRevhrUeouRk886/60Y3+2/yHaI/rrpt
         euc5eiW0Szt8JCAwmgQXi23rzen843Ds5RhfXR64HKpB90y50at7g4+TynagNzNz71Kn
         xL8Q==
X-Received: by 10.68.197.9 with SMTP id iq9mr6765549pbc.123.1446187305359;
        Thu, 29 Oct 2015 23:41:45 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.253])
        by smtp.gmail.com with ESMTPSA id pk2sm6027269pbb.21.2015.10.29.23.41.44
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 23:41:44 -0700 (PDT)
Date: Fri, 30 Oct 2015 14:41:41 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] depmod: modules in dependency cycles
Message-ID: <20151030064138.GA4398@Socrates-Mint>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel@googlegroups.com
References: <20151029094006.GA15647@Socrates-Mint>
 <alpine.DEB.2.10.1510291541310.2505@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510291541310.2505@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 29, 2015 at 03:41:54PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 29 Oct 2015, Eva Rachel Retuya wrote:
> 
> > Hi,
> >
> > After successfully finishing a few patches and rebasing my branch to
> > obtain the latest updates, I have run into this problem that keeps me
> > from updating my kernel and therefore won't let me test patch/es I
> > intend to send.
> >
> > A snippet of my "failed" installation can be found here:
> > http://pastebin.com/8WzV1Ayn
> >
> > I'd like to ask for help as to how to resolve this issue. My searches so
> > far did not yield enough information for me to successfully solve this
> > on my own. What I am doing lately was to boot to my stable kernel
> > (3.16.0-38), copy its config to .config as directed from the tutorial. Compile the kernel and install (sudo make modules_install install). The end result are as indicated on the pastebin link. Even booting from my last-known working "latest" kernel (rc5) yields the same result.
> 
> I usually use make allyesconfig.  Maybe try that.
> 
> julia
>

I tried allyesconfig and was able to install the modules fine without the dependency issue popping out. However, I cannot seem to load any module (modprobe/insmod) without it spouting 'directory not found' messages. Before the dependency issue, modprobe works. I also checked the directory that should house the said modules and it looked fine to me.

Right now I'm retracing my steps, incorporating the advice so far. I will update again after a few hours of my progress whether the new issue still persists.

Eva

