X-GM-THRID: 6200341306580926464
X-Received: by 10.112.158.202 with SMTP id ww10mr576844lbb.13.1444244892556;
        Wed, 07 Oct 2015 12:08:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.166 with SMTP id cv6ls211148wib.39.gmail; Wed, 07 Oct
 2015 12:08:12 -0700 (PDT)
X-Received: by 10.180.81.165 with SMTP id b5mr5168944wiy.1.1444244892115;
        Wed, 07 Oct 2015 12:08:12 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id bj4si177299wib.1.2015.10.07.12.08.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 12:08:12 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MPbr3-1ZfFEZ1yLJ-004m5d; Wed, 07 Oct
 2015 21:08:10 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH v2] Staging: fbtbt: Replace timespec with ktime_t
Date: Wed, 07 Oct 2015 21:08:09 +0200
Message-ID: <50103211.AYms3ikkHa@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5j+BvLMFomdsYW4hTHRJHj4J4iFDRLjF=UW2a9WgfUxDFA@mail.gmail.com>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com> <5548451.nrtKaPCYPk@wuerfel> <CAL7P5j+BvLMFomdsYW4hTHRJHj4J4iFDRLjF=UW2a9WgfUxDFA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:U9ULkZVp7bCIMhX/C2RXEEFusdn5SLco2TMw9TwX/Ow2xQSdRxF
 OAkmte5EoUky5TZfsTAnbaR/i0m8mGgcRmBDjN7JsitOYvTTQm0rVbGs1KOfLkverZq9Q2o
 s+CyRTlhVuFv7DiCv4Zv4ZK6qSWpEW9+D5C1UyL09uvwpCQbbjFlNyRqkQOTFbQ1VbRzQwB
 +kbP4N9xfaMYqCf0Yq4aA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:FPt7Rh33Q/A=:xuk4x1FIRpkSF3RfSveCoK
 61dI3wj0AZwXrouxO2exwG8FNsj/5dnq+c9EAlGv3CU1R4vq1b41K6P5hJM1IMMTpeNLaDBTa
 rTbr+9ihU5xCarHsLxsjO39XsjLuPYdfk6v9CpZXKPjHzYMfvp/RS/ZWu7e+GY5ard2skIxGU
 5MDSZEYvIiyeo1OKzyTeORSGUSMm4ijO5jlIA+7WyzDAXOSD0RVIvM9JYEj+lmEyJG3wmFBgU
 lJpBBCfilFKUqARrfKpP4u0kXKVjH76x7absUNbXDw1Ha9o8ln4UDCqJjMiTu3LMgcBZRAkG1
 KmLmhEMreoHGIoj6zSG072boC4TflvXEJbN8Mj5wwLLIR49s1SEyThaPjuQtpzV/FUp+3foPy
 QkvFcJcXn24ogKD2q1WoZPpP1CMlsqOEobstPiALgKQsQ5PGlH5RHZMLaPfQUSfClc0rEFgOv
 bzN8kMxEgLLSd7jjy//zyemVL+jfBhMTHf8pKKkSYVuQpnbrEuo7Fv2WMdzEUk3ntpThLH36I
 MQyRUPOLhhWwHWALjHcPS+fuK3L91YYMbXUcU5tgNVBDf3OwzrGyJ3/E6+DXUvDmfmDUxsQ44
 acHRuv9wMMO89RNGQX24+MMuVZsy/VmLaZke3XtQnp5Wlur5lZZDWJr31KWt+uyPtsNGq3yVS
 I29c7b59P+Ltf2PcU2WFkX3pE3c913EyLoxFmxU+g/yfMqwHl4jZrzrsTRK+Yx+lWNzJD3dGG
 azy3FA5Fy7YRq/I0

On Wednesday 07 October 2015 20:46:23 Ksenija Stanojevi=C4=87 wrote:
> On Sun, Oct 4, 2015 at 9:34 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Saturday 03 October 2015 21:15:46 Ksenija Stanojevi=C4=87 wrote:=

> >> On Thu, Oct 1, 2015 at 10:05 PM, Arnd Bergmann <arnd@arndb.de> wro=
te:
> >> > On Thursday 01 October 2015 19:44:46 Ksenija Stanojevi=C4=87 wro=
te:
> >> >>
> >> >> In my local repository I modified my .config file so that CONFI=
G_64BIT
> >> >> is not set,
> >> >> and after that I recompiled all directory, but I don't get any =
errors/warning at
> >> >> compile-time.
> >> >> Also I separetly compiled this specific file but still no warni=
ngs
> >> >> My .config  looks something like this:
> >> >>
> >> >> . . .
> >> >>
> >> >> Should I change my working kernel or .config file is just enoug=
h?
> >> >
> >> > I think the problem is that you only compiled that directory but=
 did
> >> > not attempt to do a full rebuild of the kernel and modules, whic=
h is
> >> > required to catch link-time errors.
> >> >
> >> > The compiler does not know at this point that the 64-bit divisio=
n function
> >> > is undefined in the kernel, you only get a warning at the 'make =
vmlinux'
> >> > link stage (for built-in drivers) or the 'make modules' modpost =
stage
> >> > afterwards.
> >>
> >> I rebuilded my repository with:
> >> make vmlinux
> >> make modules
> >> but I still don't get any warnings.
> >> Do you have any other suggestion on what I'm doing wrong?
> >
> > I just tried it on my machine and I get (for an ARM build)
> >
> > $ make -skj30
> > ERROR: "__aeabi_ldivmod" [drivers/staging/fbtft/fbtft.ko] undefined=
!
>=20
> I got this error:
> ERROR: "__divdi3" [drivers/staging/fbtft/fbtft.ko] undefined!
>=20
> I suppose that divdi3 is division used for long long by gcc on x86

Correct, this function name is architecture specific. These
functions (__divdi3, __aeabi_ldivmod, ...) are intentionally not
part of the kernel image so force kernel developers to either
use the div_u64() family of functions for division or find a way
to avoid it, which is usually preferred but not always possible.

=09Arnd

