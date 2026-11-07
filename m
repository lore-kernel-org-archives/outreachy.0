Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.83
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794075646;
	b=X7Tk7QXPTN1EwphxxGjOg3SlkZM3sLJT0JnmfbYcb4y2gKx+2KrVn74kmx1VWILGUTYW
	 gwdcvePmcpdvEdOIGyC7E9nJKzKq5wf4LbCKcLF3Q/J4fg6i3dz9TTeznZIE6BX0NBSvO
	 3+utftLsdneQawyxPKuk/dmHzUtAHpPI8ABsFAPnAK3LHh9Ku94bm63jPA84XqA4E2NqN
	 lLLA/ot5I4H16Gh+xceISj1GB+qy3pr3yZhhITRW9naTAXtjTW6GgJ4+jiQOLi+mVyJoq
	 /IrKQz2NA6KK58DUIeNoZgo2YsReNPzRX8y33dVCBTNGUKfpaM0IVa5eAFR+mX9ve0Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794075646;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=+M7HEl2reaNNIQSe0UOTzqpDOtyrqDjmg5K1zpNBsE8=;
	b=IKin1EUdt7jKA9PBC9KUABYeFWnuT1/j3Jn+H4bfFaigWaYnWmaz1tuCCvbpKVBOoNXe
	 iN0t4DzoWkP6sFRxwW+mEGwTpSV7491pjlzcfB3xCepTZnx8UremRyM6UvnsjQ0VHDo+5
	 0E6s7I3MoY/XaONBJ2u/vmHE1pcKC1G9b23VNXRviE3cyK9CECozuxnhl+IYC7N9AquNu
	 Wo+i5dxh4uoAHPW68hCdYE0wNV30P/TrzyKRolDnB430N4Zq0SEqX4TkDbmsL2N3F76Mf
	 VI7814v4jJKY5uqACvUEAtpCRxAnwW/wEaH0F63NoUepwJExjqojY9ujz9w0mQTkAlg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b="S/5XFYW0";
	arc=none smtp.remote-ip=192.134.164.83
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E64606A326
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 18:20:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org D6E64606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=S/5XFYW0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=+M7HEl2reaNNIQSe0UOTzqpDOtyrqDjmg5K1zpNBsE8=;
  b=S/5XFYW07mx5dgHT9YJ9u7O1aHEtsr85XD0ODAQVAb7Vo9FeHNi5sqd6
   7Rbk0nsfz8/yFQhdKR8Zy9HVrh4hBslDmHq4vyQcK5cRyj6ZhUuHlNTwE
   tehw1B70/FoPOvOB+NUbnVIxHw+yKkC3TmDE/OkWMgPrJ7LggpegqcUjt
   k=;
X-CSE-ConnectionGUID: qOI60wZrRlKWPWQmOVy2ig==
X-CSE-MsgGUID: SsrAzLo/SEuamzDT8xbmOQ==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,200,1787004000"; 
   d="scan'208";a="304350952"
Received: from 88-188-149-159.subs.proxad.net (HELO hadrien.home) ([88.188.149.159])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Nov 2026 19:20:42 +0100
Date: Sat, 7 Nov 2026 19:20:41 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Steven Rostedt <rostedt@goodmis.org>
cc: Temitope obabi <obabitemitope765@gmail.com>, outreachy@lists.linux.dev, 
    julianbraha@gmail.com
Subject: Re: [PATCH v3] rxrpc: Remove unused rxrpc_drop_ack tracepoint
In-Reply-To: <20261107131249.69e8ff4d@fedora>
Message-ID: <78562cf-8079-9cec-52b6-d7c520708aaa@inria.fr>
References: <20261102183847.38109-1-obabitemitope765@gmail.com> <20261107131249.69e8ff4d@fedora>
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



On Sat, 7 Nov 2026, Steven Rostedt wrote:

> On Mon,  2 Nov 2026 20:38:46 +0200
> Temitope obabi <obabitemitope765@gmail.com> wrote:
>
> > The only call to trace_rxrpc_drop_ack(), in rxrpc_send_ACK(), was removed
> > by commit 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and
> > local processor work"). The tracepoint is no longer reached by any caller.
> >
> > Removing this tracepoint avoids keeping unused tracing code and makes the
> > code easier to maintain. Each defined tracepoint also takes up around 5K of
> > code and data, even when it is never used.
> >
> > Fixes: 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and local processor work")
> > Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
>
> LGTM.

Temitope, this means that you are now free to resubmit the patch to the
maintainers that you find with get_maintainer.  There is no guarantee that
the patch will be accepted by the end of the application period, but it
should be accepted eventually.

julia
