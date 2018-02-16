X-GM-THRID: 6522835256508153856
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.223.134.137 with SMTP id 9mr1176483wrx.25.1518777260264;
        Fri, 16 Feb 2018 02:34:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.70 with SMTP id 67ls228811wmj.7.canary-gmail; Fri, 16 Feb
 2018 02:34:19 -0800 (PST)
X-Google-Smtp-Source: AH8x225ysRXfTkvkNiYPx+zjHAgZMz4PcMW/FwdD9uM/whlgyI4mB52n6YU98FhYTmAuSX4yW7OW
X-Received: by 10.28.5.2 with SMTP id 2mr1196546wmf.3.1518777258982;
        Fri, 16 Feb 2018 02:34:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518777258; cv=none;
        d=google.com; s=arc-20160816;
        b=pPfAFK2PYeaDF7a+dL6DqjjJY1ie4NGfhSyrlyz9oCciAMWMnzQb4FO57Mec3h+iK4
         r7pHyEGd6GdrmyCe6TMN/84TAxYkXT4XY8mfmOZ3wDHlOaq784j8ziZbFjLMixWAfrou
         R/lzShNlo620ILDNt9annO+cEsqdLstlgLYeptjiJfx1+CsF7h/O3NaM/tI9WzqIgsk8
         pL/lHw06k++uRXD+MNlmbHKJ+NQe7ivf9J4oZmfbqVS+6FGtvucTA1ntvKCf5gwf4kqx
         WtH5CjXkHKFHLmO1tVm/OkL8ySqrwamWi6LcZaMeMjyFMtUsee5b45XJri0gL0sfaZtz
         RVAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=NOiI09uniu2SUXglFe4aersoFKFNJd5Bu+w/ByZn948=;
        b=T3Rx3HA1Cqu0aqBgFnHB7gBt79tZSyqjMfiZWSeYDuhiiwvaDGNkFULH9APZB/2T/c
         vhugE2SN0tVEOHZ0yqkXoqoqMGO7EJxeeMJOlXFx2w6XmCMCusRCX85SiYFGu3VUZSmK
         VajYl2LIP4zvdFMC7bIzoMHVyjEy6qSoLOEk3j0lJKMEF2qIHjqGSKNTZtrl2GefON8F
         zJCrERSAdVCLmbjhA/yccC3TvqPZUvWNchu4xWNe6PkrrL94ccij2k+kz1F/1YYYrip8
         UB2OK8fFaoUINqU3H8PkshmGUhlN3iWtHjpX9Q+dlWRZf/ny9mjRMAJTdBJdyXNbWURp
         WNjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id i75si649447wmg.1.2018.02.16.02.34.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Feb 2018 02:34:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12258-90.w90-92.abo.wanadoo.fr [90.92.71.90])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1F7CCF23;
	Fri, 16 Feb 2018 10:34:16 +0000 (UTC)
Date: Fri, 16 Feb 2018 11:34:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] who to send first patch to
Message-ID: <20180216103418.GA9048@kroah.com>
References: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com>
 <CAAEAJfAnfkDi=NvBA_FKRGasNkn-qh8TPBvE4r5Rfm23_ngyKg@mail.gmail.com>
 <CAAEAJfAwxr5dyHt=yjotkdvTWNo5M_DsWvGPMBkD+eiHE++CEQ@mail.gmail.com>
 <20180215175724.GA14180@kroah.com>
 <alpine.DEB.2.20.1802152059020.2187@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802152059020.2187@hadrien>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Thu, Feb 15, 2018 at 08:59:38PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 15 Feb 2018, Greg KH wrote:
