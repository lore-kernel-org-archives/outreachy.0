Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.161.46
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1794122288;
	b=zpqhb0h5t/3a9ohvvFnyD7VjwHyDjFzrlgcD9KW0rQLh8intkAbNACCGJm6PKgXccmRV
	 KUOjNpUV7cOkTK0sH6ekhawN1NCQwt/SUWfV/4wQx6RF7SzdP0Q7m2SAf00lUkZOG2v64
	 SLsItCZleqdLRVbpGMavjmqt/ZWachYuRtjSIXDZvJMT91vwGk70fJavPkkztbFO5t8xp
	 e09B/8dClzv9yD/pa9FFNcMnsJ7XWP8nbbnOTYm3f9NMkCyPU5h+giynh+stCNxDV2xc+
	 t6Zk3iQbGbhsOQBQAYTh/0JNnHXgcwp/WBnfNJ8Kx6n9FZSbF7/HciAY4i0hC/lsCvQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794122288;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=NcRrq3gEPrpdv1ZQteio9YneHMJdpZak6tVDegOFnzM=;
	b=zQemqrvXOJbRef7Hk52gHphrnfJWxb6Pbny1BqdYxcgBP0NeAnQgbFn5cfXlhKrFB6p6
	 c9e6Pq7VX2MFRLqzPEgkCuVXMmYeprQssLTDtnmanopESkljY4WcPdj6s8sERypeP/SdY
	 t/Z7sBchOFys3kiSrFDzmoQEfLAlkJK+uWy4MfmGhnV6jrU4lwXSpUJRVj7uBuiHsfKd3
	 SclloUJYj5IvhAigN0AsZDOOAf6AxmJGKxaIfGDo+2J5NyYKRExvhwUB2cmP73Vg9AI28
	 8/HJCM0j5hlNBDFs+7yK5Dp28XfZL4nowiSMFVA02RYj5I0e02QXsnR6owt+qWtIe3A==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=MSnnbgEf;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.161.46
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A801606A31C
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 07:18:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 6A801606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=MSnnbgEf
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-6b1afdf5196so49331eaf.2
        for <outreachy@lists.linux.dev>; Sat, 07 Nov 2026 23:18:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794122287; cv=none;
        d=google.com; s=arc-20260327;
        b=Pk7TO7kRmKU3B+L56W5AcUGuGnmGtfpQGoxKu38yfS2ousjz5ZKcHgPOF8+oketuvR
         Ksa8aPD3Wea7dknQMjUQmSqIE3xlBaQiIZcCJdatMCxL+0I37/sFO9dWQ0FPJGOiWTq1
         lpNC7MHZ7dwK59Au87uj5tidFX6qWMhZXq9iVgrKe1nJ8hgrilwunqeJb5tEHqpOer3P
         ZdX2IEcdbkIdFOmAHOGBBIMtD/q5JP6crx5RcOIXku1OJ09cRoWA9mxgP/NDmr3zcenL
         8h7JqiKUy/JSeuqT19JsMG4w2FMCNd2greJ8SvzrkpMbFxjr+ymIgR+fv0rq/G4CXvew
         48+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NcRrq3gEPrpdv1ZQteio9YneHMJdpZak6tVDegOFnzM=;
        fh=gp8TB9YUrtXz+CxuCYsWRz94erRV4r8T//YT/+OeoRA=;
        b=n6Y6trrDUkmb1vprVPD/CTLwU+I6YOeAxywVp2diLu687FTpEDL7LmH6jaDduxheee
         GRJPICRcifBIXeX8sesTS479n2Jtz7ZtvmJ5pThMBT5DgFBp/6gBFsOo1bCZmcn5iKaI
         36Fr+FznRcYnBKTCa+iTkh4x1C/tHpqYFw1LTIlXDB1jPHnRj/RuBhGzHdp1VVa29ojL
         1OQ6/pJ8VtsgkbNAKB1/79ZX+MzlhZi7PkKDYrTXPgcvkWXsdP68lM0dvBk+M2ObYgv/
         1v9YmGBMtwgI5hSMMkFYKIexVuTzVyqbWzMeLI7Jq/M7zzMTStRvxoI50fFPMk22FE7t
         fefA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794122287; x=1794727087; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=NcRrq3gEPrpdv1ZQteio9YneHMJdpZak6tVDegOFnzM=;
        b=MSnnbgEfONYl1gRij49tk6ywMuFPhR0+3IW0zTJ2TqllXtmoA60Ud3It9BWbKR3vjm
         jxpXSqq1n1w1Uv+EaZi+m7RXkYuv2mmtHl8MVrn2fXQnyc95O2xgcWpnRBQORqrQ6rcW
         H1jZ2jtWQwMLz+w/2YD+pjgWPs5gWeJbfqRGhFTFUWP/srh3hIVbZMi6wgImPpbmA4jy
         AouUEJ5/IpR71AJRn72XhNEopZRJ2ShwFtLdS3+zrDfExUAgfWATZft17lpY3OnjzBur
         ayX1UcQQ9VcJ/A2/deIiBC5tES0Dt9eQustFKxJroVhMPuhToS4VB4YikK8T5VNfuwi7
         76lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794122287; x=1794727087;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NcRrq3gEPrpdv1ZQteio9YneHMJdpZak6tVDegOFnzM=;
        b=aGr9g1OC8RpvvJrGDgSTQzrjpYd4OqpjRTEIjwITayvrYtKX0uh4tST1XUpL4nKJml
         VduCdDKz3rWrm/Sfcn9YILi8zdWyFjcGKkKghqRLPqIW0FjgoHHmcTt0v1su+0L/i7Wl
         ee+koDov0y6bGIifzsGFRQ5OroGTNZdXfldnmnxLnclmko+Ic0r3klp4vGSQf79ETxoT
         HIdGM9i/JWXJKy5Lbg+iW07UTiYNtoh89fC98B1R49VmMJmH2WNz2xjZDssl3tIvMgnZ
         0WCOragz3P9XFi8mJXlJmAId7r+MsRENSLuJjfBvZ9EtNoErejToajowG9wOaErhmNSZ
         Eqjg==
