X-GM-THRID: 6206946961366450176
X-Received: by 10.112.132.10 with SMTP id oq10mr5861420lbb.1.1445173779368;
        Sun, 18 Oct 2015 06:09:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.158.146 with SMTP id h140ls493315lfe.108.gmail; Sun, 18 Oct
 2015 06:09:38 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr5865775lbp.24.1445173778419;
        Sun, 18 Oct 2015 06:09:38 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id hs5si371811wib.1.2015.10.18.06.09.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:09:38 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MNQCL-1Zu6J62oxN-006wX1; Sun, 18 Oct
 2015 15:09:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: Re: [Outreachy kernel] MIPS cross-compile
Date: Sun, 18 Oct 2015 15:09:37 +0200
Message-ID: <13636393.OHutreOmhF@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAHWJYFnvj6hU2wmpQYQsQAMUELD0xOGXLostAyLzf4DP660Y9A@mail.gmail.com>
References: <CAHWJYFnvj6hU2wmpQYQsQAMUELD0xOGXLostAyLzf4DP660Y9A@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:T8gEBQ3R47J0Hk99PRvITInDC7SEVhpBhFOTrV7y1cNT8+ZUjuf
 ovG90rMv+hZ7DWWj+ijRq1hBAofWWARynMyxDwi+k5/itazYHzZTMs/tX9v0DF9H40Pk8Y2
 5Tq5bx/vab2T+HDNMeVPzTfXtTDNSMhPnE0TSUgXY3VXwMmCQwPgTdjBcy4Li18KoXjkn0w
 AchbdyBY+Cc5eJzlHM42g==
X-UI-Out-Filterresults: notjunk:1;V01:K0:+JD5zookdYg=:Hub4oRhpCdgLlehOxPXUha
 RFJwGrOuEYvd4NLd33LzzIhFicxA/HGb8pD0hR6JlqvREUKLJZpNn0H2p/rUKMU/POIdSrz0R
 yoVIhKpbKS7vL5WWAKivboyE8RMQ36C31/gTkUDF1iQv7uKs1YE6oDyEjow1FB9Y9zFFBkBwp
 mizU95Dwjp7aj1hEWSfH/iXhjby5vpktUPYxRMQR1cbvcRQfg4puboVpTDJHCavOlx9v184go
 is5F8FyhiXBUe2QQIwIzcdSlJTIJeWx6qMdzVxXM8RNWxgbDPMdeTZX9hZtCNch+Xe+t1jlhf
 Pzdex1yG9zD4XI9H8UCsm8qrDg+gM2h0Hr/JHB5fICLrM3CNvza7YiP6X+31Daq03O5JwgMWr
 v3OXurxtgyzDhhlsHEPIYyuVZLV+LIkl0g8/hCu77ddkORFxlNem4ofHwiXm/O3/f33saEdbm
 AHU+aylMNg2wolsBNIOdGE/LGdxc6lxHNXmPYQAawv7SK1BkbCO3qI1Xh1QJaHYKCDtWkSOyX
 MAXZNhAtwtFoQhJEek2ZhwOwp5EvpSWYewu0y06hKfa3ImSLaAd/xiYvsfv6xuGXPXU9SaszF
 9tNh67bMbmNawI4zzmzQqEVzyc2mhIGrP/AZJB4sMf1PenPKqpexbCrBJ5fGV7bSDcR4R3fk3
 BrJTqyUs8xBe6FqBc7mCaPl036Mo0HxTEr3K7NUd8E/Jbls+00r6KUfGcR5isass8YeWG7vtE
 ahdBWzX08f5cy0Sv

On Sunday 18 October 2015 14:24:15 Ioana Ciornei wrote:
> 
> I am having a little bit of trouble when cross-compiling staging/octeon.
> I have already tried to compile it using mips-openwrt-linux-uclibc-
> toolchain but unfortunately I had no luck.
> 
> The output when trying to compile one the files is showed bellow:
> 
> ioana@yoga:~/src/kernels/staging$ make ARCH=mips
> CROSS_COMPILE=mips-openwrt-linux-uclibc-

This might be targetting a too old architecture level, or only 32-bit.
We've also had problems on ARM where the kernel does not pass the correct
arguments to the compiler to override the defaults. It's possible that
MIPS still does this.

> Could anyone recommend an appropriate toolchain for mips architecture?
> I should mention that I have some previous experience with
> cross-compiling but not for a mips target.

There is a good set of cross compilers at
https://www.kernel.org/pub/tools/crosstool/

Alternatively, get the scripts from
git://git.infradead.org/users/segher/buildall.git and build your own by
following the instructions in the corresponding README file.

	Arnd

