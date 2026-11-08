Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.176
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794124690;
	b=YbdX9ThtiUzrsB7QvAz3fWhVIJjIloxfxnqY0OmPs+imrhVeLRiHCLMtXTIbuTl13iL4
	 c98n2YqUQqejQRR2JoDnMI0dzcmhj5AQuq0SIs7RCdKP5jXUII0oTUMlNy5ZDl8kMrUzQ
	 M/UfK7baFX9DOktxuZesDr+Ml6rou1DCDnqRlzXo0adBQ5mo1aJxpOK8np8Kx0JnDuQ2s
	 e2v5rqAtahxLwOQlTP4zwlQ4VeKsUFIHnIdqWte3IkEPXTto9UoDUwsmKQCXrO0/KnV9X
	 pDFOf15ktRazNpLnzG1AnyQA50RIccCwIED5KP/+fwjCrPArJ1CWWfEeT4zGa4FES9g==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794124690;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 From:To:Cc:Subject:Date:Message-ID:X-Mailer:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding;
	bh=zgeza4WC3yHtTC4XeH+C9X3JS6p9k1oxyKbAx3haHms=;
	b=B1zTcC1QrvMLgWXXbcZbPge5gFzZXVc9kOIcY2W8aoTLIodhAG27uzC743eS1QQEN+G1
	 AXozLXmSWxoQNytmVXJwG13v9VxtP2zlNmCImJWCHCAMxk42p8YRtSi7tiYhmoME37WTv
	 /tKjJLXCcZzIAucZAjMGT2i+Ly9fCdBCfQfDAF6zxb9YF97AZV/dk5G0Wlz46Gd0HMrKM
	 5Iys2VGxjkIe5Xq32rexkYPBl/HeDRSg/NFGEVcNvMz2PG12QzSoPNWUagpQYzC6saH0I
	 ub1grFCBRXOfEojKsF4rgPqa3URP2dbZ79eKGfxk/MvLMG4T1cxK33TiPa/A0VEMqyw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vbki7sF1;
	arc=none smtp.remote-ip=74.125.82.176
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0E2606A320
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 07:58:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org AD0E2606A320
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vbki7sF1
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-3645f0f3fcdso518294eec.0
        for <outreachy@lists.linux.dev>; Sat, 07 Nov 2026 23:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794124689; x=1794729489; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zgeza4WC3yHtTC4XeH+C9X3JS6p9k1oxyKbAx3haHms=;
        b=vbki7sF1A1AqXxdlCtDpqsHv6Be1j2nsXw+J6nMTst7EULVXFt/xjMNvkBzjrQFSsy
         R2S5YV0ieL7GzjCItG74K3Wa19CXxyyiMNOVXw7IVss4Z3fYASNeivykgD9/LPnmd/Xe
         v8VTVISzF7fZEgEZorZ9seBnuQ09O/qCD+PD1ct8LoECEdjdGhWOqJ51qImIm9MuFCWw
         rOF7qGRWqln7If306yAnKrwUwxp4yOhlqETVctT3GZBuJJDi6A2fdwM0zvTKhP9ZObk8
         Qv8OCRdLbpKbjgt7BqU4/cqOn6qmjBZyle1WWMuCj3CZSahc/00L79tA7btFoArVcAbC
         byeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794124689; x=1794729489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=zgeza4WC3yHtTC4XeH+C9X3JS6p9k1oxyKbAx3haHms=;
        b=sw9GZStkfqCKFI/3ymvjGROdolCFMcp3L8lluBApy7Wk/UsTreFZScWJ/sMuW82MVJ
         XessvxYwoz1E8ihgF9FlSnnYdAVjfWiVzwH8uQ1WJ1u4mo25xEphclo18oulgrx/UgZx
         OZgT9RfFM3ny97lngY8pW03DiaDov513SnzTm37USWW4TFcJ9Mzd9gumbirbLmqKUOqX
         3XLks1LuP8lplyJeF+T/QkESV0QNA7rVfTibHt3FMfWYoydWT3gL6a4+pkgrHBRWEFTZ
         7j9Ky4HIOfaC6nG4z4Oj+MmF+8pWruSngVW6J9LIPXiS/WhD6x4GazbZqZJuCBqqOiGb
         ctLQ==
X-Forwarded-Encrypted: i=1; AL+hErGtOe9QrP+VHoI2UuMgmMlcNmPIY6vYpaVf66bhPj66oxA0A6FGMAx3+eT37foPFsK/2GKNCDNaiRc=@lists.linux.dev
X-Gm-Message-State: APuU4Z9bXh8mEvGc/mDgt34gKWwxeKAnWo+tZ9SQw7t02gmX2RJcv/C+
	BhLhlGy2gM0cJw+ffzbc3G56dszls1hvoGr5L1ji1Y7UatKPzBRQQnZ/
