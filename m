Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C958253A3
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 19:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=PsDauXZlXna7wjXq25d8Ic64Bd3llhfh+UlyKRTItY0=;
  b=fKQw7G2Bl0OMJ7/7RKR2Wf7WCwRuanX9nxdOq0h8G1nlDnHwsSnphQ4m
   1zwE04hWsjBDNlVUZe4H73ekfRq9GGC/3RFUqEsiayEYQTG5gxmoWCqa/
   0UdGjWsLFmeF9ddNhfzGbNTKelp0GRrrMvUwTtAeV0BjIZWy0zDkXWIk3
   s=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,196,1661810400"; 
   d="scan'208";a="66043327"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2022 21:51:34 +0200
Date: Wed, 19 Oct 2022 21:51:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Emily Peri <eperi1024@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Patch email not showing up in inbox
In-Reply-To: <Y1BSP5ZT+yju8gLf@marshmallow>
Message-ID: <alpine.DEB.2.22.394.2210192151210.3068@hadrien>
References: <Y1BSP5ZT+yju8gLf@marshmallow>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 19 Oct 2022, Emily Peri wrote:

> Hi all,
> I sent a patch (staging: rtl8723bs) email to the list serv and ccd the maintainers, but didn't
> see the email show up in my inbox. Is there usually a delay with this?
> Did anyone else get it? I'm new to mutt so I just want to make sure I
> sent it correctly. Thanks!

I received it twice.

julia
