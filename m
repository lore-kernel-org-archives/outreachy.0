X-GM-THRID: 10824645083136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d3d869bd7c10ce44,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.97.99 with SMTP id s63mr26368822yhf.40.1429002571549;
        Tue, 14 Apr 2015 02:09:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.167 with SMTP id fp7ls10801obb.79.gmail; Tue, 14 Apr
 2015 02:09:31 -0700 (PDT)
X-Received: by 10.182.148.164 with SMTP id tt4mr25104637obb.30.1429002571234;
        Tue, 14 Apr 2015 02:09:31 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id y1si47510qcq.1.2015.04.14.02.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Apr 2015 02:09:31 -0700 (PDT)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0Lcxeq-1Z8FBm4BAe-00iCzm; Tue, 14 Apr
 2015 11:09:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org, john.stultz@linaro.org, tglx@linutronix.de, Tina Ruchandani <ruchandani.tina@gmail.com>, Xunlei Pang <xlpang@126.com>, outreachy-kernel@googlegroups.com, linaro-kernel@lists.linaro.org, linux-kernel@vger.kernel.org, serge.broslavsky@linaro.org
Subject: new mailing list for y2038
Date: Tue, 14 Apr 2015 11:09:25 +0200
Message-ID: <3234781.9N1nxDvznB@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:46fF9ZPVxZDdIKeiRqy4KVup3kPWBs5w4ToW99CkqBmlzhJ/WDq
 6bQ7pbSQTxwa5PnBUq7aUUbmj9pwjWjxCFAAw7h18tBML4cyM7ASZBusRt9jo4Mev8spkiF
 Fin9xB5rhBmkPmkK0TzapeBAKNxfDpYwu2wEaDNS05s2oYe16oYyGifj/7a7khFUOwwRwSj
 up830u1VVpfaUkIw7QPSg==
X-UI-Out-Filterresults: notjunk:1;

Hi,

I've created a new mailing list on the Linaro mailing list server for
discussing the kernel patches for y2038:

https://lists.linaro.org/mailman/listinfo/y2038

Please join if you are interested in discussing these or want to send
patches. The intention at the moment much to keep this list explicitly
open to newbies, so we will get a lot of incorrect patches there along
with other patches. Patches can get sent here for an initial review
before they get sent to the real maintainers, or you can put the list
on Cc when sending a patch that should be applied and you already know
what you are doing.

We already got a lot of patches last year through the Outreachy
(then known as OPW) application process, and John and I also use
this work as part of our Linaro job to train new kernel developers.

There also a wiki page at http://kernelnewbies.org/y2038 to describe
what we are doing, and anybody who wants to help out here is
welcome to contribute patches on this list.

	Arnd

