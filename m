Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAD81846
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 16:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=GZpOLVdcxJig7fTtyaR/Ezr/icF6TnPETZ0Aw8UQQxg=;
  b=ZCQLYcnAywdAikNHF1ku/wwhulAQFbHj9vjOmsdk3x3Z4jtCBk//9MDj
   zl3N9yy5rl8dPPk2ebEJN8W5N2nJPt7kTAsI7h+ni7z2n2zwslVot2/F2
   yR1d3yhm180aYnv95nguQ2gscQaeGUiOlPBHic2JOx2ROjIS4UxolP59b
   o=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,274,1673910000"; 
   d="scan'208";a="50613669"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 17:20:08 +0100
Date: Sun, 19 Mar 2023 17:20:06 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: warning when converting `to_gbphy_dev` into inline function
In-Reply-To: <8132a849-49f1-d280-5ce0-9d1904c8b2ec@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2303191719200.2867@hadrien>
References: <16c61a62-c149-bf0e-0dd7-21e4ba9c6d1d@gmail.com> <alpine.DEB.2.22.394.2303191625290.2867@hadrien> <8132a849-49f1-d280-5ce0-9d1904c8b2ec@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1364255215-1679242807=:2867"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1364255215-1679242807=:2867
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 19 Mar 2023, Menna Mahmoud wrote:

>
> On ١٩/٣/٢٠٢٣ ١٧:٣٣, Julia Lawall wrote:
> >
> > On Sun, 19 Mar 2023, Menna Mahmoud wrote:
> >
> > > Hi Julia,
> > >
> > > I tried to convert to_gbphy_dev to inline function but got these warnings
> > > while building:
> > >
> > >
> > > ```
> > >
> > > drivers/staging/greybus/gbphy.c: In function ‘gbphy_dev_uevent’:
> > > drivers/staging/greybus/gbphy.c:76:61: warning: passing argument 1 of
> > > ‘to_gbphy_dev’ discards ‘const’ qualifier from pointer target type
> > > [-Wdiscarded-qualifiers]
> > >     76 |         const struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);
> > If you look at the code it is complaining about, the context is:
> >
> > static int gbphy_dev_uevent(const struct device *dev, struct
> > kobj_uevent_env *env)
> > {
> >          const struct gbphy_device *gbphy_dev = to_gbphy_dev(dev);
> >
> >
> > So dev has been declared to be const, meaning that the current function
> > should not modify its contents.  But dev is passed to your function
> > to_gbphy_dev that does not declare that its parameter is const.  So the
> > compiler is concerned that your function may modify its contents.
> >
> > There are other calls to to_gbphy_dev where the argument is not declared
> > as const.  So one could be concerned that a function is not possible,
> > because some calls have an argument with a const type and other calls have
> > an argument that does not have a const type.  But this is not a problem.
> > You cannot pass a const value to a non-const parameter, but you can pass a
> > non-const value to a const parameter.  And to_gbphy_dev doesn't actually
> > modify its argument in any way, so changing the parameter type to const
> > struct device * makes the code compile.
>
>
> understood, so, no problem to keep the inline function as it is, right?

No, the function has to be changed so that it compiles.  Read the above
again and look at the code to understand why.

julia
--8323329-1364255215-1679242807=:2867--
