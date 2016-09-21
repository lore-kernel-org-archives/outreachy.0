X-GM-THRID: 6332811112929558528
X-Received: by 10.36.149.9 with SMTP id m9mr1238133itd.10.1474476096742;
        Wed, 21 Sep 2016 09:41:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls2500264otj.21.gmail; Wed, 21 Sep
 2016 09:41:36 -0700 (PDT)
X-Received: by 10.129.145.5 with SMTP id i5mr17116749ywg.55.1474476096367;
        Wed, 21 Sep 2016 09:41:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c75si2237995ywh.0.2016.09.21.09.41.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 09:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 993FA724;
	Wed, 21 Sep 2016 16:41:34 +0000 (UTC)
Date: Wed, 21 Sep 2016 18:41:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Riley Andrews <riandrews@android.com>
Subject: Re: [PATCH] staging: android: ion: hisilicon: Use pointer to memory
 being allocated as the sizeof argument
Message-ID: <20160921164140.GA9768@kroah.com>
References: <20160921154114.GA18681@sayli-HP-15-Notebook-PC>
 <20160921161546.GA28028@kroah.com>
 <CAKG5xWgV-0cKboce8i8LbLB7kBQPMYs_NjcredvggXX6Qb=UGA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG5xWgV-0cKboce8i8LbLB7kBQPMYs_NjcredvggXX6Qb=UGA@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 21, 2016 at 10:01:09PM +0530, sayli karnik wrote:
> On Wed, Sep 21, 2016 at 9:45 PM, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Wed, Sep 21, 2016 at 09:11:14PM +0530, sayli karnik wrote:
> >> This patch finds cases where the argument to sizeof is wrong in memory
> >> allocation functions by checking the type of the allocated memory when it is a
> >> double pointer and ensuring the sizeof argument takes a pointer to the memory
> >> being allocated.
> >
> > Are you sure?
> >
> This was detected by scripts/coccinelle/misc/badty.cocci, which
> specifies that a false positive only arises when the sizeof argument
> is not used in constructing the return value. Also the driver builds
> without errors. What do you think?

building without errors is not the issue here at all, it's a number that
is being passed in, you could replace that statement with "42" and it
would still build.

But would it work when running?  That's the question here :)

Please look at the surrounding code and see if it is correct or not,
somehow it is working as-is, right?  Are we just allocating too much
memory?

Pointer math is tricky at times, I can understand coccinelle scripts
getting confused here...

thanks,

greg k-h

