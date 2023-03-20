Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B25D1846
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 10:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1679307371; bh=GazmdOQhuxFTx1kmo4GBh8kJDb7GO6aNlHOztQKE9WU=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To;
	b=gVp0qSssKNE+Sz2S32lCl3FvKYgG0r2PCHs3BwUxkv+06yLFav7vtOx79q/es7NYt
	 lOHPH/MLHYpo1H9M7fmkC/3t/+PBqmoQKrK8hc9NsLe9hUNtnLiJ1b4mmvOogLnKUD
	 iPNBanJi0RD5ZCOoBlRaD01dAxGM922/LFTIliWA=
Received: by b221-6.in.mailobj.net [192.168.90.26] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Mon, 20 Mar 2023 11:16:11 +0100 (CET)
X-EA-Auth: 1QK02JPjPQ8yL4JOtb+ETUIkkehKxfKB2bUaNmP2F5E+jrduGWlGn2TgW3OyCMQPo0JuNVPDNxmLmX/azh7fYGVQ6kdhzfyk
Date: Mon, 20 Mar 2023 15:46:07 +0530
From: Deepak R Varma <drv@mailo.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <ZBgyZz0c70QQAQax@ubun2204.myguest.virtualbox.org>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>
 <20230318130211.GB39892@sumitra.com>
 <ZBXh98I11pj38Jy2@ubun2204.myguest.virtualbox.org>
 <20230319084520.GC50179@sumitra.com>
 <ZBglD5yEm2Qb40qf@ubun2204.myguest.virtualbox.org>
 <20230320100216.GD126429@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230320100216.GD126429@sumitra.com>

On Mon, Mar 20, 2023 at 03:02:16AM -0700, Sumitra Sharma wrote:
> On Mon, Mar 20, 2023 at 02:49:11PM +0530, Deepak R Varma wrote:
> > On Sun, Mar 19, 2023 at 01:45:20AM -0700, Sumitra Sharma wrote:
> > > On Sat, Mar 18, 2023 at 09:38:23PM +0530, Deepak R Varma wrote:
> > > > On Sat, Mar 18, 2023 at 06:02:11AM -0700, Sumitra Sharma wrote:
> > > > > On Sat, Mar 18, 2023 at 02:43:21PM +0530, Deepak R Varma wrote:
> > > > > > On Sat, Mar 18, 2023 at 01:40:48AM -0700, Sumitra Sharma wrote:
> > > > > > You will need to use a arch specific config file and cross compile to configure
> > > > > > and build this driver module.
> > > > > > I just tried it with arch/arm64/configs/defconfig file and the
> > > > > > aarch64-linux-gnu- compiler for my host system and was able to configure the
> > > > > > driver for build.
> > > > > >
> > > > > 
> > > > > Hi deepak,
> > > > > 
> > > > > Can you tell me command you are using because when adding the
> > > > > arch/arm64/configs/defconfig file. I am receiving the invalid options
> > > > > error.
> > > > 
> > > > Did you follow Sanjaya's instruction on cleaning your source directory? Once
> > > > that is done, I suggest enabling necessary configurations using the arch
> > > > specific config file and then run a full build. Make sure the build is all
> > > > successful and the module's .ko file is generated.
> > > >
> > > 
> > > Hi deepak,
> > > 
> > > Yes I did the cleanup. But I am unable to enable the below driver as
> > > module 'M' when running the command 'make menuconfig' or 'make
> > > menuconfig ~/git/kernels/staging/arch/arm64/configs/defconfig'. It is
> > > because I am not able to locate it under staging drivers.
> > 
> > what is your Linux distro and host architecture?
> >
> 
> VM linux distro = Ubuntu 20.04 64-bit version
> Host architecture = windows 11 x64

Try the following steps and let me know if you are able to select and configure
the dependencies and the driver you wish to build:

   cd /path/to/linux/source/
   cp .config .config_x86_64
   cp arch/arm64/configs/defconfig .config
   make ARCH=arm64 CROSS_COMPILE=<<arm64 gcc compiler binary path>> menuconfig

Note: you first need to resolve the dependencies and then you will be presented
the selection option for your driver.

Once you configure the driver, run following to build the Kernel image and
should include your driver as well:
   make ARCH=arm64 CROSS_COMPILE=<<arm64 gcc compiler binary path>> 


Deepak.


> 
> REgards,
> SUmitra
> 
> > > 
> > >   │                                                                                                                  │
> > >   │ Symbol: NVEC_PAZ00 [=n]                                                                                          │
> > >   │ Type  : tristate                                                                                                 │
> > >   │ Defined at drivers/staging/nvec/Kconfig:45                                                                       │
> > >   │   Prompt: Support for OEM specific functions on Compal PAZ00 based devices                                       │
> > >   │   Depends on: STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y]                                                   │
> > >   │   Location:                                                                                                      │
> > >   │     -> Device Drivers                                                                                            │
> > >   │ (3)   -> Staging drivers (STAGING [=y])                                                                          │
> > >   │         -> NV Tegra Embedded Controller SMBus Interface (MFD_NVEC [=n])                                          │
> > >   │           -> Support for OEM specific functions on Compal PAZ00 based devices (NVEC_PAZ00 [=n])
> > > 
> > > > Deepak.
> > > > 
> > > > > 
> > > > > It will be of much help. Thank you.
> > > > > 
> > > > > Regards,
> > > > > 
> > > > > Sumitra
> > > > > 
> > > > > > Deepak.
> > > > > > 
> > > > > > 
> > > > > > 
> > > > > > > 
> > > > > > >   Regards,
> > > > > > >   
> > > > > > >   Sumitra
> > > > > > > 
> > > > > > > 
> > > > > > 
> > > > > > 
> > > > > 
> > > > 
> > > > 
> > > 
> > 
> > 


