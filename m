X-GM-THRID: 6249137798348013568
X-Received: by 10.28.158.216 with SMTP id h207mr671015wme.4.1455033242984;
        Tue, 09 Feb 2016 07:54:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.208 with SMTP id e199ls72221lfg.109.gmail; Tue, 09 Feb
 2016 07:54:02 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr4129056lbb.23.1455033242469;
        Tue, 09 Feb 2016 07:54:02 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id s132si603490wmd.1.2016.02.09.07.54.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:54:02 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0LckK3-1ZmAdK47dv-00k6RX; Tue, 09 Feb
 2016 16:54:02 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
Date: Tue, 09 Feb 2016 16:54:01 +0100
Message-ID: <2414518.udrIPO2x22@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.10.1602091649200.2578@hadrien>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com> <2431688.NvBMsGsSsv@wuerfel> <alpine.DEB.2.10.1602091649200.2578@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:JgnskCHMA4gDKmxWfbNQBerZnaRX8+htKJd+y9eB7LZGS1jzcQK
 vg2NeJSEwL1tMlFrZAWrK7eB2hHkLY1x08sLwlD25E+6JTB2NaCP2S1vCaTowwvnWWZhOca
 4F5mpRtlQi/Wc7gQGfhq2MXETKP1/nSJxLDxWwp5tsU8oUHReYxxVJkEVi3lZmZigWTMaU9
 XNu1kNI46EvQn7Gz06FyQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:e53pApdickA=:21dL+umEBKo8WslUAF5paL
 6ZhQeNxbSGJ/V2HBkAqCg9yVquTfAvsI4U2Upa59TD/6yHn8c7dVeAGySBFKS0xDTBkmF6mJg
 MNd5F1p/8JLXgNXdQ1sYEaBEl4IZHFvksv1ulp5wTfDuEmYsqC1e9NLHwyj/liJMeKm/RC2dM
 mbazS8NqEGJQL/UvYbRiSwQfUV+sVAbrk66SXuIdGo34e0COjDaOj4dtoqRZRajIGjXJfSU+w
 omAZkJGlLzatem1JitfDcVCzRjtQR4qHIymCsL2LUkNJjNROYTR7YU09Dh8jmd3StWuE9x7TP
 rzgihN5HcLZ7CiydXWtf/1Rwj39mp42VZ/nFOSwvoa5rlZgCJPib1GF50r4MG2rhtZGmAbcmE
 00HbeY/4+gDvsOMMvYjP0y0B+489As3Qg+Fbhga5FEtsDMJPllfhBEoH95vqQg7d+bf1Widn6
 uZ8gUCKQLW7C+CRGUP4cvQgcN1H6AQj4ItIql5idTL+kz2nAnhe8NUJHKgB26bTCFhL0O0x8S
 eo005NBjS3/eDHukSBzKqM02tg5zp4PipCrwIY3E70HPZDt3jMShooELPdbgKFUhanR/VV4dj
 83ZXqlu4ogeLkJF+TXI/Xx4syr+MWf5amLHJHOKXMU/25T70zP7nxfevVQpjc3Yaml8w8+AwX
 PqJQKMt1WkiI/cSKEFHJou15o+sETTrqMtOyPDXph096WgP0U8yRM1sJwSKkdKjnUbygZngpY
 aI0kAZmara5mnq53

On Tuesday 09 February 2016 16:49:31 Julia Lawall wrote:
> On Tue, 9 Feb 2016, Arnd Bergmann wrote:
> 
> > On Tuesday 09 February 2016 16:18:55 Julia Lawall wrote:
> > >     make M=drivers/staging: This seems to try to link the modules in a
> > > previously build vmlinux file.
> > >
> > > Make path/ could be a reasonable choice for a localized change within a
> > > single driver, or for a change localized to drivers staging. In any case,
> > > as a minimum always check that compilation produces a .o file for every
> > > file that your patch changes. If there is no .o file, you have not
> > > compiled the file, and you need to look for other compiler options.
> >
> > Ok, sounds good. I've added a little bit more detail now:
> >
> > http://kernelnewbies.org/FirstKernelPatch?action=diff&rev2=25&rev1=24
> 
> Thanks.  What is -sj2?
> 
> 

-s is 'silent', -j2 is used to build on two threads in parallel rather than
one. On second thought, I'll remove those again, as this prevents you
from seeing which files get built.

	Arnd

