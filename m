Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C92620F6
	for <outreachy@lists.linux.dev>; Tue,  1 Nov 2022 14:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=qtYQLttpuJtnCknMP8zpT1kAEXRGFZmwJAcC/rY54VE=;
  b=oOiSP7pyxx4DbbEIPauH93pSa+k5s1b0yuUmxkzlyHCJNKDjSKVB1UBO
   lULyjJiIxNv4WmHovlMhO+TNzNr5zOY6WEzLZcpRGBOSErBBkOPWS625g
   zHS2mVlM6EVFzfXttyuWtZ48wWzWNKJDKlidEGP6JKNCC7DPDABBJSKQQ
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,231,1661810400"; 
   d="scan'208";a="36181378"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2022 15:34:54 +0100
Date: Tue, 1 Nov 2022 15:34:52 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <drv@mailo.com>
cc: outreachy@lists.linux.dev
Subject: Re: Coccinelle based patch processing
In-Reply-To: <Y2Epr3nxdZs/Cc6+@ubunlion>
Message-ID: <alpine.DEB.2.22.394.2211011532430.2834@hadrien>
References: <Y2Epr3nxdZs/Cc6+@ubunlion>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 1 Nov 2022, Deepak R Varma wrote:

> Hello,
> I have a coccicheck produced patch [attached here] using the following command.
> Can you please suggest how to submit this as a patch? Is there a document that I
> can follow to accomplish the submission?
>
>    make coccicheck COCCI=./scripts/coccinelle/misc/returnvar.cocci M=driver/staging/r8188eu/ MODE=patch

Do what you would have done if you had made the patch by hand.

If the changes are quite identical, then you can group changes on multiple
files into one.

But in this case, even though all the changes do the same thing, it may
not be a good idea to group them, because the context is different in each
case.  In particular, you should check each case to see whether the return
variable really was unnecessary, or whether it actually was necessary, and
the developer forgot to set it to something.

julia


>
> Thank you,
> ./drv
>
