Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD9736C0DC
	for <outreachy@lists.linux.dev>; Wed, 14 Oct 2026 19:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792004719; cv=none; b=UuBBEf1j36prllEmIjtEofOc268dzVGU55pWza5EJdF7vx4UzQ6tJdjJs5kWL8ntxXRuyjaUXp+yP7yQMi8FoVdkQ7iyxIPuTi6IZi6EGi5SkI30f+ILgIl8yrBq76JownM+0aW8efZP6oYDv3BrWNBEP6ALhpCSr3fMANzUHUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792004719; c=relaxed/simple;
	bh=OLsVDeX644sfjX0GkDGNKJbcHu2vFYFblFyaKLrS7kU=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=r/V2Rhbk1/jaB0gmN0xObQa/zXEca0Sq0c0OoVDTu8042wO6Vz9Xt/cPLspWusLhqzbdyJpww4kWgFDCSy9fCuu7L0m8nbZG8MBGfxrEJ7uwXoWzAw90U++IJOeXshSbSwTLq8kMD50Wjm00u3ww1JvsnU//PBX+FspkUGQ+B4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=FlNJb/Wg; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="FlNJb/Wg"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=OLsVDeX644sfjX0GkDGNKJbcHu2vFYFblFyaKLrS7kU=;
  b=FlNJb/Wg6AD77RN9u1IpNkIyUCZKYgDe93G/071GaOxRuie7BtszWzJd
   ZGHu5152Pokf8CSETsa7B+qpRFa91gQOjAlklNdjd3J6FqqywecOm1on3
   G6dkipNuRWFQnFUrWfeHNTsAXzBglGvGq3zv+YNHzse5iTu0JTffwpBoU
   k=;
X-CSE-ConnectionGUID: o61P34OHTuKUpsV5fvljZQ==
X-CSE-MsgGUID: VfR6pHhmQP6M20ESqhlTig==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,158,1787004000"; 
   d="scan'208";a="159839750"
Received: from static.host-68-71-1-178.nrbn.ca (HELO hadrien) ([68.71.18.178])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2026 21:05:11 +0200
Date: Wed, 14 Oct 2026 15:05:09 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: haasham <haasham93@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Linux Kernel Project
In-Reply-To: <CAFmYDUGjivAfSZut01r3-AeuKbte_teOMTr9b9FMH0F7zCFMgg@mail.gmail.com>
Message-ID: <cff25bab-1a7c-faf3-ace0-db1cfbaf71a2@inria.fr>
References: <CAFmYDUGjivAfSZut01r3-AeuKbte_teOMTr9b9FMH0F7zCFMgg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 14 Oct 2026, haasham wrote:

> Hi everyone,
>
> I am Haasham, an engineering graduate currently working with
> Kubernetes. I am interested in learning more about Linux Kernel
> development and how things work at a lower level.
>
> I am applying for the December 2026 Outreachy cohort, and the project
> on removing unused tracepoints caught my interest. I'm looking forward
> to getting hands-on experience, learning from the community, and
> contributing wherever I can.
>
> Looking forward to connecting with you all.

Nice to meet you. Thanks for your interest!

julia
