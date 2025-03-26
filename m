Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327A221517C
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 17:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010544; cv=none; b=hu1yVvTWGbJiHFoOpqqtqixYVH3JLm+FqQKHQfqAr+a6uDCmkQNluPZtt3+R8HhBiCpPd/7TvgPu+p1I5z8ME22a37EFX/3EQg8kopAS/+z186KW4WOfKviPmBE2tU7Ii7FxQHx/EH+FB0cd2hszqInwbrg+xqaabozEPrys9n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010544; c=relaxed/simple;
	bh=qc1Y9aTKELduXnHYAxBoFMcoGyJpb4fBICfZpYqBcns=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=SBBn1wRi+TqjrIK2GE2yaciI6p2FSyL4I7wuzyFYAMlyv9j+Do1LUaeCTmpcnjvdyammWUN12zsDUqidm46PFsPTmtuxat5srUmP+KONx8wYCEIkliB2Ov9ZB3BtKnCJnE5E51zo9NP+4tTwQFPdNxXO/erZiPyF6ha5uLWG0LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=bIg1gk9o; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="bIg1gk9o"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=b0TdzXiWpkBfWS2ullvljABd5Wk0fakiDEQRrkQYlW8=;
  b=bIg1gk9oKLkwtDRnQfht+VXY8bE9i2ErH1exRtG196T/RWMk66QYhpmv
   3wcYwj/+toVr2MxE/gtUd+ZM/b4oC2ooPsFQ4C1nnVML9JetRg4cT3CeH
   nJmi89snFNWuQ7T+yySOvc/xdaeVckVVDcePouVncuMLK7mrgqqKfy3iv
   U=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,278,1736809200"; 
   d="scan'208";a="214932826"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2025 18:35:39 +0100
Date: Wed, 26 Mar 2025 18:35:39 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Confirmation on next steps for contribution
In-Reply-To: <CADYq+fYrDqmFS=+U2jhGAqNr19rp1ChFaog6C=o5DCQFS7FxCA@mail.gmail.com>
Message-ID: <d273923a-3833-9bcb-9771-dca770d0d8a8@inria.fr>
References: <CADYq+fbMox6e7AJMkoEmYjjt-V4L29oy9WyDcL0W8pw_KL3b=w@mail.gmail.com> <ff7f6d0-3efc-d977-d1fd-2349f331a6d0@inria.fr> <CADYq+fYrDqmFS=+U2jhGAqNr19rp1ChFaog6C=o5DCQFS7FxCA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1677651825-1743010539=:29735"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1677651825-1743010539=:29735
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 26 Mar 2025, Samuel Abraham wrote:

> On Wed, Mar 26, 2025 at 5:57 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> >
> >
> > On Wed, 26 Mar 2025, Samuel Abraham wrote:
> >
> > > Hello Julia,
> > >
> > > I hope you are having a great day.
> > > I just wanted to confirm the next steps for our contribution.
> > > Do we send more clean-up patches and how many accepted ones
> > > should we have before we can move forward?
> >
> > Previously we asked for 20, but there are not that many opportunities at
> > the moment, so I would say 5.  Basically, you should get your patches
> > acepted on the first try.  And try to look around to find more interesting
>
> Okay thank you for your response.
> So do you mean we should try to get our patches accepted with
> the very first version we send? Like it should be accepted without any
> corrections?

Yes.

>
> Also how do we know when a patch has been accepted. Is it when the "Reviewed-by"
> tag has been added by a reviewer?

When it is in Greg's git tree.

julia

> > things to do.  How does the code look different from other Linux kernel
> > code?
> >
> > I will post some more pointers to suggested cleanups on the weekend.
>
> Okay thank you for this
>
> Adekunle.
>
--8323329-1677651825-1743010539=:29735--
