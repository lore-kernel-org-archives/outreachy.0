Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D97227E99
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 12:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742561104; cv=none; b=tONgccB3hUcaTEn+S2ZAAyh26Qjn+GZQFxQcQghE+S0BNubbuRvrpIJpCAR0PVMQTkOOFOILgbo8TlA2mXx3uFgCIMDjzTsWUujDfgj+6kngHL6VauxGhfhpIPX8LuxEjXV+1LLhmW9x1r2HN3rosCaQcF+9LffMzRFTtfc+eAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742561104; c=relaxed/simple;
	bh=T0SLBsAhXhT6XELG2UcaTq33EKDJYoSkFqJshbUFZkk=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=kw1XsEyVxuxbsYrv1nCehnUhTDZkEW4MP9Rd8GPdH5Di1vJ3bbKLGDDyPopq/ixFRMUB5zTiuMHl1WsEEUJaGGbMC5t1xJzBKIuKCgxq5VN+53QKN7z9qi9E8grlO9WcsUdJSOEHGgOMSvMF/tbw25O3bwewhBJlNLf6Frq8EkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=XiHMDgQK; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="XiHMDgQK"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=mfNmtN2+LZTHbOgTRuqwEPlfTUIqpMVAoxGgWd39jUw=;
  b=XiHMDgQK6go1zu1sCECh9rFwCweDwXuZn73XYn45F0laDmAfCBv8xSi/
   CEO6jMaknjleoT4ngTMhYoCnsCVJXAamXI/gt60XMJi5GMC4lCde0zgd9
   c6Mwv5yF8QQ9e+ppZIwuxR7GGQilIh8kl7J6leyoX/Fr457GkRALa0BA0
   s=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,264,1736809200"; 
   d="scan'208";a="214124805"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2025 13:44:55 +0100
Date: Fri, 21 Mar 2025 13:44:55 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: erick karanja <karanja99erick@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: status?
In-Reply-To: <be69c555-a37-6ca3-fccb-8caeb327110@inria.fr>
Message-ID: <54ce2fdc-7291-148b-dcc5-b66cb52b6f19@inria.fr>
References: <18312c4a-13ec-d7b6-d5cf-e5fd24355ee@inria.fr> <CAK=KnqSbNyds2j=81u34iN0t8X3VTW9pcyRzPeooscGnty-GDA@mail.gmail.com> <be69c555-a37-6ca3-fccb-8caeb327110@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-151884415-1742561095=:3459"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-151884415-1742561095=:3459
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 21 Mar 2025, Julia Lawall wrote:

>
>
> On Fri, 21 Mar 2025, erick karanja wrote:
>
> > Hello, I was able to modify the kernel, add the message to a probe
> > function,  compile and install the kernel.This was a success and I viewed
> > the message in the kernel logs.I also worked on my first patch and I am
> > awaiting its approval. 
>
> Sounds like good progress.  Please CC all patches to this mailing list.
> That way, you may get faster feedback, others can learn from any
> discussions, and others can avoid working on the same thing that you
> changed.

Ah, I just saw your patch.  Thanks!

julia
--8323329-151884415-1742561095=:3459--
