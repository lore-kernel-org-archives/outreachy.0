X-GM-THRID: 1080518770688
X-Received: by 10.112.160.3 with SMTP id xg3mr1118071lbb.5.1424425035700;
        Fri, 20 Feb 2015 01:37:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.240.202 with SMTP id wc10ls57792wic.10.canary; Fri, 20 Feb
 2015 01:37:15 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr1119211wjc.3.1424425035408;
        Fri, 20 Feb 2015 01:37:15 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id ew5si69664wid.1.2015.02.20.01.37.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 01:37:15 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0Mcixh-1Y6w9b3Ymn-00HytN; Fri, 20 Feb
 2015 10:37:14 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vaishali Thakkar <vthakkar1994@gmail.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH v3 1/2] Staging: rtl8188eu: Use put_unaligned_le16
Date: Fri, 20 Feb 2015 10:37:14 +0100
Message-ID: <7195822.xgoSRFZ0fm@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <a4e97da77ddf7fbcf2908d9ec7f18c9b32d7ad4e.1424421580.git.vthakkar1994@gmail.com>
References: <cover.1424421580.git.vthakkar1994@gmail.com> <a4e97da77ddf7fbcf2908d9ec7f18c9b32d7ad4e.1424421580.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:sAFVI4K6xO7mqAzXWJRPwhmrXwbZzymcDJODwjD533o1HLn1H8y
 dV8Wn6Ka2vvi46MDaz/wOUP2V1Xs8t7HonJCTV+T+nlR7DiproG4IVdc0pXpcmJl0W1yHRf
 ODGwvx4kxVsDK+ZqsozHE9vWo8Qz94MFjRoSGyp0m6gVukCfiq2ViirHQkiFeKcvJLH7wap
 2mw0iJU2wdDqxcgj64ZEQ==
X-UI-Out-Filterresults: notjunk:1;

On Friday 20 February 2015 14:18:37 Vaishali Thakkar wrote:
> Using byte ordering functions and then memcpy() is risky and
> prone to hide errors which are hard to track down. So, this
> patch introduces the use of function put_unaligned_le16 which
> makes the code clear. Here, use of variable tim_bitmap_le
> and variable itself is removed. Also, to be compatible with the
> changes header file is added too.
> 
> Coccinelle is used to do this change and semantic patch used for
> this is as follows:
> 
> @a@
> typedef __le16;
> __le16 e16;
> identifier tmp;
> expression ptr;
> expression y,e;
> type T;
> @@
> 
> - tmp = cpu_to_le16(y);
> 
> <+... when != tmp
> (
> - memcpy(ptr, (T)&tmp, \(2\|sizeof(__le16)\|sizeof(e16)\));
> + put_unaligned_le16(y,ptr);
> |
> - memcpy(ptr, (T)&tmp, ...);
> + put_unaligned_le16(y,ptr);
> )
> ...+>
> ? tmp = e
> 
> @@ type T; identifier a.tmp; @@
> 
> - T tmp;
> ...when != tmp
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

