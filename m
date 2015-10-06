X-GM-THRID: 6202235040430030848
X-Received: by 10.182.106.11 with SMTP id gq11mr29316062obb.25.1444105649929;
        Mon, 05 Oct 2015 21:27:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.129 with SMTP id rw1ls1652342obb.22.gmail; Mon, 05 Oct
 2015 21:27:29 -0700 (PDT)
X-Received: by 10.182.137.227 with SMTP id ql3mr28828017obb.32.1444105649670;
        Mon, 05 Oct 2015 21:27:29 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id wl2si4031940pab.1.2015.10.05.21.27.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 21:27:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id lk4so196344785pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 21:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ou/BYWanGudOgZFA4HQB5gU23Y16oCgu/ZkHlm8Ip+0=;
        b=WkYfO0JyLIOZUcCofBEwPWUm1jKJCr0h1I/b6POBscFfKJFc/BcjCwCpOX7+Dp9qqy
         BNZGla6/1kILjOk6L1paMgKfrYa6A/QoUYVXk1uqO0y+6/cu/2tXFTpJeMYFv8kgNxw9
         dw/Jnobf/f+kR3lcmxsmESFYgVEL2fjJcnB332g5ytY+L/VVMvBGTls34n0D3NcOpWZI
         lfhyueOaPumvGAQ9BzTKVqNyqHtEJZXYAxs5mRhHSbtfHoRzn5f38Qiiheetd+tQI+M2
         RPNWY5fePXR/WHiP/uugzH1CQ+x0pN9lcTf1G0u6mwsj5aL7FrT3+vIGUNJz+Z6HL7NY
         20sg==
X-Received: by 10.66.101.39 with SMTP id fd7mr43462511pab.3.1444105649513;
        Mon, 05 Oct 2015 21:27:29 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id rx10sm10540766pab.21.2015.10.05.21.27.27
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 21:27:28 -0700 (PDT)
Date: Tue, 6 Oct 2015 09:57:23 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: fix comparison test
 warnings
Message-ID: <20151006042723.GB4745@sudip-pc>
References: <20151005183935.GA3350@Ubuntu-D830>
 <alpine.DEB.2.10.1510052136480.2608@hadrien>
 <20151005213849.GA3566@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151005213849.GA3566@Ubuntu-D830>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Mon, Oct 05, 2015 at 02:38:49PM -0700, Alison Schofield wrote:
> On Mon, Oct 05, 2015 at 09:38:28PM +0100, Julia Lawall wrote:
> > On Mon, 5 Oct 2015, Alison Schofield wrote:
> > 
> > > This patch fixes multiple instances of the checkpatch.pl warning:
> > >
> > > WARNING: Comparisons should place the constant on the right side of the
> > > test
> > 
> > Thanks for the patch, but try to avoid using "fix" in your commit message.
> > Say instead what you have done to do the fix.  Here, you could say
> > something like "Move constant to the right side of a comparison operator,
> > as suggested by checkpatch".
> > 
> > julia
> 
> Thanks for the quick review and I will check that on future patches.
> Do I need to amend and resend this one?

I think no need to resend this one. But keep in mind what Julia said in
your next patches.

regards
sudip

