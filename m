Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5185D8F42
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 12:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="AE5MuTe3"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=VdkkmDEIE/IOgzzkMrs6TfEGUTwCmhqkh17mxRWMwf0=;
  b=AE5MuTe3NuCJxoypLJhNPNPnifGKCW6PhDmQYgWnJ3pvC5MdsBxQbRE4
   IvrHquHfLUM0yKvcmn9Dmj4JBYqh9n4rnXFvBC0YNtMimx6xsuF2+tgYr
   wrvLa1QklaByjg5mt2ptaTNPMPAK69F99+OaXxhUV9fHt5L8UbrVB3QyE
   k=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,207,1694728800"; 
   d="scan'208";a="68078736"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 14:13:43 +0200
Date: Sun, 8 Oct 2023 14:13:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: NAKITYO JOANITA <nakityojoanita51@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
In-Reply-To: <CAOJCLCswxE=xNorJ3XROW1DRLBGRNyF=YY0BoOdW=9pdj2U6wA@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310081411300.3223@hadrien>
References: <CAOJCLCujLWVgMy-DrPsj2LLWz07t6UZOoSJU7jcVLgpbemyfpw@mail.gmail.com> <alpine.DEB.2.22.394.2310081225160.3223@hadrien> <CAOJCLCvJC5eoMCWPD_WkREYX0xftE80P+oPSrbqDvh+yVimg7g@mail.gmail.com> <alpine.DEB.2.22.394.2310081254370.3223@hadrien>
 <CAOJCLCsbVPuN9S1GK0g0XmPp8hW26vrbiPOCUSBo7pbCQdDtNQ@mail.gmail.com> <alpine.DEB.2.22.394.2310081349520.3223@hadrien> <CAOJCLCswxE=xNorJ3XROW1DRLBGRNyF=YY0BoOdW=9pdj2U6wA@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:

> I'm sorry about the top posting I don't know why it keeps happening,

I would guess that it happens because you put your message at the top of
the message that you have received?  But if that is not the case, and
you have put your message under the lines that you are replying to, please
send a screen shot showing how things before you send the message, and
maybe I can see what is the problem.

> maybe because I was hitting the reply button instead of reply all. I
> am happy to offer help since the messages won't be clear, maybe I can
> write an article or send a detailed email. Thank you

That would be very helpful.  Thanks!

julia
