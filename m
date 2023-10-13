Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F890D51F
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 08:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="nRqWFFgj"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=KDMXCCwD5IsLkTxfkdKv/0dZTCz4OCaUCWzc3/h9o2o=;
  b=nRqWFFgjyFCXSvuXi8KBs2ZSG8qO9uflIkkY9Ck1EqVi+w5o3Yl/E0lv
   0ytKAjcyQqhrWwjZwLATd8ssu1yZYX1+ayw9flcLsuHQV3ngwVNvEpjul
   5Pea1gu5AUlNAFDywbnFfTYJUBCk4YClmRHOE0agDDmcPCX9MPSIvqgLz
   8=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,221,1694728800"; 
   d="scan'208";a="68607545"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2023 10:17:09 +0200
Date: Fri, 13 Oct 2023 10:17:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
cc: Andi Shyti <andi.shyti@linux.intel.com>, outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
In-Reply-To: <ZSj42wdF7eAsflQW@gilbert-PC>
Message-ID: <e9c3a368-dd1c-4a33-ecba-21832f61f992@inria.fr>
References: <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com> <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr> <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan> <CAKrXSsZSb35yvwvMm_sa9+Xk6V01ZA_2LSzd9Lbufjsifr7kKw@mail.gmail.com> <ZSWD1rtmLLWS++RH@ashyti-mobl2.lan>
 <CAKrXSsYYWUYyTC2SKpiYmXT3jktvCs0WJQO=z1=TVu-+ZPM_Mw@mail.gmail.com> <ZSW5+/fhwFOpZmxR@ashyti-mobl2.lan> <ZSY9lKQQjfgEUYWD@gilbert-PC> <alpine.DEB.2.22.394.2310110825150.3208@hadrien> <ZSZKfhGAIlqDXvt1@ashyti-mobl2.lan> <ZSj42wdF7eAsflQW@gilbert-PC>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> I found the cause of the oversize memory problem. It turns out to be
> debugging symbols after all. I found out that originally installed modules are
> stripped (don't know what that means yet). from
> Documentation/kbuild/makefile.txt:
> 	INSTALL_MOD_STRIP

Yes!  Not sure why the tutorial doens't mention this.  You should do:

INSTALL_MOD_STRIP=1 make modules_install

julia
