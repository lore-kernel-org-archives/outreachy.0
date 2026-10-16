Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B494CF475
	for <outreachy@lists.linux.dev>; Fri, 16 Oct 2026 21:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792187962; cv=none; b=rkfa1H/Ox9BeO1pDML28CqViqOj2kw0WRgJjDhVoDahCxuY50U6ct7mLog280B1IECWB2rYb9wjPPoX79LfZr/zzURhtBrfyYUENXunENot+3qkw53PqoBSrGxF+jkzG7ARv0aWEkXPMLUBAcfUXp+bFzYVHhTPa6KHRmj0HuK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792187962; c=relaxed/simple;
	bh=5nKwiExAYFZJ7frtYx4CZ+nt1Uh7YWBcpWrEukSYJZ4=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=XyZ/5LVrJiJdp+bFauqiny4gWTBMklCubYD3HB5zvymLVq1La22eUueccZOznzbLK1bRDCdhYr9Q73oVkCFN7prKFGQch6lohxAZx9uFE68C4A5Yq6FgoTBi8e3qtyLab1OZ9LsJ+c/inARJ7ZZdgtohHk7CHWSpQ4RN0uiEwoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=VKG8bWu7; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="VKG8bWu7"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=SKOz5KX5XI21BHRU3wS+6GeOXXGFUG4YwvndhUQe8n4=;
  b=VKG8bWu7mVyXGoW8+tNMXIogTnSGYRj/agUsPR2eLLTiarKRTXZJ2VdQ
   wdCj3JMP9LuacWeuLBcJEAv29BQdWqYzIqz2r1K/lWKx1qPVmOV6r0szh
   w7fzMvUD6yg0eDvB1SYYFVUBDGQpPFKNTzWlEoxIDYeb6KJ2Hi66jQ7Pp
   o=;
X-CSE-ConnectionGUID: 4ZrjTZ1aRwOhhHfR2sBb9g==
X-CSE-MsgGUID: Rzwu5/rSQvSbBAP4wG3+jQ==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,162,1787004000"; 
   d="scan'208";a="300641496"
Received: from unknown (HELO hadrien) ([104.129.158.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Oct 2026 23:59:15 +0200
Date: Fri, 16 Oct 2026 17:59:13 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sowmya Torra <sowmyatorra@gmail.com>
cc: outreachy@lists.linux.dev
Subject: =?UTF-8?Q?Re=3A_Introduction_=E2=80=93_Outreachy_December_2026?=
 =?UTF-8?Q?_Applicant?=
In-Reply-To: <CAFsBPPkBKvDUrwW+7Hv_jhQPVVbCStaSYX4o+x4TrB+OhtQQ3g@mail.gmail.com>
Message-ID: <38da5510-7c99-30b2-8a42-13d5cb51f852@inria.fr>
References: <CAFsBPPkBKvDUrwW+7Hv_jhQPVVbCStaSYX4o+x4TrB+OhtQQ3g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 17 Oct 2026, Sowmya Torra wrote:

> Hi everyone,
>
> I'm Torra Sowmya, an Outreachy applicant interested in the project
> "Remove most known unused tracepoints from the Linux kernel."
>  I've joined the mailing list today and am starting with the First
> Patch Tutorial. I'm looking forward to learning from the community and
> contributing to the Linux kernel.

Welcome!

julia
