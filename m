X-GM-THRID: 6208527977579282432
X-Received: by 10.194.2.146 with SMTP id 18mr765687wju.0.1445607593918;
        Fri, 23 Oct 2015 06:39:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.207 with SMTP id r198ls448546lfg.40.gmail; Fri, 23 Oct
 2015 06:39:52 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr4990198lbb.22.1445607592285;
        Fri, 23 Oct 2015 06:39:52 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id hs5si128267wib.1.2015.10.23.06.39.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:39:52 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0Lar3w-1aDuhC0HI8-00kQaf; Fri, 23 Oct
 2015 15:39:50 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, y2038@lists.linaro.org
Subject: Re: [Outreachy kernel] [PATCH v2] misc: ibmasm: Replace timeval with timespec64
Date: Fri, 23 Oct 2015 15:39:49 +0200
Message-ID: <13045188.atJMdLPVso@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151023122206.GA16757@amitoj-Inspiron-3542>
References: <20151023122206.GA16757@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:UrPu6Yk8lF9fxeXkxFnOMNXaRM6iTMFIL8Xg5yGyTj6UHScT2JR
 JbVqjJaGSyicM2eTE2Z/cGDEPpLTnBtS6oktah8QWLwY9VsIArRzdDGvOR7OBmQo1Zt5DeK
 pRbtiIlfJepdmTjdp5eXKHlumC2ZR2unw6SUnBWh/O+V0ClSV3j7VxtHp73mM/mvKzNoLZe
 EFh7tbXmQ2FkGgQ7N9LnQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:kL0C3I/2Kxg=:xT1NayJ2Rw8Nk37SmqjxYN
 wjfwiXhShDQ299B8qPUMEg5IcmTtBGiP0B9JqEHMNA6msSlzEF8svm2tP2uKCZwS8GuZFJZg7
 3IUImgyWmmL37iNc5crJKGGF9Wmo3wV11AhQdpA8SP5zKkmP1NEK2dxyuy73XVunW3oCMTI5o
 jJK0vg0GLfLClLYtpJ8rcDMFiSQS0UFuzWPW6kOQasGvBA4u1UE/hqP9qsNM+GISIESQssEuz
 O6qxaRCisi8d+YHpI7nHMOuMxwHjm9u1JD3ysrI3y/44d8+Q1fY8M4lXTEZkYOu+RaSYegVdn
 Jm6aqMsUH+AOUgnpb13Up9ts2+SE0PTgTh3+sYmS4a4G+cE4ea9SkqRfX1J6P2CHYOGNXiMqV
 EmVs67baQbN4fRgQb0dpVqJRn7WXOY0HWHupj+XZ5r+vrVxkFGCW/yhNfeE4dfn7PefZBLtf7
 WIKjcPnCUUzDfzcuxbqP9/vFR0RQp0NS7tAmUd2oZzno7nD+oleB+e2OZh6vkAlcwaOgErSAA
 YIqAm+YmTZ35agxQGNVYPn3TKwjchLbIoe1fCeMGPEyw6Jva4VK6tOeYkJDv1+qfMnX6sbK42
 Nn+88QUMokdByvDCucy6TLIHYzjyTDIjAjYXWHmCt0eFxT2CGuY9ZZU+zGvhdve59S1lVtRtF
 bkUMTBOIzMfhAX+xTcHUFPD8+Nu0OvHUb5YkA3ualV7ePxQ64lcjrWCUrmYyhOPvCcKa8RsFQ
 suklf5AsyAEDLJXL

On Friday 23 October 2015 17:52:06 Amitoj Kaur Chawla wrote:
> This patch replaces timeval with timespec64 as 32 bit 'struct timeval'
> will not give current time beyond 2038.
> 
> The patch changes the code to use ktime_get_real_ts64() which returns
> a 'struct timespec64' instead of do_gettimeofday() which returns a
> 'struct timeval'
> 
> This patch also alters the format strings in sprintf() for now.tv_sec and
> now.tv_nsec to incorporate 'long long' on 32 bit architectures and
> leading zeroes respectively.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

