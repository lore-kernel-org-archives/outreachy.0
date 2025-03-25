Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CD738385
	for <outreachy@lists.linux.dev>; Tue, 25 Mar 2025 06:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742883862; cv=none; b=CbtZG9MMwJrTMRyVOOctRdXkS6wj6mSS7BMMGg7rIYyZmEVjZaR+8Nx5sZL7tcdUDS0u2swvukx1UirglduUX0hZZwumGaBnyXmzl9ltZqEEpqb52WV10hXHy6r6CWsNXnt9ChfHe3SOYZioXrfQ8uHZJHh/1R6Rycsk05lu8dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742883862; c=relaxed/simple;
	bh=/dnoNrtCdeX2ocp98SYO26OP7nuKa4FnpZmoqgrErQQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=ppWBwFwI0UVTLF6vZfvRoHU7t1mdKVEnRvq3nXaScOZG6ls/rGFitHbkpTrpFOmmwDtHrj9lw2kejuc60sON52vsRBhAsDDjRlCA5e+933GT6faH42iBd0hsgYNzw/sDR+0Uvj7G6sfQ5DkFSzaQX0D2zqULpcnlDZ8ZEig9Si0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=KG1nYo9G; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="KG1nYo9G"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=aWeYSfUaywhUcT13YXxQSayy4co3TQ7JDt14cMX/bMM=;
  b=KG1nYo9GLz6jwxg48dUny5IxBImw/fRmr0A03JNQ70mjCc5+KlAkj5pD
   xHLPFe9F5HMpU/2f+b5+dtPbxSuxeqlgDRPxRtGCNSqTm+dT/i95/2FdF
   qYOhy1yVZ9dChhSLMCpoxdZBwbE9GHPKHzDdWhnmxtUJHhONYfrrILAhi
   4=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,274,1736809200"; 
   d="scan'208";a="214560980"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2025 07:24:11 +0100
Date: Tue, 25 Mar 2025 07:24:10 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: erick karanja <karanja99erick@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: patches
In-Reply-To: <CAK=KnqTbWps0B6B+XgP9gY+Jy8ATJqz0Qb8kPMvyHb0wDkNSKA@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2503250722170.3736@hadrien>
References: <e1364a17-c954-b674-d736-d456e2df813a@inria.fr> <CAK=KnqQ4HmEVjWQZiv2xzVhLEwJMZxtWfKb51XyhVyBQOziYEg@mail.gmail.com> <7a7648c5-2731-dc20-224-d5bb639b1c58@inria.fr> <95e69530e3b03f56f4218b8c03a2ca520a0ae6bf.camel@gmail.com>
 <8e95cbac-6b5d-f6fa-e0f5-4c4b42321cd2@inria.fr> <CAK=KnqRsZdAq5FAJo4S0gQbs_PFAm0YrXdBwc-jA7-K1QJhGNg@mail.gmail.com> <617cbba7-67a6-8ebd-bde8-e5e39a786d2@inria.fr> <CAK=KnqS_PC-zKp0yjq4SBFicv+j+PYnpAkCRjpjeKb5OXjNeHQ@mail.gmail.com>
 <721cf04a-5ef1-1829-54ca-96d07f498422@inria.fr> <CAK=KnqRnHK=fma-s63ppm=vZEYhe7SWhKSB6H0cb8i69pUW7FA@mail.gmail.com> <CAK=KnqTbWps0B6B+XgP9gY+Jy8ATJqz0Qb8kPMvyHb0wDkNSKA@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

[Added the list because others may have this question[

On Tue, 25 Mar 2025, erick karanja wrote:

> Hello Julia hope you are well.I was seeking clarification on a
> checkpatch warning "Avoid CamelCase: <VME_2eSST>" this is defined as a
> macro in a header file but on further research I have observed that
> "2eSST" is a conventional protocol name. Should I ignore this
> warning.Thank you.

Indeed, you should ignore this warning for the reason you have cited.
Checkpatch is worried about identifiers like ThisIsAVariable, which kernel
style prefers as this_is_a_variable.  When it relates to the hardware
documentation, that needs to stay as is.

thanks,
julia
