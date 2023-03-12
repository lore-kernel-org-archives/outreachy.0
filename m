Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AAE1877
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 07:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=K77BJK4aXPRceN5mzZaUSpA/PWPPTZGxy4gTz8YQ3ds=;
  b=klh4zr7UVOvfXh09kAloeBU/MLccxYygvlCllLNIp/2UNr4g8RkwQAog
   Vus3KGtJYk+rCAYP9XYn1uMig8mBPpVzX0YAhoDkLJ6gjGSeqEhFAcj5z
   nsf7YqmZdXUj5xwbtc6w1tm9XsVlij59hC2oTcGPmoqU94muKaLZEqRkE
   A=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,254,1673910000"; 
   d="scan'208";a="96686919"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2023 08:45:55 +0100
Date: Sun, 12 Mar 2023 08:45:55 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional
 statement
In-Reply-To: <20230312073558.GI14247@ubuntu>
Message-ID: <alpine.DEB.2.22.394.2303120843420.2865@hadrien>
References: <20230312073558.GI14247@ubuntu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2023, Sumitra Sharma wrote:

> Hi julia
>
> I was referring to the reply you sent in this thread and asking to quote
> the most relevant information in the mails so that people on the list
> can know what is being discussed. And I will take care of this in my
> upcoming mails.

Sorry to press the point, but you should be doing it now, not promising to
do it in the future.

If there is some challenge in doing this, please let us know, and perhaps
someone can offer some advice.

julia
