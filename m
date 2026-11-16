Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.210.54
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1794852906;
	b=ZWiwvtbTvvGoHjdclInt+CyfoGPJOnFcckGKennW2060RkQvpNu4CuIZPhzSeanGG7U+
	 CjsX4aTFAjNjXOtE4/qT/sbjxRuh4/ElhiDIx+wk4f7eJsJxh+g2m6fOvDmubfaV5IsTQ
	 i/pXTYUnsJzh55aZExkVh3pBeBi1hdI6ye0SL5hGuLHHZFS4IHE8MKxiAxSKdmnf9QmGl
	 GbmUpoKhXLMccgPUXlPsNHJlU9skFObmeMet5Zn1auh1REmkedzU/xEj9z2LiIIPBj57U
	 LYROuEMdT8rEAvbguVdDUpwxyTozL718WGojfFBZoSEBC7NPPN/QLYdMRNKymy5Nddw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794852906;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=Y9VFYmn0OLSOPuVThwD952io40l2TovP2T7RuvsEtdM=;
	b=wXyj1YjgU9LQjHMcmuoPB9PLIijbXQ8Bm0aJe6Q7srTbTTIqHycMITXnIZNTegAvwifA
	 k0vY8UHd0J9Wd033gO+FuI/kMi9tSWpxTseLg/e9x2PnsyHgvb7HkMfCYfGQbOERTuphR
	 tVQvrSeyPzBDoB9+SSE7Zk14PiNnjm+V7yo5qAA9WPZH3tJxXesaigEOZx7jVNF2kgKAe
	 HJ4xNd8AzFadRg/mOv6iP5yzg2/9ozvJDhnRR9Vv4fZWMLHrKBrQ6cbcI1+4JMn4T/YuQ
	 SCapSIcttyaNYxwXeJrs9xzeKxdbT92gy1d4kzE1b50Vv36Xtxx9FapAhvB+wCmD/Vg==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lPVxPx3D;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.210.54
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CB5606A32A
	for <outreachy@lists.linux.dev>; Mon, 16 Nov 2026 18:15:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 61CB5606A32A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lPVxPx3D
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-843cf077f10so6106237a34.1
        for <outreachy@lists.linux.dev>; Mon, 16 Nov 2026 10:15:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794852905; cv=none;
        d=google.com; s=arc-20260327;
        b=Un4HIQA+TKRfNp7dge65bt8hpOvZuXQ0evdn1p52M5UW/T7E+pJxy4v6/eQEObkqKt
         yYVvn4J26CPDBzEpKTh6hNczz9PphbHUarXYJzlAe/5EaWlMeR5DlioQCYkN2GYG5J7X
         K9F6LsQtYAKGL1IWeG7eLSbbp8AEm5NUoDu2bT3/mJbHsUJmJGZTZsDGeoZg1bfP+4wT
         ILOdj0nND6u2f/npX7Ccty6+VYCnV5gj2NQj6IektI+kUXffZ/m1/TozpB+nAYU01ObI
         riQ2WYNxxTyGzQUDUaGYTZk0ZnayzJb6lCr0oUusRAi/eivNxBCRk0gdCWPyCnPMHT/L
         E5Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Y9VFYmn0OLSOPuVThwD952io40l2TovP2T7RuvsEtdM=;
        fh=35TJY+ruu2a54I1AcR78xiL90pVcnNN2e0bbjOul77s=;
        b=IT4LU1DtcAeFBjY6xcFafU3nX2Ij89x2JNFk4Lvrb3n4w7NdbizwLg3i1wQwND7FXB
         5btRAG87uIRp55ZBusvcwVsJZonIFwUMkDOPp3OSI2APzJxeV3ksnIaZHChAds4lQikO
         t5cxC+X8jueh0BS2YpL4Rmw1Ys78pHt6ciwmKqOUDsbLcK/tG6rJNbauMaz5kBl7BydD
         ykPTG9wV1rNs+AsMmNBDImahvTYYpk1ENqEvsSbgHO79ZsJ8eQkcs4oX3bd/gyHIgAK9
         KWU1rJItUgo+/uu/CVTpTvSahz3Wmq7WoYAgohefqd2DPsHHHJA3s2UczTupwwB76cHL
         yzdQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794852905; x=1795457705; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Y9VFYmn0OLSOPuVThwD952io40l2TovP2T7RuvsEtdM=;
        b=lPVxPx3DUYBZuA//DUnFGyp6OC+OnuzdN9/aoVNXf0cqinzcBkZ/90C9ILWPQ/SjzQ
         L1+AQeYl/1mOD7+zVjCwL7RfmEjZVsAeN7MCpjSu3kttOQUeLheVpba6Q09ALTOM5S7q
         0Otc2adJW5rGvlpUx88AtdSpL8/G1C/IIVilsI+Kx4g9lNgBRh9aA9MlaDqNWdbdP+wd
         CNpxtrIQHJ92whepvvEV62SgebziQZ4Qd3siJSd3WnBSEyE6vCKPC51/4BiGll+dtWjP
         zWfbB1ImWDSxCM+igP9Z7AzICDsCqZNm5zcGxFS6PibQ0S55P+sBWTXwvPh/MqQ9oeTe
         xwVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794852905; x=1795457705;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y9VFYmn0OLSOPuVThwD952io40l2TovP2T7RuvsEtdM=;
        b=o9XFiArxuw/q7ACzQxEESUyR3wh0poCcRfSNMbgNbzAQYf7dLgMMqgIC3etPKmqfSx
         6zv3o6PxuViyXJsKi3I/gJkkMpkyFxWG++WJgJ4I0vbUZYmqYiOB+kmkZZVJn0mNXxjP
         7akBbrjTVhpgtlGtHlQjqpn0k8lStlJZX5gpSoGdon1WE/fUEYvs2C/ZGgGOxcLuRmhf
         Z7hK8hs77fq/iAa+IksYvCsCS6teJY6G92yyzsVdBwI30U9ihAbTBWNYajy3FEUaDVDl
         hM8L1xMnRokQmoenQh1qan9rFspztsje1n46zSE8N77tZ90SNpL8pkmzvZnivsyeYEBu
         E0Qw==
