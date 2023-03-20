Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04331846
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 09:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1679303955; bh=tBi6td1jmhY5HFtfBbuZyYeZdK6VzE/3ivIp7HjVKWM=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To;
	b=jv76no2J5NJO41HVNv3PyucKQ5XaiQOgGGnaSRf0Hgkj/ymS6umf2ro4tuBRMRgI9
	 NPOIcLbemh4XV2VuyB4JKmp2hJ458SuXmrKhim71pHbLdGAtQm316OXFZQAdVceGTa
	 cXVkrGzHUxdbCrmcHpXVAbUZU7FSTc2Uao2xAEM4=
Received: by b221-3.in.mailobj.net [192.168.90.23] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Mon, 20 Mar 2023 10:19:15 +0100 (CET)
X-EA-Auth: /T5EcYVxlQ+8GpOy9IRYe6kLnJyk3MyXW2H5Hzp5JnZplzhZgSudm+iExAiRRMb5OGD5QrhVp8DugwI3jT0/ynp7iAlp06ry
Date: Mon, 20 Mar 2023 14:49:11 +0530
From: Deepak R Varma <drv@mailo.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <ZBglD5yEm2Qb40qf@ubun2204.myguest.virtualbox.org>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>
 <20230318130211.GB39892@sumitra.com>
 <ZBXh98I11pj38Jy2@ubun2204.myguest.virtualbox.org>
 <20230319084520.GC50179@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230319084520.GC50179@sumitra.com>

On Sun, Mar 19, 2023 at 01:45:20AM -0700, Sumitra Sharma wrote:
> On Sat, Mar 18, 2023 at 09:38:23PM +0530, Deepak R Varma wrote:
> > On Sat, Mar 18, 2023 at 06:02:11AM -0700, Sumitra Sharma wrote:
> > > On Sat, Mar 18, 2023 at 02:43:21PM +0530, Deepak R Varma wrote:
> > > > On Sat, Mar 18, 2023 at 01:40:48AM -0700, Sumitra Sharma wrote:
> > > > You will need to use a arch specific config file and cross compile to configure
> > > > and build this driver module.
> > > > I just tried it with arch/arm64/configs/defconfig file and the
> > > > aarch64-linux-gnu- compiler for my host system and was able to configure the
> > > > driver for build.
> > > >
> > > 
> > > Hi deepak,
> > > 
> > > Can you tell me command you are using because when adding the
> > > arch/arm64/configs/defconfig file. I am receiving the invalid options
> > > error.
> > 
> > Did you follow Sanjaya's instruction on cleaning your source directory? Once
> > that is done, I suggest enabling necessary configurations using the arch
> > specific config file and then run a full build. Make sure the build is all
> > successful and the module's .ko file is generated.
> >
> 
> Hi deepak,
> 
> Yes I did the cleanup. But I am unable to enable the below driver as
> module 'M' when running the command 'make menuconfig' or 'make
> menuconfig ~/git/kernels/staging/arch/arm64/configs/defconfig'. It is
> because I am not able to locate it under staging drivers.

what is your Linux distro and host architecture?

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
> > Deepak.
> > 
> > > 
> > > It will be of much help. Thank you.
> > > 
> > > Regards,
> > > 
> > > Sumitra
> > > 
> > > > Deepak.
> > > > 
> > > > 
> > > > 
> > > > > 
> > > > >   Regards,
> > > > >   
> > > > >   Sumitra
> > > > > 
> > > > > 
> > > > 
> > > > 
> > > 
> > 
> > 
> 


