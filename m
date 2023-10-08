Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EF25666
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 12:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="J4Tb59aR"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=mCbOzaZC8UAXkcJXg3VEiJnRw9rIGxiJ/Tv8HIHFmAY=;
  b=J4Tb59aRAD5r2V9eLbh8JMXFwQFjV1mKDUW0n+iB++hs3c76L7bAlr5E
   bRX9c+EDnebG09U6xE+v3v4wCJVgIcoEnc58bGX/L9Z72QhbcCO6EiMep
   F9drezhVnfVnOyjSIuUcp3Hf1PVutl/ymG2ckH7j8zeNOlFc6SK2r9Zrt
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,207,1694728800"; 
   d="scan'208";a="68079559"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 14:55:54 +0200
Date: Sun, 8 Oct 2023 14:55:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: NAKITYO JOANITA <nakityojoanita51@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
In-Reply-To: <CAOJCLCsBxra_E30bb5kzSdSotJfaj546LJ_r1qLW-RXpOhjLhw@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310081454060.3223@hadrien>
References: <CAOJCLCujLWVgMy-DrPsj2LLWz07t6UZOoSJU7jcVLgpbemyfpw@mail.gmail.com> <alpine.DEB.2.22.394.2310081225160.3223@hadrien> <CAOJCLCvJC5eoMCWPD_WkREYX0xftE80P+oPSrbqDvh+yVimg7g@mail.gmail.com> <alpine.DEB.2.22.394.2310081254370.3223@hadrien>
 <CAOJCLCsbVPuN9S1GK0g0XmPp8hW26vrbiPOCUSBo7pbCQdDtNQ@mail.gmail.com> <alpine.DEB.2.22.394.2310081349520.3223@hadrien> <CAOJCLCswxE=xNorJ3XROW1DRLBGRNyF=YY0BoOdW=9pdj2U6wA@mail.gmail.com> <alpine.DEB.2.22.394.2310081411300.3223@hadrien>
 <CAOJCLCsxH8jFPW9+o01hWJmNwPVTKMMdn0aB3R3-r-rySmpCtQ@mail.gmail.com> <alpine.DEB.2.22.394.2310081423550.3223@hadrien> <CAOJCLCsBxra_E30bb5kzSdSotJfaj546LJ_r1qLW-RXpOhjLhw@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:

> I think it's due to the different applications we're using. In Gmail,
> messages are displayed in a conversation view, similar to the
> screenshot attached below.

Yes, I see that point.  But the point is that you can't use that interface
when working on the Linux kernel.  Now that you have mutt working, maybe
you can use mutt for all of your communication about the project.

Or maybe someone else has a suggestion about how to avoid the
conversation view in the Gmail interface?

julia
