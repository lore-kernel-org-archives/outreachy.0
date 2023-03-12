Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE194C97
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 16:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=P5WoUWW8/gv7J5P3MgcMHr2VhiR8LQ2qrYBEiZ9/pj0=;
  b=qDHSsjx36ADvUBD4DFmNckgVXKbr+cZu52MLuYxXDVpkLDB6eeP3APm3
   8tGavUBy85zmn30f+xqF7bfPFXRpfTtVrmMynvsMsI8iLP8iAJW4wRzP/
   EJVCFPFGgiv580SqRPME6QzQZ/kXQYjH8zlP/T9SPxngLsJirQDe6xnhN
   U=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,254,1673910000"; 
   d="scan'208";a="49931443"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2023 17:14:40 +0100
Date: Sun, 12 Mar 2023 17:14:38 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional
 statement
In-Reply-To: <20230312155201.GC28100@ubuntu>
Message-ID: <alpine.DEB.2.22.394.2303121713130.2865@hadrien>
References: <20230312122928.GL14247@ubuntu> <alpine.DEB.2.22.394.2303121412090.2865@hadrien> <20230312152701.GA28100@ubuntu> <alpine.DEB.2.22.394.2303121631170.2865@hadrien> <20230312155201.GC28100@ubuntu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > OK.  Was the information in the outrechy tutorial sufficient?  If not, it
> > could be good to extend it.
> >
> > julia
> >
> >
> > >
> > > Regards,
> > >
> > > Sumitra
> > >
>
> Hi julia
>
> No the information present in the outreachy tutorial is not sufficient.
> It doesnt contains steps to make the inbox. Infact the other link https://www.makeuseof.com/install-configure-mutt-with-gmail-on-linux/ was more of use.

OK, it would be good to extend it.

Note that you should not just reply at the end of the previous message.
You should reply under the relevant text, like I have done.

julia

>
> Regards,
>
> Sumitra
>
>
