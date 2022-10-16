Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63BB138F
	for <outreachy@lists.linux.dev>; Sun, 16 Oct 2022 14:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1665930236; bh=ND4/ku1HX/vuE7D6AU0aqju006Tg0M6Tg97lJPp12Vg=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=VdTpBXapdslhxCx24s63Du8hGHNHyl32xHqAq6ksYMSRiIOeafqllarXsZc2gXW6B
	 z+b0f27UZ7NchezDWsJeeec0gzw6cdvdpArGvZaKdFZryoxH0ASri2OTNyMAlnRkpy
	 ocylqTnLSYENfzf9qxQveRespyWWwQR8pSv20Kek=
Received: by b-2.in.mailobj.net [192.168.90.12] with ESMTP
	via [213.182.55.206]
	Sun, 16 Oct 2022 16:23:56 +0200 (CEST)
X-EA-Auth: ZXrGDv8Pf9sUiKwpSrm3yiJ7rEslDPmg9sU1Y9mzpaEPoaArZCiQ2EuFgn97k8hs4s0VGtI4A/QyXjyA1IK9mfsU7xefDjNX
Date: Sun, 16 Oct 2022 10:23:52 -0400
From: Deepak R Varma <drv@mailo.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: trouble booting into staging kernel
Message-ID: <Y0wT+HAFkhsGHPo4@debian-BULLSEYE-live-builder-AMD64>
References: <Y0MKHfWsqsh4S9ld@lion>
 <Y0MnTOcGeoVeVIXg@lion>
 <Y0ch7rDCJoTKgMac@vivasvan>
 <2118793.irdbgypaU6@mypc>
 <Y0g/GcAiosb3JJ/z@lion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0g/GcAiosb3JJ/z@lion>

On Thu, Oct 13, 2022 at 10:08:49PM +0530, Deepak R Varma wrote:
> On Thu, Oct 13, 2022 at 04:59:38PM +0200, Fabio M. De Francesco wrote:
> > On Wednesday, October 12, 2022 10:22:06 PM CEST Deepak R Varma wrote:
> > > On Mon, Oct 10, 2022 at 01:25:56AM +0530, Deepak R Varma wrote:
> > > > On Sun, Oct 09, 2022 at 09:12:37PM +0200, Julia Lawall wrote:
> >
> > [snip]
> > ,
> > > I realized that working with the certificates is very complex.
> >
> > I entirely agree with you :-)
> >
> > > > Create your own secure boot signing certificate without such an EKU, enroll
> > it into either mok or db, and use it for signing.
> >
> > Time ago the following documents from openSUSE finally helped me to understand
> > how secure boot works and how to create and add my keys to boot custom kernels
> > and modules:
> >
> > https://en.opensuse.org/openSUSE:UEFI
> > https://doc.opensuse.org/documentation/leap/reference/html/book-reference/cha-uefi.html
>
> Hello Fabio,
> Thank you for the guidance and sharing the openSUSE doc links. I will read the
> information available here. However, your following suggestion of taking the VM
> route sounds better considering the internship timelines. I will do this first
> and then revisit the openSUSE docs alongside/later.

Hello Fabio,
I was able to set up VMPlayer accoring to the instructions, build my kernel
release and submit my first patch. Thank you very much for the guidance and
helping me move forward.

I did attempt the openSUSE docs you shared and they were indeed very helpful. I
will attempt to follow the instruction on a separate machine and when I have
some time.

Thanks again.
./drv

>
> Thanks much,
> ./drv
> >
> > After some time I realized that I don't need secure boot enabled when I boot
> > my kernels and modules on several QEMU/KVM VMs (the guests) for testing
> > patches. It's easier, faster, and I avoid the risk to hang or bring down the
> > host, or worst, to corrupt the filesystems in the partitions of the "real"
> > machine (the host) (these days my tasks are related to converting call sites
> > which still uses old memory management API across the whole kernel, especially
> > in file systems code).
> >
> > This way I still have an host always booting with secure boot, and several
> > VMs for testing patches for various archs (32 and 64 bits virtual machines).
> >
> > I'd suggest to not disable secure boot in your host, since it's really useful
> > for whoever cares security. Instead you should run custom kernels in VMs and
> > just disable secure boot in guests.
> >
> > Regards,
> >
> > Fabio
> >
> >
> >
> >
> >
>
>
>


