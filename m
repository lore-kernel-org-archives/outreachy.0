X-GM-THRID: 6522835256508153856
X-Received: by 10.107.156.206 with SMTP id f197mr6472775ioe.113.1518716569121;
        Thu, 15 Feb 2018 09:42:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.224.195 with SMTP id c186ls177755ith.3.gmail; Thu, 15 Feb
 2018 09:42:47 -0800 (PST)
X-Google-Smtp-Source: AH8x227oyl80fXohmF4kzN1PANhor214I+IVrcpw2WSljNcTNkU/ZuqVSOB4/trg3OInCRaqXZ0T
X-Received: by 10.36.16.200 with SMTP id 191mr2407417ity.54.1518716567907;
        Thu, 15 Feb 2018 09:42:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518716567; cv=none;
        d=google.com; s=arc-20160816;
        b=XUbM6aEHUFUBjPsICyoYVvc0YR6xavgA6N8/eTYJZ0gpuxccCBrTuL2DvVffC08Jxd
         rDuE0okfMg2c467lbednOSh/F+WiKmdh0Ufsrvpqu8WDSa9lmPdbex89YLayIgVrUs9Z
         4A5r06sDJg4UAEfmKaQqKJO3l0sclKFAagSMJWw8p1gP+ufRPRhbojrJO1RXn/O6Q92X
         9P3a4qoyvFOtYZ3aA9f4nZIdnrsXtCU37x3NqCysZiQtxCrR8cCVKb/lVFFpebLv49d0
         9u5lIGUiF88aKMH3rWOQYKqyxIwe+D0fEmQLrgah6gjYebO98DFclOFrSTCwXSVR7w+k
         q5vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature
         :arc-authentication-results;
        bh=SOHoUlbttGIov8OVmHMbDdx9zP3ilc4d5Xa5z/R3ZVQ=;
        b=vAl0IycwfiL8I5bE/8Du9gWU6iqb2Kk3BQbCSV0kJtBmMqmPo23mm6vQ1YLHfTLPTf
         N31bbYwaVkiMvBw0xpmWLOwo5wO/cldRVh0aykASFufBpoSH6at8pKjpfa0/OH60uUyL
         PA19ou/Ehhsbbf84Cj8htqL1GUTr8EDw/GE3EudMV35f8CZD/e/4zot+ejocuAg/TIT5
         tJ/mMSvVb6Mr/nhbNOCn6Ca8/hSY9EMULh33Ymg7DNtLdqwVIIyvZ2tjxB8fDIU794ks
         B2S2H+EJc/VG+Wv7dKFijFaLbjdBgwlrap7/ogOsaJkSxAxc4GZ3rO5cN32BXaX0KuaE
         oEJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=KbGuESMS;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c05::22f as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Return-Path: <ezequiel@vanguardiasur.com.ar>
Received: from mail-pg0-x22f.google.com (mail-pg0-x22f.google.com. [2607:f8b0:400e:c05::22f])
        by gmr-mx.google.com with ESMTPS id y78si21429itb.2.2018.02.15.09.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 09:42:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c05::22f as permitted sender) client-ip=2607:f8b0:400e:c05::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.s=20150623 header.b=KbGuESMS;
       spf=pass (google.com: domain of ezequiel@vanguardiasur.com.ar designates 2607:f8b0:400e:c05::22f as permitted sender) smtp.mailfrom=ezequiel@vanguardiasur.com.ar