X-Forwarded-Encrypted: i=1; AL+hErG0LA9C6yD8FKfyWeOTqyPpLRU5voKb+3HD26lO2YiAadr6d1Tym0d50UbC8AxcVwI9eKPxsgDh6zs=@lists.linux.dev
X-Gm-Message-State: APuU4Z+TeaJ3UO5/0r1ufp0cppX+1sL8ixjpKuY3i1evCDulT3oQcK+7
	hvlL+ZhTlwQk6aIPwl/wMgXNGqWjQBNEppde93xBWO/zsJrfyHwdoppbi9CSqImM26VD+2wboRn
	HOxro4RvhzUAnn2NuOLXZX9qp8oQf4sc=
X-Gm-Gg: AYBFou2C5mcNNlxRikUxrsSXf4MCkKZEBRVgYTIledtYTQV1zTBBtXR9n85u1MyrYK9
	/khRfeCoJ35Br0g13bQ0LUzFRTqSFWa4EwMmTVkJgV0Ki6wbVoIAVagqAPGuZYKMes2oYaqNXPW
	61L9llXo441uzg9pHVkNN1JrfBZbM6oRpnihZgCqGFcvoRoCU4zjTrtyHuqjvTfhcC59cbgD6UW
	/2qo8BkQ5YsAvxWsEQmEtNX72PTlnObcg3vVHVhgUNm7ARIzAYoqLZHjjHvG8z4Os7/b8+vgHy4
	e0yc62dLMtyuVjq7xBdPu+cbVJOnpjhL61w/cgCH1qhTBJmg8WBqbvhecEaq1cK1Z8QkS8JdfhP
	GjyUx39dffbJa1Og3y8JDC0yNwanRb7UNOeJB8kFyqysMn7/aokjf2rRYsKP2vsC/NDU07v2ojL
	b5usGSOQf43Y8oOsCOC18x86E/3z+IXiP307wz2Yy0xC+P3JjH5g==
