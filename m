Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956877B
	for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 10:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=z0mMJjVS9qX154lCABYrh/4ZUEoNeJLPb7aArLsHxn8=;
  b=YEQfEd/UOb92ADgPQcjmzJXKRkFTRNaIOdZvqxAxO59m2yXHMehYr4R0
   PtkAs6N/zvNTu8ykNTTs+HuorBTFSMEJiGysZDzcXkoCW7Wvp8YiKXKQB
   cnoxBnrlo0IPVC8H08DoeN6ShNaMCvqQqWVcD8/AFGZzfTZZH+hyIlSF1
   4=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,252,1673910000"; 
   d="scan'208";a="49875010"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2023 11:33:18 +0100
Date: Sat, 11 Mar 2023 11:33:18 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev, julia.lawall@inria.fr
Subject: Re: Help in loading modules
In-Reply-To: <20230311102824.GA14247@ubuntu>
Message-ID: <alpine.DEB.2.22.394.2303111132320.2802@hadrien>
References: <20230311102824.GA14247@ubuntu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1111151851-1678530798=:2802"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1111151851-1678530798=:2802
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT



On Sat, 11 Mar 2023, Sumitra Sharma wrote:

> More information:
>
> Upon running the "dmesg" it shows
> ##
> BPF: 	Invalid name_offset:2154618
> [ 2905.429687] failed to validate module [pi433] BTF: -22
> ##
>
> Also I checked under "/lib/modules/`uname -r`" in the "modules.dep" file it do contains the  "kernel/drivers/staging/pi433/pi433.ko:".
>
> I also tried running "sudo insmod ./kernel/drivers/staging/pi433/pi433.ko" which again prints the error:
>
> ##
> insmod: ERROR: could not insert module ./kernel/drivers/staging/pi433/pi433.ko: Invalid parameters
> ##
>
> Other than these I also checked the ".config" which contains:
>
> ##
> CONFIG_SPI=y
> CONFIG_STAGING=y
> CONFIG_PI433=m
> ##
>
> where the module dependencies were given as
>
> Symbol: PI433 [=m]                                                                                               │
>   │ Type  : tristate                                                                                                 │
>   │ Defined at drivers/staging/pi433/Kconfig:2                                                                       │
>   │   Prompt: Pi433 - a 433MHz radio module for Raspberry Pi                                                         │
>   │   Depends on: STAGING [=y] && SPI [=y]                                                                           │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers                                                                                            │
>   │       -> Staging drivers (STAGING [=y])                                                                          │
>   │ (1)     -> Pi433 - a 433MHz radio module for Raspberry Pi (PI433 [=m])

Maybe it is not possible to install the module if you don't have the
device.  For staging code, it is likely only possible to verify that it
compiles properly.

julia
--8323329-1111151851-1678530798=:2802--