Received: by mail-pg0-x22f.google.com with SMTP id g2so313742pgn.7
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Feb 2018 09:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=SOHoUlbttGIov8OVmHMbDdx9zP3ilc4d5Xa5z/R3ZVQ=;
        b=KbGuESMS7K/vp6Tgmucuvr97A3NHu1V/fjIzq0ti+61hlu8gSrhmxWc0ZO+GFjSmiq
         vlQmIO85dX/LfTO9BKiFPX3wL0AFg/1ajCkdaIXCdoJbk6/kAbVLYK94XY9uG/E0jp4V
         /JerUJT0tANu6uoVFz88W5ylLfRGhRHq6HmP0xAesCmphAJc8ZzTNZuhfrozMtJNEIny
         9/kEvNtNH1c59GYl0zsGub6yB7HVehkIgTcYrtf97i37jjUZHqJ5ubIEqzH6tSSXm2gI
         Vyr73j7ATMhe0A8AjEI5My6txgwg8bdLpGGHE+szsNYR+bL8TUhGj06bw9JMpX/6YvuR
         k6rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=SOHoUlbttGIov8OVmHMbDdx9zP3ilc4d5Xa5z/R3ZVQ=;
        b=R89bUTR/ntIP8FFfHAUXfITB/QXtXO9k3PoNDSL0iz62+0rGtZ3Bpg5SNGtQC4dZ9g
         y40rJeXa1LDTFA+8pD5cCqfPASoTKzYOfWhSEiS3oVJTvdcx//enYMPfmA2J6aKUppBu
         Vdw+qYsXNFE86Oa3FP9y/zxRz2edG3zBaUHkV8ifi16yAQ8PjaPXiwTwZZF2/nfX5bdb
         EL75EPS1TM8DII/F3lamk5/uwBriVCI7tIG/z6I9eGkP17BY80VPIh1zRSFex5UbVjOV
         fv7jGoPkrgjrnAu4UiJF8b5xcepdGhHESns/jqixe/0pPkb+1PYvSaNWHh/HSPDR8Iqt
         vwdg==
X-Gm-Message-State: APf1xPAT7wY9PVWHxTySTrBcsoEMitg0yh36NxMM9C7NGlik7csVfo3v
	m50iIaTWnxaJc0PwKjQbb+vYhQN48j07OwIu3l9d3w==
X-Received: by 10.101.82.195 with SMTP id z3mr2867458pgp.308.1518716567326;
 Thu, 15 Feb 2018 09:42:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.140.23 with HTTP; Thu, 15 Feb 2018 09:42:46 -0800 (PST)
In-Reply-To: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com>
References: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 15 Feb 2018 14:42:46 -0300
Message-ID: <CAAEAJfAnfkDi=NvBA_FKRGasNkn-qh8TPBvE4r5Rfm23_ngyKg@mail.gmail.com>
Subject: Re: [Outreachy kernel] who to send first patch to
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 15 February 2018 at 14:32, Dafna Hirschfeld <dafna3@gmail.com> wrote:
> Hi,
> I follow the first-patch tutorial.
> When running the get_maintainer.sh script, I get Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>.
> Should I send the patch to this mailing list and add the maintainer as a =
CC,
> or should I send two separate mails, one to this mailing list and one to =
the
> maintainer ?
>

Just like Shraddha said, you sould send just *one* mail.

You can Cc as much developers as you want, but you'll usually want to keep
the Cc list short, Ccing only the relevant maintainers.

Let's work with an example. I just crafted a small patch removing an unused
header from arch/arm/mach-mv78xx0/common.c:

commit 42dc417bb0c0547a926880494ac3f79829bd3035 (HEAD -> orion-nand)
Author: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Thu Feb 15 14:39:09 2018 -0300

    ARM: mv78xx0: remove unused header

    This file doesn't setup an orion-nand device, and so
    it does not need the orion-nand header.

    Signed-off-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

diff --git a/arch/arm/mach-mv78xx0/common.c b/arch/arm/mach-mv78xx0/common.=
c
index f72e1e9f5fc5..89c95e365e90 100644
--- a/arch/arm/mach-mv78xx0/common.c
+++ b/arch/arm/mach-mv78xx0/common.c
@@ -19,7 +19,6 @@
 #include <asm/mach/map.h>
 #include <asm/mach/time.h>
 #include <linux/platform_data/usb-ehci-orion.h>
-#include <linux/platform_data/mtd-orion_nand.h>
 #include <plat/time.h>
 #include <plat/common.h>
 #include <plat/addr-map.h>




> Thanks,
> Dafna
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/a8ea6283-061c-4172-a7c=
1-e2a7e99d46f3%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.



--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar

