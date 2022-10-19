Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD702F22
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 13:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=AaKbR1WIBgTMudSmT1gl1LRL97aJ3IYpPHq24bN5aHk=;
  b=psWHl8hMQ6iHQrtqvfPDTQYmN7GpAvPQXs9FxCsXVXqfbtMhOdtKEe15
   6JgVkFnsskhko7tUt3e2aEb9VxMtqGO1xKoygcY74ds/93NBKfxJvrC0n
   bK67a8qNxlP23GnSX3mgRtW0QSbpcJma+zc5boyJYLFV+VmfuL2rNyqId
   o=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,196,1661810400"; 
   d="scan'208";a="65960496"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2022 15:05:48 +0200
Date: Wed, 19 Oct 2022 15:05:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Deepak R Varma <drv@mailo.com>
cc: outreachy@lists.linux.dev
Subject: Re: first patch acceptance confirmation
In-Reply-To: <Y0/v7elLBLCfLmV8@debian-BULLSEYE-live-builder-AMD64>
Message-ID: <c85a0a6-d992-2be0-1a25-4a3b7654cb2@inria.fr>
References: <Y0/v7elLBLCfLmV8@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 19 Oct 2022, Deepak R Varma wrote:

> Hello,
> What will confirm that a patch was accepted and can be recorded as a
> contribution in the Outreachy website? Is an "Ack'ed-by" response good enough?

I think that you can find the commit id in Greg's tree?

julia
