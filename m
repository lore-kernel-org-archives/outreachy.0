X-GM-THRID: 6211002090683105280
X-Received: by 10.31.148.206 with SMTP id w197mr4914925vkd.9.1446188358703;
        Thu, 29 Oct 2015 23:59:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.165.162 with SMTP id yz2ls308816obb.96.gmail; Thu, 29 Oct
 2015 23:59:18 -0700 (PDT)
X-Received: by 10.182.50.135 with SMTP id c7mr5066533obo.47.1446188358166;
        Thu, 29 Oct 2015 23:59:18 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id sm2si555382pab.0.2015.10.29.23.59.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 23:59:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy1so59480260pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 23:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=HrQsXCL3sCPy4MKn19+tpCr1/mJmW8jdaMpOM3rneo8=;
        b=0BsVI0UhoL6BkW9V1vWwJpbfTy2QQwZnOKghE+nxXK58+cFaBrVlu82ovZmU+VNwGd
         8itqmZnk6xGH/5/haLOhVF0xQukO1EAA5ggXqKAe4IqYddic+wdG6BTWbZEidz5MwkFL
         NAKrjSuji8C5JQgX2wf37hZo+oLnN1tGm0KGLgjJFTlFyzQTFrMwyhD79QsUvOCLPBnk
         QSnsX1R93RVNDVta6YTtYUNXm1cNs0oUpnbx8fT7bAQ7lI9TaQkucxIQh3XoLD0hNUd0
         yzKm2URD7tlVWYkN5HR/73pyuncXuUnn4g5i5FE+93q4M2tK4y7UvD0+H/J5BDMInFQT
         3ZIA==
X-Received: by 10.66.139.227 with SMTP id rb3mr1178137pab.64.1446188358027;
        Thu, 29 Oct 2015 23:59:18 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id vl1sm6125558pbc.31.2015.10.29.23.59.15
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 23:59:17 -0700 (PDT)
Date: Fri, 30 Oct 2015 12:29:08 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] depmod: modules in dependency cycles
Message-ID: <20151030065741.GA31483@sudip-pc>
References: <20151029094006.GA15647@Socrates-Mint>
 <alpine.DEB.2.10.1510291541310.2505@hadrien>
 <20151030064138.GA4398@Socrates-Mint>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151030064138.GA4398@Socrates-Mint>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 02:41:41PM +0800, Eva Rachel Retuya wrote:
> On Thu, Oct 29, 2015 at 03:41:54PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Thu, 29 Oct 2015, Eva Rachel Retuya wrote:
> > 
> > > Hi,
> > >
> > > After successfully finishing a few patches and rebasing my branch to
> > > obtain the latest updates, I have run into this problem that keeps me
> > > from updating my kernel and therefore won't let me test patch/es I
> > > intend to send.
> > >
> > > A snippet of my "failed" installation can be found here:
> > > http://pastebin.com/8WzV1Ayn
> > >
> > > I'd like to ask for help as to how to resolve this issue. My searches so
> > > far did not yield enough information for me to successfully solve this
> > > on my own. What I am doing lately was to boot to my stable kernel
> > > (3.16.0-38), copy its config to .config as directed from the tutorial. Compile the kernel and install (sudo make modules_install install). The end result are as indicated on the pastebin link. Even booting from my last-known working "latest" kernel (rc5) yields the same result.
> > 
> > I usually use make allyesconfig.  Maybe try that.
> > 
> > julia
> >
> 
> I tried allyesconfig and was able to install the modules fine without the dependency issue popping out. However, I cannot seem to load any module (modprobe/insmod) without it spouting 'directory not found' messages. Before the dependency issue, modprobe works. I also checked the directory that should house the said modules and it looked fine to me.
> 
> Right now I'm retracing my steps, incorporating the advice so far. I will update again after a few hours of my progress whether the new issue still persists.

Can you also reset your tree before your next try. Maybe something has
changed. git reset --hard <tree/branch>

regards
sudip

