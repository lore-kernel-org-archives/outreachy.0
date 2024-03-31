Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C221145B0E
	for <outreachy@lists.linux.dev>; Sun, 31 Mar 2024 20:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916328; cv=none; b=KUQhftKhCvIeSK9i130xXjnxDCVibrFvTR926Pic60/hrSsIbkBRxK91hIriN0vhdLubrbcvA0PNtjpECdER+ZG0PsjV0SlWzdHIZUJ8kOYUpkwmNvUWtWJx5RhMBn7OGdmFCP9m9V7MHQhfd4PTnW1YXFBKIdTg0DwFdZUqhgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916328; c=relaxed/simple;
	bh=SKi1t1SxtBa5sAjWFANYVgtgRpZIPkWHydeL//hzjmI=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=Ko5RME0GL6dqOmpzUzm7PVkKAFbLW/J4n82QCvl+m0/A202kdMPxn967OafWPrNLhfijbU33gm2eMi6k9FBJVyBNEP6VIKUjR5NF17Qr+MUhbEiQ0qlnNO+llMDZzEiW/K1DXK9swduTY39ifUX5rWVN2popb4qkN51SetazkwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=LzKDrMkt; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="LzKDrMkt"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=iNnq42N6DQj7wyZDD/ZJeJVQunDGXeSrLdqY02H7VyA=;
  b=LzKDrMkt4w795ZBRxL154WVZ5DrZD71U0onNrQ4qE75b06JRGyAvVhXj
   NsCCivkowzOW/Hg5BfDR+kJNlcUltFuNLrkhyw4BTT81l41AQASLdkwPd
   Fz/8ceL24hM8YtLuQeEOBEFwR1o+nmi6tFoSkkNy0WAy69lQqSxyopris
   Q=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.07,170,1708383600"; 
   d="scan'208";a="83541160"
Received: from 71-51-181-183.chvl.centurylink.net (HELO hadrien) ([71.51.181.183])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2024 22:18:40 +0200
Date: Sun, 31 Mar 2024 16:18:37 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Saasha Gupta <saashaa1122@gmail.com>
cc: outreachy@lists.linux.dev, alison.schofield@intel.com
Subject: Re: checkpatch.pl script is throwing errors for the code I have not
 written.
In-Reply-To: <CAN=P6FNRiaog4HZY9vG-067M_+3oG-FxMb2=rKaYmD_+8jRVgg@mail.gmail.com>
Message-ID: <26d0f11-db73-7da-bea1-9bc018b59d36@inria.fr>
References: <CAN=P6FNRiaog4HZY9vG-067M_+3oG-FxMb2=rKaYmD_+8jRVgg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 1 Apr 2024, Saasha Gupta wrote:

> Dear maintainers of the outreachy team,
>
> I have made a patch for this issue. I am able to create the patch with
> `git format-patch`.
>
> However, when I check my patch for errors using the checkpatch.pl
> script, it throws errors for the code I have not written. What should
> I do?

If you are proposing a change, you should only ensure that checkpatch is
respected by your change.  If doing that will make the code look horribly
inconsistent, you could consider making a patch series that first cleans
up everything and then another patch that makes your change.

julia

>
> Sincerely,
> Saasha
>
>
