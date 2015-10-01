X-GM-THRID: 6200357690588266496
X-Received: by 10.112.54.197 with SMTP id l5mr1777078lbp.21.1443731353838;
        Thu, 01 Oct 2015 13:29:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.207 with SMTP id y198ls164285lfd.107.gmail; Thu, 01 Oct
 2015 13:29:13 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr1801408lbc.23.1443731353012;
        Thu, 01 Oct 2015 13:29:13 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id hs5si132879wib.1.2015.10.01.13.29.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 13:29:12 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MQew1-1a4g9V23ED-00U1ex; Thu, 01 Oct
 2015 22:29:12 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH v3] Staging: olpc_dcon: Replace timespec with ktime_t
Date: Thu, 01 Oct 2015 22:29:11 +0200
Message-ID: <8301128.onq9Xb3UbV@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443713340-3161-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1443713340-3161-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:UnsjyjWcW+LfbUAtgzsKiPNh1r1f/Mv8VDNNuoL4kQsSe6GgnF7
 tt2yYamrPihZQ0j2TadOXdQruTCM2Eewb2wJTYubNlXbFBvBinwPid87ZEBAB6JYCeqk3AQ
 ySY469wppEyESnQjoTLkdJo2Jo/g+JYAyZGhl3fogyT/pCTQBbRNanjKgNqHHoqyeHAwW5M
 SEupNVkx4eJxTAXq9u0Og==
X-UI-Out-Filterresults: notjunk:1;V01:K0:4TgR31aU1MI=:o0xXeXHUfBYDmx/xMn1uTG
 6bxlbq5ZfD/Foo1xju+XCyDxG8Na3ga0zLZqraRuGBtzEvNIBQbnspoHpkObUT93B2/rzm/pJ
 Nnc5j6z7TUsmjuVvdtMohyPPq8x/wyfyj+GDnXEn5kkookKnH5j4XzX1U1Zfsl1PNR/v9zVtC
 KoCJ0v0Kw5gWfKQezUd6m0fnyJs/EdlrSAZDCQo3EdF09FYKlJLdMzZiYjHzuFjPeQiCl4Xws
 rLR8grs//e4tTHhDBr1b7tYWoQy9TzJBiGxUCow1I3Hd4bS0iuxHRM+vwpFgH4e8SbNSlndQY
 l9CPd0VzL+XvYbPAlAPMYeXtw6ai05C1hE4m+3QVXjZZpjdmMfCVFekZAE61iV5hLWxPliHco
 yStRW0ZTb0GGJgByu/Wmr0vEROvorm+PYc0ciftfMuz7noEZHhEzlFfH4gvBBhVaoVPF/k0+v
 Og89EnrGmek2axLmkyUKxEBM3krfhauaiX6tbXe8lwEKtCvoqAf8otrPjCyF65uYpJyY/MHUc
 ukfBPyKOFdGyVrn8mibyRlDBhlxmBDGsGaZdAnJF+/LN0Nbv5iJZe7zl7DrtzMWE3GERX8cTV
 7F/8ugwHuWgR9eFfzh+6LCFGZJ0FHmXJpTJqtjJacwEPrAAIq2Fnw64aLUSJ8UkzD49Nuk9/W
 hNihE0xttCrXIzNMqg/jKJ+VESCBtTd+XEZ79E/uvUKc8MUmHmMfQOH90EMlyHQ97UOerG/op
 OCFHh0VSQ3wmxDJD

On Thursday 01 October 2015 17:29:00 Ksenija Stanojevic wrote:
> Struct timespec will overflow in year 2038, here it will not cause an
> overflow because it is used with timespec_sub, but still has to be
> removed as part of y2038 changes. Replace it with ktime_t. Also use
> monotonic instead of real-time by replacing functions getnstimeofday
> with ktime_get.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

