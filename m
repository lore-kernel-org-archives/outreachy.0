Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794151340;
	b=aNysyHQiAS095IWwmijO09CdO0vUZCqC9BzW9Vk0/AdnRRSwDSdMs+fghLHNGibbVUiy
	 h0ZIxlDFiwYZN+zeBnQhCw4E2lS9UNaqdB1vSQ1Kx1InJ5tka2mAGlqxk7ih3ysctDsBB
	 Psoe8HJEg103iiCmJeft5YJK/7JaoIaUI6Ys+Jen2+WH6Yaj7HWQcCFhcjI/FTLe7tWk5
	 XtcPqcR6pm4uTGIthiSl+0kka5hdfmrFx+3DEtQXNk3jJwD8vMe+vySYUI8+71hgJFZGF
	 pBdXLWXjNacgUelJEC+hUfM5jaw1YPXZH/FLGWBtQB5x279JCCmk9yaEL8+MWt2brQw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794151340;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=xWpopGAlRuVBE0YcXOP5lQH/UUPBL9ZCIXb3H0do15s=;
	b=PZE7vMIV9w3ud3fBWhCWWFeDYQnD+HG4RbvaQyqtERCLtjs3+dljLgL7rV3LRdL8xzdr
	 FFyvo9t8mNs30EDSLncfjfdo7IZ6AEWKuOUu4YkUzYnnGoor5KAhEewu8R0+5hiJ7u2KM
	 cwe6tq5t5ARlDqlfZ+9qKQS1iHtZqB7aospLD4DVqdBtSFHcpO5xMIdXiuNOHvYVH53XL
	 iPK8ntGrJyvcN2aZCWRMugk1VJf66d4g7DCUThAYvX2QnsqZ65acHgY7HFy/WK7Gk42OZ
	 ZKoLXnu5kQSEu/w3X5L3C6kIvai9hK4M1+K1EG1UYn3fqAc0ArpQD+MBF5U2QjJJgYQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=iMC8umPF;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51211606A31C
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 15:22:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 51211606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=iMC8umPF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=xWpopGAlRuVBE0YcXOP5lQH/UUPBL9ZCIXb3H0do15s=;
  b=iMC8umPFfXwWesekqMSnIByj0AuiR/5N0fL9svE4tHr0gi5r0y9+EQDm
   R5yc7jHkkRoaBFsVCiEI0ODyCAhK8sVb0cQJqYP8V/taTvb5bAwvz8Y5y
   qAXdhkvMLuSkHatq5IqpN80onO/ecQk1gz0ZNoTXBINPk8muKM7g0BO7u
   4=;
X-CSE-ConnectionGUID: uB2LssDGS268cgtDsxlVVQ==
X-CSE-MsgGUID: hSHathZtSqWCg/rYn1lkVg==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,202,1787004000"; 
   d="scan'208";a="162091579"
Received: from 88-188-149-159.subs.proxad.net (HELO hadrien.home) ([88.188.149.159])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2026 16:22:15 +0100
Date: Sun, 8 Nov 2026 16:22:14 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Temitope obabi <obabitemitope765@gmail.com>
cc: outreachy@lists.linux.dev, Steven Rostedt <rostedt@goodmis.org>, 
    Julian Braha <julianbraha@gmail.com>
Subject: Re: Tracepoint project: draft timeline for feedback
In-Reply-To: <20261108114700.538-1-obabitemitope765@gmail.com>
Message-ID: <a08927fc-1b6d-e033-433c-e76d8f52971b@inria.fr>
References: <20261108114700.538-1-obabitemitope765@gmail.com>
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

On Sun, 8 Nov 2026, Temitope obabi wrote:

> Hi Steven and Julian,
>
> As part of my Outreachy application, I need a project timeline for
> removing unused tracepoints. Here is my draft, based on the patches I
> have sent so far (assuming about 12 weeks):
>
> Weeks 1-2: Set up the kernel build with tracing enabled. List candidate
> tracepoints by checking which definitions have no callers. Choose the
> first subsystems to work on, and ask you which ones you prefer.
>
> Weeks 3-5: Send removal patches in small batches, one subsystem at a
> time. For each one, check the callers and search lore for duplicates
> first. Then build, run checkpatch, send to the maintainers from
> get_maintainer, and Cc you and the Outreachy list.
>
> Weeks 6-8: Handle review feedback and send v2 or v3 as needed. Keep a
> list of what is sent, accepted or waiting, and follow up politely on
> patches with no reply.
>
> Weeks 9-10: Take on harder cases, such as tracepoints that look unused
> but might be used by tools like trace-cmd or perf. Ask Steven before
> removing anything unclear.
>
> Weeks 11-12: Follow up on unmerged patches, update the status list, and
> write the final report.
>
> Do you think this is realistic? Is there anything you would add, remove
> or change?

A small detail is that after the application period is over, this list
goes quiet.  No need to send patches here.

julia

>
> Thank you,
> Temitope
>
