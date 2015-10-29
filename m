X-GM-THRID: 6210549354962354176
X-Received: by 10.129.156.198 with SMTP id t189mr3573041ywg.26.1446158044602;
        Thu, 29 Oct 2015 15:34:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.136 with SMTP id p8ls397421igr.30.gmail; Thu, 29 Oct
 2015 15:34:04 -0700 (PDT)
X-Received: by 10.66.228.69 with SMTP id sg5mr3531010pac.12.1446158044040;
        Thu, 29 Oct 2015 15:34:04 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si447293pbb.0.2015.10.29.15.34.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 15:34:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (75-104-70-114.mobility.exede.net [75.104.70.114])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9A89C67;
	Thu, 29 Oct 2015 22:34:02 +0000 (UTC)
Date: Thu, 29 Oct 2015 15:33:55 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use rwsemaphore
Message-ID: <20151029223355.GA19648@kroah.com>
References: <1446006196-6294-1-git-send-email-ksenija.stanojevic@gmail.com>
 <20151028044625.GA6015@kroah.com>
 <5132136.EW41hst8xX@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5132136.EW41hst8xX@wuerfel>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 29, 2015 at 11:20:46PM +0100, Arnd Bergmann wrote:
> On Wednesday 28 October 2015 13:46:25 Greg KH wrote:
> > On Tue, Oct 27, 2015 at 09:23:16PM -0700, Ksenija Stanojevic wrote:
> > > Functions that use semaphore for locking are divided into read/write
> > > functions, so use locking mechanism that provides similar semantics.
> > > 
> > > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > 
> > Unless you can measure the speed differences by switching to such a
> > lock, never switch to such a lock as they are much more complex and can
> > actually cause things to go _slower_.
> > 
> > So I can't take this patch unless you have measureable benchmark
> > numbers.
> > 
> 
> Agreed. However, changing this driver to use 'struct mutex' would
> be an obvious improvement and should be safe as far as I can tell.

Yes, that's fine to do.

greg k-h

