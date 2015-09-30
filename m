X-GM-THRID: 6200095553040154624
X-Received: by 10.66.218.130 with SMTP id pg2mr2547190pac.12.1443608514314;
        Wed, 30 Sep 2015 03:21:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.167 with SMTP id f39ls224729ioj.62.gmail; Wed, 30 Sep
 2015 03:21:54 -0700 (PDT)
X-Received: by 10.67.3.71 with SMTP id bu7mr2443398pad.18.1443608513987;
        Wed, 30 Sep 2015 03:21:53 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22e.google.com (mail-yk0-x22e.google.com. [2607:f8b0:4002:c07::22e])
        by gmr-mx.google.com with ESMTPS id o73si25827ywd.6.2015.09.30.03.21.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 03:21:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22e as permitted sender) client-ip=2607:f8b0:4002:c07::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22e as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22e.google.com with SMTP id t14so34688835ykf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 03:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=TABbfMY17somEEBcNeAYBAtWKA314prTCJzhndWgGao=;
        b=h2UMSZBkQcn3MJ4hdqlSTNFB4jLD2/k0hfdH79ycaxiau5OSguGGXGmPyeu+StM5lq
         kFG0XCQLSSPHbrOd1meS5QDlglWahsIP4kMWXxXDrh4E40ghhGf+2yOdQEM1ikV/inF3
         rgEDnhyaFRmwVmyHyw5PV1AlT8zqgLrLOPmq4hMRXWBRvLELnDhHHVzll9p5ckBG6xi+
         63pIZmntQhfd1+4P/N6SQuq5zE3qv0xsSvLc89SIx+BUwcB310xhbIJwfNd/C7uX7tK7
         Y7nXXD7DYIuLNz/ay3imyB7Nwfl7T5kp7tnL2LkBRXiKWmMjdrsJtS04KtqpeukCRz8B
         IJew==
MIME-Version: 1.0
X-Received: by 10.170.206.85 with SMTP id x82mr2235193yke.76.1443608513821;
 Wed, 30 Sep 2015 03:21:53 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 30 Sep 2015 03:21:53 -0700 (PDT)
In-Reply-To: <20150930020039.GA14724@kroah.com>
References: <1443572226-27318-1-git-send-email-ciorneiioana@gmail.com>
	<20150930020039.GA14724@kroah.com>
Date: Wed, 30 Sep 2015 13:21:53 +0300
Message-ID: <CAHWJYFkFhEBVCKFBm6rmtd0j4077QewS8mj-txCxowp5RTHa_w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wil1000: fix misspelled words
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 30, 2015 at 5:00 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Sep 30, 2015 at 03:17:06AM +0300, Ioana Ciornei wrote:
> > Fix misspelled words throughout the entire subsystem
> >
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > ---
> >  drivers/staging/wilc1000/coreconfigurator.c       |  2 +-
> >  drivers/staging/wilc1000/host_interface.c         | 26 +++++++++++------------
> >  drivers/staging/wilc1000/host_interface.h         |  8 +++----
> >  drivers/staging/wilc1000/linux_mon.c              |  2 +-
> >  drivers/staging/wilc1000/linux_wlan.c             | 18 ++++++++--------
> >  drivers/staging/wilc1000/wilc_msgqueue.c          |  2 +-
> >  drivers/staging/wilc1000/wilc_msgqueue.h          |  8 +++----
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 22 +++++++++----------
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.h |  4 ++--
> >  drivers/staging/wilc1000/wilc_wlan.c              |  4 ++--
> >  10 files changed, 48 insertions(+), 48 deletions(-)
>
> This patch doesn't apply to my staging-testing branch at all, due to
> other changes that happened in the past few days with this driver.
> Please refresh your tree and rebase your patch and resend it so that I
> can apply it.

Just to be sure.. are we supposed to keep track and apply patches on
top of the staging-testing or staging-next branch?
In the tutorials it appears staging-next to be the one to follow.
Anyway, I will rebase it as soon as possible and resend it.

Thanks,

Ioana

