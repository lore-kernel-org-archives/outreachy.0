X-GM-THRID: 6209266424669536256
X-Received: by 10.28.55.135 with SMTP id e129mr2655138wma.7.1446495132722;
        Mon, 02 Nov 2015 12:12:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.88.133 with SMTP id m127ls680365wmb.47.canary; Mon, 02 Nov
 2015 12:12:12 -0800 (PST)
X-Received: by 10.194.248.131 with SMTP id ym3mr4756790wjc.7.1446495132149;
        Mon, 02 Nov 2015 12:12:12 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id t72si545197wme.0.2015.11.02.12.12.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 12:12:12 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MKhTL-1ZrQBY0Slr-0020PR; Mon, 02 Nov
 2015 21:12:11 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: mt29f_spinand: Replace udelay function with usleep_range
Date: Mon, 02 Nov 2015 21:12:10 +0100
Message-ID: <8309352.N5ZdtU6YYI@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151031085329.GA25133@Socrates-Mint>
References: <1445707491-28304-1-git-send-email-eraretuya@gmail.com> <5775905.RiZkvh7Klu@wuerfel> <20151031085329.GA25133@Socrates-Mint>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:RuMRgTAWTJbmaRcZ0whbmQePYaWP+k8FDQQf+v8PbkMGJYx1hlE
 nGkHH3cZAc2c6j7ysOUUK/XA+0XRUMCYOa/DcoR6g4Bl9IrAq4RhNcjOwBYgYDcRN15xDIZ
 GL3q/RFinTkxY22UQvXjRMGtVXrG+wTkqe+4WY4Lt96HSC2zxT0vm3GFDE6TXcXF4fbOrNR
 gRxNi/zJAzMmyjC0IYUUQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:H3wKQJ9dPq4=:of0REIUP/izUe2rF9tAYHf
 t1kX1iSuehMOpv9xrroaP6ioQw2R4GFDmW9hsf0WluyU3Yhp2qGiiDzq9QrgpyBTagLERRvXx
 EQ4pRFjZEnx+dWpcMCsv+tR3rZvss9osaJ55Czgss3KPuqT/8YHBgC0duA10MrSXb6hLhCQbM
 RXXZ0vHxJr9cLWdSLpstOP95hXWxnkTggTWXrAKWq5omRmHBBFCl8/YF/cU7YHY52a8qJRR+H
 aerAfHtz38l1NghbN3FWRjk0R1Wtx7sVgtPLcySIKtorgxU9X/4aGXYsj4egxDy9dVlhXuK92
 lOYWQixYtgCOBAuV+YOccfFVXqoleQrGAajMsH33o1pE7+fjEKWQwIvQ5UKyJfHzXPbk3CEP9
 2XMp0nlVEdbrjJ+/71lD7C0ZRYvr9hvYiSRaBDk7ZGTDRIe8Ds5OFSIZX4gwLmbkF8g29UuIs
 +b9kk5DPAnP81PIcf7bX0ULB7l51R9pOqmK1vLg3EWhCYe6vq0AJkLZgNUIZFk4uT2KuPnVwm
 lW3qMR2kEHnkXUzwmjNaLUv58RoPvLc9OqKludXq9IP9GL50bianwTLFV2zGgkKtmfR99sbh0
 bgOOqhMMnfJ1Qnt9ZWhImDvsDsemLh4zHqlZT08v7dNN9f59/B2fJXhlKAUAB6EnxnclsCiSz
 rKRILAUiljrH36wOa2E0qF19YmOhruE68icD0AfeUp7HHEJlEtxFkdplUcaZk6tfefBCt8mfj
 F54w6JSuTG2wGhTV

On Saturday 31 October 2015 16:53:31 Eva Rachel Retuya wrote:
> On Fri, Oct 30, 2015 at 10:32:40PM +0100, Arnd Bergmann wrote:
> > On Sunday 25 October 2015 01:24:51 Eva Rachel Retuya wrote:
> > > Use 'usleep_range' instead of 'udelay' to elapse time. For
> > > spinand_reset, define the upper limit by a factor of 2 to keep the wait
> > > short while still allowing a "good enough" range for wakeup. Define the
> > > range 250us - 1ms for spinand_cmdfunc to provide enough leeway before
> > > issuing spinand_reset. Checkpatch found this issue.
> > > 
> > > CHECK: usleep_range is preferred over udelay; see
> > > Documentation/timers/timers-howto.txt
> > 
> > You are missing here an explanation about how you verified that the
> > conversion is safe: Are you sure that the spinand_reset() function
> > is never called from "atomic" context?
> 
> Please correct me if I'm wrong. I look up similar patches before this
> and scanned the code taking into consideration what was discussed. In
> this case, I didn't see any indication that it is not allowed to sleep
> and also by looking at the probe function containing
> "devm_kzalloc(..., GFP_KERNEL). The caller/s of the reset function does
> not indicate whether it is on "lock status" and from my analysis, the
> use of "udelay()" simply wants to elapse time before proceeding.

Your analysis is a bit flawed, because you look at the probe function
that uses a pointer to spinand_reset(), and the probe function can clearly
sleep as you describe here, but it is not obvious whether the callers
of the 'cmdfunc' pointers are allowed to sleep as well.
 
> Do you think it operates in atomic context?

I was commenting on the fact that your changelog text did not describe
whether you checked at all, or how you came to the conclusion that it
was safe.

I have checked the code myself now, and found that the function already
sleeps, so it is safe to add other sleeping function calls, and the
change in your patch is good.

This is important to get right, especially when you modify someone
else's code, because whether code is called in atomic context or not
is fundamental knowledge in the kernel, and getting it wrong can
result in bugs that are hard to find.

Can you try again to figure out why this is a safe conversion?

	Arnd


