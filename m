X-GM-THRID: 6205610829671301120
X-Received: by 10.112.150.229 with SMTP id ul5mr1309218lbb.2.1444858395094;
        Wed, 14 Oct 2015 14:33:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.85 with SMTP id d82ls76546lfb.47.gmail; Wed, 14 Oct 2015
 14:33:13 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr1296276lbb.11.1444858393600;
        Wed, 14 Oct 2015 14:33:13 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id hs5si1001718wib.1.2015.10.14.14.33.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 14:33:13 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MCZ7q-1ZulNs0ixe-009OuU; Wed, 14 Oct
 2015 23:32:39 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: David Daney <ddaney@caviumnetworks.com>
Cc: Sakshi Bansal <sakshi.april5@gmail.com>, gregkh@linuxfoundation.org, aaro.koskinen@nokia.com, ralf@linux-mips.org, david.daney@cavium.com, paul.martin@codethink.co.uk, aybuke.147@gmail.com, helen.fornazier@gmail.com, joe@perches.com, okash.khawaja@gmail.com, janne.huttunen@nokia.com, jamie.lawler@gmail.com, robertoxmed@gmail.com, jtk54@cornell.edu, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: octeon: fixed few coding style warnings
Date: Wed, 14 Oct 2015 23:32:34 +0200
Message-ID: <69190046.oaJJ8FBsHi@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <561EC340.8050304@caviumnetworks.com>
References: <20151014140637.GA23007@localhost.localdomain> <6531068.KI8IQomEHc@wuerfel> <561EC340.8050304@caviumnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:bdnHrk6+qmEj50aOtA5hFZCU3QfNuPpeq5qwA2yzLWKS7788YTV
 XfL2L0jdpxPM5LcbIigtWivY3HEddH0VOF9RRWsZQUEQxn9xaK+n7JUGIWHjMtjUIgHy9/z
 7o7yWDjvfLtgT38GkrAxyvh5p9RXXM3IDbhKDxMkwZ33v5t2GG/3Evs1mkNs9mPI/+x3SjN
 ZWD6gnw4/4MfX0eYf4w5w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:yLvHdWluauU=:VoKrxoalnstlVgQJy8JPOh
 c3WZKtRo/gNudw1BejLGTGhcnjpdG9564COb63TOG5Nq9qYF0dtp3DjcHMQBTTzTg1WoTL+04
 cohY4iSmDA+KHgFpWbCaPnA47yF/8qsIFf78ADYGLw/HduLbPHVXMyJECTPC2WnCA1+FIDIPa
 57rng8McS5YK3KUb2VA4PlBh4fqLv6+wWsX+5eb3htNvIn/FKoQFST2iFafn/LTvFrZWxq6Mn
 gld5f8kdy3sgnGRIwhEuRr8Hp+R90n7VfzBTcnrsZJT9qfimSqaaABN8gS1lNLwF0eyZSVAGM
 1cYj0QAU7H/xsr6K0OSqB0GWeygySL6PLxNXqQ0ok8ByBQF3o3fUlHuTJieDtN2cJ4YjOmChn
 gbgANMm6eDzJJii255QazXBsU/8KBP55NwPB1LZrkQJ8tj+0v91To65TwVH1WkuoI+bgYCgN/
 tIbe8+fmv4NbEdMIQSWJB2cOlSLviESu0HimeFNcDoJUegYeXvhN4QcI+K2qhPI9jdDxJcuQR
 QNUa6V+HIvNVptYsBhe8bdxGnZGPNa0g9w6ftIdAYBCtX6zbbAOzGnkccGHxrFQILLsKosUOz
 QhxAmomMqxAIuOtUeQTT/Lb/QSbuMfZT0YhN6hxG0g501ZWE0U8H87UUyRcW/kU8XB5sbLalX
 exv6TXnKhH5t6TQqpnUfMnhbZPwL3AIHrgyzq3l3tVFoPtgLDvGofp1AyBtEEKtxweuZlGkgi
 e8X67S/EHc1Ps3rW

On Wednesday 14 October 2015 14:04:00 David Daney wrote:
> On 10/14/2015 01:58 PM, Arnd Bergmann wrote:
> > On Wednesday 14 October 2015 08:47:44 David Daney wrote:
> >> On 10/14/2015 07:06 AM, Sakshi Bansal wrote:
> >>> Fixed allignment issues and line over 80 characters
> >>
> >> Use spell checking on 'allignment'
> >>
> >> But that is not the main problem with the patch...
> >>
> >>
> >> You are changing things other than white space and comment formatting,
> >> can you tell us on which platforms the patch was tested to verify that
> >> you didn't break anything?
> >
> > In general a good advice, but for trivial whitespace or comment
> > changes, this is normally not necessary. Compile-testing a patch
> > as you say is normally expected, if only to avoid embarrassing
> > complaints if it does break later.
> >
> > For drivers that are not enabled in the x86 allmodconfig, it sure
> > helps to say something like "Compile-tested using MIPS cross toolchain
> > from https://www.kernel.org/pub/tools/crosstool/". Even better would
> > be to send a fix to decouple the driver from asm/octeon/*.h
> > to make it build on all architectures, but that is much more work
> > than I'd expect for a trivial patch.
> 
> There is no point in such a patch.  We know, a priori, that there will 
> *never* be a non-MIPS system with this hardware.

We generally like to have all drivers compilable using COMPILE_TEST
across all architectures, as that enables automated build regression
tests from services like coverity or the 0-day build tester.

It also makes it much easier for normal developers to test changes
when they can verify them using a single toolchain and allmodconfig.

	Arnd

