X-GM-THRID: 6522835256508153856
X-Received: by 10.25.160.195 with SMTP id j186mr262854lfe.44.1518717448601;
        Thu, 15 Feb 2018 09:57:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.68 with SMTP id u65ls35662lja.13.gmail; Thu, 15 Feb 2018
 09:57:26 -0800 (PST)
X-Google-Smtp-Source: AH8x226IwqLsWow7b8AMpo6kKeKH33oH89JxDEwHATG58/yAVrbEXFWdv7zR2xBTQ7zj0Dyqm+K9
X-Received: by 10.46.18.219 with SMTP id 88mr217296ljs.20.1518717446792;
        Thu, 15 Feb 2018 09:57:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518717446; cv=none;
        d=google.com; s=arc-20160816;
        b=T3a1yyBEJ2LGT3jfVinraFlVrQtYD2fNNKzFdMLJ2LHFAEa/Si14RjvQzhRoO6Ze3x
         syhuB8hX6DkdiJ8jpIOB8CVSJMi/HwuWDagmFfgrCYueyA+tGY+csUoKlgaB/3ue0pJ+
         F6K73EERMZJ9UxVwbqnnuKSsIdiQSumCY51U2yzTXeOYen5ezfUi6WmXZD67Je+hVejO
         +Weq5qcyoC2uSFpdkWw8I4J9+WNTbfOn/AbFZDueX2MpgdkU+eHLGCUAu7a7IyQ+76/a
         4CvtCFNsr9UB5LF2aQ6KjHiAZ3gI1jvIdZXf1pBD6/yxT1496Rr6ORNKdOUWcytkyCCO
         OJYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=Lx1Uj+0s/TSHpw8K3dZET5o1KlR8nscaZY3YrP9RZto=;
        b=JWiA/aM6Dufr7omBcoxot1+3oSHgn4rTqn/h+F9JqqhP7+3XTYI/zSb2Bjzz9ZBBZi
         IN5N4ys+Bm4aeyT62Tj6oMWdkphUIh6+Qvf1GK44avEERtAu7iXf3AaWjr1S0AbbRVbO
         o9IQQaoDRiSNAWy075l9/SEjzdUsCFk5FJfT68XEG5jJsxcKlbRrfpmcdajUc4Uu+jpv
         TktDs2adO1J2o+AYpR4ekbLoWvGGWijjU/KKdMdpojKoVyT8OpQeSEBLDPhn7aq3UUTn
         DT6sMdmKwwGqgGhn8cEq5snI+SaykPaW/uZpNGscj1RXglR3iO+G4NY/EWUaNoJlJ/XD
         9bKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u10si40842lju.0.2018.02.15.09.57.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 09:57:26 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.169.103.153])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2F7351032;
	Thu, 15 Feb 2018 17:57:23 +0000 (UTC)
Date: Thu, 15 Feb 2018 18:57:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] who to send first patch to
Message-ID: <20180215175724.GA14180@kroah.com>
References: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com>
 <CAAEAJfAnfkDi=NvBA_FKRGasNkn-qh8TPBvE4r5Rfm23_ngyKg@mail.gmail.com>
 <CAAEAJfAwxr5dyHt=yjotkdvTWNo5M_DsWvGPMBkD+eiHE++CEQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAEAJfAwxr5dyHt=yjotkdvTWNo5M_DsWvGPMBkD+eiHE++CEQ@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)

On Thu, Feb 15, 2018 at 02:48:30PM -0300, Ezequiel Garcia wrote:
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

For staging patches, please also cc: the public mailing list for the
staging drivers, and any other maintainers of the drivers, they want to
see these patches as well.

thanks,

greg k-h

