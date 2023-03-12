Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56608185F
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 07:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=bwG8VG2U6y+E3GfF6ePdu2j4fChrcH9ZEiZaCHtVILM=;
  b=qE4WeIlGhVqn9hlHtIc4k/Nn6QI1hCKwYtrJBrmydfa5Kpo/PvUDGlim
   Sutt6dOEpGDfhv6WUCGtSwGL9YzfeR2LFI9xMtfT159lUHu6r0lq7VUTU
   XfbClosu/rhC0Whw6FhoErxHmRedfo/cKcZ1GeYyZzYEKtJw8iaVScvGU
   U=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,254,1673910000"; 
   d="scan'208";a="96684681"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2023 08:07:35 +0100
Date: Sun, 12 Mar 2023 08:07:36 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional
 statement
In-Reply-To: <20230312064821.GG14247@ubuntu>
Message-ID: <alpine.DEB.2.22.394.2303120807130.2865@hadrien>
References: <20230312064821.GG14247@ubuntu>
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
> I will take care of it next time.

Take care of what?

julia

>
> Regards,
>
> Sumitra
>
