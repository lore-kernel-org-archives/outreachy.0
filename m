Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.15
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794076404;
	b=hNBePhHWrJKtLUKFEaCZLIQ0dq5knWROs4hb2gCCDbbzfow8g0JzQh+heunbYQtM4gR7
	 kLrm4PZZ2Lyksg4cT0DD/zINCJ51LzRTdPrKZfeNu9jP9uYqZFP+V/T4MZnVSqYYhRDvx
	 zv5Vo6vvru2SpSzioQOKgfn8q4s5Lgh73H9bpM4dz0Uuda67n297A2J2EH3HQmlzfeNq4
	 +9GOKT/HcJykus6gjQTOPlT22jkg0aJNy89zgwF5yNtKJFzfQ7yeEDrcARjG7hAXnXXS/
	 r2BP7tpezRsgpiiQ1j6RyUVrj3DsgQpkGgZD9opqDAzO4GqMsLe8pvQZL0MLx+3D/pw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794076404;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Server:X-Rspamd-Queue-Id:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=i6Khy9qfc47d4Gxm989Q/K4+LsxenxTQiK7zw1eF0MQ=;
	b=sbiM9mXMEwQAaLyhbVp31jScgjKUNYI0Vc5sbRAkICRq2EKrule9m788q7Lelyu0NKd3
	 ReSQLlI8eMZyyjtcqYf/sM9AhLCH1G8gLgOh9SRKaDgyXx2ceE2F9qd6ad3+l0h30zcc9
	 Y3NinmgZjICkObhVUkidSp+Bq6gLA3l99M0nD5rgvxMh9CAa+H77H92oE8CSCfiRg/GfT
	 ssQbQqX29EOn9myeasjlIFyMHq2aXR6aovj5chhgePZko3HUsZuuSHc7shIjUBkXHWjgr
	 MBhp4GUtHkbHfW0cNrPehopaM2mTBC8fL/JVbpMMMhL087xtj+y61nKl3Ngdp2dW1QQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=nMAI28BW;
	arc=none smtp.remote-ip=216.40.44.15
Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC82606A326
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 18:33:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5CC82606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=nMAI28BW
Received: from omf05.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay04.hostedemail.com (Postfix) with ESMTP id 3F8E51A03A7;
	Sat,  7 Nov 2026 18:33:22 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf05.hostedemail.com (Postfix) with ESMTPA id 62BB02000E;
	Sat,  7 Nov 2026 18:33:15 +0000 (UTC)
Date: Sat, 7 Nov 2026 13:33:02 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Torra Sowmya <sowmyatorra@gmail.com>
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com, julia.lawall@inria.fr
Subject: Re: [PATCH v2] drm/xe: Remove unused xe_vm_restart tracepoint
Message-ID: <20261107133302.63a78f3e@fedora>
In-Reply-To: <20261101183517.4649-1-sowmyatorra@gmail.com>
References: <20261101125808.9770-1-sowmyatorra@gmail.com>
	<20261101183517.4649-1-sowmyatorra@gmail.com>
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
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 62BB02000E
X-Stat-Signature: nmhrnckta64bqw4mt3kxafqbt186aczg
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18aUwnlMcc9qqtlvlsy9eGOBoxIZGBARFU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=i6Khy9qfc47d4Gxm989Q/K4+LsxenxTQiK7zw1eF0MQ=; b=nMAI28BW1Wdb9/JyZx9YmL5sHIXrt7/d1KwF93vOIvBljU4w21zosybLxkEOFCdMsFSvGVkh+jtMCmCcfo5oA2eolRAhL8yL+M7EUJP1BzubLBffdaH/X+fcPwqcrB+qwZefng/tGHDxW1epcASMMsRPRNfdYOBhJENuUF/QYRI=
X-HE-Tag: 1794076395-90495
X-HE-Meta: U2FsdGVkX18gbKK2wSZASXsee1QsbD0xmdiBPuU17Uc3fdthY7Jn/O4gS0VCnyv5FEvuRkk4L8kPGtiYTUo19GtehZCNmb+t5gKGC9RCc0qOvj3UixTqwcdAp0lZAwQj8psYMH1lV5AmmXl+4K7gsBWMKFJvO8/eXwwsQ0wgynZ5fpFr60sudmz34DgY4XvUnw5/JcFQMjBx+cm4rAe+FP2Q7clCglts9EyN8tD/atmnHwtJun35V7lMNYbpUrCaYsyY4Nqxq+Al8Udef4DB6EZsLUsG7vWdgsFoc2yRLzPC4lW9guECvNNNLY0OaKsGYwVvvwMHLO0blDTf1V22CZxwvydNZDLv

On Mon,  2 Nov 2026 00:05:17 +0530
Torra Sowmya <sowmyatorra@gmail.com> wrote:

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

That looks about right. The DEFINE_EVENT() is not as big as a
TRACE_EVENT() (in fact, that's why DEFINE_EVENT exists).

> 

Please add:

Fixes: f3e9b1f43458 ("drm/xe: Remove async worker and rework sync binds")

but other than that, looks good.

Thanks,

-- Steve

> Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
> ---
> Changes in v2:
> - Add the measured object-size reduction to the commit message:
>   436 bytes in xe_trace_bo.o (140 text, 296 data).
> 
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

