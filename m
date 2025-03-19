Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A326215047
	for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 07:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742370341; cv=none; b=kXefPq9hEaAS4pm5AU4d414Rp6Bx4lvgifgp9OPdu4X8Z4smeK4jCEHY/gGNGd0omtJZqhWjTcRILKLWbCAxKbBabfMNhinj3C4yqjZDOFrZHt5LIX0X2lIK1nNpzF3EwDSzrhASs7b5PnZgzdUle6Zyp8r+y9TuJCf+KYBNoIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742370341; c=relaxed/simple;
	bh=ah6eM+dK4jc2vF3UR7nTPs8vrqAw0wFdmEnW1w+fR1A=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=cUuccSnAkpI6QpqLc3wCY8VJHmoUiCsjrTgSF8uYGl0gHZA6OQW0HEPkRgxpQ910JeTrRWYgDGRHcrlZBVPooFlzJAV/7K10JZ6P3ntNyb9r08YULn0A7K5c2LGHw3Dbu3ZVdjoAffjeS6izY3yVsXJZ6KrOuDeO0Rc4/OaBlJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=mUXMyaKl; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="mUXMyaKl"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ah6eM+dK4jc2vF3UR7nTPs8vrqAw0wFdmEnW1w+fR1A=;
  b=mUXMyaKlSxAGmXHu+xNGXv0Nm+4btwKAJHloAGWHFsW1+QBwa6xdy7M8
   TNA0+vs0CW9hR8zvQQYYuCuD7BOVO/nrCZVDUxwvhBaCzYZ2IIvcsZCon
   S64JAefPm1+cfoFLpS+XkgZ/sEQWBq/qTmdu35gEpwJWdVaXjANpzl+7U
   U=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,259,1736809200"; 
   d="scan'208";a="111986251"
Received: from pd9ef1166.dip0.t-ipconnect.de (HELO hadrien) ([217.239.17.102])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2025 08:45:37 +0100
Date: Wed, 19 Mar 2025 08:45:36 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Naga Hansika <nagahansika42@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Outreachy applicant Introduction
In-Reply-To: <CAHxMYcB_ng5xNkjjV5CmvN=zcxoHS5KPqR8cAUF37gNnYutKGQ@mail.gmail.com>
Message-ID: <e9a373f6-74fb-a7f-f654-b7923f569243@inria.fr>
References: <CAHxMYcB_ng5xNkjjV5CmvN=zcxoHS5KPqR8cAUF37gNnYutKGQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 19 Mar 2025, Naga Hansika wrote:

> Hello Linux Community,
>
> My name is Hansi, and I am participating in the Outreachy contribution
> period for the Linux Kernel.

Welcome!

>
> I am interested in learning more about kernel development and
> open-source collaboration. I have started following the first steps of
> the tutorial outlined by Julia and will be working on my first patch
> soon.

Sounds good!

julia

> Looking forward to contributing and learning from the community.
>
> Best regards,
> Hansi.
>
>
