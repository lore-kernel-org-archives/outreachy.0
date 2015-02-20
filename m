X-GM-THRID: 1080518770688
X-Received: by 10.181.29.66 with SMTP id ju2mr1569917wid.1.1424425017708;
        Fri, 20 Feb 2015 01:36:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.163 with SMTP id dd3ls59716wib.18.gmail; Fri, 20 Feb
 2015 01:36:57 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr1241030wib.3.1424425017424;
        Fri, 20 Feb 2015 01:36:57 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id i7si67801wif.0.2015.02.20.01.36.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 01:36:57 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0Lto9d-1XO16g2e1N-0119T1; Fri, 20 Feb
 2015 10:36:55 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vaishali Thakkar <vthakkar1994@gmail.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH v2 2/2] Staging: rtl8723au: Use put_unaligned_le16
Date: Fri, 20 Feb 2015 10:36:55 +0100
Message-ID: <6043845.WWkL2rCT3V@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <9defe79e0f212c883f260e27a67bff9f9ba013ba.1424421580.git.vthakkar1994@gmail.com>
References: <cover.1424421580.git.vthakkar1994@gmail.com> <9defe79e0f212c883f260e27a67bff9f9ba013ba.1424421580.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:k7Vt5OiZ+qq10Z4C7aeM1KSQX7xiGsOT0ybM9dRycHBn31DBe4r
 PiqP//ylbuTNIB+pllGGnAWLqhNzo75vM/eKW9l9CygVCF+P2DmFBQcZtSa+s6c321eyUBc
 kEHQ6CpUdtbnJw0Qn0TaynUeSQBmwP2AN+1iizu3r8mWQWcvnGBiipRiDEETOV9JDjoysHs
 JjlBoBPzM+QAHmEKSmt2w==
X-UI-Out-Filterresults: notjunk:1;

On Friday 20 February 2015 14:18:45 Vaishali Thakkar wrote:
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

