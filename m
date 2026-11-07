Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.13
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794076892;
	b=bAXLmJxazMdiKUQ6vdH3cswWkXzeKYnrs3KECQGqW61ZhxZxnUsSPDv5vygJBNUa5zeU
	 fATlm0wQrhC3LbdTMgvq7k5F7/EhrkDXtMWt9Zs70SVMO4+BDbeIYy3yT6Kw6BhncSzJB
	 Y+KIuTAk+zHziT3eujl4bmch+Lo3QlWSo2c4aZKkrdWwVGwaRi3tcWzMttL8rqmMImGuN
	 bQ/U7+Sm4BanRoZur4Ls2rWeNimwNjYkg1+aucaJKjUe6JKlupLMy9pf+WMWIZZv/EiKs
	 C9RMF1OBTjMGKuqTBUHMpZJdOp0qbQusHqbr8YtqYPC+6Spgl5/OIL0mF9h9p9fFLGA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794076892;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Spam-Status:X-Rspamd-Server:
	 X-Stat-Signature:X-Rspamd-Queue-Id:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=XygcBFI5jf4QKAehWg2hZrmy72aDQWYWmHXe+3HczEc=;
	b=ADpJvzqhuwQFXRH1ZlT+duKsb8z57h4myIP+adY4EGvWopXGi+CYN/mA6DrZPXKAc9eF
	 lCeolJ7MbGrwgoX6eS92DZGEdOA+MDJiMBhXwV+iuM3xHBkGzTrGvQx1YK4I6dJtqsJ9C
	 PVeeSgjH8j2ixprZjVFg9DFCnKi6NuvsMLbVNy6UlmWjXvYVyGfU3N+DO+B5NP2+LOAfe
	 P1Tbfxh+0Uf0dbsENco7FvMsJ6RhZYcYTimQESig3lrDrnGERY/ttQQeP1jzghTqgfbNj
	 78KBJds3veUH8LN1TZzStYMDdNQo9SBB8tkoKUc0gW5tj9wcE+YMtFnBzs5eLEekHQQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b="Mw/kEd1y";
	arc=none smtp.remote-ip=216.40.44.13
Received: from relay.hostedemail.com (smtprelay0013.hostedemail.com [216.40.44.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FFD606A326
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 18:41:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 62FFD606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=Mw/kEd1y
Received: from omf05.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay05.hostedemail.com (Postfix) with ESMTP id EBEF640196;
	Sat,  7 Nov 2026 18:41:23 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf05.hostedemail.com (Postfix) with ESMTPA id 0EB362000E;
	Sat,  7 Nov 2026 18:41:17 +0000 (UTC)
Date: Sat, 7 Nov 2026 13:41:04 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Torra Sowmya <sowmyatorra@gmail.com>
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com, julia.lawall@inria.fr
Subject: Re: [PATCH] drm/xe: Remove unused xe_vma_flush tracepoint
Message-ID: <20261107134104.3e4b6f96@fedora>
In-Reply-To: <20261102184148.11176-1-sowmyatorra@gmail.com>
References: <20261102184148.11176-1-sowmyatorra@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
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
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout06
X-Stat-Signature: wsacxkmfqp8ggu6ccu34nawea3nridhe
X-Rspamd-Queue-Id: 0EB362000E
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX19peI6O0LxhrhLqqBZKDaXQ6TQONXXQRNo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=XygcBFI5jf4QKAehWg2hZrmy72aDQWYWmHXe+3HczEc=; b=Mw/kEd1y84Nt0jafSA+A+/mQ7kUaWMoHvkxJ5pvtJc/9TF4C6f57U5E/WiDu7jr6KUkFT2uF/rdy5hiqGrmOWzM7OKBHNm/sW/MqxRUAEYK5AI3VZFFlSpvmm6AWKDcV6ILKyzMCU4qdxgG3/6UQXwA9rZv2LVo/UowevKaF3pM=
X-HE-Tag: 1794076877-628182
X-HE-Meta: U2FsdGVkX18PMJAEmi+HdmNEe5x/R/0X4UzBCqBC74tX311xdfCYzctjzlEKOeLxMXeXMBGskaj05vnJptARLN7xlIeabnaBxTrsRCRFCj4PpDfC37mmXrm1V29OircnuWJGXzHjTkInaZV+cINhoW3uiaJGbCJtgfAduWSB2aBo4yZSv2OUnf4Eu0uSuGUqH6MbN/bsyXX8aiAihbQrP4TFJH+/SA1N4gZJR+h7P1ijLxyVEWpYfg0nMNEejtoN4jxtXMxCLC0r20wNEtSQ79feJTDz02+9IZyrm5u7e//nTe6sDSU4JqR7wgY8THgze6LSs4HmlziKRPOpFQkpq5Z3BWjpw4w+

On Tue,  3 Nov 2026 00:11:48 +0530
Torra Sowmya <sowmyatorra@gmail.com> wrote:

> Commit f3e9b1f43458 ("drm/xe: Remove async worker and rework sync
> binds") removed the async worker and its calls to
> trace_xe_vma_flush(), leaving the event definition unused.
> 
> Remove the definition from xe_trace_bo.h to avoid generating code
> and data for an event with no remaining callers.
> 
> With the tested x86-64 configuration, size reports a reduction of
> 452 bytes in xe_trace_bo.o, from 20262 to 19810 bytes: 156 bytes
> in text and 296 bytes in data.

Since this event and the events in your previous patch were removed by
the same commit, please fold the two patches into one.

We want to remove events that their uses were removed together.

Thanks,

-- Steve


> 
> Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
> ---
>  drivers/gpu/drm/xe/xe_trace_bo.h | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_trace_bo.h
> index 86323cf3be2c..72c4107adc13 100644
> --- a/drivers/gpu/drm/xe/xe_trace_bo.h
> +++ b/drivers/gpu/drm/xe/xe_trace_bo.h
> @@ -115,11 +115,6 @@ DECLARE_EVENT_CLASS(xe_vma,
>  			      __entry->end, __entry->ptr)
>  )
>  
> -DEFINE_EVENT(xe_vma, xe_vma_flush,
> -	     TP_PROTO(struct xe_vma *vma),
> -	     TP_ARGS(vma)
> -);
> -
>  DEFINE_EVENT(xe_vma, xe_vma_pagefault,
>  	     TP_PROTO(struct xe_vma *vma),
>  	     TP_ARGS(vma)

