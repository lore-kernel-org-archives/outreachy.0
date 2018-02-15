X-GM-THRID: 6522835256508153856
X-Received: by 10.28.184.88 with SMTP id i85mr1068831wmf.22.1518724780379;
        Thu, 15 Feb 2018 11:59:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.69 with SMTP id n63ls175456wrb.11.gmail; Thu, 15 Feb
 2018 11:59:39 -0800 (PST)
X-Google-Smtp-Source: AH8x2254NUUrAwURwibKy03+7t0rlzYDUWBI8OG0lHiVriT77iiFjCT4q87PKlpUXj7gzlT84cb5
X-Received: by 10.223.134.137 with SMTP id 9mr1004695wrx.25.1518724779458;
        Thu, 15 Feb 2018 11:59:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518724779; cv=none;
        d=google.com; s=arc-20160816;
        b=sz9RRH7NpWOeN3uBTZl8SYQIQpGYadaUCvXLlPEzfSsl4q0h9aTbSO6izzq2QHBJEq
         4CuVGs8WiRI6I0sQI5rlUfOmhdhLClPcUsKX0LloZ6lvo8rVNKq3qj1e6GwEWWvRYiYd
         k/U2jzrIWN7epwNa1oENOowo76GC2oIU11k6Xr/Y/IlQ2JnNwJ95YjeIVcyhYWuTzeGc
         PE3vKyz9mb+pM2Us3ey3B8TZGU8AkEVbH6noYOtZeThSYkSnQ/AnpooFMif3lRQxSWAO
         kzuK1vOj5nV3Z2VWBtPC8lqiGplPuS8OGWmpxJUScmaxtEFjdO6wANJfx1Iz2hxGG+h+
         MMAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=MuEABtK8190N1QolF6zbN2/65U9Pl91cZXotj71kvzI=;
        b=mWBPGZUJus1Ph0lXx/EtUFTJAjUbHbX9PLCSeZuEFLXNTxho64P/xeTYrBa7AtIYCa
         lwkSHxjwUAclVhpRstAEkK42p2VUYvgyxOwyHaD+sv8PuA7kaOv079ejFNdh1HOLuSyk
         uiyNmNKjVz7QT2ekTC8h7LixjMHuHmTx+E0ikwsPy6gg8wZk+MvU6H557xKVDuGlJ+AW
         Kf92/3sbujUXtvnKuU3Q8wjwlKkbw1R4zxpFmiFy9loG6VdkT2WkLyUYgEG8nyLqHRtB
         O/WvvpyJ1tadKFA2olfNAeVuQF8Y39yhNT5tlRCA4jNv25s+0Bh40NFaDXG0lC7yVgwM
         6J8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s81si846131wmd.2.2018.02.15.11.59.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 11:59:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,517,1511823600"; 
   d="scan'208";a="313817081"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Feb 2018 20:59:39 +0100
Date: Thu, 15 Feb 2018 20:59:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
    Dafna Hirschfeld <dafna3@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] who to send first patch to
In-Reply-To: <20180215175724.GA14180@kroah.com>
Message-ID: <alpine.DEB.2.20.1802152059020.2187@hadrien>
References: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com> <CAAEAJfAnfkDi=NvBA_FKRGasNkn-qh8TPBvE4r5Rfm23_ngyKg@mail.gmail.com> <CAAEAJfAwxr5dyHt=yjotkdvTWNo5M_DsWvGPMBkD+eiHE++CEQ@mail.gmail.com> <20180215175724.GA14180@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 15 Feb 2018, Greg KH wrote:

