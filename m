Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1598123AD
	for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742390336; cv=none; b=auRU7ZmRo0m3Nr57WJz6TAWyuKKTNvzRZLXVmEOJHtP+2thcvvpFzYX7pQqM2JMMEppQyTV6mJ8xQkRaQFNOXvZuqCYv4CN2O4n82eHvYRIX2mV89K9gCQ+W4aKnxi7YC9IRIxaQvUelzNdHyKpEVRjDuUY9GbWl5VddpdDCNCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742390336; c=relaxed/simple;
	bh=o14TsrgK3jHsLkT+ahSEVrDIhltPAMTY/bT4ky27l5I=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=dbd+roEryleprPgaaMb2UcVGjCwBxhPmLdtPvOsVMJs3CE7cxF+czG005bQcjhJ+oQC27uzD6iR/VG32XU3vIg+YRY5VtzKo/cPMACmpiVmPis4+M16pKGcvaFbZqkyBj6hOgQ+APb8CDugu+d7/z+exewBZUEY01xi2fNr5JQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=hMh7/C+2; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="hMh7/C+2"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=f52LwVCrP0uDEliHtr+bU06eymBJNoazFJQPI6DnVtk=;
  b=hMh7/C+2eY8lDAZvD8hxrtc3sSA0yXOEmQ4gllPdvXjFcRrvasP2aJos
   egOs6Cs7jVFQA1wlXmYKsrPfs6LjXy5/FRQWwnQQcONjroksZ7+kcckl2
   WOJOWuXFNdoq54NZaDdTBEIg+umDtM7FNnP48oGYQaCzYXODpfheLJEQ6
   I=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,259,1736809200"; 
   d="scan'208";a="112030740"
Received: from pd9ef1166.dip0.t-ipconnect.de (HELO hadrien) ([217.239.17.102])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2025 14:18:46 +0100
Date: Wed, 19 Mar 2025 14:18:45 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Busayo Dada <toyinoluwabusayo@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Welcome to Outreachy 2025
In-Reply-To: <CANn_dnJ141ZGC5yZkWecbSODpjwQXG7rw1zjqH9G7MuDJbyi6w@mail.gmail.com>
Message-ID: <4f36cec1-a38-db50-366e-7168c29667aa@inria.fr>
References: <CANn_dnJ141ZGC5yZkWecbSODpjwQXG7rw1zjqH9G7MuDJbyi6w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-443564205-1742390326=:3430"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-443564205-1742390326=:3430
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 19 Mar 2025, Busayo Dada wrote:

> Hi Julia,  Thank you for the warm welcome! I’m excited to be part of
> the Linux Kernel community and look forward to learning and
> contributing. I will go through the First Patch Tutorial and start
> working on my first patch.

Sounds good.  Looking forward to your contribution.

julia
--8323329-443564205-1742390326=:3430--
