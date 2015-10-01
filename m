X-GM-THRID: 6200711161331056640
X-Received: by 10.112.190.65 with SMTP id go1mr1848662lbc.9.1443731285467;
        Thu, 01 Oct 2015 13:28:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.89.8 with SMTP id bk8ls225968wib.52.gmail; Thu, 01 Oct
 2015 13:28:03 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr1811271wjb.3.1443731283327;
        Thu, 01 Oct 2015 13:28:03 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id bn1si146131wib.0.2015.10.01.13.28.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 13:28:03 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MOVaj-1Zkkat2Bvh-005qrB; Thu, 01 Oct
 2015 22:28:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Use mutex instead of semaphore
Date: Thu, 01 Oct 2015 22:28:02 +0200
Message-ID: <1624171.DzktZJ1FgS@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <cover.1443715371.git.ksenija.stanojevic@gmail.com>
References: <cover.1443715371.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:TOTU2AuOanWlXz/lrpk0UAb021bFclRU9JacqH8VVHMCtm9aJAB
 2Py9H41L7FQJIjlOu/+BGhX7pk7uerjamt6L1zbkXQc/ufmrA1qImqYrUqnXy7WLiI5EGo2
 h20Sk+LJ2IVcutlWdOYqz4PVabvPsVmx0UGWeFF23NKbf9YpcWAuiT8mXGM/ApLHeXPQHNI
 y8EWgb5cvIXIAGT8lilsg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:R665KuTUHxY=:61kbvtdbsa88lEOqP9bAvb
 KKrXZoGFH/lUgponp/MNMso3OeMMs95hZlXLYSaLoBEPuX7FVis744bNGS8M3I4X68ciM/IgF
 vDAR9qq6mkS9rJVNJFwSzbtPEUbdjMiKZamq7GBCxro3nNxALqXYmqXmMNOI1lguZllhSkv0R
 qyuepM91nU5pUXKILlsNYtDfL+rmDHwCrws/zQEyhQD3gI2Kau42Z5tvUpGBHWIB+HJQnh8UT
 LD4E2KzPpPtBtLdtbGakHATe/iGNaM2zLBjcBKJNOeH+EagHw1SdnLU+rusBmigU2JjEO9iUW
 EFS00Djiz/3KGqbTjc4hI50NeTLLLnF5Zs0gRlBHc5rsJsdsCDcNanPz+7vmqnX0NHbWjDJlc
 zIezjSrsEQDBw8fRPAHOc/ht1SZeWMlXHrVRxfX6BZmlcuFgiM9MnMsrfpA9sIc9rjPZw3M72
 j6mB5IHg7CWaVxdj5r+W5irwyapd1rfwke3Q61pYvvnsaFhvecPAZXXWHpBwLXJQ/ua/RRMHX
 kaNDCHhInpdkmFlNJkw7g8sllPqmXSXlzku8/5YO27L6LtdTHvCbyXa24Z+bKab9ejkkxy4Y5
 XMK7/ZHsxtd6OlIh4YrC0iQD8vHSgMedcBthrBRTWdO6zgcjQ9TRUzag6czoFnMUm6bJBYsBF
 f6eDCLkheuyyeX8OBtxmmcSSUtuFmeVoBdaUhK3zu0yzjMGzdU9jmTh+O13/ZnTR1ezrGM6Oe
 kIAdkX0aeoFIU1ar

On Thursday 01 October 2015 18:05:57 Ksenija Stanojevic wrote:
> This patchset replaces binary semaphore with mutex in comedi drivers.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 
> Ksenija Stanojevic (4):
>   Staging: comedi: Use mutex instead of semaphore
>   Staging: comedi: Use mutex instead of semaphore
>   Staging: comedi: Use mutex instead of semaphore
>   Staging: comedi: Use mutex instead of semaphore

The changes all look good to me, but I think it would be nice to
expand the changelog a bit: in particular, how did you prove for
each file that it is safe to replace the semaphore with a mutex.

	Arnd

