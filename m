Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C99CEBF
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 08:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666773535; bh=kmxeEq7ZCIzAUKrlvyvAkim5rJ1n1ndQpbeIIh7RAug=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=BwKltoTiNhPBE/e246UFvK/HGiX9UujKQeXx11pSAyN6lkJhOhkMCrH+YinSWCoHV
	 Fk5WPVyNfFEpMkrK+DYHQc2MNGoBYDSyOuQx3/0SRG80Rn90MWGxF/sS9yuncfrWye
	 3ZM+z/ISzSWWWoYi5KoPXF7VEgsNjf1eFMAi/M+o=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
	via [213.182.55.206]
	Wed, 26 Oct 2022 10:38:55 +0200 (CEST)
X-EA-Auth: tave1AASlJsH/esnfGLM71QyeCCGgCBD1NhHqibgATq6Tc+dyr6yJlr8LMWS7Qo2rRY2I6iNQ6blH0YFZKyEJ7N3IJ8/3fD2
Date: Wed, 26 Oct 2022 07:00:19 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: coccinelle compilation issue
Message-ID: <Y1iNq2zGQ/2NSGdQ@debian-BULLSEYE-live-builder-AMD64>
References: <alpine.DEB.2.22.394.2210260808100.3523@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2210260808100.3523@hadrien>

On Wed, Oct 26, 2022 at 08:09:51AM +0200, Julia Lawall wrote:
> If you are not able to compile the code from github, you can install opam
> (the OCaml package manager) and then get Coccinelle from there.
>
> Information about installing opam is available here:
>
> https://opam.ocaml.org/doc/Install.html
>
> Once you have done that, I guess you can run
>
> opam install coccinelle

Coccinelle version 1.1.1 is installed successfully, but still not able to find
spatch. Geeting following error now:

	drv@debian:~/git/kernels/staging$ opam install coccinelle
	[NOTE] Package coccinelle is already installed (current version is 1.1.1).
	drv@debian:~/git/kernels/staging$ make coccicheck MODE=report
	spatch is part of the Coccinelle project and is available at http://coccinelle.lip6.fr/
	make: *** [Makefile:2074: coccicheck] Error 1

Is there something I am missing while the install/configuration?

>
> julia
>


