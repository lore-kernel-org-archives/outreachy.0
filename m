Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D492C9D
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 16:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1679155710; bh=sMv4gjTYBcFk1ANdImknKOR33agQM9FDf7eW1Ito/4Y=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=WH0NONO9xfyXjHQi1tEWqwVw4ksFgvKQGkdnFSCMQk7PYmBm3LvUNOwwwecFzgenm
	 mcRdowmY+flEI1RgXekdYZht/FIbqy8+mtRucf0DVGtoqQ8MInkWShiutHpbFdzjX0
	 313BpoLnGPyEYmPfzrIUrpx9fkv9lpSULG1qB0r0=
Received: by b221-4.in.mailobj.net [192.168.90.24] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Sat, 18 Mar 2023 17:08:30 +0100 (CET)
X-EA-Auth: luPNaL5ulNSavQbx8DmEtcIbkjIHxo9hxMu6cIkMcaifUoZZLBDzDNg6y500SV0xBP69GuVH3RkRtWuEivt8ukVl0QYL20dl
Date: Sat, 18 Mar 2023 21:38:23 +0530
From: Deepak R Varma <drv@mailo.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <ZBXh98I11pj38Jy2@ubun2204.myguest.virtualbox.org>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>
 <20230318130211.GB39892@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230318130211.GB39892@sumitra.com>

On Sat, Mar 18, 2023 at 06:02:11AM -0700, Sumitra Sharma wrote:
> On Sat, Mar 18, 2023 at 02:43:21PM +0530, Deepak R Varma wrote:
> > On Sat, Mar 18, 2023 at 01:40:48AM -0700, Sumitra Sharma wrote:
> > You will need to use a arch specific config file and cross compile to configure
> > and build this driver module.
> > I just tried it with arch/arm64/configs/defconfig file and the
> > aarch64-linux-gnu- compiler for my host system and was able to configure the
> > driver for build.
> >
> 
> Hi deepak,
> 
> Can you tell me command you are using because when adding the
> arch/arm64/configs/defconfig file. I am receiving the invalid options
> error.

Did you follow Sanjaya's instruction on cleaning your source directory? Once
that is done, I suggest enabling necessary configurations using the arch
specific config file and then run a full build. Make sure the build is all
successful and the module's .ko file is generated.

Deepak.

> 
> It will be of much help. Thank you.
> 
> Regards,
> 
> Sumitra
> 
> > Deepak.
> > 
> > 
> > 
> > > 
> > >   Regards,
> > >   
> > >   Sumitra
> > > 
> > > 
> > 
> > 
> 


