X-GM-THRID: 6522835256508153856
X-Received: by 10.31.146.140 with SMTP id u134mr2656624vkd.9.1518716913160;
        Thu, 15 Feb 2018 09:48:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.6.102 with SMTP id f93ls40368uaf.4.gmail; Thu, 15 Feb 2018
 09:48:31 -0800 (PST)
X-Google-Smtp-Source: AH8x227bfnuDcw4wKTBaoiRVZbiHcrDXwqNjb0fcdlaro+XE+EgEs3uLvvF2iAVUSHNwW6dx3+FA
X-Received: by 10.176.18.74 with SMTP id s10mr4520380uac.27.1518716911839;
        Thu, 15 Feb 2018 09:48:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518716911; cv=none;
        d=google.com; s=arc-20160816;
        b=uiBoxF+fJGhLrL+Xv4u1EoyhLuNY6Ij8rLutlV3CJA5wh5Hmpvw5iyNBNmJsg4ldPA
         Th7COZb4IlUl2jCVHn7iV7Yp1UzUaXvaJljbnzV4GJNsmtHfZSwoIbKo3LLc5N7cQZcF
         6XVTWOKZ8yR/5qff2L8ME/HN85bKESOurABZ9Z76UrNYI6LCc9bPQpbhOi5/x+ADli8B
         Gjw4J74l3NPYfwan099eD6sGRGTrnWaBlSzTqaopMTy6zhngyiY5IuQCUA+eT7tR5g1e
         RaRTG4jgY47fwfvZzGMuxLO6DBquBTSvTKo/VTc/PXXXlSbMTIvhH/dS2ROYuTLICCGr
         IFmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=72/6sfldo0BSGj9Yt8tG8Rp4F7k4yaOu0STnzVIyg3I=;
        b=XsItius9jqkLBJhSNyLf6PE7MbhxGpI2+tYF6LLwvZIIZSUc4nlGD0jMfHlC6crzrm
         qUuI/YSLaFkic974qQs2eBu8+eq4XANfcfD4kv2ld0EL1eWqEmkhuZtyOGrPAO5yJuwL
         i7djEoYvwQuXKNvXCe/OSCwv+cE66JbM07RytTN8vlRWjLMzRkLFQGeLYdYIbZmksQMg
         bbjHq5as8e6lMJZRFINDx2aLc++SNJ2HTrMSaMaVAGv2S184PFbpuDh+1rbd81B0KV9y
         nQYr3nrFNIr8CcPixwkv+oYX3CTRf1D8NkxmFzsdHxpyE5B9QWTD9ocNZo49JeJ1DWTQ
         W+SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=ONMlwtBb;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Return-Path: <ezequiel@vanguardiasur.com.ar>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id r9si140833uad.5.2018.02.15.09.48.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 09:48:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=ONMlwtBb;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Received: by mail-pl0-x241.google.com with SMTP id v3so236652plg.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Feb 2018 09:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=72/6sfldo0BSGj9Yt8tG8Rp4F7k4yaOu0STnzVIyg3I=;
        b=ONMlwtBbb6zdly9SL73p/DCEJe8CBGqhfkUgGdrwn5pGTLP0J9bj7AiFeALktt3Y4w
         L8zaZo2AG3fdlOw4gwGI8fKKHpr1GZzdYvmZmP8QgWywfWK39WOf0MEe8zZUGPCwNbPH
         qJDmTU/cEgBOO0G4powRuZ3Al83YJzWaJ8WzQ5Qw/z8NKRM/Z3o19x/JppamO5GyXXyI
         9thM1EnhBCI2/k+HonHS/GyE3oF4KDyR7+oKuwQxEl1fFOToSrst+pccj6vMwyuFSYiH
         M13iCb5cJZFMxjRn30fLdkF22/y95K/wBLwrai7OQg6I/tI2aLy3ahoO2ymLNg4+77Bu
         PmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=72/6sfldo0BSGj9Yt8tG8Rp4F7k4yaOu0STnzVIyg3I=;
        b=ngDjPcEhpkf8QTFLO1dluJ+rWgrNoqENcE5Wopmf+uNRBBP1VbOAL+4y1S7X/zLswt
         58MVHMKUzAObxBBX5o2yxzJLRIEaigsoVDbIeLi9MwWZSLmz5QVMflpf4EbjW5P05/8L
         iLphnfarz4Av5jL0Y+8o9s8h2sld03wyA3GxDh0zcKMOV4i4ey3QvfWgzWc6pipVo5db
         HgnHBLxJ3cluzqWSH55A6zQ8maXPCuJHIKwCV6Z+pJyRbzzF36jNXb6bACN/8BOj+Oie
         5qQGXuejeFwCLFg03Ww9nsPb/PdhetEMHDwZZhh7tT74cFIYxiIbJV8Sn69jX1kkyjuI
         2h+Q==
