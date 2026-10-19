Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA82A182D6
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 00:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792369566; cv=none; b=D5ogy7rvD0MpBp0h4OZyg5stMllonRqCgsSYWPXmhwoH4JBgReO7gwqtPZm4Q35WvLOFR/oHOgayzLjd6RfJvxT4F+8ya1RAq0d1XkR/hywOuK1zFlfwJSc8S0gbDu12ppDwuG1wik08uHN29cv+3X+3LSeE9MR1rlWDb5s3T0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792369566; c=relaxed/simple;
	bh=5E7axThs9MvdrUmVETnhG6+jhz1oJllRjr92H44UdDo=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=R0SUY9rPwQpZGOp8v0XQKG5knMlKOMKPmtrDwEMiLhcQp7NjKHNGHhErCHlbdHCe2/8M7vrvMgYXu673pjLGaRe9gOmwPbZ+KsshlNAossM063oF9hm2RGWBzT3F/4bdGC6b7hazCBzunDRUw3AnI4pRroXYlbqegchgDIxDuYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=NDivlYUK; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="NDivlYUK"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=x4hAZr7JC+sLeCVkzpe5lrwl0OD9+FTdeciAKrMi4+0=;
  b=NDivlYUKpVSf2QTeub+95RWTWKpI6LRHqe6h1cNhLrYzjzKNpyhJpLN2
   SfVRxVI0zGJHiTpwfo8ECA2qvddEzwX150z5nc1oeYepulwfsLyYoAXL3
   o24uOsNYpUlHqxoF+9XCe48ZuR8kdL9zfd7eeZk94isuleLy7ml0u5TjK
   c=;
X-CSE-ConnectionGUID: 0GO/iXQHSlK1eXCiNmzq/Q==
X-CSE-MsgGUID: s+XMTdHSSBeMax8kbm4zcA==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,166,1787004000"; 
   d="scan'208";a="160166223"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO hadrien) ([76.123.3.53])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2026 02:26:00 +0200
Date: Sun, 18 Oct 2026 20:25:57 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Comfort Oyewole <coyewole7@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] ComfortOyewole
In-Reply-To: <8e80fdd3bd43a3ac4e90085d3b33174e87af62eb.camel@gmail.com>
Message-ID: <3942ed9-80c7-7a66-c61f-88f6142dea1b@inria.fr>
References: <8e80fdd3bd43a3ac4e90085d3b33174e87af62eb.camel@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-967600680-1792369560=:3376"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-967600680-1792369560=:3376
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 18 Oct 2026, Comfort Oyewole wrote:

> Hello Everyone,
>
> While following the steps in the Outreachyfirstpatch documentation, I
> noticed that the link referenced for the Linux kernel coding style is
> not accessible here:
> http://elixir.free-electrons.com/linux/latest/source/Documentation/process/coding-style.rst
>
> I’d like to propose updating it to the official HTML version on
> kernel.org, which is accessible here:
> https://www.kernel.org/doc/html/latest/process/coding-style.html

Thanks for the report.  On what page do you find that link?

thanks,
julia
--8323329-967600680-1792369560=:3376--
