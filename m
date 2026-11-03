Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.167.176
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793703958;
	b=Zl2tjbkTdtdrDypZhc+greJxAcsiEJ7Om7xWmsU3oVC4h5plEJYLiczizP2FArz34TFX
	 s6Hg8i87G8ohsHY/ceIW8Au7Um0ea/DhlTv2cwnrE2pTfuICXlHRGx38EcwvSLW3TJVVM
	 J+YhWCBR3UgSDd/9IWfn4hpQjZIUjFZrmWxJZhR4n2P3rkrbycRtraK1q9A/dt8NYcw1e
	 fe1qwHkABfrWXdQmoXQRVOrP70Jht1Vjv5C7MBAM/i1cxnjeq2txDPDiQ8aGzvryUvSRD
	 lUM3YLU28sc1UK667cjhTJC6Cx3rGhdnH0ATyf/WQ15Z5jORCVyQUqrBg2LUYC1Ht/g==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793703958;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:References:
	 In-Reply-To:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding;
	bh=y7UB4+A1ahX7xHUYYJXo1UUZl65nvJXeNXnKOcGRsOs=;
	b=Eq1HDshrHxPZkPZXNMMAS4cWAdEzlY09NWNcHqlzj8BTWItTOAgNDGjSQbTbZNT9ftUN
	 oWVsoAwB6PpaQ9VGrVQflp0rzSYKeMGngXWMO4gHvynzT69SSCYsdJGv9QlnISUn1UTEp
	 coLso+yX58Q9jBs0+takhEOP7NXEr+/sPJoSSXdn9j3DwBfWQhF9Z2dIutpN4pj0x5nTV
	 10GPLTUHb+BfgjDN8Ycv/H1ATf2v9ozAZ3H+YOC3wjThC1bBhO9vPAsrDeJKRVagStf20
	 QfUj9ScEPBZ6hOC+SXWiJu3kpKLWwqDdvEMylew/Jh8XjZzQweYrL6t11RpfN2d10YA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Avc5X85j;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.167.176
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EE92606C592
	for <outreachy@lists.linux.dev>; Tue,  3 Nov 2026 11:05:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 9EE92606C592
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Avc5X85j
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-4b28d7c729fso2396902b6e.0
        for <outreachy@lists.linux.dev>; Tue, 03 Nov 2026 03:05:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793703956; cv=none;
        d=google.com; s=arc-20260327;
        b=T/S34N4fSC1L2NClKx/nBcqr38rqNW+E21bMps6/Sjy4fI/7I4ZFu/+KwNn4kX4h1E
         l/k8JDcZ4SUVZXY30KEjdPh3mQEAqT9BHmN1m/ybsBJjhhfaWzmYl4lGccWtoRbnIitD
         g1c6ew7/Oi1SM5RHgF5VTI+ty4sFAy5U8ZcNm7HWzm2hhd/jSKaxD89vvrd5U/tmCTHr
         L560gj+bLDfEjLCSFHz8JRmJQdRMY5K9sRXdSHKTBkhv17wRKfY5E0qCg13xjbyjgYPJ
         V8dr/m5RWYbldqy3u8fmXdaDwiR+wlI0dKVTcCiVho1JE5mNm3SepGM/Xn5VDcFICvcR
         9NiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=y7UB4+A1ahX7xHUYYJXo1UUZl65nvJXeNXnKOcGRsOs=;
        fh=Od6VrXDnJYJM0i2VkkOIl2Qu/k88FvztJXkagWT32Jw=;
        b=aZ4fHMlbPUfd8fZT3YzUYkpoN5LaVgxaBJTBpxtqAz5Ct8ntTduroy08/v9+2KU+K3
         x8u+il+n+T/aSOxjOA+j0yMts8VmRUDB57OVWZu7/dgAzRuaF7TKerJqB90xUEUWBCfc
         hlMp22I84S5qAVzT8xslIAOZ/zXVh9sxm+/kboMVT5s5yJndBlCPLt3Vfz40Om1hgA59
         njDX7c5P9K56RHRYE+OB17vRr4xgKYRRTQnxvY3I7sUiuC65ROhlJLierIvldi1ehL4r
         id+6gPDUd8ykTuyrQw26pJ4f+awVGrekN6u2LCYRp7kfhsYgYQa9FrOUSonp6rtPZnwl
         UN1g==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793703956; x=1794308756; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=y7UB4+A1ahX7xHUYYJXo1UUZl65nvJXeNXnKOcGRsOs=;
        b=Avc5X85jxoJEh9yPomXyWT0Wurgj4uDKDh7p30xLCb7MViIBQ/+kFixuS7mIcFKMdg
         fOQUDgC3cGSADhM/WGOyMhp4oTSKmUxG6cQd+a6JJ7BEdefG47M6QNLUVY+wHK4GarZx
         0p889TkT30CbD0yw9gSpHHxXlodPsI8ZtQ+AcPRq4Gvs1Af1h5PW22yiNguVmVcPlsLu
         WqafLGV7By26wDZn2cWsExECHZOOXtcXAM0MvtAP/feQbW+pkgwYkSjloIkgrMDa95UN
         4sjmii/nZo/tIFHv59Jzr17dkPjAl40hZM/0KAm5Jekt/4kGfpXO1jlRY4m114vXERqL
         eUlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793703956; x=1794308756;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y7UB4+A1ahX7xHUYYJXo1UUZl65nvJXeNXnKOcGRsOs=;
        b=W/8igj/VrmETt21M2OY1qWtqEBbQw4K/ti9VQW1pBgDnOmvbYszHAHxmMpKUJwhnEy
         2Z0bYEX5eFvKfamlCz+qhTObNyvU80tMNvRZPcu4h/lsJ+rH6tTXkClTlPVDVD1sOgmV
         zZGsq2i++ZlDEPw5fudtjnjcicHgxOZNEcbdPkuktEC7KFnaeHxRVIoEhw4NO1ShsXaO
         fI3yyvbABGZNowYWLCK7p1GSW4qygyAp0Fdye0Oju/Y/e2tIL6fUTw9Y7cqTVA0dDRKt
         lMZPzHOL1wNa3nbhvYIB9y4CX56yZdXhgWwF52eBBihqp1hN+HMvht72WizQNTE3U1Oi
         S/8w==
