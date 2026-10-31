Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.83
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793408532;
	b=BgNRjoZbdaYYZlc/ZBI+dH9JICvIQQZ63O5fZdfvmuc+VP/F4gMyC/vsElIWOH9BmZC3
	 Ye3mYsNX81RrCI6vvA5IUnlmZrhbPDjKSNqvgUuFrJd4lRQYa1ycX4XECoDWJWf/+EwnW
	 EpGKm1Sh+tV7B5uqlRp6C/pmDKfOlD5QXIvnvqu/wRv+Z+aX70axPVD/j7vbvbmAnRtgB
	 5WrbKhwdNYJpD27n40BIboi1i/1RCIxaGJPcEmBGvPuUytcn0AZAld5hxp035JQgmGOcP
	 0RlwJojbces+/cpah9l1ThGcFfRFbMKZR+6LlQNQvJxHUTrrnjT0rEkZj0xjebQIRwg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793408532;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=orbBOtVBKJNk61UY70gVFmpgbq+7641nBaqu0Zdn8Vg=;
	b=4f8xYyqg1XpYXw4phHOvR86W3DeKeClWWceBbHpplW/47LEvt9Y1pvWB9lP+bOviLdPf
	 YPnh5DTzqLm0//QCTL5GEUsCiDc1b3ck9vOD4k1ncm4ai4JLdiWzouhvj+9N2SP/kTczw
	 r07RH/Dk4AR+UbEEUBZ7+r+1U+bXrNIrw4t1pqoIcSmYSCPKV2koYbZF7GAx8MwEEV87e
	 Mx+iyOvAqz1HmM4h+Mp0Pvfocg1ht6oHXist37BHWCKjPCaSGj0Uqjz9/W/AUkkvG27t0
	 K8Cdws3f5pD5aC9DqWM3GdOYQPQH1reWHL+nKLqIP/00hd34lIelQL3oHrGu6Ik8jMQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=MBOQL9Wl;
	arc=none smtp.remote-ip=192.134.164.83
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5836606A31A
	for <outreachy@lists.linux.dev>; Sat, 31 Oct 2026 01:02:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E5836606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=MBOQL9Wl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=orbBOtVBKJNk61UY70gVFmpgbq+7641nBaqu0Zdn8Vg=;
  b=MBOQL9WlEfe57kV0wiWgJ6GJ9+XXOqs6zyPkYbCqBj3qUybjwIGiBePH
   R5AeL+lT9Rayj5pvWxdTFX6bNL0NfrQljDG9NWOxH+EZRnImWRUjPYjtg
   cei5CEBFFGGVdZLQfB1qIvwTm5B6DaAUiY4ss6gLqXJWyR0Nj87NpczGY
   0=;
X-CSE-ConnectionGUID: KSVpnqseQW+0W6T19rKFEw==
X-CSE-MsgGUID: qTIN43J6S1K4xW73MkBlUw==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,186,1787004000"; 
   d="scan'208";a="303114889"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO hadrien) ([76.123.3.53])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2026 02:02:00 +0100
Date: Fri, 30 Oct 2026 21:01:57 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Temitope obabi <obabitemitope765@gmail.com>
cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
Subject: Re: [PATCH] gpu: host1x: Remove unused host1x_syncpt_wait_check
 tracepoint
In-Reply-To: <20261030224837.30148-1-obabitemitope765@gmail.com>
Message-ID: <db565e30-3c13-b42e-31c1-95a88692716d@inria.fr>
References: <20261030224837.30148-1-obabitemitope765@gmail.com>
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



On Sat, 31 Oct 2026, Temitope obabi wrote:

> The call to trace_host1x_syncpt_wait_check() was removed in commit
> 24c94e166dfe ("gpu: host1x: Remove wait check support"), leaving the
> tracepoint definition unused.
>
> Tracepoints that are defined take up around 5K each, even if they are
> not used. Remove it.
>
> Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
> ---
> I used AI assistance (Claude) while preparing this patch. I checked that
> there are no callers of the tracepoint, found the commit that removed
> the last call, and built drivers/gpu/host1x with COMPILE_TEST.

You used AI for doing what?  All of the things you are mentioning you
should be able to do yourself, without using AI.

julia

>  include/trace/events/host1x.h | 28 ----------------------------
>  1 file changed, 28 deletions(-)
>
> diff --git a/include/trace/events/host1x.h b/include/trace/events/host1x.h
> index 1b6aeb7b177b..4f87b337703d 100644
> --- a/include/trace/events/host1x.h
> +++ b/include/trace/events/host1x.h
> @@ -235,34 +235,6 @@ TRACE_EVENT(host1x_syncpt_load_min,
>  	TP_printk("id=%d, val=%d", __entry->id, __entry->val)
>  );
>
> -TRACE_EVENT(host1x_syncpt_wait_check,
> -	TP_PROTO(struct host1x_bo *bo, u32 offset, u32 syncpt_id, u32 thresh,
> -		 u32 min),
> -
> -	TP_ARGS(bo, offset, syncpt_id, thresh, min),
> -
> -	TP_STRUCT__entry(
> -		__field(struct host1x_bo *, bo)
> -		__field(u32, offset)
> -		__field(u32, syncpt_id)
> -		__field(u32, thresh)
> -		__field(u32, min)
> -	),
> -
> -	TP_fast_assign(
> -		__entry->bo = bo;
> -		__entry->offset = offset;
> -		__entry->syncpt_id = syncpt_id;
> -		__entry->thresh = thresh;
> -		__entry->min = min;
> -	),
> -
> -	TP_printk("bo=%p, offset=%05x, id=%d, thresh=%d, current=%d",
> -		__entry->bo, __entry->offset,
> -		__entry->syncpt_id, __entry->thresh,
> -		__entry->min)
> -);
> -
>  #endif /*  _TRACE_HOST1X_H */
>
>  /* This part must be outside protection */
> --
> 2.53.0
>
>
>
