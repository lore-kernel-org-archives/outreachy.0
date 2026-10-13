Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708655208BC
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 17:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791910984; cv=none; b=eNOsLgXa1lk6dl0WAMkFQJtQSZFZi1StkOyXpJvCfDl1330tPHFzECH7cjGjRDPYZVZDpV8t4t07dUsM4gXyswBeT5VazKeGxLSbRLXzeV0t6ty7SYuVRm36yAjLA/fONFcygyb+VQ8TszZlj57ph4+QYqpp4dG7C8DTy6d8/4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791910984; c=relaxed/simple;
	bh=pHNVwWm0nC9/DZ5fqhl7ZtLIdjcj4S8UT9rVpOPIkWc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=AI1n+7B012NGTQUASsr63sO2Mu+4+WcH1QSNDU0hcMpQt6HZhsbhP2dxJcdlseBL6Mfq64YZ3SnTwj6QO3sFQ6f4NYQrM4kVLXywYsTCu2swGPLWG7IOcfJC6Dv7LnDt8QMWaBxqAtEJHOcKjN3PiSaqe5PbaOr5o6Y/KWgmwDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=heEd9YaA; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="heEd9YaA"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ZRb43JU46r1pe5auCzWixNz13pp6YmW7h+71HqWlFkQ=;
  b=heEd9YaAlWTC2rbMns0f+ZO4vcrtpPqHdQES4F/AFcNZczxh6E8y2/xA
   QSoRjcPyEZSSMwRU0cD0fP8puRl76/nnxGHsquA7R3rS6tCKaoWT3tGz5
   gbWZZexDTvTAKaIVXWwMqgpLcv5+pLeqHmKBR8aUiFGYBK6CHH4FdL+Ac
   A=;
X-CSE-ConnectionGUID: A/2kE1VtQDuSCh2XiHmk7A==
X-CSE-MsgGUID: 6FwWj2r4Q0ekV8htqGvz2g==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,156,1787004000"; 
   d="scan'208";a="159719337"
Received: from static.host-68-71-1-178.nrbn.ca (HELO hadrien) ([68.71.18.178])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2026 19:02:57 +0200
Date: Tue, 13 Oct 2026 13:02:54 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Jeremy Clifton <deaner92@yahoo.com>
cc: outreachy@lists.linux.dev
Subject: Re: Patch Candidates
In-Reply-To: <d87d55fd-8bb9-4a98-a93d-0c04de35f441@yahoo.com>
Message-ID: <c7c8c14-3ff6-f8d5-cb96-2338778e8a@inria.fr>
References: <d87d55fd-8bb9-4a98-a93d-0c04de35f441.ref@yahoo.com> <d87d55fd-8bb9-4a98-a93d-0c04de35f441@yahoo.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1220513627-1791910976=:3336"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1220513627-1791910976=:3336
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 13 Oct 2026, Jeremy Clifton wrote:

> Hello Everyone,
>
> Greg said he won’t take guard() conversions in staging, and the welcome email
> suggested them, so should applicants avoid guard/scoped_guard patches?

Indeed, it seems that you should not introduce guard and scoped guard.  I
apologize for not having noticed that.

>
> The same question applies to the other suggested patch ideas. Are memory
> leaks, _obj allocation functions, unused functions or variables acceptable
> candidates as patches?

They should be acceptable.

julia
--8323329-1220513627-1791910976=:3336--