X-Gm-Message-State: APf1xPDtmvfuqCMgm5riuIhdFLmmUFBrgRfImpMXZM/NMa3vOYfld7di
	zLTVgG2c9Hsr+0/nuMLoC34STzOXIIvbfKUG7lNjUw==
X-Received: by 2002:a17:902:82c6:: with SMTP id u6-v6mr347853plz.401.1518716910810;
 Thu, 15 Feb 2018 09:48:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.140.23 with HTTP; Thu, 15 Feb 2018 09:48:30 -0800 (PST)
In-Reply-To: <CAAEAJfAnfkDi=NvBA_FKRGasNkn-qh8TPBvE4r5Rfm23_ngyKg@mail.gmail.com>
References: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com> <CAAEAJfAnfkDi=NvBA_FKRGasNkn-qh8TPBvE4r5Rfm23_ngyKg@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 15 Feb 2018 14:48:30 -0300
Message-ID: <CAAEAJfAwxr5dyHt=yjotkdvTWNo5M_DsWvGPMBkD+eiHE++CEQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] who to send first patch to
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 15 February 2018 at 14:42, Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
> On 15 February 2018 at 14:32, Dafna Hirschfeld <dafna3@gmail.com> wrote:
>> Hi,
>> I follow the first-patch tutorial.
>> When running the get_maintainer.sh script, I get Greg Kroah-Hartman
>> <gregkh@linuxfoundation.org>.
>> Should I send the patch to this mailing list and add the maintainer as a=
 CC,
>> or should I send two separate mails, one to this mailing list and one to=
 the
>> maintainer ?
>>
>
> Just like Shraddha said, you sould send just *one* mail.
>
> You can Cc as much developers as you want, but you'll usually want to kee=
p
> the Cc list short, Ccing only the relevant maintainers.
>
> Let's work with an example. I just crafted a small patch removing an unus=
ed
> header from arch/arm/mach-mv78xx0/common.c:
>
> commit 42dc417bb0c0547a926880494ac3f79829bd3035 (HEAD -> orion-nand)
> Author: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> Date:   Thu Feb 15 14:39:09 2018 -0300
>
>     ARM: mv78xx0: remove unused header
>
>     This file doesn't setup an orion-nand device, and so
>     it does not need the orion-nand header.
>
>     Signed-off-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
>
> diff --git a/arch/arm/mach-mv78xx0/common.c b/arch/arm/mach-mv78xx0/commo=
n.c
> index f72e1e9f5fc5..89c95e365e90 100644
> --- a/arch/arm/mach-mv78xx0/common.c
> +++ b/arch/arm/mach-mv78xx0/common.c
> @@ -19,7 +19,6 @@
>  #include <asm/mach/map.h>
>  #include <asm/mach/time.h>
>  #include <linux/platform_data/usb-ehci-orion.h>
> -#include <linux/platform_data/mtd-orion_nand.h>
>  #include <plat/time.h>
>  #include <plat/common.h>
>  #include <plat/addr-map.h>
>

Oops... sent the mail by mistake. So, like I was saying: I have that
patch ready.
Now I need to see who I'll sent to:

./scripts/get_maintainer.pl 0001-ARM-mv78xx0-remove-unused-header.patch
Jason Cooper <jason@lakedaemon.net> (maintainer:ARM/Marvell
Dove/MV78xx0/Orion SOC support)
Andrew Lunn <andrew@lunn.ch> (maintainer:ARM/Marvell
Dove/MV78xx0/Orion SOC support)
Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
(maintainer:ARM/Marvell Dove/MV78xx0/Orion SOC support)
Gregory Clement <gregory.clement@free-electrons.com>
(maintainer:ARM/Marvell Dove/MV78xx0/Orion SOC support)
Russell King <linux@armlinux.org.uk> (maintainer:ARM PORT)
linux-arm-kernel@lists.infradead.org (moderated list:ARM SUB-ARCHITECTURES)
linux-kernel@vger.kernel.org (open list)

OK, that's a long list. I'll send the patch to just the SOC
maintainers and the ARM mailing list, not all of them listed above.

git send-email  --to jason@lakedaemon.net --to andrew@lunn.ch --to
sebastian.hesselbarth@gmail.com --to
gregory.clement@free-electrons.com
0001-ARM-mv78xx0-remove-unused-header.patch --cc
linux-arm-kernel@lists.infradead.org

In your case, you'll most likely pick Cc the outreachy mailing list
and send it to Greg KH (as Greg just said).

Hope it helps,
--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar

