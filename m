Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F151383
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 09:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=pyAxuIVpFZyCO8G07/DinJW/Nv5GyvfHbLSYRsWWfBs=;
  b=RvnTGacYzrxGHaHnnjAFlR3+1wdYuQsJkqjlEQZkL69f8lMR/rV5i0Ca
   wmt/vMuGDT6gdM5xEmG1oUHUo9FK5U17D6mjf7HcQpQ8TgKbGen/CLZ6h
   1gtDaFLMnve2CYFpuBPiwtj21DY01JyzBudo2IlDxo9MI2LdGRBu81r6h
   o=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,274,1673910000"; 
   d="scan'208";a="50655285"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 10:03:15 +0100
Date: Mon, 20 Mar 2023 10:03:14 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: Bagas Sanjaya <bagasdotme@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
In-Reply-To: <20230320084630.GB126429@sumitra.com>
Message-ID: <da5bf7f-b8b5-143-8e58-9c1dc4214fad@inria.fr>
References: <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com> <20230318124937.GA39892@sumitra.com> <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com> <20230318175746.GB49651@sumitra.com> <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com> <20230319083256.GB50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190938080.2867@hadrien> <alpine.DEB.2.22.394.2303190956120.2867@hadrien> <20230319121026.GA53959@sumitra.com> <alpine.DEB.2.22.394.2303191336090.2867@hadrien> <20230320084630.GB126429@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Mar 2023, Sumitra Sharma wrote:

> On Sun, Mar 19, 2023 at 01:36:51PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 19 Mar 2023, Sumitra Sharma wrote:
> >
> > > On Sun, Mar 19, 2023 at 09:56:33AM +0100, Julia Lawall wrote:
> > > > Maybe try make tegra_defconfig
> > > >
> > >
> > > Hi,
> > >
> > > Error: Can't find default configuration "arch/x86/configs/tegra_defconfig"!
> >
> > make ARCH=arm tegra_defconfig
> >
> > You can see that because find . -name tegra_defconfig gives:
> >
> > ./arch/arm/configs/tegra_defconfig
> >
>
> Hi julia,
>
> This did worked.
>
> But the main issue of creating NVEC_PAZ00 a module using make menuconfig still persist.

Try make ARCH=arm tegra_defconfig menuconfig

julia

>
> Regards,
>
> Sumitra
>
> > julia
> >
> >
> > >
> > > REgards,
> > > SUmitra
> > >
> > > > julia
> > >
>
