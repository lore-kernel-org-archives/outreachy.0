X-GM-THRID: 6803294176512311296
X-Received: by 2002:a9d:21e4:: with SMTP id s91mr480896otb.282.1584045801960;
        Thu, 12 Mar 2020 13:43:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls1896384oib.5.gmail; Thu, 12
 Mar 2020 13:43:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtxMAF9RxAsEjGMSBhq59wzF5ubxjQKBq0/+UBxiG5690w9rgHwwrnYs78CFDOuIEAbw35M
X-Received: by 2002:a05:6808:b13:: with SMTP id s19mr4282111oij.60.1584045799806;
        Thu, 12 Mar 2020 13:43:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584045799; cv=none;
        d=google.com; s=arc-20160816;
        b=kaEjsYCtnJXy8tkTMb4p+QBThdXCCNhwpTs3yRnYSiEKQecHFwlD/T4OmH+9+tcsvP
         Ig9QOT7xwj92tVyLHr3OOKYZ5c1QxlRJiHE2Z/UVc0S2zUapXo+5Wx7RGzuo7rBtfMhO
         IPQnhYZs3YwflynzZ05at5rg7ZFpN8nNMRskzYXNff86XB04/Hu5JOzD3pQ7waxaWsTT
         IKsi4iy4pIURFl+nUO/jlnbEyFHhiaMUOdSyB5zvtq6vh23UqU2wAAr6c5JmR5vht2Z3
         eEH9hgVKbzoD/FJMAwPUePYfT+CIV6wTAuEjS8F88LTNU778HbaTZzSy6qGow4R9QAeh
         XQfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xyP/Yoby/b9QyuWM5696wRONWUPpqQ8dXz6TkhARC+Q=;
        b=Hq+QvaqsQ1nj3b3hgwov+KtZQ8pgI5iDSq6rFUhBl6iusA9FCJ6nf1EjhuW9QQ/946
         Py1HaiLAxcxDdWuY4BQCAnjJdTQzvwRtQRJnKb8+w0JF8oc1oRQx1b/Fno/iFYxi8isa
         GTAw6RpDS/tkc2RtKISSuLbol0a0biYGhQHBFfWLn2uvMd1Hwk/+ChZhqnF5bVp64pLL
         Z7uvlGyKkSuza9F/oMXaOCPyNvljVjRcxn8ejEIVXF5A6e0Rj8Juod0koVgmTX8dgZD+
         a+UqXsu4pU7K3YtlYlMNKA8iB8DMbMy1wKCiyT5yvTJVNSPgur4QgaC3u2YQL1JZPch/
         3sAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=01K4DWcR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w2si450403otl.3.2020.03.12.13.43.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 13:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=01K4DWcR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 91510206CD;
	Thu, 12 Mar 2020 20:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584045799;
	bh=DjBKjqYHNvTOulopJwQ8k3snaK+kpO3CVwFzIt6VUrM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=01K4DWcRrmpVvoOHzq2+9S+hBc5q/IXEr+XCZ1+yrhgQjJl2ZWh3S8jRv+vo/m9ZP
	 cTILdb+ClnsrIpOVX2KhfPMM0g8uTC1lIc3H4kOplDNR0se4pyoo6Y0ZGTornssamB
	 BEOqylXXG7UG/ntPtctr/EZc3iAkQncqAMjbIilo=
Date: Thu, 12 Mar 2020 21:43:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com,
	matthias.bgg@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dma: mtk-hsdma: make
 a variable non-volatile
Message-ID: <20200312204316.GB590925@kroah.com>
References: <20200312121548.6719-1-lu@pplo.net>
 <20200312133112.4f61c60b@elisabeth>
 <20200312194329.GC6485@supernova>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312194329.GC6485@supernova>

On Thu, Mar 12, 2020 at 08:43:29PM +0100, Lourdes Pedrajas wrote:
> On Thu, Mar 12, 2020 at 01:29:52PM +0100, Greg KH wrote:
> > On Thu, Mar 12, 2020 at 01:15:48PM +0100, Lourdes Pedrajas wrote:
> > > Change variable declaration volatile unsigned long chan_issued to
> > > unsigned long chan_issued
> >
> > Are you sure this is correct?  Usually a change like this also requires
> > some kind of lock somewhere to ensure things work properly (not that it
> > is not working properly today...)
> >
> > But it's not always as simple as just removing 'volatile', otherwise
> > that would have been done already.
> >
> > Please do more work to determine if this is a safe change or not and
> > write it all up in the changelog.
> >
> > thanks,
> >
> > greg k-h
> 
> On Thu, Mar 12, 2020 at 01:31:12PM +0100, Stefano Brivio wrote:
> > On Thu, 12 Mar 2020 13:15:48 +0100
> > Lourdes Pedrajas <lu@pplo.net> wrote:
> > 
> > > Change variable declaration volatile unsigned long chan_issued to
> > > unsigned long chan_issued
> > > 
> > > Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
> > 
> > This needs some more details. From that same guide:
> > 
> >   Patches to remove volatile variables are generally welcome - as
> >   long as they come with a justification which shows that the
> >   concurrency issues have been properly thought through.
> > 
> > so, here you need to investigate what that "volatile" was supposed to
> > achieve, if it is achieved by other means, if some form of locking is
> > needed instead, if we end up in one of the "exception" cases also
> > listed in that guide.
> > 
> > -- 
> > Stefano
> > 
> 
> Indeed, both of you are right. Thank you for pointing me in the right
> direction! However, as someone who is new in programming, I find I lack the
> knowledge needed to tackle concurrency and locks. Nevertheless, I will do some
> research to learn a bit to see if it can be done in a reasonable amount of
> time. Sorry :(
> 

If you are new to programming, I would focus on other things.
Concurrency and locks are not exactly "simple" things, but they are
essencial to learn to be a kernel programmer.

good luck!

greg k-h

