Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D106126
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 16:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="P91GZk9F"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696956219; x=1728492219;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=gdsYHX4nX7bSVi+/NEv0NJKX8V/LleApC85xiggjctg=;
  b=P91GZk9FZTmpM/Fks0u83uHCND1/4jlk1POzAEIi93ZamqEUpEkWu28D
   timcmNvECURlEZn3UC8yyU6A8rYgPfcHl3y0tZf2Efv0Lq6QUzkx4VYDh
   57Clrtqqa9cN9GODAg19Q0EeInkgyW8zksqUtKy/nK1KRp6A3wBJRIHWM
   hyB5ZjbtKziw+4g0RUQ58ytQPhGEGjoBw2rXueDcj2EVUuugQIXtZrBoH
   xJ2HTN36bdMHTgZu1nQqZ+I6Ugiz4VRC2T0g5xBqOl2+v19+xvI15mlLC
   9SOMf4zTPXjFh6qJkYJ3xN3I9fHvsrXCB/elHSEWqvJN66khiEkoabH2q
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374794680"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="374794680"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 09:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="747118163"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="747118163"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com) ([10.213.148.82])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 09:43:34 -0700
Date: Tue, 10 Oct 2023 18:43:28 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Gilbert Adikankwu <gilbertadikankwu@gmail.com>,
	Andi Shyti <andi.shyti@linux.intel.com>,
	"andi.shyti@kernel.org" <andi.shyti@kernel.org>,
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZSV/MLpQs0GJYIqh@ashyti-mobl2.lan>
References: <ZSTRETv7sO+1A6/G@gilbert-PC>
 <ZST5+5a8Uq1pULop@ashyti-mobl2.lan>
 <CAKrXSsZe4w-K7kzGu=8_R_h1TSVtJWL1_TmFX-S-A1jCrPeCrg@mail.gmail.com>
 <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8e38f1a1-1da4-1d1f-aa32-6ad7ebb31c11@inria.fr>

Hi Gilbert,

> > I have another issue, I tried compiling after modifying and it compiled
> > successfully. But when I tried to install so I can reboot, I got this
> > error: 
> >
> > zstd: error 25 : Write error : No space left on device (cannot write
> > compressed block) 
> > E: mkinitramfs failure zstd -q -1 -T0 25
> > update-initramfs: failed for /boot/initrd.img-6.6.0-rc1gilbert+ with 1.
> > run-parts: /etc/kernel/postinst.d/initramfs-tools exited with return code 1
> > make[2]: *** [arch/x86/Makefile:292: install] Error 1
> > make[1]: *** [/home/functionguyy/git/kernels/staging/Makefile:359:
> > __build_one_by_one] Error 2
> > make: *** [Makefile:234: __sub-make] Error 2
> 
> You have too little space in the partition that contains /boot?

What does "df -h" say?

Andi
