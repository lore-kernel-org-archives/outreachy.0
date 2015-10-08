X-GM-THRID: 6202253257836855296
X-Received: by 10.112.209.73 with SMTP id mk9mr1059649lbc.14.1444289861675;
        Thu, 08 Oct 2015 00:37:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.83 with SMTP id a80ls135393lfe.96.gmail; Thu, 08 Oct
 2015 00:37:41 -0700 (PDT)
X-Received: by 10.112.26.212 with SMTP id n20mr1084852lbg.2.1444289861172;
        Thu, 08 Oct 2015 00:37:41 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id bj4si271387wib.1.2015.10.08.00.37.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 00:37:41 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MHtgv-1ZlS9J3EWj-003eGU; Thu, 08 Oct
 2015 09:37:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is preferred over udelay
Date: Thu, 08 Oct 2015 09:37:40 +0200
Message-ID: <5882355.uMFG4U3DtR@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5GTb7o0GzUNHEwq-7nFLKXSht31kvHLvxG31WiTC4EEHw@mail.gmail.com>
References: <20151005195012.GA21881@amitoj-Inspiron-3542> <6335208.lbv5QB1mEN@wuerfel> <CA+5yK5GTb7o0GzUNHEwq-7nFLKXSht31kvHLvxG31WiTC4EEHw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:Y0bU2rO0Lh4HlT0mufugr3nK5WHHrBxK8m22C1JAfsmgJOlfeMd
 5baCKIxNd53qC1qR67Bmgf0iZOrvcfQ6ILDtro6ZCEdhjB2TnKMOjeEQExxHSGj9GGu75ED
 FF6A5dFXNhBbUAmaLysHlj4QoVjSp3TZxxh1Bzj9fgI+vl+FyxP9xC0tdWNQJ7flCkOFK0g
 0O0lw+2oGpt+JRwjXR4qA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:mLuE0z5DYz0=:QxBHsZMPuhcSn+EA5Yr1KQ
 q3wNHVKlau18SfTg8PmvKZL8Pdat4cJxv6cqcv1LweO4IC7IxF17IZrFWkcijabOao6At69hX
 Ryw+gde5xX/82OdGZQW2RCUH51AiobKHferM31FIbVRNBQ40CFKQiTDHYYSTFlnRIw8aeutFT
 Kqf2snGvxBKjUij6Uf7NPMXGDe+axMcdQDo/gk2IWdWFCUI3ve1/IKJLlcfjQ/l0Egs1eqO/F
 sZNz1zQ8PP/EdAclw3k/JZESKHNPLCrICOBKZ9HuiBLnvUbqvz/AC+nXFYq+nyKf0Gq4NLI8M
 KdfRPq4Z+0jPH9mVQosDsZ6c5AIcqwjhCRQS+isLPzH/O7WUhL7s/scB+FvFV9sZX97scP5Y6
 2gPrI8iq2vhNc3yucQnejqNgUwMQhIbZPaZsua1J4wEyx0CKp2BYSVbuDHbwfoY+khUEGHChg
 iAjZ0N3iYw501rzdv8p7PvZbhX+3DFa2OdL5u1cadasZo0htJQGrl4w9id/oSASAx/bNS5vrm
 YgqIGwEBtIwsGrBF24CQU0SFLC8wOoRFpw2VPe2IVaByJKjAQXi8eJkyC7+Y58faVIEWubwTI
 CFIHeeS+bjrj7qWGzD87PcmN9NtcwjYl7N47u/H6/8Kr0cjveatg7frHoc4jiqfVv7IQ+9oFB
 iRkRUNxibHqhTRZQCreIkXuhZYuQYGF3Ju9CnLX8Ch+wlT2Og1Bs4yQKKKjFfwW8fcfHXdZDb
 sh5bN06YOaw7gCZl

On Thursday 08 October 2015 08:23:10 Amitoj Kaur Chawla wrote:
> On Tue, Oct 6, 2015 at 1:15 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > It really depends on what the driver is trying to do. In this case, it
> > waits for a device register to signal 'done', and it tries this five times
> > for a maximum of 50 microseconds, which is a relatively short period.
> >
> > Changing the maximum to 1000 means that it can now sleep for up to
> > 5 milliseconds instead, which is a noticeable time, especially if
> > it gets called frequently.
> >
> > The questions to answer here are:
> >
> > * Is it safe to call a sleeping function from this point at all?
> >   Look for other sleeping functions (proves that it is allowed to
> >   sleep) and for spinlocks (if a lock is held, you may not sleep)
> >   in this function.
> >
> 
> There aren't any other sleeping functions in this function. However,
> udelay() has been used one more time in a loop.

udelay() is not a sleeping function, so that doesn't count here.

Try to look further out if you can't find a sleeping function or a spinlock
here, scanning the callers of this function and everything they call for
common sleeping functions like kmalloc(..., GFP_KERNEL), mutex_lock() or
msleep().

> > * How often do you expect the function to get called? Once per data
> >   packet means it's not ok to sleep long, once an hour would mean it's
> >   clearly ok.
> >
> > * Are there other calls in this function that take longer than a
> >   millisecond?
> 
> How can I find out these 2 things? Only udelay() is the sleeping function.

Try understanding what the functions actually do by looking at the call
chain for the first one, it should be fairly easy in this case.

For the second one, look for functions that get called from this one,
if any of them contains a mdelay() or msleep(), or a loop around
udelay(), try guessing how long that can take.

	Arnd

