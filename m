Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC0A2916
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 16:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=gNq3YBu1BEG5aXestJ6JhnT//FPHDb18t4vfhH24Zdk=;
  b=dVyrBB8xrGMQOxO+UD1I6qTrEowo37TETptUEbhfFSUiMDqZ0Fyet1xf
   csEXe3vKdtaogP/iHrnf0V4dO031n1W92Rtu7eS7ANFOEUoZhjZJTJXyX
   I7AnYnpJHQBk4Yma+ztiFA6g13wWENrXz8qtvnqKwQnl4ki8tuhnITtEs
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,221,1661810400"; 
   d="scan'208";a="35858822"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2022 18:52:55 +0200
Date: Fri, 28 Oct 2022 18:52:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Saurabh Singh Sengar <ssengar@linux.microsoft.com>
cc: Deepak R Varma <drv@mailo.com>, outreachy@lists.linux.dev
Subject: Re: understanding metavariable
In-Reply-To: <20221028142616.GA25857@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Message-ID: <alpine.DEB.2.22.394.2210281851440.2993@hadrien>
References: <Y1vfuDzb3yu2CkzN@ubunlion> <20221028142616.GA25857@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 28 Oct 2022, Saurabh Singh Sengar wrote:

> On Fri, Oct 28, 2022 at 07:27:12PM +0530, Deepak R Varma wrote:
> > Hello,
> > I am seeing a few warnings reported by coccicheck where it is suggested to use a
> > metavariable. See this example warning:
> >
> > warning: line 223: should nonseekable_open be a metavariable?
>
> Can you share full more log along with the command you are trying to run.
> Also, please let me know the kernel version you are trying this on.

The semantic patch could be improved by adding

symbol nonseekable_open;

in the metavariable list, to make clear that it is intended to match
exactly.  But it is probably better to focus on finding things to change
in the Linux kernel .c files.

julia

>
> - Saurabh
>
> >
> > I tried to understand about metavariable and how to address this coccicheck
> > warning, but did not fully conclude on my next steps.
> >
> > Could you provide some details on this concept of metavariables please?
> >
> >
>
>
