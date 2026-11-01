Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793545400;
	b=VXUSHos5CRX/6KViPUrZo0gdmFwY/GnzBmS7lDWk+FfTI9ExBCv4p0sgQ9V7RlArQQVa
	 Y6vazaif/YYjcoPyQ5Ke7xJ4zdzywSL5Ehjfgyaj4mELKIBPWwINqeAgASi4TDtCvPLra
	 4OH6DdiSeA5IphYKwmtWssFwcgdvK9Zp4GcPuMXeYW+HXrLcHVG7k0qLMxJbnkA5axl29
	 3yfqa6mC5XMm8OZpcUgZR1LrP8IcTwCim8atp/EsXLJwb6zx3WDUNTGIyDKuK3jQNoytX
	 iJmL9YnlvogZYwGGh0QTpJHm3CMN26JjQ9Ez0x6SW3HmaKXm1u3MfXajQgyzRBZnSwA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793545400;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=oSJY2cXD8ZiJr1Gj1vtOx9aKr4eqCoNdm8cwcFBnE6Y=;
	b=DUqRiMlQwW0nteXHa/MBJmLZWucXDyenmBmcYHs3cVsA0QsfY9GbPBE6EAMtQdLpc4vT
	 c+tVLQsaf0KG1m3DgUDevSDYvvv5qiCDl/ENnLX4Bwj7+fzNsTnaeAQnQhuxArgQDGLYQ
	 RRlWdNdZl3ZbuJUfsAkpK1DsLV6xysUDgZvo5MXdpxwOFLdMLAh6hw52QfQiI8RO2A6aq
	 1XwuRHuWd3hJpQ5vFvEcMSIO7dgF0VacbgjDLRCjPdSy7Nzy7j6DeMOexCutu/n2TAaGP
	 GqbwIvgI2a1VDaUOrY9rd2oJQAaSGJrxrPc/ZKAAHjsRMnaKjlH40XdTjepXCXCXvrA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=HTZ3jdwi;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFAC606A32E
	for <outreachy@lists.linux.dev>; Sun,  1 Nov 2026 15:03:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 6FFAC606A32E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=HTZ3jdwi
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=oSJY2cXD8ZiJr1Gj1vtOx9aKr4eqCoNdm8cwcFBnE6Y=;
  b=HTZ3jdwiDgU/GTkH46K/Tpni8e5dPdlAKs/8B0T7vwQdTX8NTngK7N2b
   OTux7XF6z0puRLnoKN07zMByEYHvTjcxCh5abDlii270vc30P3SUznwhl
   pWC+sP9mSOdIT2xygL7c4FsLB8YIpjBpQKzQilmc5FSBzR45OI0kBOrds
   w=;
X-CSE-ConnectionGUID: AYOyAAVGQIqXEzb0/M4uTw==
X-CSE-MsgGUID: iZp1oOA5RDGcHDUyFY/PJQ==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,190,1787004000"; 
   d="scan'208";a="161413494"
Received: from 88-188-149-159.subs.proxad.net (HELO hadrien-2.home) ([88.188.149.159])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2026 16:03:17 +0100
Date: Sun, 1 Nov 2026 16:03:15 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Torra Sowmya <sowmyatorra@gmail.com>
cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
Subject: Re: [PATCH] drm/xe: Remove unused xe_vm_restart tracepoint
In-Reply-To: <20261101125808.9770-1-sowmyatorra@gmail.com>
Message-ID: <73bc6cb3-c1ea-f563-d619-5130a3a3f339@inria.fr>
References: <20261101125808.9770-1-sowmyatorra@gmail.com>
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



On Sun, 1 Nov 2026, Torra Sowmya wrote:

> Commit f3e9b1f43458 ("drm/xe: Remove async worker and rework sync
> binds") removed the call to trace_xe_vm_restart(), but left the
> event definition behind.

Please include some information about the amount of memory saved, as in
Steve's commit in my original mail about tracepoints.

julia

>
> Remove the unused definition from xe_trace_bo.h to avoid generating
> code and data for an event that has no callers.
>
> Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
> ---
>  drivers/gpu/drm/xe/xe_trace_bo.h | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_trace_bo.h
> index 86323cf3be2c..fa91dd2b2174 100644
> --- a/drivers/gpu/drm/xe/xe_trace_bo.h
> +++ b/drivers/gpu/drm/xe/xe_trace_bo.h
> @@ -228,11 +228,6 @@ DEFINE_EVENT(xe_vm, xe_vm_cpu_bind,
>  	     TP_ARGS(vm)
>  );
>
> -DEFINE_EVENT(xe_vm, xe_vm_restart,
> -	     TP_PROTO(struct xe_vm *vm),
> -	     TP_ARGS(vm)
> -);
> -
>  DEFINE_EVENT(xe_vm, xe_vm_rebind_worker_enter,
>  	     TP_PROTO(struct xe_vm *vm),
>  	     TP_ARGS(vm)
> --
> 2.47.3
>
>
