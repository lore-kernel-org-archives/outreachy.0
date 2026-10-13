Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7861522695
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 17:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791911899; cv=none; b=mNXfNnOMWPWZN75XIDpT62Jr4aEjhcKnYnNpMxN9sILLUj3Z+n3wrarAHj2LkngiHa8xpqS3iHgPqQWKni124v7BT0qDwbGsxY+/2/N2uTMYMteniVLh5atPJ4PF4n19Ch5DlGFlVMm1OPJydWPgFPn3efePUlj5jFwjHlD9zIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791911899; c=relaxed/simple;
	bh=InCiPAoeWiclgUg7xbDiG2VF6kbzdazkuNaO/OFX2UQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=PZt0mh8M80prE0AHkuk/d3WjnQcmUM1KJdkgOtdLyFLWoxC+NkThekeUWHPxmjgSOiih78Otdl6GPZcmTTgWLLdv0oj4MO63k+v4oYF1DZR8afREmFAVuhh8cVoV7ou3X5b0DiNLXgiwH1Pp09yYXvDn7edn6N9xeQm/VgRW7BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=X3tk1P1D; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="X3tk1P1D"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Nztv1Zw29RQUbIPQOFlJkmIcjwJMWNT/l4iLc2A2jq4=;
  b=X3tk1P1DWZ0p4KhiTgKG41P2oRt29VzX+nx3D6eR356KXenKjHrMFqht
   bLHJsaGWqkXmnj/hpj+VtgrMC2u8xDVj9q0+ZPqvWMPg9LGL8TtDpK36h
   4ZhH1/Mg3BOLY4/lhJY1plIaAoC3YUmXWyIbQm7mI8wuJ5wbh3n2TXOBw
   0=;
X-CSE-ConnectionGUID: j3hcGV1wRtmgEMWn/B8jYg==
X-CSE-MsgGUID: tC45D6vHSnmo/3FOIP9dHg==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,156,1787004000"; 
   d="scan'208";a="159720625"
Received: from static.host-68-71-1-178.nrbn.ca (HELO hadrien) ([68.71.18.178])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2026 19:18:11 +0200
Date: Tue, 13 Oct 2026 13:18:05 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Jeremy Clifton <deaner92@yahoo.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy@lists.linux.dev
Subject: Re: [PATCH v2] staging: nvec: use guard(mutex) in
 nvec_write_sync()
In-Reply-To: <47090350-2dcd-4d7b-a73e-681f68ff3a1c@yahoo.com>
Message-ID: <9e76c96-9412-dae-5357-39f0b96455cd@inria.fr>
References: <20261012222926.7754-1-deaner92.ref@yahoo.com> <20261012222926.7754-1-deaner92@yahoo.com> <2026101335-expansive-veteran-c4d6@gregkh> <47090350-2dcd-4d7b-a73e-681f68ff3a1c@yahoo.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Oct 2026, Jeremy Clifton wrote:

> OK, it's understood. I'll look for another candidate.
>
> Thanks for your feedback.

This is top posting.  Please don't do that.  Put your response under what
you are responding to.

julia

>
> Jeremy
>
> On 10/13/26 12:15 AM, Greg Kroah-Hartman wrote:
> > On Mon, Oct 12, 2026 at 10:29:26PM +0000, Jeremy Dean Clifton wrote:
> > > The three return paths of nvec_write_sync() each release
> > > sync_write_mutex with explicit unlock calls.
> > >
> > > Use guard(mutex) to unlock the lock automatically on any return
> > > path.
> > >
> > > This removes the three mutex_unlock() calls.
> > >
> > > No functional change.
> > >
> > > Signed-off-by: Jeremy Dean Clifton <deaner92@yahoo.com>
> > > ---
> > > v2:
> > >   - Reword the commit message to state the motivation and to make
> > >     clear that removing the mutex_unlock() calls is the result of
> > >     the change (Julia Lawall).
> > > v1: https://lore.kernel.org/all/20261012171312.5998-1-deaner92@yahoo.com/
> >
> > Please read the archives for why I will not take guard() rewrites of
> > staging drivers (nor do I want to see you use a LLM in here either.)
> >
> > sorry,
> >
> > greg k-h
>
>
