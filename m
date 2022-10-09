Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8B12579
	for <outreachy@lists.linux.dev>; Sun,  9 Oct 2022 19:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=55WmVYt35t2uUUe5Akgt0mlFS+CTSveWPOjFaS8Gn2A=;
  b=Uu4FWZX9DpEFRSmvGGgvtL4rHhCGu3E8Faj0Etl6HDq88EhpdCpfZq4e
   LvSiW6x3XVwCvSpv7jLtNru0zbPTLBTv4MhocMXUig2mAEmJkDLHaC2ii
   CsqY86bfvJLbqfB0y5U5NENcHbpuF2u9wo/xzAwMlAKVlGSaOPzZe2WRd
   U=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,172,1661810400"; 
   d="scan'208";a="56690911"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2022 21:12:38 +0200
Date: Sun, 9 Oct 2022 21:12:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <drv@mailo.com>
cc: outreachy@lists.linux.dev
Subject: Re: trouble booting into staging kernel
In-Reply-To: <Y0Mao9czSNX+WrHh@lion>
Message-ID: <alpine.DEB.2.22.394.2210092112170.21609@hadrien>
References: <Y0MKHfWsqsh4S9ld@lion> <alpine.DEB.2.22.394.2210091955410.21609@hadrien> <Y0Mao9czSNX+WrHh@lion>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 10 Oct 2022, Deepak R Varma wrote:

> On Sun, Oct 09, 2022 at 07:56:51PM +0200, Julia Lawall wrote:
> >
> >
> > On Sun, 9 Oct 2022, Deepak R Varma wrote:
> >
> > > Hello,
> > > I am natively running 5.15.0-48-generic on my HP Laptop with Secure boot on. I
> > > tried to follow the Kernel First patch tutorial steps and managed to build
> > > Kernel release 6.0.0rc4. There were issues during the module building associated
> > > with the certificates / signing of the modules. I got those supressed by
> > > emptying the following two config parameters as copied over from the native
> > > config file:
> > >
> > > CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"
> > > CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem"
> > >
> > > set to new value
> > >
> > > CONFIG_SYSTEM_TRUSTED_KEYS=""
> > > CONFIG_SYSTEM_REVOCATION_KEYS=""
> > >
> > > The build was successful, however, I am unable to boot into my new kernel and
> > > have received following errors:
> > >
> > > error: bad shim signature
> > > Loading initial ramdisk
> > > error: you need to load the kernel first
> > >
> > > I tried to seek from net, but did not find any workable resolution. Can you
> > > please suggested how can I correct this error or if I missed any steps?
> >
> > Maybe you have to remove secure boot?  I have the impression that I did
> > that on one of my machines, but I don't have that machine in front of me.
>
> Thank you for the quick response. I did try disabling the secure boot option and
> also cleared the certificate DB. Tried a few combinations of these options.
> Unfortunately, nothing helped so far.

Did you try what is described here?

https://unix.stackexchange.com/questions/701612/cant-load-self-signed-kernel-with-secure-boot-on-bad-shim-signature

julia

>
> Let me know if I should share any of the files / logs from my system for your
> review.
>
> >
> > Welcome, by the way :)
>
> Thank you Julia. Pleased to be part of this internship challenge.
>
> ./drv
>
> >
> > julia
>
>
>
