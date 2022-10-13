Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E2E20E3
	for <outreachy@lists.linux.dev>; Thu, 13 Oct 2022 05:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=XyZueHESlzE35SNy/+CBjz2y+sAPqqDHJmZ3G4r8yyM=;
  b=prBz4fv5EVSkeBJtc1GoxgWHCCb/fHdkgtdAJFlBtYU7hFERBmsYJU0u
   nUjgyUFmQ4WFB2M5P3mk9lfR2pY81HuWMvVU4tzrg5KOqc7ufXSrfWZAD
   hcIqF8RFz1m/zItmm8TFfBrtTo69lDbOSsLTQoKGW/nYsfwyNLHFgWNH1
   8=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,180,1661810400"; 
   d="scan'208";a="29364975"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2022 07:21:56 +0200
Date: Thu, 13 Oct 2022 07:21:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <drv@mailo.com>
cc: outreachy@lists.linux.dev
Subject: Re: trouble booting into staging kernel
In-Reply-To: <Y0ch7rDCJoTKgMac@vivasvan>
Message-ID: <alpine.DEB.2.22.394.2210130721240.2822@hadrien>
References: <Y0MKHfWsqsh4S9ld@lion> <alpine.DEB.2.22.394.2210091955410.21609@hadrien> <Y0Mao9czSNX+WrHh@lion> <alpine.DEB.2.22.394.2210092112170.21609@hadrien> <Y0MnTOcGeoVeVIXg@lion> <Y0ch7rDCJoTKgMac@vivasvan>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 13 Oct 2022, Deepak R Varma wrote:

> On Mon, Oct 10, 2022 at 01:25:56AM +0530, Deepak R Varma wrote:
> > On Sun, Oct 09, 2022 at 09:12:37PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Mon, 10 Oct 2022, Deepak R Varma wrote:
> > >
> > > > On Sun, Oct 09, 2022 at 07:56:51PM +0200, Julia Lawall wrote:
> > > > >
> > > > >
> > > > > On Sun, 9 Oct 2022, Deepak R Varma wrote:
> > > > >
> > > > > > Hello,
> > > > > > I am natively running 5.15.0-48-generic on my HP Laptop with Secure boot on. I
> > > > > > tried to follow the Kernel First patch tutorial steps and managed to build
> > > > > > Kernel release 6.0.0rc4. There were issues during the module building associated
> > > > > > with the certificates / signing of the modules. I got those supressed by
> > > > > > emptying the following two config parameters as copied over from the native
> > > > > > config file:
> > > > > >
> > > > > > CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"
> > > > > > CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem"
> > > > > >
> > > > > > set to new value
> > > > > >
> > > > > > CONFIG_SYSTEM_TRUSTED_KEYS=""
> > > > > > CONFIG_SYSTEM_REVOCATION_KEYS=""
> > > > > >
> > > > > > The build was successful, however, I am unable to boot into my new kernel and
> > > > > > have received following errors:
> > > > > >
> > > > > > error: bad shim signature
> > > > > > Loading initial ramdisk
> > > > > > error: you need to load the kernel first
> > > > > >
> > > > > > I tried to seek from net, but did not find any workable resolution. Can you
> > > > > > please suggested how can I correct this error or if I missed any steps?
> > > > >
> > > > > Maybe you have to remove secure boot?  I have the impression that I did
> > > > > that on one of my machines, but I don't have that machine in front of me.
> > > >
> > > > Thank you for the quick response. I did try disabling the secure boot option and
> > > > also cleared the certificate DB. Tried a few combinations of these options.
> > > > Unfortunately, nothing helped so far.
> > >
> > > Did you try what is described here?
> > >
> > > https://unix.stackexchange.com/questions/701612/cant-load-self-signed-kernel-with-secure-boot-on-bad-shim-signature
> >
> > I am planning to do the following from this link next. I will let you know how
> > it goes.
>
> Hi Julia,
> I realized that working with the certificates is very complex. I also encountered
> additional issues during module building step. It's looking good now. I was able
> to get past the module singing issues during the installation steps using this [1]
> link. However, I am now unable to load the kernel image since it is not signed.
> I am going to attempt to sign the image and also add the certificate to the db.
> Hopefully that will be the last step before I can proceed to sharing my first
> patch.
>
> [1]: https://github.com/andikleen/simple-pt/issues/8

Maybe it would be worth retrying the option of disabling secure boot?

julia

>
> Thank you,
> ./drv
>
> >
> > Create your own secureboot signing certificate without such an EKU, enroll it into either mok or db, and use it for signing.
> >
> > Thank you,
> > ./drv
> >
> > >
> > > julia
> > >
> > > >
> > > > Let me know if I should share any of the files / logs from my system for your
> > > > review.
> > > >
> > > > >
> > > > > Welcome, by the way :)
> > > >
> > > > Thank you Julia. Pleased to be part of this internship challenge.
> > > >
> > > > ./drv
> > > >
> > > > >
> > > > > julia
> > > >
> > > >
> > > >
> > >
> >
> >
> >
>
>
>
