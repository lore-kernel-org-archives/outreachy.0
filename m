Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214DA1FA0
	for <outreachy@lists.linux.dev>; Mon,  9 Oct 2023 06:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="Sf84SZKN"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=WqvZWxTmGWSkB/NBedVKFhEwSOMQODslE4U2C5qFyRo=;
  b=Sf84SZKNm0s+1HEddVPqonFmm0Q3k+EXcHFJI5LMeRogi5+DKDHqvjLF
   i5SEmElHCGCoF762HHKxaHs9+a7DWsJ2TRP1pfp6RxeUmNR/jc4FFDUQp
   ZALXK05YhysbGHaC5svVP1+OWwaUc2duP7lnUDJ9sMg76nWecLj9Hi2nQ
   o=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,209,1694728800"; 
   d="scan'208";a="68111048"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2023 08:42:59 +0200
Date: Mon, 9 Oct 2023 08:42:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Deepak R Varma <drv@mailo.com>
cc: NAKITYO JOANITA <nakityojoanita51@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
In-Reply-To: <ZSMfu/rf3zKmsdKl@runicha.com>
Message-ID: <a108a93-36a0-ddc7-a53b-4d53346cc211@inria.fr>
References: <alpine.DEB.2.22.394.2310081349520.3223@hadrien> <CAOJCLCswxE=xNorJ3XROW1DRLBGRNyF=YY0BoOdW=9pdj2U6wA@mail.gmail.com> <alpine.DEB.2.22.394.2310081411300.3223@hadrien> <CAOJCLCsxH8jFPW9+o01hWJmNwPVTKMMdn0aB3R3-r-rySmpCtQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081423550.3223@hadrien> <CAOJCLCsBxra_E30bb5kzSdSotJfaj546LJ_r1qLW-RXpOhjLhw@mail.gmail.com> <alpine.DEB.2.22.394.2310081454060.3223@hadrien> <CAOJCLCv39n+W4VPwXTwqsKPo6XmaQ9XcCDVqLb4j3=t-cCQjEQ@mail.gmail.com> <ZSL3Jm9LfQwt6O7M@runicha.com>
 <alpine.DEB.2.22.394.2310082046560.3223@hadrien> <ZSMfu/rf3zKmsdKl@runicha.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 9 Oct 2023, Deepak R Varma wrote:

> On Sun, Oct 08, 2023 at 08:47:09PM +0200, Julia Lawall wrote:
> >
> >
> > > If you are using GPG, the configuration may need to be corrected. Check if this
> > > thread helps: https://stackoverflow.com/questions/49332245/cant-reply-to-email-via-mutt-with-gnupg-asks-for-keyid
> >
> > How does one not use GPG?
>
> I do not have any GPG configuration, keyrings for my setup, but I have been able
> to work without any issues. I am not sure if mutt internally manages that for
> me, but I did not do anything exclusively.
> Please enlighten me if I am missing a point.

I guess that there is some configuration option in mutt that is causing it
to expect GPG?  What should be removed to stop it doing that?

thanks,
julia

>
> >
> > julia
> >
> >
>
>
>
