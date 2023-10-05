Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF41441740
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 19:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="lSBaVSHc"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Gl3ZS8ucyl2ElglyM1zcfc4asgMpTgMzO07i+MMnVV0=;
  b=lSBaVSHcFypz1qDXXMrdw3WDC0+s01pP4/d3Ji3XSBzmTHE57Wsk4Xwq
   uSpTAmXgu1FjPV/3Z2j5mS7K/W9RKgRp7pjVC534irdE4pE8UZplkp9/O
   r6WmemJLyZcFurzJmmZLmXgJsWQXfMRPNYKMYVKP2kiMQpLTjWhjG1hVY
   w=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,203,1694728800"; 
   d="scan'208";a="129754953"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 21:17:13 +0200
Date: Thu, 5 Oct 2023 21:17:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: K <maduechesik@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
In-Reply-To: <CAAFs_TG7rZdcfe1My89LX2cpS+DNSfQi5zXQ+L9m_wXWX_5FFw@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310052115210.3375@hadrien>
References: <CAAFs_TG7rZdcfe1My89LX2cpS+DNSfQi5zXQ+L9m_wXWX_5FFw@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 5 Oct 2023, K wrote:

> Hi Kenechukwu,
> My name is Kenechukwu Maduechesi, and I am writing in response to the
> recent email regarding Outreachy and the opportunity to contribute, I
> picked the - "Extend the support for regression reporting and tracking
> in Linux Kernel".
> I'm enthusiastic about the prospect of joining this community and
> contributing to such a project.

Hello,

Thank you for your interest in the Linux kernel.  Please see the first
patch tutorial to find out how to get started:

https://kernelnewbies.org/Outreachyfirstpatch

Please also look through the mailing list archives for the most recent
message with the subject ANNOUNCE, and read through that.  You may find
the other recent messages useful as well.

julia
