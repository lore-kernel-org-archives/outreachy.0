Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE597B
	for <outreachy@lists.linux.dev>; Thu, 13 Oct 2022 08:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1665650682; bh=xuqQFA3MyGoX4x3T62wn8mN//5WYgEUCS1qQeDPdxO4=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=hw78qR28KEeKL9K1D2p6e3gLl5H/WyMHic+66f1YS7bL8KfryLfL/nO6uzxKMy539
	 YkLzLfBj+uTn7xma3uZLXBc3FZuTAl2ICz7HaXvbm9aG1Y3CqgBNMyaieOH5B0EoyC
	 talcIQGWWZmo6VVIIjlVKwt/EksBvf93Va2RgVEM=
Received: by b-3.in.mailobj.net [192.168.90.13] with ESMTP
	via [213.182.55.206]
	Thu, 13 Oct 2022 10:44:42 +0200 (CEST)
X-EA-Auth: 6ulpBH8l1+t+t/6EemBA5TdkHvuVsU6Uo6G8kk/AuqMRrKVzcVmGoHVmDdbMVmkvgkMNXQ0DSfi4YQzcj1mb0iquiIe0/sNB
Date: Thu, 13 Oct 2022 14:14:38 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: trouble booting into staging kernel
Message-ID: <Y0fP9qbz+7x2pCfU@lion>
References: <Y0MKHfWsqsh4S9ld@lion>
 <alpine.DEB.2.22.394.2210091955410.21609@hadrien>
 <Y0Mao9czSNX+WrHh@lion>
 <alpine.DEB.2.22.394.2210092112170.21609@hadrien>
 <Y0MnTOcGeoVeVIXg@lion>
 <Y0ch7rDCJoTKgMac@vivasvan>
 <alpine.DEB.2.22.394.2210130721240.2822@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2210130721240.2822@hadrien>

On Thu, Oct 13, 2022 at 07:21:55AM +0200, Julia Lawall wrote:
>
>
> On Thu, 13 Oct 2022, Deepak R Varma wrote:
>
> > On Mon, Oct 10, 2022 at 01:25:56AM +0530, Deepak R Varma wrote:
> > > On Sun, Oct 09, 2022 at 09:12:37PM +0200, Julia Lawall wrote:
> > > >
> > > >
> > > > On Mon, 10 Oct 2022, Deepak R Varma wrote:
> > > >
> > > > > On Sun, Oct 09, 2022 at 07:56:51PM +0200, Julia Lawall wrote:
> > > > > >
> > > > > >
> > > > > > On Sun, 9 Oct 2022, Deepak R Varma wrote:
> > > > > >
> > > > > > > Hello,
> > > > > > > I am natively running 5.15.0-48-generic on my HP Laptop with Secure boot on. I
> > > > > > > tried to follow the Kernel First patch tutorial steps and managed to build
> > > > > > > Kernel release 6.0.0rc4. There were issues during the module building associated
> > > > > > > with the certificates / signing of the modules. I got those supressed by
> > > > > > > emptying the following two config parameters as copied over from the native
> > > > > > > config file:
> > > > > > >
> > > > > > > CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"
> > > > > > > CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem"
> > > > > > >
> > > > > > > set to new value
> > > > > > >
> > > > > > > CONFIG_SYSTEM_TRUSTED_KEYS=""
> > > > > > > CONFIG_SYSTEM_REVOCATION_KEYS=""
> > > > > > >
> > > > > > > The build was successful, however, I am unable to boot into my new kernel and
> > > > > > > have received following errors:
> > > > > > >
> > > > > > > error: bad shim signature
> > > > > > > Loading initial ramdisk
> > > > > > > error: you need to load the kernel first
> > > > > > >
> > > > > > > I tried to seek from net, but did not find any workable resolution. Can you
> > > > > > > please suggested how can I correct this error or if I missed any steps?
> > > > > >
> > > > > > Maybe you have to remove secure boot?  I have the impression that I did
> > > > > > that on one of my machines, but I don't have that machine in front of me.
> > > > >
> > > > > Thank you for the quick response. I did try disabling the secure boot option and
> > > > > also cleared the certificate DB. Tried a few combinations of these options.
> > > > > Unfortunately, nothing helped so far.
> > > >
> > > > Did you try what is described here?
> > > >
> > > > https://unix.stackexchange.com/questions/701612/cant-load-self-signed-kernel-with-secure-boot-on-bad-shim-signature
> > >
> > > I am planning to do the following from this link next. I will let you know how
> > > it goes.
> >
> > Hi Julia,
> > I realized that working with the certificates is very complex. I also encountered
> > additional issues during module building step. It's looking good now. I was able
> > to get past the module singing issues during the installation steps using this [1]
> > link. However, I am now unable to load the kernel image since it is not signed.
> > I am going to attempt to sign the image and also add the certificate to the db.
> > Hopefully that will be the last step before I can proceed to sharing my first
> > patch.
> >
> > [1]: https://github.com/andikleen/simple-pt/issues/8
>
> Maybe it would be worth retrying the option of disabling secure boot?

Tried that already. Received following error:
	Loading Linux 6.0.0dvkern ...
	Loading initial ramdisk ...
	error: out of memory.

	Press any key to continue...

Pressing a key takes me back to the grub menu; waiting results in a blacklist
kernel panic with the same error reported by the other applicant a earlier today
	Kernel panic - not syncing: VFS: Unable to mount root fs on
	unknown-block

I am setting up a fresh ubuntu instance with secureboot off and make another
start.

Thank you.
./drv


>
> julia
>
> >
> > Thank you,
> > ./drv
> >
> > >
> > > Create your own secureboot signing certificate without such an EKU, enroll it into either mok or db, and use it for signing.
> > >
> > > Thank you,
> > > ./drv
> > >
> > > >
> > > > julia
> > > >
> > > > >
> > > > > Let me know if I should share any of the files / logs from my system for your
> > > > > review.
> > > > >
> > > > > >
> > > > > > Welcome, by the way :)
> > > > >
> > > > > Thank you Julia. Pleased to be part of this internship challenge.
> > > > >
> > > > > ./drv
> > > > >
> > > > > >
> > > > > > julia
> > > > >
> > > > >
> > > > >
> > > >
> > >
> > >
> > >
> >
> >
> >
>


