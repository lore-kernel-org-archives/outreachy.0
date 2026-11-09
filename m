Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794207552;
	b=c37NVZ6XaOFJn0guG7nSuxPFZppRkSvj2Hzukrm6MS9dM37zLH3ImUyAQgnyzWJHNB26
	 Tk3buO2Q4JplbHFQzhnZ0RETP0d7o47ua3p+FOG+KF4cGDIv08nNor/b9zDsJruxLzDg1
	 dieIzccDMPGzVxCYZARPrO5xT1lG8eLM7N08AD5moMAq8qGzDNjo5sn6SCFmI9SZLUiha
	 Hk10exLsMayfQcL9n6Tge4IHHefNY6BXrPYAaDLr7/3M9JVTMyY6TBrqfozZ1iu/u2Ixe
	 Ikw8TfJZlZ7QpCmm7zedC1C8BAkE9cGwcvcgU1lmO9sGUewp0mworJjHkxFYwF8lYsA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794207552;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=lWQXZhMkuUcv1NCGyc29BSVrM+N0eb1/2PZY5uX0p5Q=;
	b=kGJ+u9NAnK78N3D+hGxkZsaQt2g6D50jSfWxdD6gUs7c4lXlZtSeKeq8ghhg5luwbAZq
	 2iREswmWfV1HS90hbPGaLpWzEySKW+vtri82mNGf1OF9t0eQVXsSUTebkkjzdjuaf7a5E
	 kV1Wjj1SIAi+Y95SaE7CjTmWnYJ4FHMy/8h+Zhf/xYXhYnBYt0ZJN8AIGsYVrnD0ElXbd
	 9f7IQ74gVNPhNpRk3+nsMzadXKXbLlga5gdfn2CLFmvJlkE/j2U2QqDTd8dOSdT3q8BLd
	 JawuxYHG9Vcky0P1dBzoqfuM+BzWlIKF0yhD/jfeDQEsEB3Mm/5VgqjJXe2dG26QZiA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b="ojMtfq3/";
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B89606A31C
	for <outreachy@lists.linux.dev>; Mon,  9 Nov 2026 06:59:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 32B89606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=ojMtfq3/
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=lWQXZhMkuUcv1NCGyc29BSVrM+N0eb1/2PZY5uX0p5Q=;
  b=ojMtfq3/khdZ8Nxz6JulUGSixM2d1g21IXZV49lIqCCNszzDXTwp82jX
   CnGZcLuaGtd+o7T1xFVH6Si4BRoScHIf3GFjwGGYoHOWCE/gGcJjr3DBT
   nu7Kx0D8G8UH8PfcQoON7U437qNeq2YGWzVG5UTVW1pSDnqwJrJmkb9q0
   I=;
X-CSE-ConnectionGUID: 6AgTpeW/S/eRgjnWaHDwIA==
X-CSE-MsgGUID: kyyCrbogQi2sUV37Yct9hA==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,203,1787004000"; 
   d="scan'208";a="162127689"
Received: from 88-188-149-159.subs.proxad.net (HELO hadrien.home) ([88.188.149.159])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2026 07:59:02 +0100
Date: Mon, 9 Nov 2026 07:59:01 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Steven Rostedt <rostedt@goodmis.org>
cc: Lame Morupisi <lamemorupisi12@gmail.com>, outreachy@lists.linux.dev, 
    julianbraha@gmail.com
Subject: Re: OUTREACHY PROGRAM
In-Reply-To: <20261108221704.1734c368@fedora>
Message-ID: <b4fb9c93-a7d-f1d1-289e-3aaf53bc42e7@inria.fr>
References: <CAAqOpMmsRCXnmiWHsgbnv5WWpJ-qnG_vPEF93Myd7xsgk-Po5w@mail.gmail.com> <20261108221704.1734c368@fedora>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 8 Nov 2026, Steven Rostedt wrote:

> On Sun, 8 Nov 2026 14:55:28 +0200
> Lame Morupisi <lamemorupisi12@gmail.com> wrote:
>
> > Good day
> > I just submitted a contribution to your project.
> > "Remove most known unused tracepoints from the Linux kernel"
> > What is the timeline for this project. What does your work schedule look
> > like? I am currently unemployed and not attending school, so mine is pretty
> > flexible.
> >
> > Hope to hear from you soon.
>
> I believe the deadline for new submissions is over.

The deadline is today.  4pm UTC.  You need to have cleanup patches
accepted (not just submitted) in the staging tree to be considered.

julia
