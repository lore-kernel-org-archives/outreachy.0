Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49102E3360
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 07:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743578526; cv=none; b=MajIy5KYzEdHgDNlOa8G+uSNw7lrXFcVMJUiXl4XLKDArM1vnxi6z4DlWGJqv5gRwk+f6Ro3ptHvzUPprBoyLaPzvKXn749FCQCcxE2u57qJsWK/q6Hz4ee2Eh2tcOL4yqPVJxZ+ORFn3NTy0w0z+HHqafJcEIrNPYI1+gXa2r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743578526; c=relaxed/simple;
	bh=qG94NuBTPBjYwHMyYO3KqOqgwDAX2f9u9UqFC4rVeak=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=gnvlIQjZX0Wkoy2E/Cwrektt2joDjsf1jQQ4boJbAfMbGBrCNz22IYUpdQC++lu13RKhYyri1W4DbiDAOb3lLLxJ2HVpG+/PaTiCZcVRExkvNzYX6Y5Sy3uc0Bt45hIOLyDKgOyFlrMqIJVrAsVY2HIZhbQQ4HFWLeiElT7ZjYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=RM9tiKVY; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="RM9tiKVY"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=AZDuegvwP+oBnrKJeDU3pNWtW4EClINTBEcewnWsfco=;
  b=RM9tiKVYR/no/jpeK5gYH7/P6NQJzlWFtWqWdIexN+A10cThBf5yL73F
   EzRh+uiyTFlpJ9GOyG0ivbMO9brPW1zFmbq4+yQ6AjzYr/I5wthpY5z3o
   AETb9XWHLfJwntBwP0CCIqwQBtUidrDEyMXFnFera79xRs/dP9Vn81ARy
   s=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,295,1736809200"; 
   d="scan'208";a="113216178"
Received: from powered-by.xenosite.net (HELO hadrien) ([89.255.17.162])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2025 09:22:02 +0200
Date: Wed, 2 Apr 2025 09:22:01 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: patches
In-Reply-To: <CADYq+fauoeq0fPbV10d0fwnoOSG7=5-_Gd5jCKuJ-rJmoqMp6A@mail.gmail.com>
Message-ID: <39c4d11d-db3d-d954-cc7a-373ab172cbf@inria.fr>
References: <cd684867-6bd3-f7ef-9672-6513e0efa336@inria.fr> <CADYq+fauoeq0fPbV10d0fwnoOSG7=5-_Gd5jCKuJ-rJmoqMp6A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Please do you mean we can run some checks on drivers just like check patch?

Yes.

> I saw the coccicheck binary in the scripts/ directory but I am not
> sure how to run it
> on a driver if that is what it is meant for.
> Could you please provide some guidance?

I previously sent a link to some coccinelle semantic patches that I think
can be useful for staging drivers.  Just put one in a file, say sp.cocci,
and then run spatch sp.cocci drivers/staging --very-quiet.  You can also
mention a specific file.  It is nto necessary to use make coccicheck.

> > not necessary to send such patches at a large scale.  Working on one file
> > at a time is fine.
>
> Also, I would like to ask that when a driver is eventually transformed
> using Coccinelle,
> how do we indicate in the commit message that the suggestion and the
> transformation
> was done using coccinelle just like we do for checkpatch?

Ideally, you could include the semantic patch, particularly if you are
makign a patch series; then you can put it in the cover letter.  If the
semantc patch is quite large, then putting it in an actual patch may be
overwhelming.  So you could just say Found using Coccinelle.  If it is
small enough, or can be simplified to be small enough, then it can give
the maintainer some information about the reasoning that went into
creating the patch.

julia

> Thanks
>
> Adekunle
>
