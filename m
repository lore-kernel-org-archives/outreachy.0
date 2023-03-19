Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F0B7E6
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=sKxWzxxPpqHcGIKk/6tohsfSldQncki3ufcsADByoTM=;
  b=QduDNy8sSkzI+CokHBHgjcgzqNCVVJipwU0HG6D1YHFP7372d6PZsn46
   IBOO9dlUiaa4oovlqIr6SNBIqfJ+kDJrHy/tYxgadnhE2tANC6UGeQ0JJ
   9MZW859Rk3HVyYYiZrn70Ae5ZUwroQUMKpi9FI5x7Kyc/zm8DL/FXB1Tu
   E=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,273,1673910000"; 
   d="scan'208";a="50607288"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 13:36:51 +0100
Date: Sun, 19 Mar 2023 13:36:51 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: Bagas Sanjaya <bagasdotme@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
In-Reply-To: <20230319121026.GA53959@sumitra.com>
Message-ID: <alpine.DEB.2.22.394.2303191336090.2867@hadrien>
References: <ZBWA3rb9nVP8ho05@debian.me> <20230318121508.GA37278@sumitra.com> <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com> <20230318124937.GA39892@sumitra.com> <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com> <20230318175746.GB49651@sumitra.com>
 <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com> <20230319083256.GB50179@sumitra.com> <alpine.DEB.2.22.394.2303190938080.2867@hadrien> <alpine.DEB.2.22.394.2303190956120.2867@hadrien> <20230319121026.GA53959@sumitra.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Mar 2023, Sumitra Sharma wrote:

> On Sun, Mar 19, 2023 at 09:56:33AM +0100, Julia Lawall wrote:
> > Maybe try make tegra_defconfig
> >
>
> Hi,
>
> Error: Can't find default configuration "arch/x86/configs/tegra_defconfig"!

make ARCH=arm tegra_defconfig

You can see that because find . -name tegra_defconfig gives:

./arch/arm/configs/tegra_defconfig

julia


>
> REgards,
> SUmitra
>
> > julia
>
