X-GM-THRID: 6205610829671301120
X-Received: by 10.112.209.73 with SMTP id mk9mr1243504lbc.14.1444856363900;
        Wed, 14 Oct 2015 13:59:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.70 with SMTP id k67ls88440lfb.43.gmail; Wed, 14 Oct 2015
 13:59:23 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr1267646lbb.11.1444856363082;
        Wed, 14 Oct 2015 13:59:23 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id c1si363474wiv.3.2015.10.14.13.59.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 13:59:23 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MOU8z-1ZhGbe1F7l-005nCj; Wed, 14 Oct
 2015 22:58:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: David Daney <ddaney@caviumnetworks.com>
Cc: Sakshi Bansal <sakshi.april5@gmail.com>, gregkh@linuxfoundation.org, aaro.koskinen@nokia.com, ralf@linux-mips.org, david.daney@cavium.com, paul.martin@codethink.co.uk, aybuke.147@gmail.com, helen.fornazier@gmail.com, joe@perches.com, okash.khawaja@gmail.com, janne.huttunen@nokia.com, jamie.lawler@gmail.com, robertoxmed@gmail.com, jtk54@cornell.edu, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: octeon: fixed few coding style warnings
Date: Wed, 14 Oct 2015 22:58:39 +0200
Message-ID: <6531068.KI8IQomEHc@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <561E7920.2000903@caviumnetworks.com>
References: <20151014140637.GA23007@localhost.localdomain> <561E7920.2000903@caviumnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:9OjhMT6pEKWTSUMdN6k32tduwGsqmBdvV5ZaNlVs3V15wC4vtED
 Bx4onsxYOFxSklEWkvk1U0d4AZYCwIC38Wxm2BhJq4DVCbg4emkYy74HGxW1yjAWxTs7H4l
 XDFpsJvApDgVVm6fGGhZRaN5ytvl7pwrzQVPmArt4xEAuHR4wZqyBMUNCCYIr1J/jN1myMR
 /vWuNN5vEY6jvc9rnQzaA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:G2fvG347Pdk=:nyOOa6sZMldqL0J2fvGww/
 Fle2vL54lHScBRcgcNrhZJJL00NDdyYD/HzAsZErPR8kcITpnbhVLr4hxpiNJRQIlcXnNBZYC
 OR3oRWjEYRLrC6m/HXEIeVMNJzQoEvU/2fHl7V9F3m9Lf01kzcSPa20qKs5ysaIHbYRe1IWJ/
 xhPx7NDbKeFYZ0Ww35vja213QjCw6/1i5OZR3Ekife5yQbPyokE1GSQQ5j9iUszL8LQSh/K7q
 +sNZ8lFLtdurNzSSsWQRn/fipFUGVZ3KlwNGtdx10MLbkEPmiuJmd/HVhjgUocmgWJu959XXm
 O9Nn6Xu7PfwqJEcauYiq05DQQ7Yl6QaFF3ryPOyOOomCocfqj2tAcw3lk3L5Y8O5hKIig/v8e
 JflfaYtI3f9SRKasSpoXu5jlUfv2cSFDj0O4ypeMswWc0MAy81tLi2uOuiTbuPBd2TbXZP9/f
 94gLq1/o38CP8qTEUi0IsWJunvP5XbML354ww+dYSysYbtGb1yZ7pgz1iZ/tdNLGz0FAe/tWv
 Uzw0c+oOiQYkAw8CxNDDH22Cb5xeJUNjToY3eASqr7AeUSrc/s7JJKUF06DEx6ygzTNBxy10A
 nmNCA4/3OXdobsa/dtnTDEhNCkG2nRYXnqGJhShJxkogXCWjPIL5yW/G71RGc4k2mAOSkopq3
 i41msT6RvOLNXF/FkYgCl0wubj3sorSUiXPK8LCH3slYyz50d+/QHbXQ8m+98O47eoGIwA5EO
 xReo0ducXEnHnmwc

On Wednesday 14 October 2015 08:47:44 David Daney wrote:
> On 10/14/2015 07:06 AM, Sakshi Bansal wrote:
> > Fixed allignment issues and line over 80 characters
> 
> Use spell checking on 'allignment'
> 
> But that is not the main problem with the patch...
> 
> 
> You are changing things other than white space and comment formatting, 
> can you tell us on which platforms the patch was tested to verify that 
> you didn't break anything?

In general a good advice, but for trivial whitespace or comment
changes, this is normally not necessary. Compile-testing a patch
as you say is normally expected, if only to avoid embarrassing
complaints if it does break later.

For drivers that are not enabled in the x86 allmodconfig, it sure
helps to say something like "Compile-tested using MIPS cross toolchain
from https://www.kernel.org/pub/tools/crosstool/". Even better would
be to send a fix to decouple the driver from asm/octeon/*.h
to make it build on all architectures, but that is much more work
than I'd expect for a trivial patch.

> > Signed-off-by: Sakshi Bansal <sakshi.april5@gmail.com>
> 
> 
> NAK.

Actually all the changes in the patch look reasonable for a staging driver,
but the submission form needs to be improved.

I'm guessing this was a first-time patch submission (presumably for
an outreachy application), which means it's pretty much expected to
get a few things wrong and correct them in a follow-up.

> > @@ -68,7 +68,7 @@ static void cvm_oct_rgmii_poll(struct net_device *dev)
> >       struct octeon_ethernet *priv = netdev_priv(dev);
> >       unsigned long flags = 0;
> >       cvmx_helper_link_info_t link_info;
> > -     int use_global_register_lock = (priv->phydev == NULL);
> > +     int use_global_register_lock = (!priv->phydev);
> 
> Same.
> 
> I could go on, but I think you see the pattern here.
> 
> Your changelog says you are fixing warnings, but none of these are 
> warning fixes.
> 
> In fact it is perfectly acceptable to compare a pointer to NULL.  It is 
> a common idiom in the kernel.  The original author of the code thought 
> it was more clear this way, and you are causing code churn for no reason.

The style she changed it to is the preferred style however. We don't
normally send or take patches to change this in regular code, but
for drivers/staging/ this is the kind of patch you should expect to
see.

To improve the patch, I would suggest to split it up into smaller chunks
in more logical units. "fixed few coding style warnings" is not a good
one-line description for a patch, as it already hints that the patch
is doing multiple unrelated changes, and is not unique in the sense
that another patch could have the exact same description and do something
completely different.

Instead, this can be done as a series of three patches:

[PATCH 1/3] staging: octeon: fix commenting style
[PATCH 2/3] staging: octeon: avoid redundant "== NULL" comparison
[PATCH 3/3] staging: octeon: whitespace fixes

All three of these are still trivial of course, but this is already
made clear by the subject line. In the detailed description, there
should be an explanation for each patch why the new version is
considered an improvement over the existing code. If you cannot come
up with an explanation other than 'checkpatch said this', it's better
to drop the patch, but with a good description most arguments about
the merits of a change can be avoided.

	Arnd