> 
> > On Thu, Feb 15, 2018 at 02:48:30PM -0300, Ezequiel Garcia wrote:
> > > On 15 February 2018 at 14:42, Ezequiel Garcia
> > > <ezequiel@vanguardiasur.com.ar> wrote:
> > > > On 15 February 2018 at 14:32, Dafna Hirschfeld <dafna3@gmail.com> wrote:
> > > >> Hi,
> > > >> I follow the first-patch tutorial.
> > > >> When running the get_maintainer.sh script, I get Greg Kroah-Hartman
> > > >> <gregkh@linuxfoundation.org>.
> > > >> Should I send the patch to this mailing list and add the maintainer as a CC,
> > > >> or should I send two separate mails, one to this mailing list and one to the
> > > >> maintainer ?
> > > >>
> > > >
> > > > Just like Shraddha said, you sould send just *one* mail.
> > > >
> > > > You can Cc as much developers as you want, but you'll usually want to keep
> > > > the Cc list short, Ccing only the relevant maintainers.
> > > >
> > > > Let's work with an example. I just crafted a small patch removing an unused
> > > > header from arch/arm/mach-mv78xx0/common.c:
> > > >
> > > > commit 42dc417bb0c0547a926880494ac3f79829bd3035 (HEAD -> orion-nand)
> > > > Author: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> > > > Date:   Thu Feb 15 14:39:09 2018 -0300
> > > >
> > > >     ARM: mv78xx0: remove unused header
> > > >
> > > >     This file doesn't setup an orion-nand device, and so
> > > >     it does not need the orion-nand header.
> > > >
> > > >     Signed-off-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> > > >
> > > > diff --git a/arch/arm/mach-mv78xx0/common.c b/arch/arm/mach-mv78xx0/common.c
> > > > index f72e1e9f5fc5..89c95e365e90 100644
> > > > --- a/arch/arm/mach-mv78xx0/common.c
> > > > +++ b/arch/arm/mach-mv78xx0/common.c
> > > > @@ -19,7 +19,6 @@
> > > >  #include <asm/mach/map.h>
> > > >  #include <asm/mach/time.h>
> > > >  #include <linux/platform_data/usb-ehci-orion.h>
> > > > -#include <linux/platform_data/mtd-orion_nand.h>
> > > >  #include <plat/time.h>
> > > >  #include <plat/common.h>
> > > >  #include <plat/addr-map.h>
> > > >
> > >
> > > Oops... sent the mail by mistake. So, like I was saying: I have that
> > > patch ready.
> > > Now I need to see who I'll sent to:
> > >
> > > ./scripts/get_maintainer.pl 0001-ARM-mv78xx0-remove-unused-header.patch
> > > Jason Cooper <jason@lakedaemon.net> (maintainer:ARM/Marvell
> > > Dove/MV78xx0/Orion SOC support)
> > > Andrew Lunn <andrew@lunn.ch> (maintainer:ARM/Marvell
> > > Dove/MV78xx0/Orion SOC support)
> > > Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> > > (maintainer:ARM/Marvell Dove/MV78xx0/Orion SOC support)
> > > Gregory Clement <gregory.clement@free-electrons.com>
> > > (maintainer:ARM/Marvell Dove/MV78xx0/Orion SOC support)
> > > Russell King <linux@armlinux.org.uk> (maintainer:ARM PORT)
> > > linux-arm-kernel@lists.infradead.org (moderated list:ARM SUB-ARCHITECTURES)
> > > linux-kernel@vger.kernel.org (open list)
> > >
> > > OK, that's a long list. I'll send the patch to just the SOC
> > > maintainers and the ARM mailing list, not all of them listed above.
> > >
> > > git send-email  --to jason@lakedaemon.net --to andrew@lunn.ch --to
> > > sebastian.hesselbarth@gmail.com --to
> > > gregory.clement@free-electrons.com
> > > 0001-ARM-mv78xx0-remove-unused-header.patch --cc
> > > linux-arm-kernel@lists.infradead.org
> > >
> > > In your case, you'll most likely pick Cc the outreachy mailing list
> > > and send it to Greg KH (as Greg just said).
> >
> > For staging patches, please also cc: the public mailing list for the
> > staging drivers, and any other maintainers of the drivers, they want to
> > see these patches as well.
> 
> The suggested get_maintainer command includes -nol, ie no lists.  I can
> drop that, if we want to include lists.

Hm, let's leave it as-is for now, as long as we are including the
maintainers of the drivers, that should be sufficient.

thanks,

greg k-h

