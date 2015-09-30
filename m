X-GM-THRID: 6200095553040154624
X-Received: by 10.182.24.169 with SMTP id v9mr2458129obf.35.1443608829260;
        Wed, 30 Sep 2015 03:27:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.40.170 with SMTP id y10ls169089obk.28.gmail; Wed, 30 Sep
 2015 03:27:08 -0700 (PDT)
X-Received: by 10.182.106.11 with SMTP id gq11mr2534007obb.25.1443608828904;
        Wed, 30 Sep 2015 03:27:08 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id zg1si37143pbb.2.2015.09.30.03.27.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 03:27:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id hy16so36982216pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 03:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=tmTf/X19j3uqu5lJTTNjgDXhM4g4KbWhHtKavm8HA90=;
        b=IczSgq7M9mRBYC6X4fUK+tdMsHnTDiDK0lwGjrDiYFxD5BXxw+HJDeyKS6hclnYFMF
         3/G0CLDnajg8TDRO+BCXyqvRkzj++jxKqB49y90Jh3d2Efq7o6mmyGQsWoBQ6W/FCDm7
         PhkkU6b1DKJa4tVvbCf0P7/3vwTDmWLSYAG/df129pLG6T7rM5fKsq8wJ954uotxd67d
         JkuayCLh6RP1V86NXmp74/YrStNofA1OvH2tZxJ+NDmyUyPvsl+NdidVPIC+68cVPzVj
         1Ed2U362Rr1XPUpaJYZBefsHzvBh63k1XOoPq+gJmqOZYqmQEKVPfNkBrBgjQAARPMAJ
         HcwQ==
X-Received: by 10.68.139.72 with SMTP id qw8mr4101491pbb.60.1443608823708;
        Wed, 30 Sep 2015 03:27:03 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id bz1sm600161pad.36.2015.09.30.03.27.01
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 30 Sep 2015 03:27:02 -0700 (PDT)
Date: Wed, 30 Sep 2015 15:56:54 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wil1000: fix misspelled words
Message-ID: <20150930102654.GA27558@sudip-pc>
References: <1443572226-27318-1-git-send-email-ciorneiioana@gmail.com>
 <20150930020039.GA14724@kroah.com>
 <CAHWJYFkFhEBVCKFBm6rmtd0j4077QewS8mj-txCxowp5RTHa_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHWJYFkFhEBVCKFBm6rmtd0j4077QewS8mj-txCxowp5RTHa_w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

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

staging-testing

regards
sudip

