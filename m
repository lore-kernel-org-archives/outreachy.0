Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FA5F9E7
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 14:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="PEQbEIcy"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=iWc3yXjQZU44p/5S0RRXUBKyO2LXRar6KDhTjKKSTbA=;
  b=PEQbEIcypTWJEptS2RICKnI/xinYSsqkEv75Q/V42HAOKgA9SOBZrJ1e
   7sSLdpP5VI0R/wHGNplKc6Ecq3qy7v4EJ8e/OywMJ+twhq7jpl9hk3Q7A
   lFRDpjdWMSXGV73yb+C9vhZbi7zAEI21JceLC1MgaiwVxdIN/Uyi8P/fD
   8=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,206,1694728800"; 
   d="scan'208";a="68045884"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2023 16:00:54 +0200
Date: Sat, 7 Oct 2023 16:00:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Calvince Otieno <calvncce@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Unable to make file
In-Reply-To: <CADFX3OQ1rdnR=ONu5wufAYN0NrvMkaveQ_Y9z_1K8m9Dzz3SPA@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310071559280.36842@hadrien>
References: <CADFX3OQ1rdnR=ONu5wufAYN0NrvMkaveQ_Y9z_1K8m9Dzz3SPA@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 7 Oct 2023, Calvince Otieno wrote:

> Hello team!
>
> I have a problem. I tried running the Make file and I got this error message:
>
> make[3]: *** No rule to make target 'debian/canonical-certs.pem',
> needed by 'certs/x509_certificate_list'.  Stop.

This page has several suggestions:

https://stackoverflow.com/questions/67670169/compiling-kernel-gives-error-no-rule-to-make-target-debian-certs-debian-uefi-ce

Maybe try:

scripts/config --disable SYSTEM_TRUSTED_KEYS
scripts/config --disable SYSTEM_REVOCATION_KEYS

julia

>
> make[2]: *** [scripts/Makefile.build:480: certs] Error 2
>
> make[1]: *** [/home/calvince/Documents/labs/git/kernels/staging/Makefile:1913:
> .] Error 2
>
> make: *** [Makefile:234: __sub-make] Error 2
>
>
