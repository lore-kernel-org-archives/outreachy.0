Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9995B1861
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 13:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Bpart64AamyKZaPVj6bZYYb6lFFEptqJxgSVXjNxIgI=;
  b=S4rPrBmd497jql1T35DflvKOwbdPg3dSlUiAbf9ycZ2mXcnjsCSbhl7u
   WU9b/vmojwByPp38DcHfhINZo0uoTgT8WtQnPhcKWzcIZ5XD9EWTLDWmj
   458xQyHeLmx/BwrXJmzCRD48Evr0jxO3HIOFrtVp6aKADm9cnPFmJGS+p
   A=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,274,1673910000"; 
   d="scan'208";a="98085762"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 14:04:30 +0100
Date: Mon, 20 Mar 2023 14:04:30 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: Bagas Sanjaya <bagasdotme@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
In-Reply-To: <20230320095314.GC126429@sumitra.com>
Message-ID: <e13532cc-d9da-5090-7731-5d3945d7564c@inria.fr>
References: <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com> <20230318175746.GB49651@sumitra.com> <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com> <20230319083256.GB50179@sumitra.com> <alpine.DEB.2.22.394.2303190938080.2867@hadrien>
 <alpine.DEB.2.22.394.2303190956120.2867@hadrien> <20230319121026.GA53959@sumitra.com> <alpine.DEB.2.22.394.2303191336090.2867@hadrien> <20230320084630.GB126429@sumitra.com> <da5bf7f-b8b5-143-8e58-9c1dc4214fad@inria.fr>
 <20230320095314.GC126429@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Mar 2023, Sumitra Sharma wrote:

> >>On Mon, 20 Mar 2023, Bagas Sanjaya wrote:
>
> > On 3/20/23 15:46, Sumitra Sharma wrote:
> > > Hi julia,
> > >
> > > This did worked.
> > >
> > > But the main issue of creating NVEC_PAZ00 a module using make menuconfig still persist.
> > >
> >
> >> Oh dear, you don't know how to use menuconfig...
> >>
> >> When you execute `make menuconfig`, you'll be presented with menu when
> >> you can choose what config you want to enable. To find the desired config
> >> (NVEC_PAZ00 in this case), press `/` and type in the config name. If
> >> found, you will see menu location for config symbols that match. Then
> >> follow the shown path.
>
> > Actually, this isn't the issue.  You have to have the ARCH=arm as well.
> > Otherwise, / provides instructions, but there is no way to follow them.
>
> Yes you are correct locating the mocule in menuconfig is my issue. Do you mean 'make menuconfig ARCH=arm'.

I have never tried that order.  make ARCH=arm tegra_defconfig menuconfig
should work.  Maybe other options work also.  Arm has a lot of specific
configurations.

julia

>
> Sorry for such a long thread. :(
>
> Regards,
> Sumitra
>
>
>
>
>
