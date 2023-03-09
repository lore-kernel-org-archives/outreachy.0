Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1DF7E6
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 06:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=w0biR4OQoanFaLIVWroABJK8M6aCuJHF8jvgn6opMIA=;
  b=tj7JTcko+49EqpbasU5Jb9+GQTaQQRW0ql71xebb6+wK2pRboZ7kqCs4
   qGQMQ+N/0Zxzr7T8pQ3kjFbnALHWIdLM2od6PiSloxkVcxe6ZzGN79if1
   gDm664AcxgH+zsl0fDIT7iYKQ8nwUiiHkjW4P9bJbKmMEnFp4ebbR38ko
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,245,1673910000"; 
   d="scan'208";a="49633191"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 07:29:40 +0100
Date: Thu, 9 Mar 2023 07:29:39 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kloudifold <cloudifold.3125@gmail.com>
cc: alison.schofield@intel.com, outreachy@lists.linux.dev
Subject: Re: Problem in "Pick a warning, and try to fix it": Don't have a
 warning to pick
In-Reply-To: <ZAkE4w/T389R2+Er@CloudiRingWorld>
Message-ID: <alpine.DEB.2.22.394.2303090726250.3294@hadrien>
References: <ZAkE4w/T389R2+Er@CloudiRingWorld>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2023, Kloudifold wrote:

> Hello, I am Kloudifold, an Outreachy applicant.
>
> I'm reading https://kernelnewbies.org/Outreachyfirstpatch and trying to make my first patch. It says, "Pick a warning, and try to fix it. For your first patch, only pick one warning.", but when I used the command:
>
> > perl scripts/checkpatch.pl -f drivers/staging/*/* | grep "[1-9] warnings" -B 10 -A 2
>
> I can only find warnings for drivers/staging/axis-fifo/axis-fifo.c, a file that is already being submitted to the mailing list, which means I don't have a warning to pick.
> How should I finish my first patch in this case? Should I look for something more difficult than changing the coding style?

I'm surprised that there would only be one warning in all of staging.  But
who knows.

Your grep may be missing cases with eg 10 warnings?

Maybe see if some of the CHECK or ERROR cases are easy to do?

If you find nothing at all, a few days ago I posted a list of cases where
the argument indentation might be undesirable.  You cold look hrough them
for something that could be improved.

julia
