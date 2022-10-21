Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2953C05
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 16:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=2QxqCrAIjtRiUWVYJDSnhb5199EikVGhcArsuETkgTw=;
  b=OWiDqo8RtKn7GG29cgkhHgcIITw20dUBtsArDhUP3E7qyepvzSYHUtOJ
   mmt2X70iowytYsti08Ww/n8MwvgoK2RxnEZ4q9JjEqD3S8R+xtVxteQ2Z
   vmX8/GKYpSZD3+MWqoBxWahOV+s7WRXejSFiQxp3lB8P7IQhzFntU+jSL
   I=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,202,1661810400"; 
   d="scan'208";a="66462554"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 18:13:35 +0200
Date: Fri, 21 Oct 2022 18:13:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Deepak R Varma <drv@mailo.com>
cc: outreachy@lists.linux.dev
Subject: Re: query on need for the function
In-Reply-To: <Y1K7cei/TW0xkLCd@debian-BULLSEYE-live-builder-AMD64>
Message-ID: <3760b388-679f-cd28-1664-89f7eed521d7@inria.fr>
References: <Y1K7cei/TW0xkLCd@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 21 Oct 2022, Deepak R Varma wrote:

> Hello,
> I was looking at removal of commented code when I came across this function
> ieee80211_tkip_null from the
> drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c file. I do not think
> the function is doing anything useful as it (simply returns back to the caller).
> I would like t confirm that I am understanding it right or if there is more to
> it that what I could analyze.
>
> I tried posting this question on the IRC channel, but I am unsure if my messages
> are even hitting the IRC server.
>
> What is the best way to clarify my query? Can I get a feedback from the mentors
> or Should I consult the mentors or simply send the patch with the function
> being removed?

You can find the definitions and the uses and see if they seem to serve
any purpose (I can't see any...).

julia