X-Forwarded-Encrypted: i=1; AKwUvBxg59yKJe5AdIrldlK0Nb57+wDiD2edCfGP87FWXUHzDV0LbYQV9EQL8SDNNf6qXwsRN1YdfGUZqE8=@lists.linux.dev
X-Gm-Message-State: APuU4Z+NmvMbzTD2GrmXlckZ0rEhpkzwlB6jjHahjtWUREUL8LKBfKad
	dtqiQCFu7jtS85fl6jdbrEbl1xeeaNsFtdFG09XyYY22dXmaY23LJd9+6FqrMX3cEnSehwnXcHy
	rpv8x4G1ptkJvlsBJ4JxtrfxqWbZPFKM=
X-Gm-Gg: AYBFou2Fiim/qTt1fkBhFB/X4p2/jrWGBb4qx8w5ZeaGGUy2duFqRwNY8pt89cyAHP+
	jO1ipUOwRccVuT4NhGoCFUjFG1DI8fGErvun6/TPf6IgpU3mEJk424ZmssaWKW2XUT43uO9WQmM
	GPzDvOUowjC5vNSngfW93M1uj+xfCHmrwwCN+9hdqQ5vD9Wk278FgkIcT/gMz6QR8N53VIJDELG
	m7nzO9fwPqxhfuyEqS8om7NVAJj6MG5+Y6x6tV9vzG99LqoZO8nNOI4GV0wPzVJy6xMVcJdWTYV
	6yUFkL1VebOg7qKLO5dzyfqHvpc5RlQxUkAqiktwDMm6w9pX9h0Cet5Ax0sC5Cd/9W9B+DiOYSd
	dJgAodYWr5V3iv8Uqfox54xvKO43VvhK55uVDL4hSGpqIrwh0N/9+/gRavfiAoolLQU+6MWOgFl
	72SVRb2qehfBOQv0Vdutd47fXoejDua0XhgyziJrVxeDlCYh8+f771sMDvCetq6G63s1gHMS8=
X-Received: by 2002:a05:6808:23cb:b0:53a:e153:e8e7 with SMTP id
 5614622812f47-568145d336emr529936b6e.44.1794122287109; Sat, 07 Nov 2026
 23:18:07 -0800 (PST)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <20261101125808.9770-1-sowmyatorra@gmail.com> <20261108060418.4554-1-sowmyatorra@gmail.com>
In-Reply-To: <20261108060418.4554-1-sowmyatorra@gmail.com>
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Sun, 8 Nov 2026 12:47:55 +0530
X-Gm-Features: AclHuK_AWNWzoTHZGt6quHeK_0iVsD6npnwX0A7nfswTgR9HefL9of-94iq9oyA
Message-ID: <CAFsBPPmrD3ca=8-9c-baz+hEh7SBEr-n2nF0j2eZmDwp8h1Q+g@mail.gmail.com>
Subject: Re: [PATCH v3] drm/xe: Remove unused xe_vm_restart tracepoint
To: matthew.brost@intel.com, thomas.hellstrom@linux.intel.com, 
	rodrigo.vivi@intel.com
Cc: airlied@gmail.com, simona@ffwll.ch, intel-xe@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com, 
	julia.lawall@inria.fr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I missed Steven=E2=80=99s request to combine this with the xe_vma_flush
removal before sending v3. Please hold off on applying this version.
I=E2=80=99m testing a combined revision and will send it shortly.

Sorry for the extra email.

Best regards,
Sowmya

On Sun, Nov 8, 2026 at 11:35=E2=80=AFAM Torra Sowmya <sowmyatorra@gmail.com=
> wrote:
>
> Commit f3e9b1f43458 ("drm/xe: Remove async worker and rework sync
> binds") removed the call to trace_xe_vm_restart(), but left the
> event definition behind.
>
> Remove the unused definition from xe_trace_bo.h to avoid generating
> code and data for an event that has no callers.
>
> With the tested x86-64 configuration, size reports a reduction of
> 436 bytes in xe_trace_bo.o, from 20262 to 19826 bytes: 140 bytes
> in text and 296 bytes in data.
>
> Fixes: f3e9b1f43458 ("drm/xe: Remove async worker and rework sync binds")
> Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
> ---
> Changes in v3:
> - Add the Fixes tag.
>
> Changes in v2:
> - Document the measured object-size reduction.
>
>  drivers/gpu/drm/xe/xe_trace_bo.h | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_tra=
ce_bo.h
> index 86323cf3be2c..fa91dd2b2174 100644
> --- a/drivers/gpu/drm/xe/xe_trace_bo.h
> +++ b/drivers/gpu/drm/xe/xe_trace_bo.h
> @@ -228,11 +228,6 @@ DEFINE_EVENT(xe_vm, xe_vm_cpu_bind,
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
