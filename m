Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85245A4D
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 09:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1679130807; bh=Pifl1ecPxP5V+CszhZr4KtzkDhwr5Zwi5ry4Oy+cslA=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To;
	b=mkZAubZXpGRBREWFkWwvUX26/xD3HegVtYzG1USFlqGkoxLN5TweE44OXf+ua8aCV
	 RjpB5Sm+i0hQoVEykxoRK4thWFG5i4dSx1WaXn6xjLBtS8YMISjeh5ak+E5/HrAiIF
	 Hiu1OjWJ8KtCu+/jK3uL89HsiToeRt3q/tH/+bko=
Received: by b221-1.in.mailobj.net [192.168.90.21] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Sat, 18 Mar 2023 10:13:27 +0100 (CET)
X-EA-Auth: F5Q9mfWeHRCndkHti32tvpC43kHv/2YeKNqtFI1lK5R3gNSByu5lbcRUS11GFQc2oZQNvVp8EzCS7HW9NeNqcryhp5DK9QGX
Date: Sat, 18 Mar 2023 14:43:21 +0530
From: Deepak R Varma <drv@mailo.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>
References: <20230318084048.GC4434@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230318084048.GC4434@sumitra.com>

On Sat, Mar 18, 2023 at 01:40:48AM -0700, Sumitra Sharma wrote:
> Hi,
> 
> I was trying to recopmile the driver using the command "make menuconfig".
> This opens the text-based UI and I wanted to locate and make NVEC_PAZ00
> as a module whose location is as follows:
> 
>   │                                                                                                                  │
>   │ Symbol: NVEC_PAZ00 [=n]                                                                                          │
>   │ Type  : tristate                                                                                                 │
>   │ Defined at drivers/staging/nvec/Kconfig:45                                                                       │
>   │   Prompt: Support for OEM specific functions on Compal PAZ00 based devices                                       │
>   │   Depends on: STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y]                                                   │
>   │   Location:                                                                                                      │
>   │     -> Device Drivers                                                                                            │
>   │ (3)   -> Staging drivers (STAGING [=y])                                                                          │
>   │         -> NV Tegra Embedded Controller SMBus Interface (MFD_NVEC [=n])                                          │
>   │           -> Support for OEM specific functions on Compal PAZ00 based devices (NVEC_PAZ00 [=n])
> 
>   But under "Staging drivers" there is no such thing called "NV Tegra Embedded Controller SMBus Interface (MFD_NVEC [=n])".
> 
>   --- Staging drivers                                                                       │ │
>   │ │                    < >   RealTek RTL8192U Wireless LAN NIC driver                                            │ │
>   │ │                    < >   Support for rtllib wireless devices                                                 │ │
>   │ │                    < >   Realtek PCI-E Card Reader RTS5208/5288 support                                      │ │
>   │ │                    < >   Silicon Motion SM750 framebuffer support                                            │ │
>   │ │                    [*]   Media staging drivers  ----                                                         │ │
>   │ │                    < >   GCT GDM724x LTE support                                                             │ │
>   │ │                    < >   Support for small TFT LCD display modules  ----                                     │ │
>   │ │                    < >   KeyStream KS7010 SDIO support                                                       │ │
>   │ │                    <M>   Pi433 - a 433MHz radio module for Raspberry Pi                                      │ │
>   │ │                    < >   Fieldbus Device Support  ----                                                       │ │
>   │ │                    <M>   QLogic QLGE 10Gb Ethernet Driver Support                                            │ │
>   │ │                    [*]   VME bridge support  --->
>   
> 
>   Kindly guide me through this.

Hi Sumitra,
You will need to use a arch specific config file and cross compile to configure
and build this driver module.
I just tried it with arch/arm64/configs/defconfig file and the
aarch64-linux-gnu- compiler for my host system and was able to configure the
driver for build.

Deepak.



> 
>   Regards,
>   
>   Sumitra
> 
> 