X-Gm-Message-State: APuU4Z9yPOdqz1a69xb4Y6arhzxVCKnveCgI6dMyyfKPuonhm3WS4h4N
	n9+0NCXkqIiBfYPwoABsMdM0xzu25FC1YIgCFdUKLTlh+an59qtC6Ba3r7WZ2K7fdkNZM6tU3ne
	YSzVc5GfknaWG7ncm208OSeUqjq6RvpnNfHzPb7wZGQ==
X-Gm-Gg: AYBFou05Dov2B4HRslTGyfrTmelHCu7K5c88iZutSpXOYh9g2BbMxSt+RVG4lgMEiY3
	+Cfk7Mucv0Eys98FN3OnT7xHtEiOSJTepKZgBAARCFAUMNOKvxWnF1HZPnIC59jOHGcoNHzRIQ5
	NOXKeN5tMudmks8WL1zH06DsaaHoLL4UE7cqTJwNb3rYqfm8+gd09jUriIP4/DR/Yby5wJA2UCQ
	XRU869o2bz89tPJHAJz/blN1w4VEmJHQU66wV9wOFQZy4669xToBQLGWxvlJNAUgUJOsUzI5p75
	XM8BD+dINnnob+ybQqQEsveVkOTJqrGOnldd733c7rWw4mgkW2t8DTtLmCxIBpfWjbZi0KkbqWR
	xh060OZ/GZSrWge6aFHZue2gcexcaQMyyRv0rjtBTe0o2sOxHxR/rB8HNYEBLeHIdHR9KnQTwso
	EOHiB9zAXM4L+kZv7Vsi0yEtfCHzWCyJGQVybEzltpDpH1dV351MJb
X-Received: by 2002:a05:6808:c126:b0:4f9:a153:8446 with SMTP id
 5614622812f47-5640dddee58mr8709029b6e.38.1793703956629; Tue, 03 Nov 2026
 03:05:56 -0800 (PST)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <20261102184148.11176-1-sowmyatorra@gmail.com>
In-Reply-To: <20261102184148.11176-1-sowmyatorra@gmail.com>
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Tue, 3 Nov 2026 16:35:44 +0530
X-Gm-Features: AclHuK__JrbxspVD2xASTr5ieke-WOZK6DY91FIh9Xos1mt98EV-KCdAlIM3IYw
Message-ID: <CAFsBPPnWjgKNw0rzaG6TbShNJO6t6NKq_YXMQ65FCyB8Wqt7pg@mail.gmail.com>
Subject: Re: [PATCH] drm/xe: Remove unused xe_vma_flush tracepoint
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org, julianbraha@gmail.com, julia.lawall@inria.fr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I have a small question about measuring memory savings for tracepoint
cleanup patches.

For my `xe_vma_flush` patch, I compared `xe_trace_bo.o` before and
after the change using the `size` command and found a reduction of 452
bytes.

I measured the compiled object file, not the actual memory usage when
the module is loaded. Is this measurement enough, or should I also
check the size of the final `.ko` module or measure the runtime memory
usage?

I just wanted to make sure I'm measuring it the right way.

BestRegards,
Sowmya

On Tue, Nov 3, 2026 at 12:14=E2=80=AFAM Torra Sowmya <sowmyatorra@gmail.com=
> wrote:
>
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
>
> Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
> ---
>  drivers/gpu/drm/xe/xe_trace_bo.h | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_tra=
ce_bo.h
> index 86323cf3be2c..72c4107adc13 100644
> --- a/drivers/gpu/drm/xe/xe_trace_bo.h
> +++ b/drivers/gpu/drm/xe/xe_trace_bo.h
> @@ -115,11 +115,6 @@ DECLARE_EVENT_CLASS(xe_vma,
>                               __entry->end, __entry->ptr)
>  )
>
> -DEFINE_EVENT(xe_vma, xe_vma_flush,
> -            TP_PROTO(struct xe_vma *vma),
> -            TP_ARGS(vma)
> -);
> -
>  DEFINE_EVENT(xe_vma, xe_vma_pagefault,
>              TP_PROTO(struct xe_vma *vma),
>              TP_ARGS(vma)
> --
> 2.47.3
>
