X-GM-THRID: 6210359704363728896
X-Received: by 10.112.145.201 with SMTP id sw9mr6221274lbb.13.1446596465387;
        Tue, 03 Nov 2015 16:21:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.22.19 with SMTP id 19ls974293wmw.19.canary; Tue, 03 Nov
 2015 16:21:05 -0800 (PST)
X-Received: by 10.194.80.103 with SMTP id q7mr4355591wjx.1.1446596464994;
        Tue, 03 Nov 2015 16:21:04 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id s134si710523wmb.3.2015.11.03.16.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 16:21:04 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0Mfpbg-1a80t9415w-00NCDc; Wed, 04 Nov
 2015 01:21:04 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH 5/5] fs: nfsd: Replace time_t with u32 oo_time
Date: Wed, 04 Nov 2015 01:21:03 +0100
Message-ID: <7974844.k54WBsOIKF@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <7357c7919b4984f3b4bedeb6df67c20f666fd035.1445960986.git.ksenija.stanojevic@gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com> <7357c7919b4984f3b4bedeb6df67c20f666fd035.1445960986.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:8txaZgn2SHjSGK5++kvT5OiUTH2xII5McnWs2CJYsNK4GtWru33
 mST93+ZbgiTzG4YoyIcy0Q15MiZsFtXsPQEH0Ec6Zd8+sS+maIZ81gSzaqkqDrvos/ak8BE
 hMQnJaNc6BFsX7c38BLBuI1kiT+1UriS1IcT3o/peSbebfILETpWLmQye2hCeHOJa7DXHoV
 P0Xic6PMl1Vec6LXBF+CA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:72EvoSGDeAg=:2dt/Z1uKHScu2Cq+FUMNKd
 uL6tInrA0HqrxQsPB6UYQIngJPIn8CdlFZCqSgsqvqk93OUmFadxF8XxwUY/xBOV7UBY6NdK3
 0G1gIpUGSMdlrVzuXcLd919SAu/JFTJxJ2E7I9CexD6Hd11qeUJDowVv3Q5zh/H+vkvEcY8kx
 aLQ/yxXe5hAWRZ3khhmO3Ve/2tIbdX3Dlmp7F9Fc28rv1o5c4dWIEIjDrupuMZb71v24r6bUk
 K2Lwv7P7veK0R7WiSRZcCA6MLPuKKsxa5MqCKAWCU+HQHWxg55MmGegfSv2Y0KtGw0sLAw075
 4KCYp3u4Sn9BIAGKuSwTYHt33OC6MLG2NBfujzaYadwd/mBC5xEW7vBFGtIHW2MoD5Gbr3rQB
 IRCu3OrAf9MLnJr/jL/q5dCDmV7sl//08eey4BGjdPYXyjAuJbxYmZ+F8zu4ZnlLb9nTPgwMH
 Jb4lpY40IDOBYTSyOB9He3R2v8UoXg5j25kopCfNVMWmtvUyj+sAONr4HMpPFEPPdvOFMUyY1
 3EYHDkfNUxArZpLMXJ+birZo4kjcZJGbwptzrWU4wb+ohyhNH6k0LGWOz3fxxnhs7NpZBvGpl
 Y/4iGievgkrFXICl3daqezK9WuUO3IOr9zV38/t1t/zKL7W0y9Xp1xe7KbyHBt0Cb9D+Qqtl4
 gvP0PBo9dv742hEWmyZMwiBfIlPlky7CQnBfskoUzj/ZZqvD367PzNEtfCD/0FZuGTF+0avJn
 QoXm9Wtf3SzfZjks

On Tuesday 27 October 2015 09:12:18 Ksenija Stanojevic wrote:
> Replace time_t type and get_seconds function which are not y2038 safe on
> 32-bit systems. Function ktime_get_seconds use monotonic instead of real
> time and therefore will not cause overflow.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 

Same comment as for dl_time and cl_time.

	Arnd

