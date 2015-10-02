X-GM-THRID: 6200896862154653696
X-Received: by 10.67.1.42 with SMTP id bd10mr12215638pad.22.1443786637320;
        Fri, 02 Oct 2015 04:50:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.106 with SMTP id k97ls1416057qgd.83.gmail; Fri, 02 Oct
 2015 04:50:36 -0700 (PDT)
X-Received: by 10.13.229.135 with SMTP id o129mr12337395ywe.30.1443786636236;
        Fri, 02 Oct 2015 04:50:36 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id w5si1556932pbt.1.2015.10.02.04.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 04:50:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so107324633pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 04:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=BDlkV6fk4zmBNhKfFgiLctH3UJyoT6tGOL6VrZqPC2I=;
        b=y9qvY+e+NG5pE5Hx2I/AJBrSct5Q5921G4xJErRnGgsKLSNfDleaYSIyq4CxV/ls2t
         3Ta/pmjb9PNrZ0vdUE0iUZStDTao9abGKvgmApwodo25WGtYZj52t+6laFb3Kfrmd/qs
         M+gqqctklmrlKZIsJ81DwRi+4jdG8mXb4ntO56yb3a750URbtq+x+ES9agiM6j60isqi
         9jiKrMpQihtxPb4l2bR6DRa0wx1DtaJkzeC09WxiGRkOMfeSKdDy+judloqh2Sjrs7JA
         Vx+Vv1V8/i7tzamaaHiffmEnV0V5OXFtH7DfiCfLHNFSyIoVR3LDBmFOoL/O2ByuOcbt
         amXA==
X-Received: by 10.68.92.194 with SMTP id co2mr19878658pbb.147.1443786636099;
        Fri, 02 Oct 2015 04:50:36 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id rx8sm11634385pbb.90.2015.10.02.04.50.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 04:50:34 -0700 (PDT)
Date: Fri, 2 Oct 2015 17:20:23 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH] Staging: board: Fixed the error for
 implicit declaration of function
Message-ID: <20151002115023.GA65407@ubuntu>
References: <20151002040637.GA41415@ubuntu>
 <alpine.DEB.2.10.1510020959500.2633@hadrien>
 <83a1df2c-03c5-456a-9131-3dca7182d7ef@googlegroups.com>
 <20151002102819.GD9346@sudip-pc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151002102819.GD9346@sudip-pc>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Oct 02, 2015 at 03:58:19PM +0530, Sudip Mukherjee wrote:
> On Fri, Oct 02, 2015 at 01:09:30AM -0700, Shivani Bhardwaj wrote:
>>> Hi Sudip! I'm using sparse to find out the errors and make command
>>> to compile a particular module. I'm sending my .config file. Thanks!     
>>> 
> > I tried declaring it first, it didn't work. I added the header, it worked. 
> > Now, when I tried again, it works without header too. I'll update the 
> > patch, I must have done something wrong while declaring for the first time. 
> > Thanks, Julia. I'm sorry I'm making such petty errors, I'm noting 
> > everything, I'll make sure to send a good patch soon.
> 
> We all have done mistakes while starting. Let me point out one more thing -
> please do not top post.
> 
> I am not seeing this build error/warning. How you are building it? Can
> you please post your .config file.
> 
> regards
> sudip

