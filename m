Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793613496;
	b=Wjyq+zkpjTtIwWo3Lc12ch37NTL33JDeGmVCPRKHaiq1fcimDZF3xFDU7slz5qeDnODw
	 5SFPSh+BBjgJZpJPkIFMQ6oeKw6wN1qcmWo0PG/Jm1mEy3DVVx7BEM/vmyBBcAe2/aFAG
	 AzPqVo5cj7oZnf6nzwQTAo5XbDKCS3Fd9vpwuaOlPqiZN60KoXyKl9DbLHeKCEGe5o3ZZ
	 t1/LiSJ8E6caOcJNUmuh7X8MRT+0KZIImeCmtco6U+XRfNZN8B9PUTy9+cIcy0ENFLjEU
	 gVmwjg7hpFn07Zt00cPXgPpWFuGNXF00biGN8Ae0H0fRUBfd1WLxFDjMayYSVOquGDQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793613496;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=7btwEMivZGGy+Iyo4cTzDji7p5FprixxSuQi8L+tDcw=;
	b=LMVmBMKBOOpAoW/suvZFXMdPeLNzDgjKau+awqz5na+p7zEk3r1zbp6tUSnAqm46Xfjr
	 49L72ADVu6bCBucqXTZvJI8/SMEGxENIAkGbe2c14ghJZLvR/Evzo8cCEO1ZQY5mCbeuA
	 Ro8BphxwyUP4gGfcM/bozFx6IYJQjeylvV1tGlv9WY4UywMHfq8nfCj4BgeLyRZ3WUiKI
	 7aoBvGKPW3yiTHdxMN69tTBiwR+VSqPdsEs1AFMi//CmRPYI3TqmEd4p/wh7/C3VTRgCR
	 XO4QFbKG+6CNgYNeph+4U2fGMLVzQz1T6CLrxX/vAQSI+Q9zli4jsTcdAR1Yiuiu4iQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=dwVKO9nn;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E91E606A326
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 09:58:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 8E91E606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=dwVKO9nn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=7btwEMivZGGy+Iyo4cTzDji7p5FprixxSuQi8L+tDcw=;
  b=dwVKO9nnNztZQPSfIr6/WNR89GWsCHtmO4502d4gOZTLads395bbSAQG
   LoP+/Szh50ZCTiAaMmhb5PePigRdKgNqGFhUc1UMSUlqmjT6SmwwL2x7G
   iC40E3rVIT5IYWVQyIsbPAByW3fUS2jlBvGktb8Xm6tETABsxnNf7xcCP
   A=;
X-CSE-ConnectionGUID: pSzsDCnGSz+Bf/RorxFVJw==
X-CSE-MsgGUID: rExzWTYmRvauLsRpPd+FvQ==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,191,1787004000"; 
   d="scan'208";a="161474093"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2026 10:58:12 +0100
Date: Mon, 2 Nov 2026 10:58:11 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Temitope obabi <obabitemitope765@gmail.com>
cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
Subject: Re: [PATCH] rxrpc: Remove unused rxrpc_drop_ack tracepoint
In-Reply-To: <20261102093350.36811-1-obabitemitope765@gmail.com>
Message-ID: <9935ee97-6f95-8e8c-5ff-27332a393521@inria.fr>
References: <20261102093350.36811-1-obabitemitope765@gmail.com>
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



On Mon, 2 Nov 2026, Temitope obabi wrote:

> The only caller of trace_rxrpc_drop_ack() was removed by
> commit 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and local processor work").
> The tracepoint has had no users since, so remove its definition.
>
> Tracepoints that are defined take up around 5K each, even if they are not used. Remove it.

It is not clear what "it" refers to.  Tracepoints is plural, so it can't
be that.

Also, a question for Steven, is the 5K just the code size or is the
concern that data is allocated at runtime as well, even if the tracepoint
is not used?

> Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
> ---
> I used AI assistance (Claude) while preparing this patch. I checked that there are no callers of the tracepoint, found the commit that removed the last call, and built net/rxrpc with CONFIG_AF_RXRPC=m.

This seems to say that you used AI to find that there are no callers of
the tracepoint.  Was that really necessary?

julia

>
>  include/trace/events/rxrpc.h | 29 -----------------------------
>  1 file changed, 29 deletions(-)
>
> diff --git a/include/trace/events/rxrpc.h b/include/trace/events/rxrpc.h
> index 56dc9b614071..ec145da21ca8 100644
> --- a/include/trace/events/rxrpc.h
> +++ b/include/trace/events/rxrpc.h
> @@ -1837,35 +1837,6 @@ TRACE_EVENT(rxrpc_send_ack,
>  		      __entry->serial)
>  	    );
>
> -TRACE_EVENT(rxrpc_drop_ack,
> -	    TP_PROTO(struct rxrpc_call *call, enum rxrpc_propose_ack_trace why,
> -		     u8 ack_reason, rxrpc_serial_t serial, bool nobuf),
> -
> -	    TP_ARGS(call, why, ack_reason, serial, nobuf),
> -
> -	    TP_STRUCT__entry(
> -		    __field(unsigned int,			call)
> -		    __field(enum rxrpc_propose_ack_trace,	why)
> -		    __field(rxrpc_serial_t,			serial)
> -		    __field(u8,					ack_reason)
> -		    __field(bool,				nobuf)
> -			     ),
> -
> -	    TP_fast_assign(
> -		    __entry->call	= call->debug_id;
> -		    __entry->why	= why;
> -		    __entry->serial	= serial;
> -		    __entry->ack_reason	= ack_reason;
> -		    __entry->nobuf	= nobuf;
> -			   ),
> -
> -	    TP_printk("c=%08x %s %s r=%08x nbf=%u",
> -		      __entry->call,
> -		      __print_symbolic(__entry->why, rxrpc_propose_ack_traces),
> -		      __print_symbolic(__entry->ack_reason, rxrpc_ack_names),
> -		      __entry->serial, __entry->nobuf)
> -	    );
> -
>  TRACE_EVENT(rxrpc_retransmit,
>  	    TP_PROTO(struct rxrpc_call *call,
>  		     struct rxrpc_send_data_req *req,
> --
> 2.53.0
>
>
>
