X-GM-THRID: 6211002090683105280
X-Received: by 10.66.244.43 with SMTP id xd11mr537666pac.28.1446111614840;
        Thu, 29 Oct 2015 02:40:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.24 with SMTP id i24ls187220ioo.68.gmail; Thu, 29 Oct
 2015 02:40:14 -0700 (PDT)
X-Received: by 10.50.28.101 with SMTP id a5mr1725419igh.9.1446111614436;
        Thu, 29 Oct 2015 02:40:14 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si63822pac.2.2015.10.29.02.40.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 02:40:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id hk11so36078828pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 02:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mail-followup-to:mime-version
         :content-type:content-disposition:user-agent;
        bh=Da/4z44R9EDJFjv5pDFx4czbddUzVyBy5kvOI227p+Q=;
        b=O0p+x4qhjh0HD5PpsmDPqPu/ZjkdrRISIlYDAYDPGln3VTZNG8X4L4AisBmH9hQHa9
         Fg4UpwNBi97nWD1y3V8HWzUWJfy+DKDkgKrbrnl+PkkG/aA8GrEAH6Zir/Mn/zKJBLGL
         4zIZ9rsNKaJVemiZT3WTEYxbwBEqAi+BiIMc31Ez6nTSM1rS3sAHoVXOsLyrbO9Qnw+m
         isbmivBQwCxl32g68orc3B4QaqMRKjfOBEK8e1rjbkibU/X3o3HoFxpGTFCzhIj94Srf
         xnxmbz1Z+hgiRmkXsKaxUJyd6et5nNF6hjngw2t80HY8Lm+0Kfp/CmH6Mf4TsNJoOABG
         4H1A==
X-Received: by 10.66.121.199 with SMTP id lm7mr949406pab.30.1446111614302;
        Thu, 29 Oct 2015 02:40:14 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.116])
        by smtp.gmail.com with ESMTPSA id qy7sm1205101pab.37.2015.10.29.02.40.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 02:40:13 -0700 (PDT)
Date: Thu, 29 Oct 2015 17:40:10 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: depmod: modules in dependency cycles
Message-ID: <20151029094006.GA15647@Socrates-Mint>
Mail-Followup-To: outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Hi,

After successfully finishing a few patches and rebasing my branch to
obtain the latest updates, I have run into this problem that keeps me
from updating my kernel and therefore won't let me test patch/es I
intend to send.

A snippet of my "failed" installation can be found here:
http://pastebin.com/8WzV1Ayn

I'd like to ask for help as to how to resolve this issue. My searches so
far did not yield enough information for me to successfully solve this
on my own. What I am doing lately was to boot to my stable kernel
(3.16.0-38), copy its config to .config as directed from the tutorial. Compile the kernel and install (sudo make modules_install install). The end result are as indicated on the pastebin link. Even booting from my last-known working "latest" kernel (rc5) yields the same result.

I reviewed the config and the lustre components were selected as
modules. It worked without a hitch before so I'm puzzled as to why the
said modules are in dependency cycles now. I also did "make clean" and
recompiled from scratch, still no dice.

Thank you in advance,
Eva

