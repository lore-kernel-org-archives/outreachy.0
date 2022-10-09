Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1039F1876
	for <outreachy@lists.linux.dev>; Sun,  9 Oct 2022 17:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=5+LJEngrq9w30ZBl0z2WU/Z0rPYLEHovpPgE+rOPS7I=;
  b=YuYe31iLaswcGSLOQlsZsWczCmJneYKnjoNiiP9Un3Wc05As29UnHdMW
   F/LGrT5msdeIP7CT9rBspeVheG3ILiyEGI41rCY+Bgxeg6zv9m2XV6r0l
   6yGMOP/eOo3yPZG5i4Ml/DAt7ifdr0EFdL/s4AnSEyOkWkJ4B6cHUkZ3D
   k=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,172,1661810400"; 
   d="scan'208";a="25894384"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2022 19:56:53 +0200
Date: Sun, 9 Oct 2022 19:56:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <drv@mailo.com>
cc: outreachy@lists.linux.dev
Subject: Re: trouble booting into staging kernel
In-Reply-To: <Y0MKHfWsqsh4S9ld@lion>
Message-ID: <alpine.DEB.2.22.394.2210091955410.21609@hadrien>
References: <Y0MKHfWsqsh4S9ld@lion>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 9 Oct 2022, Deepak R Varma wrote:

> Hello,
> I am natively running 5.15.0-48-generic on my HP Laptop with Secure boot on. I
> tried to follow the Kernel First patch tutorial steps and managed to build
> Kernel release 6.0.0rc4. There were issues during the module building associated
> with the certificates / signing of the modules. I got those supressed by
> emptying the following two config parameters as copied over from the native
> config file:
>
> CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"
> CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem"
>
> set to new value
>
> CONFIG_SYSTEM_TRUSTED_KEYS=""
> CONFIG_SYSTEM_REVOCATION_KEYS=""
>
> The build was successful, however, I am unable to boot into my new kernel and
> have received following errors:
>
> error: bad shim signature
> Loading initial ramdisk
> error: you need to load the kernel first
>
> I tried to seek from net, but did not find any workable resolution. Can you
> please suggested how can I correct this error or if I missed any steps?

Maybe you have to remove secure boot?  I have the impression that I did
that on one of my machines, but I don't have that machine in front of me.

Welcome, by the way :)

julia
