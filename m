Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.83
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793186784;
	b=2M2lBrKWethqWJk6ezynBP0jwstjq7v/B8USAtV96UH/CkHQ386l/h6zyal2JWGJbO7Z
	 6X0msBSc8hVzGltMiVUD1tqmMMSos4sDzuw5xuAY+XE4HcA96Vl0SVAwkpAdGr3TJ+dhB
	 x739hKaHpQrqLvdRBypZij501tnLMWepMGom8OA303kzXBsp59Tu3TYiaOvb/ulz1LBzV
	 8k0Wp08w6QfGYi+zh6Dqi5vZbsjeQD8iLCYVU/cUz/j02kjVCIZdAn86U1d88fj8U/Uqe
	 nSOY2EyWQfNZHqAgoeTIXnbWZM5Pm8b22RfW9ud+NmUnQ3qztf9/FuudM4NsaKEDYYg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793186784;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=neZGvLiDu+0bfbvLF0dGxqoykiStMWI3XL8Zn5jAxOI=;
	b=xsqCbPDLY9XKOdWK/BItvDiAWl1ucoy0Pj+8F6YjiwhSHwGuWg4EfXAV9lh4kdK21ALd
	 bByjyIPiVdtkHz1FVsP5GMk9JK7G+5j7r7hnb8w60C9mPyY3iN5/oq1PXZrTBEpcaL5+E
	 STGzwOmYzHSmZpLtaUoON/ckNDoaSPEHVJpGbA22rMPzg89fIQTdrgEWMxf9RgusTj2bg
	 fAlsVmOzipW2UZyil4Vr01z+A8ugONYNvvatotDrzShrn6cHvfvAbQ4MbVCpx+tF6ipdX
	 5nvd4vaxn2soLpsebpLnnBN+5tmrFHnJjludGWboQAuqXIEDdilzw0KqZ66oy4l/nfg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=s+iM60Ad;
	arc=none smtp.remote-ip=192.134.164.83
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D185606A31C
	for <outreachy@lists.linux.dev>; Wed, 28 Oct 2026 11:26:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3D185606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=s+iM60Ad
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=neZGvLiDu+0bfbvLF0dGxqoykiStMWI3XL8Zn5jAxOI=;
  b=s+iM60Ad88s1k4OZ61Xzm+sJ08Ik7PP+pwWkA9r6awOkQ13y2HfWhAn1
   pekldC+YkCXh90uK8bCwMa1Y7A7yfLb+goF3nit/q7m/8llQX3w+1Lgn1
   2LjsYWil7d0cMbbNtGwey0mwKcW7Oi22doOY/KUmQ9N1ZEqx1fIlu52Kz
   o=;
X-CSE-ConnectionGUID: Q1ZlT/emRyCnwkvxs+tOvg==
X-CSE-MsgGUID: tilor29fQiCMZ+rsNrX8Lg==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,182,1787004000"; 
   d="scan'208";a="302697064"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO hadrien) ([76.123.3.53])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2026 12:26:14 +0100
Date: Wed, 28 Oct 2026 07:26:09 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Temitope obabi <obabitemitope765@gmail.com>
cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
Subject: Re: [PATCH] gpu: host1x: Remove unused host1x_channel_submit_complete
 tracepoint
In-Reply-To: <20261028093941.16471-1-obabitemitope765@gmail.com>
Message-ID: <97a1f371-86c7-46dc-721e-96923c8bbc81@inria.fr>
References: <20261028093941.16471-1-obabitemitope765@gmail.com>
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



On Wed, 28 Oct 2026, Temitope obabi wrote:

> The call to trace_host1x_channel_submit_complete() was removed in
> commit 625d4ffb438c ("gpu: host1x: Rewrite syncpoint interrupt
> handling"), leaving the tracepoint definition unused. Remove it.

There is some text in the instructions about removing tracepoints that
explains why removing tracepoints is important.  That should appear here
as well.

julia

>
> Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
> ---
>  include/trace/events/host1x.h | 21 ---------------------
>  1 file changed, 21 deletions(-)
>
> diff --git a/include/trace/events/host1x.h b/include/trace/events/host1x.h
> index 1b6aeb7b177b..143a16e37703 100644
> --- a/include/trace/events/host1x.h
> +++ b/include/trace/events/host1x.h
> @@ -178,27 +178,6 @@ TRACE_EVENT(host1x_channel_submitted,
>  		__get_str(name), __entry->syncpt_base, __entry->syncpt_max)
>  );
>
> -TRACE_EVENT(host1x_channel_submit_complete,
> -	TP_PROTO(const char *name, int count, u32 thresh),
> -
> -	TP_ARGS(name, count, thresh),
> -
> -	TP_STRUCT__entry(
> -		__string(name, name)
> -		__field(int, count)
> -		__field(u32, thresh)
> -	),
> -
> -	TP_fast_assign(
> -		__assign_str(name);
> -		__entry->count = count;
> -		__entry->thresh = thresh;
> -	),
> -
> -	TP_printk("name=%s, count=%d, thresh=%d",
> -		__get_str(name), __entry->count, __entry->thresh)
> -);
> -
>  TRACE_EVENT(host1x_wait_cdma,
>  	TP_PROTO(const char *name, u32 eventid),
>
> --
> 2.53.0
>
>
>
