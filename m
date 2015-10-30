X-GM-THRID: 6211498487054336000
X-Received: by 10.182.236.4 with SMTP id uq4mr8501739obc.3.1446239279934;
        Fri, 30 Oct 2015 14:07:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.80.40 with SMTP id o8ls111822obx.8.gmail; Fri, 30 Oct 2015
 14:07:59 -0700 (PDT)
X-Received: by 10.182.27.101 with SMTP id s5mr7857886obg.35.1446239279616;
        Fri, 30 Oct 2015 14:07:59 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id j7si202255igu.1.2015.10.30.14.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 14:07:59 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0Luaps-1aa6741Bqa-00zlXy; Fri, 30 Oct
 2015 22:07:58 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shivani Bhardwaj <shivanib134@gmail.com>
Subject: Re: [Outreachy kernel] Help needed with debugfs functions
Date: Fri, 30 Oct 2015 22:07:57 +0100
Message-ID: <3921328.RGgLIZQx3h@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAKHNQQG6GJWTStPeSVEJOsTAqNbetQPeF3KR90WibZ=Ns+5RMA@mail.gmail.com>
References: <CAKHNQQG6GJWTStPeSVEJOsTAqNbetQPeF3KR90WibZ=Ns+5RMA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:coX3EA+4Yrh7QlmKp6VSzKfcx6M5By/zbmHG3Hfh+IHEj22rIWF
 RsUU05P0jL9MIdNcj7fXiVZB+t81MSLRxDioIua3BKraVq8zGaAsiuNLz0Y/hnDFK4vWX9r
 VLVA/5EDjNpgTTBCnnTNxJFN44HjreatFdh+5LrQ/Mi5Q1/n/juI1V2qUDPlsHgxuD9/Z5P
 /8kObdSk6WBqAKp2vTbMw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:i8ZGP9PJOWY=:aKaxgDmUuEpdw90wn17qCr
 WLyXJmyhTgyXz6OKkKFogMTeUAVC6wkRfx0/dVsyixsX96RZFTnmNHaGPe1fGQbqz94Jx8ta5
 h0RZUc8hpSd/xLGQ/iouz4Rvi14IGIRCCnA0GgH/QpvpPdNbeVBhdU1ShdtpG/jmsAw8safr1
 KQ0TXz1Pd/70QMw/ip1eYeTnc3L3iUd5HfsdLeTBCxvtKqX9Cbu8RzcNI50YpVv0CAhyAQEWs
 j0IiR49N8/p7cYHRQTpuIw+wfbJQoR4mG3ZXkYjMrpEX5wP4c/HRJKVpY+DOmvk0KDNbBdeV9
 5vzt8nhRA4+t5yVfJT6aAev6F3W9DfqMEQAp1cT/PhSYD1HUdsHqfMrctR8k869d9vOMUI0D6
 XjVNceK8yqzNCDDBEYq9Ob9MK+Jpfy+GFtb/R5HFUHyUA//EepRogXFjMVn1gzOjjDGBLyro5
 OS2MrEcvHZHiblzZnFvCIFI2xaYe9IO0SEmXGZflTWaDDxDs9MDT9uSl7Ka+cZKc4xmfqzkWf
 Thyn+klOi0QsGqUgPOMiYFe9+vWdMQXy0bBdszIWm3rWgldLVjGbNIJIHX05CpcZ8nu6RPuHy
 XRUhRBhECJUqN/792VoDivLAoI2Vk2bVUUAWZmfig6G4nobMpIbeGOGCazSZPFQVc1XYdS+/v
 cXn+DqoUjIUNVdd/rpCO5dQ3EutqzBCnnM9VDs7dYal/ctgFJwU7OIF7s9B/lRrI6uTAAq5/9
 Ulqpu1K0GRTCgw8s

On Friday 30 October 2015 23:16:29 Shivani Bhardwaj wrote:
> 
> While working on removal of irrelevant wrapper functions, I came across a
> function lustre_insert_debugfs() in the following file.
> drivers/staging/lustre/lnet/lnet/router_proc.c
> 
> However, after some searching, I found out that lnet router debugfs was
> enabled in this patch:
> http://lkml.iu.edu/hypermail/linux/kernel/1509.1/04202.html
> 
> So, my focus is on two functions:
> 1. void lnet_proc_init(void) which was converted to void
> lnet_router_debugfs_init(void)
> 2. void lnet_proc_fini(void) which was converted to void
> lnet_router_debugfs_fini(void)
> 
> Now, the first function that is, lnet_router_debugfs_init() acts as a
> wrapper for the function lustre_insert_debugfs() which is defined in
> drivers/staging/lustre/lustre/libcfs/module.c.
> 
> But, the second function, that is, lnet_router_debugfs_fini() has got
> nothing in its definition but it is still called at many places which
> implies that it does simply nothing when called. So, I thought of adding
> lustre_remove_debugfs() in its definition because that is what it is
> supposed to do. (Please correct me if I am wrong here)

I think that would be wrong, as lustre_remove_debugfs() removes all
debugfs files, while lnet_router_debugfs_init() only creates a subset
of the files that refer to lnet_router.

This is fine because we don't actually need to remove them from the
exact place that they were added from -- removing all files once
is sufficient.

It's also possible that there is an actual bug here: if
lnet_router_debugfs_init is part of a loadable module that can
get removed before lustre_remove_debugfs() is called, then opening
one of the files after the implementation has been removed would
certainly result in a crash.

> So, I added lustre_remove_debugfs() as a prototype in the header file
> drivers/staging/lustre/include/linux/libcfs/libcfs.h so that it can easily
> be called from inside of lnet_router_debugfs_fini().
> 
> Now, if the above mentioned is the right thing to do, then I'd like to know
> what role does EXPORT_SYMBOL_GPL() play. Please explain with any of the
> above functions as example. I'm asking this because lustre_insert_debugfs
> has been defined and then exported with EXPORT_SYMBOL_GPL, but no matter
> whether I do that with lustre_remove_debugfs or not, it does not throw any
> errors. So, what is it exactly doing here?

EXPORT_SYMBOL_GPL() is needed specifically when the code is defined in
one module and used in another one. I believe that lustre has too many
EXPORT_SYMBOL_GPL() statements and a lot of them could be removed, but
it's not clear if lustre_insert_debugfs is one of them or not.

Try removing the EXPORT_SYMBOL_GPL() and build the entire kernel with
lustre configured as a loadable module. It is important that you run
'make vmlinux && make modules' or a similar command but not just
'make drivers/staging/lustre/', which would not check for missing
export statements.

	Arnd

