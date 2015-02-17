X-GM-THRID: 80310435840
X-Received: by 10.180.80.7 with SMTP id n7mr3370408wix.0.1424166655067;
        Tue, 17 Feb 2015 01:50:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.96.163 with SMTP id dt3ls90222wib.34.canary; Tue, 17 Feb
 2015 01:50:54 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr3370264wik.5.1424166654778;
        Tue, 17 Feb 2015 01:50:54 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id i7si5826207wif.0.2015.02.17.01.50.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 01:50:54 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0M6ETS-1Xd7cU3yOo-00y5Om; Tue, 17 Feb
 2015 10:50:53 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Vaishali Thakkar <vthakkar1994@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: lirc: Use setup_timer
Date: Tue, 17 Feb 2015 10:50:51 +0100
Message-ID: <3628018.XUKI9KUs7d@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1502171001270.3396@hadrien>
References: <20150217045149.GA3532@vaishali-Ideapad-Z570> <3457005.LTXKFus5ps@wuerfel> <alpine.DEB.2.10.1502171001270.3396@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:c2huY14KAwgNwtt7pKv98MSj7l4iSUZbZYzMsE0Pgt9DJMrUwgW
 Z0umk3Q40BlsfPpaUeOsyEgzG4VQtJNwW/me4fpx8UpMhebsl6oyoc3CKYAYSLtQ3ky/BbE
 1fQOsuMbw3edqwtYogCiQon7PuaRDeyPsjIdY1ryFWVyAO1EjCQf9gDZdFJGBx+1A/PAXg6
 Rb4Jw8p/tKQ1Ajk4qU34Q==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 17 February 2015 10:02:53 Julia Lawall wrote:
> On Tue, 17 Feb 2015, Arnd Bergmann wrote:
> 
> > On Tuesday 17 February 2015 10:21:49 Vaishali Thakkar wrote:
> > > This patch introduces the use of function setup_timer.
> > >
> > > This is done using Coccinelle and semantic patch used is
> > > as follows:
> > >
> > > @@
> > > expression x,y,z;
> > > @@
> > >
> > > - init_timer (&x);
> > > + setup_timer (&x, y, z);
> > > - x.function = y;
> > > - x.data = z;
> > >
> > > Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> >
> > The patch looks great to me, but try to be more explicit about
> > why this change is done in the description. Rather than just
> > repeating the subject in the patch description here, explain
> > why this is useful. In particular, is the only benefit to shorten
> > the function by two lines and make it more readable, or is there
> > also a functional change where the new code avoid a potential
> > problem?
> 
> Another question is that the data value is 0xabadcafe.  This looks at
> least sort of like a nonsense value, and indeed the timer handler function
> doesn't use it.  Would 0 be a better choice?
> 

I guess ideally we'd use the data to pass a pointer to a per-device
structure and remove the global variables such as 'io', 'irq',
'hardware_lock', etc. At this point it is of course no longer a
trivial task to change.

	Arnd

