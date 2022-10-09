Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF4D2579
	for <outreachy@lists.linux.dev>; Sun,  9 Oct 2022 19:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1665342119; bh=wMmO39UaXYRb1PxJoSsFgtvNQkG5MWVt+wBf1AwYbWI=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=JUz4hcrOsgDB4/8DEriXTsOdw9azy53r1Ajxh74JcjYB0aCBBrFUgFBieO6oSK3gt
	 xZwxFKJbV5zAapcY5oa9yU7ERWCn7hC4wUMnMSv74CCpfTe62/tYGHPp2VAy9PZzmo
	 /xcB7si5IDBbP/zrvr8VOY8eXAdNTa06vD3+XGp8=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
	via [213.182.55.206]
	Sun,  9 Oct 2022 21:01:59 +0200 (CEST)
X-EA-Auth: EKpKI8f2O04704F2U2PK0/1TvsNBJtm5gX3KSkqI9OWMmW+6B1l+O6XRJw5+SjNxJRTwOXZTk8PWJCgcHqZo2hYB/6wM1dPm
Date: Mon, 10 Oct 2022 00:31:55 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: trouble booting into staging kernel
Message-ID: <Y0Mao9czSNX+WrHh@lion>
References: <Y0MKHfWsqsh4S9ld@lion>
 <alpine.DEB.2.22.394.2210091955410.21609@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2210091955410.21609@hadrien>

On Sun, Oct 09, 2022 at 07:56:51PM +0200, Julia Lawall wrote:
>
>
> On Sun, 9 Oct 2022, Deepak R Varma wrote:
>
> > Hello,
> > I am natively running 5.15.0-48-generic on my HP Laptop with Secure boot on. I
> > tried to follow the Kernel First patch tutorial steps and managed to build
> > Kernel release 6.0.0rc4. There were issues during the module building associated
> > with the certificates / signing of the modules. I got those supressed by
> > emptying the following two config parameters as copied over from the native
> > config file:
> >
> > CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"
> > CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem"
> >
> > set to new value
> >
> > CONFIG_SYSTEM_TRUSTED_KEYS=""
> > CONFIG_SYSTEM_REVOCATION_KEYS=""
> >
> > The build was successful, however, I am unable to boot into my new kernel and
> > have received following errors:
> >
> > error: bad shim signature
> > Loading initial ramdisk
> > error: you need to load the kernel first
> >
> > I tried to seek from net, but did not find any workable resolution. Can you
> > please suggested how can I correct this error or if I missed any steps?
>
> Maybe you have to remove secure boot?  I have the impression that I did
> that on one of my machines, but I don't have that machine in front of me.

Thank you for the quick response. I did try disabling the secure boot option and
also cleared the certificate DB. Tried a few combinations of these options.
Unfortunately, nothing helped so far.

Let me know if I should share any of the files / logs from my system for your
review.

>
> Welcome, by the way :)

Thank you Julia. Pleased to be part of this internship challenge.

./drv

>
> julia


