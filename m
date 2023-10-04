Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8163E17F8
	for <outreachy@lists.linux.dev>; Wed,  4 Oct 2023 04:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=w2gzS/hycOXcB7IGy8Shg6mSjNLsCdO6atU+RRmii6E=;
  b=u8zb5UyRa0DvPkpNTLYljseLA2PuxyVpVnTPANvt8T/Ey73URUWG6XIZ
   4Fuqo7j6lkH7bvCMu612yhtBedgsRRTq+bNtioHiHOQZBohTNIOF49cNt
   oKWEuVZu3s5o6l3nKvRVTnEqJWoJ55Xdbj0Ve/wQhfAgabQDCSsUuh4mB
   Q=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,199,1694728800"; 
   d="scan'208";a="67691827"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2023 06:50:43 +0200
Date: Wed, 4 Oct 2023 06:50:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
cc: outreachy@lists.linux.dev, andi.shyti@intel.com, karolinadrobnik@gmail.com
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
In-Reply-To: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310040649530.3108@hadrien>
References: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 4 Oct 2023, Gilbert Adikankwu wrote:

> Dear Outreachy Linux Kernel Community,
>
> I am Gilbert Adikankwu, an Outreachy applicant for the December Cohort
> 2023. I want to use this medium to introduce myself to the community.
>  As a Linux user,  I appreciate the quality work that has gone into
> making Linux a rewarding experience. On this note, I'm interested in
> contributing to the Linux Kernel. Specifically, I want to contribute
> to the Linux Kernel through the project titled; "Improve i915 sysfs
> interface implementation". I am excited about collaborating with
> community members on this project.
>
> I am eager to learn, contribute, and be part of the Linux Kernel
> community's journey. I'm reading the first patch tutorial to learn how
> to push my first patch. Any help you can offer me to make the process
> easier is welcomed.

Welcome.  Thank you for your interest in the Linux kernel.  Please read
the message wuth the subject "ANNOUNCE" in the mailing list if you have
not done so already.

julia

>
> Thank you for your time and consideration.
>
> Best regards
> Gilbert
>
>
