Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2801D8F40
	for <outreachy@lists.linux.dev>; Tue, 11 Oct 2022 05:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Enzp2ROIgZi0GNm2J9kbZYYYdwDV9UA1ybuINTWHWvc=;
  b=cVEc16uaEouRq783vquilUrDY7Cttv+zzACg36Fy8WjeiGz7bC5uCJpt
   AsDkaNj6uH7CSyuesfnSp7I+oA9fbzcW9JRC4U1xtWb+4hMV+3zDpIkto
   lVpUNyrQKVvOFx3szK+lEu+uX4B87K0acQ2/0i/a7k2z/vd9irV86Nd7h
   E=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,175,1661810400"; 
   d="scan'208";a="26814738"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2022 07:07:07 +0200
Date: Tue, 11 Oct 2022 07:07:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Hunter Chasens <hunter.chasens18@ncf.edu>
cc: Alison Schofield <alison.schofield@intel.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH v2 0/2] Staging: greybus: Fixed whitespace/syntax style
 issues
In-Reply-To: <Y0TNVMn1KBYjppFP@zeda>
Message-ID: <alpine.DEB.2.22.394.2210110706230.2912@hadrien>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu> <Y0R/uscIGcUENEWx@aschofie-mobl2> <Y0SaG/h9IoCfB3tI@zeda> <Y0SwhNMLk9xh4v1H@aschofie-mobl2> <Y0THY2LgeHYZSaVt@aschofie-mobl2> <Y0TNVMn1KBYjppFP@zeda>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 10 Oct 2022, Hunter Chasens wrote:

> I didn't know the 80-character limit applied to email as well! Thank you
> for telling me. I'm so used to auto-wrapping that it never occurred to me.
> I'm still getting used to mutt as well.
>
> It is a bit overwhelming but it all seems very learnable with persistence and
> time. Sometimes it does feel like a game of whack-a-mole though. The moment I squash
> one issue is the moment my attention leaves another. :)

That's the purpose of sending the staging patches.  So you learn to do the
right thing without thinking.

julia
