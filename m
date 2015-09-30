X-GM-THRID: 6200095553040154624
X-Received: by 10.66.221.7 with SMTP id qa7mr2524663pac.33.1443608995518;
        Wed, 30 Sep 2015 03:29:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.157 with SMTP id f29ls226834ioi.44.gmail; Wed, 30 Sep
 2015 03:29:54 -0700 (PDT)
X-Received: by 10.107.131.194 with SMTP id n63mr3153681ioi.8.1443608994780;
        Wed, 30 Sep 2015 03:29:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id i77si34186ywg.4.2015.09.30.03.29.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 03:29:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.202.203.52])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E337A19EB;
	Wed, 30 Sep 2015 10:29:52 +0000 (UTC)
Date: Wed, 30 Sep 2015 12:29:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wil1000: fix misspelled words
Message-ID: <20150930102949.GA15101@kroah.com>
References: <1443572226-27318-1-git-send-email-ciorneiioana@gmail.com>
 <20150930020039.GA14724@kroah.com>
 <CAHWJYFkFhEBVCKFBm6rmtd0j4077QewS8mj-txCxowp5RTHa_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHWJYFkFhEBVCKFBm6rmtd0j4077QewS8mj-txCxowp5RTHa_w@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 30, 2015 at 01:21:53PM +0300, Ioana Ciornei wrote:
> On Wed, Sep 30, 2015 at 5:00 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Sep 30, 2015 at 03:17:06AM +0300, Ioana Ciornei wrote:
> > > Fix misspelled words throughout the entire subsystem
> > >
> > > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > > ---
> > >  drivers/staging/wilc1000/coreconfigurator.c       |  2 +-
> > >  drivers/staging/wilc1000/host_interface.c         | 26 +++++++++++------------
> > >  drivers/staging/wilc1000/host_interface.h         |  8 +++----
> > >  drivers/staging/wilc1000/linux_mon.c              |  2 +-
> > >  drivers/staging/wilc1000/linux_wlan.c             | 18 ++++++++--------
> > >  drivers/staging/wilc1000/wilc_msgqueue.c          |  2 +-
> > >  drivers/staging/wilc1000/wilc_msgqueue.h          |  8 +++----
> > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 22 +++++++++----------
> > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.h |  4 ++--
> > >  drivers/staging/wilc1000/wilc_wlan.c              |  4 ++--
> > >  10 files changed, 48 insertions(+), 48 deletions(-)
> >
> > This patch doesn't apply to my staging-testing branch at all, due to
> > other changes that happened in the past few days with this driver.
> > Please refresh your tree and rebase your patch and resend it so that I
> > can apply it.
> 
> Just to be sure.. are we supposed to keep track and apply patches on
> top of the staging-testing or staging-next branch?
> In the tutorials it appears staging-next to be the one to follow.

staging-testing usually only diverges from staging-next for less than 24
hours, so usually working on staging-next is fine to do.  Except when
you are working on a driver, like this one, that is also being worked on
by other developers.  For that, I recommend using staging-testing.

But note, this driver is averaging 10-20 patches every few days from
other developers, things are changing quickly in it, keeping up to date
and slip your patch in while that happens is going to be tricky.  Expect
to have to rebase it a few times because of this, sorry.

thanks,

greg k-h

