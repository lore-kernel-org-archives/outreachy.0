Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E6153A0
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 04:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="ARPSE70K"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=iBteLuIl93Dwpox4kyicjvadLk4uUe7q2cExZaBmXE0=;
  b=ARPSE70KlwFgbM3/yjMy9BnMddNGYX0civWVWq3+bpNGALbQdAmnctWz
   waifBObW8ZwNOMcjI4EcBrn6pIChQit4jLQlsF4ukiqHHOxY0KdfrD8p2
   6pprhrarfqhVAOM56MNcHyszfvXp7lFx0UhtzVBco0Ks4Y4al4yImvQO6
   c=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,221,1694728800"; 
   d="scan'208";a="68586238"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2023 06:53:37 +0200
Date: Fri, 13 Oct 2023 06:53:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumya Negi <soumya.negi97@gmail.com>
cc: outreachy@lists.linux.dev, Wei WANG <wei_wang@realsil.com.cn>, 
    Micky Ching <micky_ching@realsil.com.cn>
Subject: Re: Should udelay() be replaced by usleep_range() here?
In-Reply-To: <20231013004221.GB12157@Negi>
Message-ID: <alpine.DEB.2.22.394.2310130652580.3269@hadrien>
References: <20231013004221.GB12157@Negi>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Oct 2023, Soumya Negi wrote:

> Hi,
>
> I'm looking at this checkpatch warning in driver staging/rts5208:
>
> CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
> #3240: FILE: drivers/staging/rts5208/ms.c:3240:
> +		udelay(30);
>
>
> As per the .rst file, we should use usleep_range(min,max) to introduce
> delays of 10us - 20ms. Which applies here as we want 30us. How do we decide
> on what range to feed to usleep_range()? The documentation mentions
> tradeoffs between setting a large or small range.

It is difficult to decide how to do this correctly without access to the
hardware.  It's probably better to do something else.

julia
