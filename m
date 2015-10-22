X-GM-THRID: 6208399403783290880
X-Received: by 10.112.54.197 with SMTP id l5mr3386477lbp.21.1445506727709;
        Thu, 22 Oct 2015 02:38:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.92.163 with SMTP id cn3ls550847wib.38.gmail; Thu, 22 Oct
 2015 02:38:47 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr3412928wjd.4.1445506727381;
        Thu, 22 Oct 2015 02:38:47 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id cm6si90149wib.1.2015.10.22.02.38.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 02:38:47 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0M6ym1-1aliL30c0z-00wioB; Thu, 22 Oct
 2015 11:38:44 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>, devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: lustre: Remove unused functions
Date: Thu, 22 Oct 2015 11:38:42 +0200
Message-ID: <5359017.vBRWqNddLo@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com>
References: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:ePeHmZYEwzaJvoWtBYz0eGp/zcy6behK1nAi9jdnli1ar4EsV7h
 XqwuHsEiqIQQZ2EmqG7Ne4D0TWpCCVa+JTyRXyq7Rbqk3288vyCPNhbxEbvhaX8tCo6QL7W
 UL145xIf1p0cPfyAgo5/IP4zw5PJX6MOVa5ZZhNS9KeexkPTLrdzF9HBWr6gmu/O1w1JeeA
 PMhN9WvqgDm7ES6sYnaAQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:NoDjWmJnELU=:VAV5qLOGD4aWN+UyAx3wxQ
 c18zJL/Elxs6Cytwt99VUv2ZCdkCLuxu3GR/s9/vFzOCf8th3p6xJZ9tlyGh10Zwx8nt1GthB
 NNuFUU4R4nsE4je8u8sl3TwV4+Vr0NFB6adcjDkfjz0iqhkmXoz0CEWms2Vwv45FofZjLoPlc
 NF4WHW2jvdb8P8RCyUQVK8WMr9istLDdmCozJhQiWi+MXtp5RUucSjtsiLS5LEmReprdoWU01
 yVHrZGs2mh/QGUqXcJBJRwSY6S7OyTCt7cGO4bvVMfbAXpwoXo7bRGsVMDV4tSeApGhe9L1mH
 O957h66RMAv0zR1KJelQ+0l6v2b+WKUsSvX6Bxbok0lboxncyb43HF70/ATnkZupDyGCmeyIM
 H2UZLTGHKJ0DvoxCLvWkfOcJIFLy2GxxSAZsupht07k4fzk6hJWkQI0wg2duVbKQCoG+LPAb/
 TGRIeOQC7g2XbZndzBqRPfVBYM9htP9Z65z5eOPTqyro8oSWo8aIM3F1z9lllCs5glJziGqIq
 rUfY9L5Q6N/yTBdn+b1NYtsyvCNgv40mv//Ic23Up6kes2MRcFDt07flBPIHBX+tB7ssZV4W8
 TfnKweXHv5tB1i1348I/hOLa5Oix1BEpLHXz+cFXykbVG03nLXQlaIWdJbb5Zeq7wfC0NwFQu
 LbxpF+zN2AApCiBX1oG+lMmtEDfOhbCOm+BgeJxgcud/paAZUoejpwuPKB/I6UMh5jTSFl+36
 6R2kDnObpxDBTwq4

On Thursday 22 October 2015 14:50:18 Shraddha Barke wrote:
> These patches remove the definitions of functions which are not used.
> 
> Shraddha Barke (2):
>   Staging: lustre: ptlrpc: Remove unused functions
>   Staging: lustre: obdclass: Remove unused functions
> 
>  .../lustre/lustre/obdclass/lprocfs_status.c        | 139 ---------------------
>  .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    |  63 ----------
>  2 files changed, 202 deletions(-)
> 
> 

How did you check that they are indeed unused? I suspect these two patches
are wrong.

	Arnd

