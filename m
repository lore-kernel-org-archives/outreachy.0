Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9447B
	for <outreachy@lists.linux.dev>; Thu, 27 Oct 2022 20:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666902623; bh=kjbzt1C4Z88JOU2Z8p7HYDwMVj5ZrDSNs87tr2VIuhc=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=oZqTKnOl3GLeUgxM7lpJvhZcYk+9X5Lcz+n/+D1gRkFBxeS5LtxoXbvJuKMrmbUj+
	 Ch+BUv5nRkQpKbmGSliaNh3CVRQNGqfgkxkgjuuhq4r5MlcAgGGqoDUZz9r0fGP991
	 QeXH/PafiQa5F6AyNUy3RWonKApvTOkIV9d9ezXI=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
	via [213.182.55.206]
	Thu, 27 Oct 2022 22:30:23 +0200 (CEST)
X-EA-Auth: 13kszTmq+zpPOGPgTxfBBY7ihChoVW6+wiz+Nrf/tkvjoQL0mYFRVpznPXzusngz8xz48+p13A/T12xwapHfw+rQpB4m7CX7
Date: Fri, 28 Oct 2022 02:00:14 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: ssengar@linux.microsoft.com, kumarpraveen@linux.microsoft.com,
	alison.schofield@intel.com, outreachy@lists.linux.dev
Subject: Re: Coccinelle make error
Message-ID: <Y1rqVoRhSCQcunXJ@ubunlion>
References: <Y1cz1Vqe+hpAssz7@debian-BULLSEYE-live-builder-AMD64>
 <29c7fa5-3036-1a6-1bde-4a7ecb6b83ce@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <29c7fa5-3036-1a6-1bde-4a7ecb6b83ce@inria.fr>

On Tue, Oct 25, 2022 at 07:44:35PM +0200, Julia Lawall wrote:
>
>
> On Tue, 25 Oct 2022, Deepak R Varma wrote:
>
> > Hello,
> > I received following error while running make step on the Coccinelle repo. Looks
> > like there may be some version mismatch with the compiler??? Do you know how to
> > resolve it?
> >
> >         make -C bundles/pyml all
> >         make[1]: Entering directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
> >         make depend-rec
> >         make[2]: Entering directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
> >         cd pyml-current && LD_LIBRARY_PATH=/home/drv/git/kernels/coccinelle/bundles/stdcompat: ./generate
> >         Fatal error: unknown C primitive `caml_sys_mkdir'
> >         Aborted
> >         make[2]: *** [Makefile:61: pyml-current/pywrappers.ml] Error 134
> >         make[2]: Leaving directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
> >         make[1]: *** [../Makefile.bundles:100: .depend] Error 2
> >         make[1]: Leaving directory '/home/drv/git/kernels/coccinelle/bundles/pyml'
> >         make: *** [Makefile:489: /home/drv/git/kernels/coccinelle/bundles/pyml/pyml.cmxa] Error 2
>
> I tried compiling the latest version from scratch and all was fine, but it
> may depend on your configuration.  Could you send your configuration file?

Quick Update:
I stood up a new instance of Ubuntu on my VM and was able to successfully get
Coccinelle / coccicheck to work. It looks like there may be some
package/versioning conflicts across dependencies for Debian packages of
Coccinelle that prevented me from getting it to work.

Will continue to use the new VM and catch up with the remaining tasks.

Thank you Julia and all for your assistance.

./drv

>
> julia
>


