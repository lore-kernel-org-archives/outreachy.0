X-GM-THRID: 6211498487054336000
X-Received: by 10.28.51.146 with SMTP id z140mr2735506wmz.2.1446501811628;
        Mon, 02 Nov 2015 14:03:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.9 with SMTP id k9ls507612lfb.43.gmail; Mon, 02 Nov 2015
 14:03:30 -0800 (PST)
X-Received: by 10.112.166.40 with SMTP id zd8mr4118645lbb.21.1446501810971;
        Mon, 02 Nov 2015 14:03:30 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id t2si558026wme.1.2015.11.02.14.03.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 14:03:30 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0LyDvp-1aVOul0kPl-015dsr; Mon, 02 Nov
 2015 23:03:30 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shivani Bhardwaj <shivanib134@gmail.com>
Subject: Re: [Outreachy kernel] Help needed with debugfs functions
Date: Mon, 02 Nov 2015 23:03:29 +0100
Message-ID: <9992375.P9TNU4lbau@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAKHNQQHSgqMqFPwxNeNk+ULuTWqojMZaKhNt-ZpNZ-x3taiZZg@mail.gmail.com>
References: <CAKHNQQG6GJWTStPeSVEJOsTAqNbetQPeF3KR90WibZ=Ns+5RMA@mail.gmail.com> <3921328.RGgLIZQx3h@wuerfel> <CAKHNQQHSgqMqFPwxNeNk+ULuTWqojMZaKhNt-ZpNZ-x3taiZZg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:IVeOkKaZJgkbI/e+U/j7lnpKXlw3usFOjSLakEzAOf77G2P2TOs
 uHbURSsHaFD65jpxuGvAmtQepr8qd61qtHo7nwF+s9TWIFyQmjA9DKJMK23+yY8UCakBzT0
 uZceVb1HwyO3ZZBrKOTg6RmLaPwNyTwA/mBay4sn6LbPXDYuyIPXqy6BQI86ZX+/B576dJe
 V/QOF3Z5fZlP2a2upk5iA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:rlSu62irMrQ=:01l79Wzz+AgZpeFr4U9R/A
 pV9JvWqTj15d/Cz3A0l4Y+mzPGglb4mzk7BjVk69TBHat9ya6u9hLN3G4UK19SifcNyDCPRBp
 s8hrhO0fCEUt4JgoEwAG0JA2+VwSAus0y3qgl323ov26l4QP92EROTyqQYDCts4lOH5PnVltC
 1Z44Dr3P5eOWluQDibxZ4+bxqxfm+4zjpeu1k/y/zbZc2+TZigbWfY0+01nenCg31tBJeqf9P
 TcZxskCxAmRYJdtig3BSIz9+UHD5AtrTKsrQTPbs9iuoD1EZYB1QuBshVdoS3w9C0ZNh0GGbP
 XGdMC8BH1n+JTgtdTrjkiqDuvIoC3+TGodQA82Qm4oK+SLjK59BeLqJiAaiiRefK4JIi+xxbc
 RY7e8ISi0M9ybPodQvUvTgvsr/6Ogy0BLNa7zAMPV0BbKWllBNknkOM9ffpfDFmnpgP7aTj/s
 YmL0XzyBL6fEgr5rEpskaQqnjDj/fFmF9cIpw30JrzvaVsxaF9isJG51Ps2aa5qzHTb8j1k+r
 DKR8fRHV5oXOvgHXMGzImgyrPG+VY5tyGSja7b1vVTWFRsrXmFxGe9vEIkqYnKpgJpkq4nHPj
 rxXhZWhZzpBfH4A5zq4tYeG0to7iiZej84uGMIUGHGIMKQu9+nRsdeFFcVL7WtzSCKefX+aOw
 ENum6jfdlTGNvc1luAKyrsrFgofuG9U51HSdvUSr+rqrz2iRzJarA17gVJpIfsqMjfsS/fNTp
 Hqz2MM847uNx7wXh

On Saturday 31 October 2015 15:15:43 Shivani Bhardwaj wrote:
> On Sat, Oct 31, 2015 at 2:37 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> 
> > On Friday 30 October 2015 23:16:29 Shivani Bhardwaj wrote:
> > >
> > > While working on removal of irrelevant wrapper functions, I came across a
> > > function lustre_insert_debugfs() in the following file.
> > > drivers/staging/lustre/lnet/lnet/router_proc.c
> > >
> > > However, after some searching, I found out that lnet router debugfs was
> > > enabled in this patch:
> > > http://lkml.iu.edu/hypermail/linux/kernel/1509.1/04202.html
> > >
> > > So, my focus is on two functions:
> > > 1. void lnet_proc_init(void) which was converted to void
> > > lnet_router_debugfs_init(void)
> > > 2. void lnet_proc_fini(void) which was converted to void
> > > lnet_router_debugfs_fini(void)
> > >
> > > Now, the first function that is, lnet_router_debugfs_init() acts as a
> > > wrapper for the function lustre_insert_debugfs() which is defined in
> > > drivers/staging/lustre/lustre/libcfs/module.c.
> > >
> > > But, the second function, that is, lnet_router_debugfs_fini() has got
> > > nothing in its definition but it is still called at many places which
> > > implies that it does simply nothing when called. So, I thought of adding
> > > lustre_remove_debugfs() in its definition because that is what it is
> > > supposed to do. (Please correct me if I am wrong here)
> >
> > I think that would be wrong, as lustre_remove_debugfs() removes all
> > debugfs files, while lnet_router_debugfs_init() only creates a subset
> > of the files that refer to lnet_router.
> >
> > This is fine because we don't actually need to remove them from the
> > exact place that they were added from -- removing all files once
> > is sufficient.
> >
> > It's also possible that there is an actual bug here: if
> > lnet_router_debugfs_init is part of a loadable module that can
> > get removed before lustre_remove_debugfs() is called, then opening
> > one of the files after the implementation has been removed would
> > certainly result in a crash.
> >
> >
> Fine. But, what should happen when  lnet_proc_fini() is called? There must
> be some kind of functionality associated with it. Or, if it is not needed
> at all, should I remove all its occurences?

If it's not needed at all, I think removing it is a sensible cleanup. Just
try to figure out first whether the current behavior is correct or not:
can we get into a situation where we create debugfs files from this code,
and then remove the module that contains the handlers before the files
are removed?

	Arnd