X-Gm-Gg: AYBFou1gohcmMKqgq8sYx3jxKCi9XDx2evvDmR4NYI74/qtaK7iRzCB2GwfnqyxBlaa
	B5twD0YOJ6FQlKl/eor5o1KMi3N3AV3C1i12fhEUZ6aTBs2SW5Q3Z/nj8YHrgJKUBypEI8S0bWz
	OSvXTJBcN17/YCz3Ro1vQ8+beXeq/rxlptakWz4YGwynENJQIrUfIWuJQmEX2A7c+1t/xmmspVa
	+/QEEjRJ2wPWNmbZ5eobcG57EkGrHKEOkBy1YKFVei717y/VIfiY7CNwsXFvagK+B2Z8+W9Y6G9
	XHs06iHfTO5agxIsCvpdXi1jR5Ln8j9thQi+ZE8o82ufdFl8wNVzoy3kv5UQlXHHVb83bV9OLxh
	erJoQEi3TiJt/Q/QUz/fApg2ND70Ak0f5fFMj/Nff1LtSmBUy7XSpF1/KCgFbYWEshyV7L8u5qK
	csckU+PU5xKtFnDl0hR/WO+97izulyH6SytT/st2rB80KE1/LkICQN/qMnk4TMx9RQiXkA2KhDL
	fMjXVPrUGjJMof0SmwSJdPJSbYGGUEZnpxNC6YhvSXxbQ68PJ5tqdIMcC77k0Xn8fP9NLGgKpd3
	NSP5376Fmgftzdyl3aaiLPxpczttSSwC6+ASMGq81TE/FXk5ODW21Bdzlcj1jhIZ2LcKu+X/uY2
	U8lC1Ityer2DjgCPsTmIpEyN0PQ==
X-Received: by 2002:a05:7300:6822:b0:369:9af5:7bc9 with SMTP id 5a478bee46e88-37256bf17efmr2190444eec.23.1794124688659;
        Sat, 07 Nov 2026 23:58:08 -0800 (PST)
Received: from localhost.localdomain ([2406:b400:d4:acc8:a024:59b8:c312:eefd])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-372660f385bsm3866093eec.20.2026.11.07.23.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Nov 2026 23:58:08 -0800 (PST)
From: Torra Sowmya <sowmyatorra@gmail.com>
To: matthew.brost@intel.com,
	thomas.hellstrom@linux.intel.com,
	rodrigo.vivi@intel.com
Cc: airlied@gmail.com,
	simona@ffwll.ch,
	intel-xe@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	rostedt@goodmis.org,
	julianbraha@gmail.com,
	julia.lawall@inria.fr
Subject: [PATCH v4] drm/xe: Remove unused xe_vm_restart and xe_vma_flush tracepoints
Date: Sun,  8 Nov 2026 13:23:35 +0530
Message-ID: <20261108075335.13248-1-sowmyatorra@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108060418.4554-1-sowmyatorra@gmail.com>
References: <20261108060418.4554-1-sowmyatorra@gmail.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit f3e9b1f43458 ("drm/xe: Remove async worker and rework sync
binds") removed the calls to trace_xe_vm_restart() and
trace_xe_vma_flush(), but left both event definitions behind.

Remove the unused definitions from xe_trace_bo.h to avoid
generating code and data for events with no remaining callers.

With the tested x86-64 configuration, size reports a reduction of
888 bytes in xe_trace_bo.o, from 20262 to 19374 bytes: 296 bytes
in text and 592 bytes in data.

Fixes: f3e9b1f43458 ("drm/xe: Remove async worker and rework sync binds")
Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
---
Changes in v4:
- Combine the xe_vm_restart and xe_vma_flush removals as requested
  by Steven. This replaces the separate patches for these events.
- Report the measured combined object-size reduction.

Changes in v3:
- Add the Fixes tag.

Changes in v2:
- Document the measured object-size reduction.

 drivers/gpu/drm/xe/xe_trace_bo.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_trace_bo.h
index 86323cf3be2c..a6802f6d3a01 100644
--- a/drivers/gpu/drm/xe/xe_trace_bo.h
+++ b/drivers/gpu/drm/xe/xe_trace_bo.h
@@ -115,11 +115,6 @@ DECLARE_EVENT_CLASS(xe_vma,
 			      __entry->end, __entry->ptr)
 )
 
-DEFINE_EVENT(xe_vma, xe_vma_flush,
-	     TP_PROTO(struct xe_vma *vma),
-	     TP_ARGS(vma)
-);
-
 DEFINE_EVENT(xe_vma, xe_vma_pagefault,
 	     TP_PROTO(struct xe_vma *vma),
 	     TP_ARGS(vma)
@@ -228,11 +223,6 @@ DEFINE_EVENT(xe_vm, xe_vm_cpu_bind,
 	     TP_ARGS(vm)
 );
 
-DEFINE_EVENT(xe_vm, xe_vm_restart,
-	     TP_PROTO(struct xe_vm *vm),
-	     TP_ARGS(vm)
-);
-
 DEFINE_EVENT(xe_vm, xe_vm_rebind_worker_enter,
 	     TP_PROTO(struct xe_vm *vm),
 	     TP_ARGS(vm)
-- 
2.47.3

