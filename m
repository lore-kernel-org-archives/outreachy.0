X-GM-THRID: 6200896862154653696
X-Received: by 10.129.83.10 with SMTP id h10mr29595751ywb.6.1444107690295;
        Mon, 05 Oct 2015 22:01:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.228 with SMTP id c91ls712410qgf.91.gmail; Mon, 05 Oct
 2015 22:01:29 -0700 (PDT)
X-Received: by 10.31.3.93 with SMTP id 90mr29338093vkd.0.1444107689848;
        Mon, 05 Oct 2015 22:01:29 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id wl2si4043022pab.1.2015.10.05.22.01.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 22:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ex6so198310921pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 22:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dwDX9uAaFagkzukaFj9ZFzMuigfdjyQFUFaUECn6IrQ=;
        b=limlApIYbjnaj6wusmH5cLwrWNyOIT4+xfdYyA0sxr/WQQPYUQTySfvEMOtNEW7aiG
         lijgSRj2pzW351yIR+Wp/96G8e1KA3QDb+DiWzvZ/uLCAGEtKELzbiWzyvyyNCSEhr29
         FJulGrXAKP5uNqIwl4S3LqBIjhFrNLkmtdjjcdFGLe0m/fugiLxsJkVq1Jtr/MUbnohK
         p1ID9ZmTKpjmUMSsRFnm3WTzEBxbGt8WtSJmpGFx3aCXTBlkfG5wdlPSMaO+iCjJuOtm
         VEYKCr0BAB5+SJ7fql15kVPT43bhja8K+Coi7kXMCGvaGJ72lFdN+SBvDLisfStLZvlN
         3igA==
X-Received: by 10.68.111.228 with SMTP id il4mr45126399pbb.44.1444107689676;
        Mon, 05 Oct 2015 22:01:29 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id pc8sm30706282pbc.27.2015.10.05.22.01.28
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 22:01:29 -0700 (PDT)
Date: Tue, 6 Oct 2015 10:31:24 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
Message-ID: <20151006050124.GE4745@sudip-pc>
References: <20151002040637.GA41415@ubuntu>
 <alpine.DEB.2.10.1510020959500.2633@hadrien>
 <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
 <20151002102819.GD9346@sudip-pc>
 <775721a0-c98a-427c-a988-49ccb0ad72dc@googlegroups.com>
 <20151002125909.GB32540@sudip-pc>
 <71611fa2-5d15-4032-bd55-b7991ea55a5b@googlegroups.com>
 <alpine.DEB.2.10.1510041457450.2661@hadrien>
 <20151006040800.GA30304@ubuntu>
 <c6724038-bdcb-4813-b49b-22b9d8f5af2b@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c6724038-bdcb-4813-b49b-22b9d8f5af2b@googlegroups.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Oct 05, 2015 at 09:43:52PM -0700, Shivani Bhardwaj wrote:
> 
> Done. Seems like those folders didn't have much to compile, only one file 
> whose dependencies were compiled.

Top posting.. :(

It will not recompile if the .o files are already there and .c files
have not been modified. So if you want to recompile all files do make clean
or much better make distclean. make distclean will clean everything even
your .config file also. But usually when I am working or checking patches
for staging I will just do make clean M=drivers/staging , so it will just
clean staging and now when you make again it will compile all files in
staging which are in your .config.
With sparse if you use C=2 then it will recompile even .o files are
there, but with C=1 the default behaviour of not compiling will take
effect.

regard
sudip

