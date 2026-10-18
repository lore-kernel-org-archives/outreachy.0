Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100B1277CA5
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 11:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792322377; cv=none; b=n9TV+j5G7Dmp1QC63IrnXOo0cIVFaoKv3gVVGgkJm/RPro30IxXyTAztfk7Tj9zu+ZxZk24ifzFGxGgioJQm6ZEX2CP5rJGMjJFMK3oDPH+zsm4r2afOB19w6XEYZD5AEzDcfJENT6p/6chlZw1bQdm46CeHgLlwltL38lVeHrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792322377; c=relaxed/simple;
	bh=vFu5RVIRL5utuwJYSqdj34/NqoS6kUONgqQSPmkcdM0=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=YetqfuwS8HAe2pVL54bMeA7LbrzxHMQq75Oh6MlW9RWT41CEumq57zM4mDCeHVuXZNunxpzijyMX1PjrfoE8QzVpRYCzYEq8txSy8PDq3MIVrthKj9Hw8KEGQtIthdS+T4+hVUBtaprGVyjdq992vrirIZsfzjn9RHQgCupI7oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=n8180Xbc; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="n8180Xbc"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=vFu5RVIRL5utuwJYSqdj34/NqoS6kUONgqQSPmkcdM0=;
  b=n8180XbcQkUbuohtjlAolGGfkgSKJw/fEwu16sEJSM9qK7OblRlcGVkK
   DwL+Ghb6Zbhp4zJWuW+QlkvrK2bBviqN2mJMkWvmEbQKG3pTsJyNC7fwA
   DPkczYrfuUa8wXZy/XR5zqTULfAnCq0C7XbIm3Rp1R6PPNUEYKJc5fWIp
   g=;
X-CSE-ConnectionGUID: bm92GiAOSqSRNvl0zXRIyQ==
X-CSE-MsgGUID: vN7uFhAxSXWSHpkwF5VxqA==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,165,1787004000"; 
   d="scan'208";a="300734412"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO hadrien) ([76.123.3.53])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2026 13:19:24 +0200
Date: Sun, 18 Oct 2026 07:19:15 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sowmya Torra <sowmyatorra@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Clarification on a possible rtl8723bs cleanup patch
In-Reply-To: <CAFsBPPk1=n13pk0BX-y2F6VP_WT50PyrxonAahV-=spiscnf2Q@mail.gmail.com>
Message-ID: <6d9cfaf7-f37c-4ee1-6412-f05667457aa@inria.fr>
References: <CAFsBPPk1=n13pk0BX-y2F6VP_WT50PyrxonAahV-=spiscnf2Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Oct 2026, Sowmya Torra wrote:

> Hi everyone,
>
> I'm an Outreachy applicant currently working through the Linux kernel
> first-patch tutorial. I'm using Debian installed directly on my system
> rather than a VM.
>
> I've been going through the drivers/staging/ directory and looking at
> recent cleanup patches to understand the kind of changes I could start
> with.
>
> While exploring the rtl8723bs driver, I came across the function
> rtw_validate_bssid() in core/rtw_ioctl_set.c. I noticed that it's also
> declared in include/rtw_ioctl_set.h.
>
> I checked its references using git grep on the latest staging-testing
> branch and found that it's only called within rtw_ioctl_set.c. I'm
> considering making the function static and removing the header
> declaration.
>
> Does this seem like a reasonable first cleanup patch, or is there
> anything else I should check before proceeding?
> I would appreciate any feedback or suggestions to help me improve.

The concept is fine, but apparently the driver is being removed from
drivers/staging, so it is not possible to make patches on it.

Maybe you can find such an issue in another driver.

julia
