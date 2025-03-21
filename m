Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC41A223321
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 12:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742560707; cv=none; b=UgfMwtnZq2ETvYzpbqb1uq3CWSkJLy4shY4HJJpWcD4/a8sZZhT8xhTCuSKR+0gI7GjcnzWD6svCPR+FSjurhFooqU68xcBt45AOhdP2meqV3SzOM3QudxIaX5ip27Sf6erWUwWMKY1GoZtGsHZTvsdnQu0Wg/4PTyXwrGYZgN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742560707; c=relaxed/simple;
	bh=q/kpiqt8jOkkY4fTySAyBsPjShKZJhoR7h29pgq0d8Q=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=PvQUg9KIFt2INHjrmWogQBzcRrdDenM9WrSjLf3EJkSnS6ZYDfquOdMtdENfu5l21aZe5DQAfDtwt+VbVe4dYdKwxQ3eZPgwo+YnYs9S/YWnrlGF6UnX/rlHgTQfVv9AfOUyx4Qija/zR1xqZ0AWbQiX9CNnXYV8qTzMUjusNpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=N2roWMfy; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="N2roWMfy"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=VzlGh8Mi6+HYwJUxSlLfg933M8/iKy5GXdhdb0U10g0=;
  b=N2roWMfyO5cpxuXNss7Fwggd5tnXAKyf2vKeWUy2shfWSa5Af3HYOBci
   qJWlGr4KqlOkjwSi6hajFinyET7r60eEpug31dD9s7uY0Jp4Y9p+EWPjF
   8kMkD+zEOPVQXFdgiI8u1oKHLze8c0izWP+zkh2aSShFpTwhqUmOLYqcs
   E=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,264,1736809200"; 
   d="scan'208";a="112252306"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2025 13:38:22 +0100
Date: Fri, 21 Mar 2025 13:38:22 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: erick karanja <karanja99erick@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: status?
In-Reply-To: <CAK=KnqSbNyds2j=81u34iN0t8X3VTW9pcyRzPeooscGnty-GDA@mail.gmail.com>
Message-ID: <be69c555-a37-6ca3-fccb-8caeb327110@inria.fr>
References: <18312c4a-13ec-d7b6-d5cf-e5fd24355ee@inria.fr> <CAK=KnqSbNyds2j=81u34iN0t8X3VTW9pcyRzPeooscGnty-GDA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-280011794-1742560702=:3459"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-280011794-1742560702=:3459
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 21 Mar 2025, erick karanja wrote:

> Hello, I was able to modify the kernel, add the message to a probe
> function,  compile and install the kernel.This was a success and I viewed
> the message in the kernel logs.I also worked on my first patch and I am
> awaiting its approval. 

Sounds like good progress.  Please CC all patches to this mailing list.
That way, you may get faster feedback, others can learn from any
discussions, and others can avoid working on the same thing that you
changed.

thanks,
julia
--8323329-280011794-1742560702=:3459--
