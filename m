Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792580005;
	b=B1FjbsGjJKPUd/ZugvkKlN/wqh3jREaomVmLRoL/zjO2fzWIAlK1agCQnd36JPxVuCvM
	 no9Dz9NhntA5yJhXHm84EA3g2HjWDPEhX3hgKLmM01TzsmFbRLbIMKgEjPa9mVte37EQn
	 CUsJHW3c22ZOo3Lkj6HYs9EJem8IuO1egIPEdd23Ht0JVCDNmmAQygapJTN4lrFEX8NIW
	 RqGO5DCMzeuArHb1sROUtgWpcZtUxHcM0OdSt/HOGxlkw9jEbykgrtCn+0jFBVjNH7tq4
	 xc4NVEFk8EWKid7Iz02zZEerdg1GTdUUbjPSmGrfZ2u2vfaSYNOoOyfZ9xSk30Fgmng==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792580005;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=5tdgf3dqjCh6MU4E8GTMYsx/di2cYk8OprGwIAIV1os=;
	b=0oKCaP0/r1kZKJ3cwlZDsCBWkzjuWeSxp51FLZcpSTV82TFGAz1TLx+33fLlOArruM+J
	 +IFrbKyqvDSX2VLPQ9uVnrUCpzIhe8pGuxKrRd1qhjEtekVYGvChyGSqbVvugluTCI65v
	 4msw0+m0lXB13l7gzxF7gtLB0XneX3hBSZ9Cjw7wPYxUgCuUZsPcyDF1nq/E0j8icrOBi
	 ssfbjLgSPIEYNeLo4df79x4YSJxtSyTDlkCpD9sVtQsvJDRtudK+ur/iC/2O2kX8I3kZq
	 bOieRcYCCUfIw8CTKPz/e+rLFAXp2naJPCSmAcYt8iyNCkSkdjr47JDj2n8DycroAzw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=jOC9xjEP;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3268E606A319
	for <outreachy@lists.linux.dev>; Wed, 21 Oct 2026 10:53:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3268E606A319
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=jOC9xjEP
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=5tdgf3dqjCh6MU4E8GTMYsx/di2cYk8OprGwIAIV1os=;
  b=jOC9xjEPiKUGFf5D89DuxjRQ2tA6ZPlPEUldHylGK2YwhkzVT/Ew9PMf
   kNZL3oLRGckYf0mxzxyuDmlOg3/xTbaD3uFCPSZ1chwGnmYuSFbzXT/q8
   2sKxJhm0eLuE/CAASfK+SKOUwHPKwU0iUNZXhcUbIQ5Y2aAFCPi4bLUds
   c=;
X-CSE-ConnectionGUID: qgzLXoTeQUG0DJIJypwMWw==
X-CSE-MsgGUID: ud9NXk3DRESHUBcs3JEP4g==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,170,1787004000"; 
   d="scan'208";a="160465512"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO hadrien) ([76.123.3.53])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2026 12:53:15 +0200
Date: Wed, 21 Oct 2026 06:53:10 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sowmya Torra <sowmyatorra@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Request for Feedback on a Possible Greybus Audio Manager
 Cleanup
In-Reply-To: <CAFsBPP=ZecgyvM_w3zstpFfoF9mKniAMehJpUy6QPCrXUCwy=w@mail.gmail.com>
Message-ID: <6ff8edb2-f58-3f80-2d2c-4854f2947e1e@inria.fr>
References: <CAFsBPP=ZecgyvM_w3zstpFfoF9mKniAMehJpUy6QPCrXUCwy=w@mail.gmail.com>
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



On Wed, 21 Oct 2026, Sowmya Torra wrote:

> Hi Julia and everyone,
>
> I've been learning about memory allocation in the Linux kernel,
> especially GFP_KERNEL and GFP_ATOMIC.
>
> While looking through the Greybus code, I came across
> gb_audio_manager_module_create() in
> drivers/staging/greybus/audio_manager_module.c, which uses GFP_ATOMIC.
>
> I wanted to understand why it was used here, so I looked at the caller
> and noticed that gb_audio_manager_add() uses GFP_KERNEL. I also saw
> that the function calls kobject_init_and_add(), which uses GFP_KERNEL
> internally.
>
> This got me wondering whether GFP_ATOMIC is really needed here, since
> it looks like sleeping should be allowed in this context.
>
> I compiled the existing Greybus Audio code successfully and am
> considering removing the explicit GFP_ATOMIC argument.
>
> Would this be a useful cleanup, or am I missing something about the
> allocation context?
> Thanks for your time and guidance!

Hello,

I agree with your reasoning.

Your message could mention that gb_audio_manager_add uses GFP_KERNEL in
ida_alloc, which ends up at ida_alloc_range, which also can do a
kzalloc_obj with GFP_KERNEL.  Including some code fragments could also be
helpful.

It could be worth checking other uses of GFP_ATOMIC.

You could also check git blame -L S,E file, where S and E are the start
and end line of a region (in your case both are the same, which is the
line with the GFP_ATOMIC) and file is the name of the relevant file, to
see if there is any information about why GFP_ATOMIC was chosen.

julia

>
> Best regards,
> Sowmya
>
