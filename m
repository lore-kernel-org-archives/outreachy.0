Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3411F8BC7
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 16:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743008289; cv=none; b=l4wusPxEKDMTiiLDCvAlsMM9Mm2FODTBiD0SLAkpUjy80psASuVmd14OXmw7v34KH9QUMQtdxGZ1SFn1qN0JjUhs0xAnLt74WM3k4KS6Cmxp/awyDQX3/vnTUfJrPwJdEcE+54OnNtzpCydvjy2TqtyeR1lB1duECPsWMbSugp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743008289; c=relaxed/simple;
	bh=qz6ianv7+JfYOuJGJRQL52OPpybPHlwK0AHC3UYR/6M=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=sd46nA7T7gqDVXqEMjk8xXRpIFccoQOOGGKsobJVdUA9OLgRO4vk3udVoJaOAhFPsmoRZcI2o1Ailf5hlUcPRc+6w/z5a1C3hGJxe21qpEwZ007GVBN7Kwi30BRPHWQRDFNEGfbE72BtllETNdwG6gvtDd2ECfntlvTTksI3iaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=BrzIxOyQ; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="BrzIxOyQ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=OB4vKPVV8uxk5vgtOLx6TGK31Z9nt7wWtKx3B3KoPyw=;
  b=BrzIxOyQ1i7INPnNAXyCz4cr0DXW9TCMyIp+/AXzz+R9NS+/1Bdma08D
   bhgiSEUj1aOXBhpBJQ+DjIFuLOVqCCfBX9+Q2D7RPoubnNXAzdzxZoq22
   FuG7p72VT/6fwIq5wyIKPl4k2/OFMYAD6eSZ15PN7uBdnUSHAPe6Uzucm
   8=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,278,1736809200"; 
   d="scan'208";a="112684216"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2025 17:57:58 +0100
Date: Wed, 26 Mar 2025 17:57:58 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Confirmation on next steps for contribution
In-Reply-To: <CADYq+fbMox6e7AJMkoEmYjjt-V4L29oy9WyDcL0W8pw_KL3b=w@mail.gmail.com>
Message-ID: <ff7f6d0-3efc-d977-d1fd-2349f331a6d0@inria.fr>
References: <CADYq+fbMox6e7AJMkoEmYjjt-V4L29oy9WyDcL0W8pw_KL3b=w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 26 Mar 2025, Samuel Abraham wrote:

> Hello Julia,
>
> I hope you are having a great day.
> I just wanted to confirm the next steps for our contribution.
> Do we send more clean-up patches and how many accepted ones
> should we have before we can move forward?

Previously we asked for 20, but there are not that many opportunities at
the moment, so I would say 5.  Basically, you should get your patches
acepted on the first try.  And try to look around to find more interesting
things to do.  How does the code look different from other Linux kernel
code?

I will post some more pointers to suggested cleanups on the weekend.

julia
