Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0BF17C4
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 05:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=2JXaWoFTw+AuJRArVVsr5zurns6IMqCdB3Jzmf3PUD4=;
  b=PLOeFQYYWK7OnuMF5OgqzDJneMTCcS0smyPNzHT63LxovsNej2JBp0kl
   22udUo8jtwahgPOfBeVyjzS+6QVkjZPw+QZfgg+k2aWPyAUEhbI31NKPv
   8Bt6KxJE2vBHMEXg656gOX3BgLa41P1VoG4fTiJZuv78ndl+PX/QNBEtJ
   4=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,198,1661810400"; 
   d="scan'208";a="31919084"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2022 07:13:59 +0200
Date: Thu, 20 Oct 2022 07:13:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Emily Peri <eperi1024@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Weird formatting in rtl8723bs driver code?
In-Reply-To: <Y1C179JmHDc3eI9G@marshmallow>
Message-ID: <alpine.DEB.2.22.394.2210200713100.2988@hadrien>
References: <Y1C179JmHDc3eI9G@marshmallow>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 19 Oct 2022, Emily Peri wrote:

> I'm working on cleaning up the rtl8723bs driver with checkpatch, but I
> noticed that some of the variable declarations have differnt amounts of
> whitespace, like this:
>
>         struct cmd_obj  *ph2c;
>         struct sitesurvey_parm  *psurveyPara;
>         struct cmd_priv                                 *pcmdpriv = &padapter->cmdpriv;
>         struct mlme_ext_priv    *pmlmeext = &padapter->mlmeextpriv;
>
> At first I thought this was intentional, but now I'm wondering if this
> is an accident. It's normal to just use one space between the type and
> the variable name, right?

One space should be fine.  People may like to line up the variable names
in some cases, but this is clearly not lined up either.

julia
