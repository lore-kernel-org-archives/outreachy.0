X-GM-THRID: 6251802816159940608
X-Received: by 10.28.156.83 with SMTP id f80mr2099wme.1.1455930803470;
        Fri, 19 Feb 2016 17:13:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.27.210 with SMTP id b201ls101143lfb.55.gmail; Fri, 19 Feb
 2016 17:13:21 -0800 (PST)
X-Received: by 10.112.204.97 with SMTP id kx1mr2236061lbc.0.1455930801443;
        Fri, 19 Feb 2016 17:13:21 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w10si464492wmw.3.2016.02.19.17.13.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 17:13:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0E208E67;
	Sat, 20 Feb 2016 01:13:20 +0000 (UTC)
Date: Fri, 19 Feb 2016 17:13:19 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: replace semaphore
 get_inactive_time with a completion
Message-ID: <20160220011319.GA9757@kroah.com>
References: <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
 <1455911140-9055-1-git-send-email-amsfield22@gmail.com>
 <20160220005444.GA8913@kroah.com>
 <20160220010607.GA2163@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160220010607.GA2163@d830.WORKGROUP>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 19, 2016 at 05:06:08PM -0800, Alison Schofield wrote:
> On Fri, Feb 19, 2016 at 04:54:44PM -0800, Greg KH wrote:
> > On Fri, Feb 19, 2016 at 11:45:40AM -0800, Alison Schofield wrote:
> > > Semaphore get_inactive_time is used to signal completion of its host
> > > interface message. Since the thread locking this semaphore will have
> > > to wait, completions are the preferred mechanism and will offer a
> > > performance improvement.
> > > 
> > > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > > Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> > > ---
> > >  drivers/staging/wilc1000/host_interface.c | 7 ++++---
> > >  drivers/staging/wilc1000/host_interface.h | 2 +-
> > >  2 files changed, 5 insertions(+), 4 deletions(-)
> > 
> > Doesn't apply after applying your other patch :(
> > 
> I can rebase and resend a v2. 
> I wasn't expecting you to take it, until I could get it tested.

Please test and resend :)

thanks,

greg k-h

