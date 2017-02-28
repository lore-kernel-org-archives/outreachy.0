X-GM-THRID: 6392178223572058112
X-Received: by 10.157.10.10 with SMTP id 10mr855576otg.75.1488294970086;
        Tue, 28 Feb 2017 07:16:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.81 with SMTP id l78ls437892ioe.8.gmail; Tue, 28 Feb
 2017 07:16:09 -0800 (PST)
X-Received: by 10.99.61.207 with SMTP id k198mr855471pga.3.1488294969237;
        Tue, 28 Feb 2017 07:16:09 -0800 (PST)
Received: by 10.55.9.18 with SMTP id 18msqkj;
        Tue, 28 Feb 2017 07:13:07 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr364641ljd.16.1488294786824;
        Tue, 28 Feb 2017 07:13:06 -0800 (PST)
Return-Path: <afaerber@suse.de>
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id v70si236602wmf.0.2017.02.28.07.13.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 07:13:06 -0800 (PST)
Received-SPF: pass (google.com: domain of afaerber@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of afaerber@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=afaerber@suse.de
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay1.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 23E37AD17;
	Tue, 28 Feb 2017 15:13:03 +0000 (UTC)
Subject: Re: [PATCH v3 11/25] ARM: dts: Add Actions Semi S500 and LeMaker
 Guitar
To: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>
References: <20170228063535.32069-1-afaerber@suse.de>
 <20170228063535.32069-12-afaerber@suse.de>
 <20170228123245.GF3691@leverpostej>
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 mp-cs@actions-semi.com, 96boards@ucrobotics.com, support@lemaker.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Linux GmbH
Message-ID: <11053e03-8e28-e93d-f1f6-2589a9f7800c@suse.de>
Date: Tue, 28 Feb 2017 16:13:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170228123245.GF3691@leverpostej>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi Mark,

Am 28.02.2017 um 13:32 schrieb Mark Rutland:
> On Tue, Feb 28, 2017 at 07:35:21AM +0100, Andreas Färber wrote:
>> +/dts-v1/;
>> +
>> +#include "s500-guitar.dtsi"
>> +
>> +/ {
>> +	compatible = "lemaker,guitar-bb-rev-b", "lemaker,guitar", "actions,s500";
>> +	model = "LeMaker Guitar Base Board rev. B";
>> +
>> +	aliases {
>> +		serial3 = &uart3;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial3:115200n8";
>> +	};
>> +};
>> +
>> +&uart3 {
>> +	status = "okay";
>> +};
> 
>> +#include "s500.dtsi"
>> +
>> +/ {
>> +	compatible = "lemaker,guitar", "actions,s500";
>> +
>> +	/delete-node/ memory;
> 
> Eww. Is this just bodging around skeleton.dtsi?

I guess so: Working around its hardcoded name without unit address, not
finding a /rename-node/ to that effect.

>> +
>> +	memory@0 {
>> +		device_type = "memory";
>> +		reg = <0x0 0x40000000>;
>> +	};
>> +};
> 
>> +#include "skeleton.dtsi"
> 
> Please don't include skeleton.dtsi.

Wasn't aware that was permissible. I now see it has been updated with a
textual comment, which predates my past uses of skeleton.dtsi - for
other pending work such as FM4 and XMC4500 I only noticed it was moved
out of armv7m.dtsi so that dtc started spewing scary messages. ;)

A #warning might be a more effective way to make people aware of its
deprecation - but sadly we have users that predate #include:

$ git grep /include/ -- arch/arm/boot/dts/ | grep skeleton.dtsi | wc --lines
32
$ git grep /include/ -- arch/arm/boot/dts/ | grep skeleton64.dtsi | wc
--lines
0
$ git grep skeleton -- arch/arm/boot/dts/ | wc --lines
117

Might updating those 32 users be a suitable Outreachy project (CC'ed),
to then get the remaining 85 occurrences to be eliminated by their
maintainers, so that it doesn't get copied for new SoCs any more? :)

> Please add the relevant nodes and
> properties explciitly to your dts{i,} files.

Great, will do.

But this series has grown too large to resend just for such nits. Is
there a chance we can get initial patches queued on some arm-soc
for-next branch soonish? It seems -rc1 pulls were merged 5 days ago?

Regards,
Andreas

-- 
SUSE Linux GmbH, Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nürnberg)

