Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26F27B
	for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 18:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=RmuCuRWPW9VfBoi5R+DF8bxl2QjMkJEXXnVqkxg93WI=;
  b=UDleI6FnauO8PFN3BEhZdsoguHfzvuqr8ackEyjt0uEy3r3UYgQgdJTR
   tTNR8RfijKw6IJKUzQ3b4yG8Xl/DgJlJlbEuZ8VF6SnMPaW/HnIrjnAst
   4f3huDpvpH8jug13eZX6p6Jr8sEMwgE2oqduc0Z3LlJXq1CShtNn2XqV4
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,253,1673910000"; 
   d="scan'208";a="49892516"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2023 19:12:59 +0100
Date: Sat, 11 Mar 2023 19:12:57 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: error27@gmail.com, outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional
 statement
In-Reply-To: <20230311172835.GE14247@ubuntu>
Message-ID: <alpine.DEB.2.22.394.2303111911510.2802@hadrien>
References: <20230311172835.GE14247@ubuntu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2023, Sumitra Sharma wrote:

> Yes, surely
>
> Thank you again.

Sumitra,

It would be nice to quote at least the most relevant part of what you are
responding to, so people on the list can have some idea of what is being
discussed, and assess whether it concerns them.

julia