> On Thu, Feb 15, 2018 at 02:48:30PM -0300, Ezequiel Garcia wrote:
> > On 15 February 2018 at 14:42, Ezequiel Garcia
> > <ezequiel@vanguardiasur.com.ar> wrote:
> > > On 15 February 2018 at 14:32, Dafna Hirschfeld <dafna3@gmail.com> wrote:
> > >> Hi,
> > >> I follow the first-patch tutorial.
> > >> When running the get_maintainer.sh script, I get Greg Kroah-Hartman
> > >> <gregkh@linuxfoundation.org>.
> > >> Should I send the patch to this mailing list and add the maintainer as a CC,
> > >> or should I send two separate mails, one to this mailing list and one to the
> > >> maintainer ?
> > >>
> > >
> > > Just like Shraddha said, you sould send just *one* mail.
> > >
> > > You can Cc as much developers as you want, but you'll usually want to keep
> > > the Cc list short, Ccing only the relevant maintainers.
> > >
> > > Let's work with an example. I just crafted a small patch removing an unused
> > > header from arch/arm/mach-mv78xx0/common.c:
> > >
> > > commit 42dc417bb0c0547a926880494ac3f79829bd3035 (HEAD -> orion-nand)
> > > Author: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> > > Date:   Thu Feb 15 14:39:09 2018 -0300
> > >
> > >     ARM: mv78xx0: remove unused header
> > >
> > >     This file doesn't setup an orion-nand device, and so
> > >     it does not need the orion-nand header.
> > >
> > >     Signed-off-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> > >
> > > diff --git a/arch/arm/mach-mv78xx0/common.c b/arch/arm/mach-mv78xx0/common.c
> > > index f72e1e9f5fc5..89c95e365e90 100644
> > > --- a/arch/arm/mach-mv78xx0/common.c
> > > +++ b/arch/arm/mach-mv78xx0/common.c
> > > @@ -19,7 +19,6 @@
> > >  #include <asm/mach/map.h>
> > >  #include <asm/mach/time.h>
> > >  #include <linux/platform_data/usb-ehci-orion.h>
> > > -#include <linux/platform_data/mtd-orion_nand.h>
> > >  #include <plat/time.h>
> > >  #include <plat/common.h>
> > >  #include <plat/addr-map.h>
> > >
> >
> > Oops... sent the mail by mistake. So, like I was saying: I have that
> > patch ready.
> > Now I need to see who I'll sent to:
> >
> > ./scripts/get_maintainer.pl 0001-ARM-mv78xx0-remove-unused-header.patch
> > Jason Cooper <jason@lakedaemon.net> (maintainer:ARM/Marvell
> > Dove/MV78xx0/Orion SOC support)
> > Andrew Lunn <andrew@lunn.ch> (maintainer:ARM/Marvell
> > Dove/MV78xx0/Orion SOC support)
> > Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> > (maintainer:ARM/Marvell Dove/MV78xx0/Orion SOC support)
> > Gregory Clement <gregory.clement@free-electrons.com>
> > (maintainer:ARM/Marvell Dove/MV78xx0/Orion SOC support)
> > Russell King <linux@armlinux.org.uk> (maintainer:ARM PORT)
> > linux-arm-kernel@lists.infradead.org (moderated list:ARM SUB-ARCHITECTURES)
> > linux-kernel@vger.kernel.org (open list)
> >
> > OK, that's a long list. I'll send the patch to just the SOC
> > maintainers and the ARM mailing list, not all of them listed above.
> >
> > git send-email  --to jason@lakedaemon.net --to andrew@lunn.ch --to
> > sebastian.hesselbarth@gmail.com --to
> > gregory.clement@free-electrons.com
> > 0001-ARM-mv78xx0-remove-unused-header.patch --cc
> > linux-arm-kernel@lists.infradead.org
> >
> > In your case, you'll most likely pick Cc the outreachy mailing list
> > and send it to Greg KH (as Greg just said).
>
> For staging patches, please also cc: the public mailing list for the
> staging drivers, and any other maintainers of the drivers, they want to
> see these patches as well.

The suggested get_maintainer command includes -nol, ie no lists.  I can
drop that, if we want to include lists.

julia

>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180215175724.GA14180%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

