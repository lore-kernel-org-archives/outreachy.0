X-GM-THRID: 6207307696795811840
X-Received: by 10.112.198.33 with SMTP id iz1mr6497417lbc.8.1445251446177;
        Mon, 19 Oct 2015 03:44:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.142.16 with SMTP id q16ls20608lfd.64.gmail; Mon, 19 Oct
 2015 03:44:05 -0700 (PDT)
X-Received: by 10.112.16.229 with SMTP id j5mr6579646lbd.6.1445251445533;
        Mon, 19 Oct 2015 03:44:05 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id hs5si497165wib.1.2015.10.19.03.44.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 03:44:05 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0LcbA7-1aE9X00Y8l-00k5ta; Mon, 19 Oct
 2015 12:44:05 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Deepa Dinamani <deepa.kernel@gmail.com>, y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: timespec64
Date: Mon, 19 Oct 2015 12:44:04 +0200
Message-ID: <4086504.Z6Re8QtBdp@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CABeXuvpuNRuDFyLUNVWtZM_sJh5NwEu2vh5=eXP3NvDUbH81sQ@mail.gmail.com>
References: <CABeXuvpuNRuDFyLUNVWtZM_sJh5NwEu2vh5=eXP3NvDUbH81sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:KpVkFmBQMHrDe5JTIjcNlX8d4IHebBRDSgV7pFLlM2Sqn0ada5K
 i/OP0swXe7FIwhm9Poanon4J+5wMn5uKgKEpr9UYp4GFYfmCXtXvbmjhBPzHwCCAqGlh0nN
 fKosjOXsOlVUGUyAAPIOSmB+36ogMCVftdP1EKKNn8s22jQG83uVmdOkqU55v8UOzTw/UC5
 fYZdOqVrpgkIDuBOn0S1g==
X-UI-Out-Filterresults: notjunk:1;V01:K0:BjFzmnwSDDo=:bWdINbpN4kZsgvgcDNBrdm
 cKpuXmGJdnVs8vul87m8CYcKGfXzSHHPtoEtI3PEPz8pHRhK5clUoH67figo4gpHbO9pu6EMK
 Yn01g5EM9wwLBM+qXN4g+ywyf7hTqN5OUH01XG5eoLNdVGsgOAlWjZn2UDx1seW57pChJJh1/
 kUhits+NabtYNDGZtE5d/7v5Ip/u9xNOPK22lmmAbzAlu4PXi9snMvTdLeagNN/WUVXMBbISf
 SsKUggPaeZrcrj0dwP4VTZZjUEVeGv/tmRxf/iDI880LO/abDpypRKuzUyeOcaWv5ZeGUaasj
 P7hwbNlT4GdtRhC4KOQ9FsoJ6ld4tzORRoRqqSqhTQ+Zw1cvaIRrkouxQmi/3auqjk6pLr4vE
 pUoz7OEPSJY296mjueON9aohV7OgZY6InhoniUvqghiHnOuIU0mJhJISrLUEMLiXAES0ARdu1
 LCSmaHDy57RbzbdLqcyprtD3fPcTKjy4DG734pq72ZG60LXxH8U4/lVgITtIkYzGrWYsrAeeS
 Q3eqr6IQwDuFlxKET/ZuBykguQqpThVbgruRo9avNIWirb/o/0eqDswybYOaEkzc4krC+uKr0
 iokamD7rLtqFVzZim0VgeMt8C0HGIJjzcqwTeCilAb36+L1m8dd/3YZh9a64REUUZdTZUJ6tg
 KNZP91QdSRAmNMEty1415Liih3gSVC1bV4ik9r2ZVf7PFYPyMgUqM8fiZRGNnSI5Iu/P4FvAf
 gY9vz+YtkNJ3TV5V

On Sunday 18 October 2015 21:21:22 Deepa Dinamani wrote:
> Hi Arnd,
> 
> I'm working on the usbtest ioctl task.
> I was trying to figure out how to copy a timespec64 value to userspace.

(I'm adding the y2038 and outreachy lists to Cc, hope that's ok for you)

> I found this patch online:
> https://lists.linaro.org/pipermail/y2038/2015-May/000201.html
> But, this doesn't seem to be merged anywhere.
> Is the plan to expose timespec64 through __kernel_timespec still on?

Yes, that is the current plan, but there are a number of dependencies.

However, the driver here uses 'struct timeval', not 'struct timespec',
and I do *not* plan to have the same infrastructure for timeval that
I submitted for timespec. Almost all user space facing users of timeval
have been replaced with timespec based interfaces  (this one has not)
over time.

We should still keep this for backwards compatibility, but I think it's
better to solve the timeval users case-by-case rather than adding
infrastructure for it.

> I'm using the staging tree as the usb/misc folder does not have a specific
> maintainer.

I checked using "git log torvalds/master..next/master --merges drivers/usb/misc/"
and found that Felipe Balbi has queued up one patch for this driver in his
tree at git://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git#next
(see the list in linux-next/Next/Trees for a mapping from tree names to
URLS). It probably makes sense to use that tree as a base, even if Felipe
is not the official maintainer.

	Arnd

