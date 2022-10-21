Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED158F46
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 05:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=IuO3I0qjWkT4vgdz6wGJKECT+bchuM4OEVsGWnT5V2c=;
  b=nO7Bp07YsKAoZZq0t9T5P3dQ7CGBwCbBrWKbFShZMbaoyAMXerFdZxLN
   pFDPCgJuDqLAAIouPPHcc38VyZWr6iMpE3gudc3a5BJJYJjUY7xGddvXi
   emI/FawKE0zgex4Vm7DcfKHBVVnjeEH/NI3Y1Q73fagfbYAV5pQRXz7MD
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,200,1661810400"; 
   d="scan'208";a="32037969"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 07:03:01 +0200
Date: Fri, 21 Oct 2022 07:03:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <drv@mailo.com>
cc: outreachy@lists.linux.dev
Subject: Re: cleaning commented code
In-Reply-To: <Y1HSz9q7kQGmiWxF@debian-BULLSEYE-live-builder-AMD64>
Message-ID: <alpine.DEB.2.22.394.2210210702310.2816@hadrien>
References: <Y1HSz9q7kQGmiWxF@debian-BULLSEYE-live-builder-AMD64>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 21 Oct 2022, Deepak R Varma wrote:

> Hello,
> Is there any guideline on cleaning commented code, specifically printk debug
> messages that appears to be added for basis program flow tracing. If yes, will
> this be treated as a clean up contribution?

You can remove commented code.

Every change counts.

julia

>
> e.g.
>
> ./wlan-ng/p80211netdev.c:884:                   /* printk("assocreq"); */
> ./wlan-ng/p80211netdev.c:888:                   /* printk("assocresp"); */
> ./wlan-ng/p80211netdev.c:892:                   /* printk("reassocreq"); */
> ./wlan-ng/p80211netdev.c:896:                   /* printk("reassocresp"); */
> ./wlan-ng/p80211netdev.c:900:                   /* printk("probereq"); */
> ./wlan-ng/p80211netdev.c:904:                   /* printk("proberesp"); */
>
> Thank you,
> ./drv
>
>
>
>
