X-GM-THRID: 6522835256508153856
X-Received: by 10.28.71.132 with SMTP id m4mr681884wmi.28.1518724695434;
        Thu, 15 Feb 2018 11:58:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.116.12 with SMTP id p12ls212095wmc.2.gmail; Thu, 15 Feb
 2018 11:58:14 -0800 (PST)
X-Google-Smtp-Source: AH8x225FPd6rjyCmsA2WELvvFYAObYPjoGTCsxL5C8QSZ+3gdD4l+ENUbEaKdFHOUrP1KsCPdKBR
X-Received: by 10.28.91.147 with SMTP id p141mr1037053wmb.31.1518724694190;
        Thu, 15 Feb 2018 11:58:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518724694; cv=none;
        d=google.com; s=arc-20160816;
        b=n3tE2FMsmFR91jKGP7y+7pqAAbHh4i1L74oc5NSEUTkkgLtIWXs7UhfIoJD2W4W4dG
         QhaTqj1qjInUAYAjc8lp1W0/8Gvwno7kkoukbi7Mxt6fOgSM7iRe/FS9mbEd0GpadhO4
         p737WaokbPUjIFBkP3pjxjzALkKRGoiZw/IXz3Dyc/TjvPxt3Xemz08+1v9wEe+JIQUC
         tNoUa5s++sMV39kf7qoPr26FF697SBAUTWPUNfP79oWRuk/3RaDemSII2ZThOMNZtma+
         MVXgD2cJtNmy1+pxUdlUwsnilvR+aOxL7C+Kl2ZNRpou4+QDsIB3XrJ/+WrtpuX/kENt
         UGrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=0BNSbWFgHOvOOqazplZD8u6cSxzZAI5g61gs7xH63VY=;
        b=Y2MwgeFr2C4j80i3mAsqZeDPBqdlWtfjFy6krlDNXAYDZsWSipf5nUQWi6OlRdF0iD
         8N+pC9Uqnh4PLOaZfhF0836g3Krmb5nZPGhJ4/xpH8OxO7HPzTTNnisSsPhdui6RTvRm
         dk+aVvbcfr0pYBtdPOOK/g0E7YsNrS5TRGxyPxZljmpQ+mLd6PUChNXdKtR5mvVCtjz7
         xiZBW1ANnNIZbljla+VMEbt/6dhU26zORQQrM7WPecvwVwnjOM9mhgZUkk6v1zbgZnCv
         6OTW8vRUW5I6V5hn2FPXWewsd0VPe7jia+t0QwafoQ+XlV96Yu0+zcV7a9W6HmTCCJe0
         aLWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y42si799138wry.5.2018.02.15.11.58.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 11:58:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,517,1511823600"; 
   d="scan'208";a="313817023"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Feb 2018 20:58:13 +0100
Date: Thu, 15 Feb 2018 20:58:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
cc: Dafna Hirschfeld <dafna3@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] who to send first patch to
In-Reply-To: <CAAEAJfAwxr5dyHt=yjotkdvTWNo5M_DsWvGPMBkD+eiHE++CEQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1802152057000.2187@hadrien>
References: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com> <CAAEAJfAnfkDi=NvBA_FKRGasNkn-qh8TPBvE4r5Rfm23_ngyKg@mail.gmail.com> <CAAEAJfAwxr5dyHt=yjotkdvTWNo5M_DsWvGPMBkD+eiHE++CEQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-337635708-1518724693=:2187"

--8323329-337635708-1518724693=:2187
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 15 Feb 2018, Ezequiel Garcia wrote:

> On 15 February 2018 at 14:42, Ezequiel Garcia
> <ezequiel@vanguardiasur.com.ar> wrote:
> > On 15 February 2018 at 14:32, Dafna Hirschfeld <dafna3@gmail.com> wrote:
> >> Hi,
> >> I follow the first-patch tutorial.
> >> When running the get_maintainer.sh script, I get Greg Kroah-Hartman
> >> <gregkh@linuxfoundation.org>.
> >> Should I send the patch to this mailing list and add the maintainer as a CC,
> >> or should I send two separate mails, one to this mailing list and one to the
> >> maintainer ?
> >>
> >
> > Just like Shraddha said, you sould send just *one* mail.
> >
> > You can Cc as much developers as you want, but you'll usually want to keep
> > the Cc list short, Ccing only the relevant maintainers.
> >
> > Let's work with an example. I just crafted a small patch removing an unused
> > header from arch/arm/mach-mv78xx0/common.c:
> >
> > commit 42dc417bb0c0547a926880494ac3f79829bd3035 (HEAD -> orion-nand)
> > Author: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> > Date:   Thu Feb 15 14:39:09 2018 -0300
> >
> >     ARM: mv78xx0: remove unused header
> >
> >     This file doesn't setup an orion-nand device, and so
> >     it does not need the orion-nand header.
> >
> >     Signed-off-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> >
> > diff --git a/arch/arm/mach-mv78xx0/common.c b/arch/arm/mach-mv78xx0/common.c
> > index f72e1e9f5fc5..89c95e365e90 100644
> > --- a/arch/arm/mach-mv78xx0/common.c
> > +++ b/arch/arm/mach-mv78xx0/common.c
> > @@ -19,7 +19,6 @@
> >  #include <asm/mach/map.h>
> >  #include <asm/mach/time.h>
> >  #include <linux/platform_data/usb-ehci-orion.h>
> > -#include <linux/platform_data/mtd-orion_nand.h>
> >  #include <plat/time.h>
> >  #include <plat/common.h>
> >  #include <plat/addr-map.h>
> >
>
> Oops... sent the mail by mistake. So, like I was saying: I have that
> patch ready.
> Now I need to see who I'll sent to:
>
> ./scripts/get_maintainer.pl 0001-ARM-mv78xx0-remove-unused-header.patch
> Jason Cooper <jason@lakedaemon.net> (maintainer:ARM/Marvell
> Dove/MV78xx0/Orion SOC support)
> Andrew Lunn <andrew@lunn.ch> (maintainer:ARM/Marvell
> Dove/MV78xx0/Orion SOC support)
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> (maintainer:ARM/Marvell Dove/MV78xx0/Orion SOC support)
> Gregory Clement <gregory.clement@free-electrons.com>
> (maintainer:ARM/Marvell Dove/MV78xx0/Orion SOC support)
> Russell King <linux@armlinux.org.uk> (maintainer:ARM PORT)
> linux-arm-kernel@lists.infradead.org (moderated list:ARM SUB-ARCHITECTURES)
> linux-kernel@vger.kernel.org (open list)
>
> OK, that's a long list. I'll send the patch to just the SOC
> maintainers and the ARM mailing list, not all of them listed above.
>
> git send-email  --to jason@lakedaemon.net --to andrew@lunn.ch --to
> sebastian.hesselbarth@gmail.com --to
> gregory.clement@free-electrons.com
> 0001-ARM-mv78xx0-remove-unused-header.patch --cc
> linux-arm-kernel@lists.infradead.org
>
> In your case, you'll most likely pick Cc the outreachy mailing list
> and send it to Greg KH (as Greg just said).

There is a suggested command line in the tutorial that should limit the
set of people to the actual maintainers.

julia


>
> Hope it helps,
> --
> Ezequiel García, VanguardiaSur
> www.vanguardiasur.com.ar
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAAEAJfAwxr5dyHt%3DyjotkdvTWNo5M_DsWvGPMBkD%2BeiHE%2B%2BCEQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-337635708-1518724693=:2187--

