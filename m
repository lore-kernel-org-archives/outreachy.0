X-GM-THRID: 6392178223572058112
X-Received: by 10.200.4.16 with SMTP id v16mr2829819qtg.88.1488398051494;
        Wed, 01 Mar 2017 11:54:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.69 with SMTP id 63ls5386640oty.0.gmail; Wed, 01 Mar 2017
 11:54:11 -0800 (PST)
X-Received: by 10.13.254.2 with SMTP id o2mr3350186ywf.50.1488398051092;
        Wed, 01 Mar 2017 11:54:11 -0800 (PST)
Received: by 10.202.71.200 with SMTP id u191msoia;
        Wed, 1 Mar 2017 10:43:24 -0800 (PST)
X-Received: by 10.13.252.194 with SMTP id m185mr3021381ywf.145.1488393804443;
        Wed, 01 Mar 2017 10:43:24 -0800 (PST)
Return-Path: <mark.rutland@arm.com>
Received: from foss.arm.com (foss.arm.com. [217.140.101.70])
        by gmr-mx.google.com with ESMTP id c123si912997pfa.4.2017.03.01.10.43.24
        for <outreachy-kernel@googlegroups.com>;
        Wed, 01 Mar 2017 10:43:24 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.101.70 as permitted sender) client-ip=217.140.101.70;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.101.70 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED8A9C28;
	Wed,  1 Mar 2017 10:43:23 -0800 (PST)
Received: from leverpostej (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF6CB3F575;
	Wed,  1 Mar 2017 10:43:21 -0800 (PST)
Date: Wed, 1 Mar 2017 18:43:13 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>
Cc: Arnd Bergmann <arnd@arndb.de>, arm@kernel.org,
	linux-arm-kernel@lists.infradead.org, mp-cs@actions-semi.com,
	96boards@ucrobotics.com, support@lemaker.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3 11/25] ARM: dts: Add Actions Semi S500 and LeMaker
 Guitar
Message-ID: <20170301184313.GO28874@leverpostej>
References: <20170228063535.32069-1-afaerber@suse.de>
 <20170228063535.32069-12-afaerber@suse.de>
 <20170228123245.GF3691@leverpostej>
 <11053e03-8e28-e93d-f1f6-2589a9f7800c@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <11053e03-8e28-e93d-f1f6-2589a9f7800c@suse.de>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 28, 2017 at 04:13:00PM +0100, Andreas Färber wrote:
> Am 28.02.2017 um 13:32 schrieb Mark Rutland:
> > On Tue, Feb 28, 2017 at 07:35:21AM +0100, Andreas Färber wrote:

> >> +#include "skeleton.dtsi"
> > 
> > Please don't include skeleton.dtsi.
> 
> Wasn't aware that was permissible. I now see it has been updated with a
> textual comment, which predates my past uses of skeleton.dtsi - for
> other pending work such as FM4 and XMC4500 I only noticed it was moved
> out of armv7m.dtsi so that dtc started spewing scary messages. ;)
> 
> A #warning might be a more effective way to make people aware of its
> deprecation - but sadly we have users that predate #include:
> 
> $ git grep /include/ -- arch/arm/boot/dts/ | grep skeleton.dtsi | wc --lines
> 32
> $ git grep /include/ -- arch/arm/boot/dts/ | grep skeleton64.dtsi | wc
> --lines
> 0
> $ git grep skeleton -- arch/arm/boot/dts/ | wc --lines
> 117

I deliberately didn't go that route, since people would blindly fix up
the warning and mess it up (e.g. forgetting to add the required nodes).

While it should be avoided for new dts, it's largely not problematic for
old dts, and we can fix those up at our leisure.

> > Please add the relevant nodes and
> > properties explciitly to your dts{i,} files.
> 
> Great, will do.
> 
> But this series has grown too large to resend just for such nits. Is
> there a chance we can get initial patches queued on some arm-soc
> for-next branch soonish? It seems -rc1 pulls were merged 5 days ago?

There seem to be other comments on this series, and I was under the
impression that arm-soc generally pulled branches.

Even if you're not going to repost, surely you can fold in the fixup
before sending the pull request?

Thanks,
Mark.