X-Received: by 2002:a05:6808:4f5e:b0:53b:11c7:2da0 with SMTP id
 5614622812f47-56e63285bd9mr11614093b6e.21.1794852905260; Mon, 16 Nov 2026
 10:15:05 -0800 (PST)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <20261108060418.4554-1-sowmyatorra@gmail.com> <20261108075335.13248-1-sowmyatorra@gmail.com>
In-Reply-To: <20261108075335.13248-1-sowmyatorra@gmail.com>
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Mon, 16 Nov 2026 23:44:54 +0530
X-Gm-Features: AclHuK80DRIS82kx7xBKjBoqWiP5iWpB5RL4yuJG733QwPO3EG-EZ7zh6pOiZ0o
Message-ID: <CAFsBPPnsv2xbLXHQfM66h6RdK1+mGR91S=D86OzKzmds1cTPnA@mail.gmail.com>
Subject: Re: [PATCH v4] drm/xe: Remove unused xe_vm_restart and xe_vma_flush tracepoints
To: matthew.brost@intel.com, thomas.hellstrom@linux.intel.com, 
	rodrigo.vivi@intel.com
Cc: airlied@gmail.com, simona@ffwll.ch, intel-xe@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com, 
	julia.lawall@inria.fr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I received a CI notification saying that testing could not start
because my email address is not on the allowlist.

The notification refers to my earlier patch removing only
xe_vm_restart. I have since sent v4, which combines the removal of
xe_vm_restart and xe_vma_flush.

Could someone trigger CI for v4? Please let me know if I need to do
anything on my side.

Thanks,
Sowmya

On Sun, Nov 8, 2026 at 1:28=E2=80=AFPM Torra Sowmya <sowmyatorra@gmail.com>=
 wrote:
>
> Commit f3e9b1f43458 ("drm/xe: Remove async worker and rework sync
> binds") removed the calls to trace_xe_vm_restart() and
> trace_xe_vma_flush(), but left both event definitions behind.
>
> Remove the unused definitions from xe_trace_bo.h to avoid
> generating code and data for events with no remaining callers.
>
> With the tested x86-64 configuration, size reports a reduction of
> 888 bytes in xe_trace_bo.o, from 20262 to 19374 bytes: 296 bytes
> in text and 592 bytes in data.
>
> Fixes: f3e9b1f43458 ("drm/xe: Remove async worker and rework sync binds")
> Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
> ---
> Changes in v4:
> - Combine the xe_vm_restart and xe_vma_flush removals as requested
>   by Steven. This replaces the separate patches for these events.
> - Report the measured combined object-size reduction.
>
> Changes in v3:
> - Add the Fixes tag.
>
> Changes in v2:
> - Document the measured object-size reduction.
>
>  drivers/gpu/drm/xe/xe_trace_bo.h | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_tra=
ce_bo.h
> index 86323cf3be2c..a6802f6d3a01 100644
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
> @@ -228,11 +223,6 @@ DEFINE_EVENT(xe_vm, xe_vm_cpu_bind,
>              TP_ARGS(vm)
>  );
>
> -DEFINE_EVENT(xe_vm, xe_vm_restart,
> -            TP_PROTO(struct xe_vm *vm),
> -            TP_ARGS(vm)
> -);
> -
>  DEFINE_EVENT(xe_vm, xe_vm_rebind_worker_enter,
>              TP_PROTO(struct xe_vm *vm),
>              TP_ARGS(vm)
> --
> 2.47.3
>
