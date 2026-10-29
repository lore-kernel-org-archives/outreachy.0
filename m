Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793307993;
	b=q210QzGEI++/PKGJgr4KwOpX08iZDDxEI7warC8OMwTmWuE1thNSMdxuJbwZufg8/2Pt
	 ETAp9euMKi6OPfzdt8+TfcixpuDxFoqxUSLT8UwjbwU8VSfdo2GoiDI8Y/hsTz3XowaF0
	 LcOBEmW+JZWr+f3suulLNgxvqs0+KpzKZHzmjJfaLuX30SYQwjFYI+D/rw1ptKQvEsDTj
	 DwRWaWDu4+U1VUy5GX6KkL+IbBm2z6gcb7TjfCSGtyPyPEHK2NALG2aF/wTnp4OByege1
	 tnB0RBsURUP+DUMu8fLeFna8BdrbMb+LjyqIRIfIH0ZkTx6qFX+xQmPNDMdzmf6Dqcg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793307993;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=Nps15izdL4DLoEIXQJWNJFcXCOi8QMstZZCrzVPkb90=;
	b=rhvQ/l3zldW1lyioaS5OjJdY/G9m+vXyed52pP3sBuKJuJzRMxSsab1j/bu/JClJC2mA
	 sYnyHJbzvI2mPN2hfwEbW9Z/7Sm5XpBF3zV2LPZibEkVhMI3Bo6S9y4r/XuHkv1vYu/pk
	 snginG87+/8nlEQynVVLkooPQuwWeqpUUJQuRgpHLfQfstseBnW/wtmlaEPo3NMu/8pzq
	 NMQjYfXnbPVWZhIAcsDNj0x9BZ3SzEqjJ1bwt0JAyYjKdODFhbK6cLEyoYHsjvYAzUh/J
	 ePxQL9aGqqCUjwU3px1gxYKNraf6W2GgYjwUXbFg+EABqA5CJutww9/ta4QMOjQAy9A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=0jhRTZqp;
	arc=none smtp.remote-ip=209.85.128.44
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4820606A31A
	for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 21:06:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E4820606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=0jhRTZqp
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4a207b02a2cso45015e9.1
        for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 14:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793307991; x=1793912791; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Nps15izdL4DLoEIXQJWNJFcXCOi8QMstZZCrzVPkb90=;
        b=0jhRTZqp7hZObQGk3eVyzvY+afCVYHZnUGGgvvNN05PCOevWUYofq5FyJ5jyJ7WySf
         7ncWQrgkY8GX1gpR6g+Q8K/4mk+OzrLf9Dap5s3UnYEYD6MHmfKJXtTQ6Mq30UGhdDf/
         +y2dgsla7ziy3bIIEe9pqihFwCo33+DECcxcJ2efAcQgdCWfRWpVkwKlZdwasZyvZc81
         JG4CRkPJ1BV40czlsTKiaE2ijiEknJ3gqARr4Ip0AnGaj3dpbRam2BnnRbDpWG9zvHI6
         66bVZMWvBk6+2eMyHbEO2a3muxWshQkVplcyWI9jbZYCHlVf7ena90QjOdIVWcddObO6
         ZJ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793307991; x=1793912791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Nps15izdL4DLoEIXQJWNJFcXCOi8QMstZZCrzVPkb90=;
        b=Pp8yI5i2vnFoGyurv4O5lOC04FTFdhtPTgwfyOc1/FECoIdjVe88PitTl3E+YW2YuR
         jlSFGtBk07hPUGoQkjY0GTRHAW/0Tz+bGWjI90ghwp2BdgADBgE5gLHbmzn1UhYLreCE
         xsz9RcB5aQFA5X9eqb8Jh9q+wY5eTGRFqXPiHEz+3DNHjqAgGwvn9um3MOp1hJWHMCXC
         E27vrIa0WqvyIeusqlBmA9UQOSfGztsdzZKMMw66Z1lRpGlQnPU5BM0En10/VUU08EEi
         vbY85raB2SksCLtvZm520+Kk6TbgAOKA+23c7u1P84juxjVu+x0o2s3/nE9gWXBd88m5
         kgLQ==
X-Gm-Message-State: AFq9FYJH6oX3JLB9uDiwgtk0UGyRJLBmqDviQUTYK0LHchSbb20TZwYy
	BFlWIo7ZYCP0KadC09x8m+e9rXhujVFjm2Z1OQRpxkLULWVEz5IC+9Mt6fhPguYG
X-Gm-Gg: AYBFou3KX+4/RJsHAsfT/zOxA7gseicVkf/VKMNmklQbkvItkhF9FpKp7ipO2/OKPGV
	rdHtY/LL21BwIkYqTXK6P4GHW33kTWk5fE3SUsVaSPX0b5nrg95rDprwu//5xmwJh1OFa9IDeVm
	mFL0mIzwEeWiNYprwAUiHTeuLGek+a6jWH5GI9mvJRhjyL8oqaNzGC14X2oEt08dTpDqyVrpz2q
	aE0fV0YqKOSaPTqlPG/7z8Vb0mJZwLIYPk8beDQ4rTV/HXxvcnqeCh8vLFMYS3y+CRky79te7lA
	RcDXery0OCy0fotLkv98L4FhvGvY065jrNBmUiD8qqhXqDa264IvRUkpLGDIYkNl9Tr+2XxYa5+
	ExivQ/uE8hL03zN6AyXBropRP3zr+KGTKNhPTSZuXU4wdKrO1B4JmqOm8rVMEQn9eiTQMnKq2uZ
	yxb0BpaV4qFyPlhQ0QhHPUQAd9R5HXXCBVpzRQMhW35rbS4UWdEVPOGPJmIkUK42E8cQpZbrVIX
	XxSaptCB4kE5+e251lEE08w0OCcMrH572hhwpkvY+v34ZDT4YvsEkv5QbZSz5yuuR/PU5gSSc/7
	1C+ERtDfG6kw9RZOn8MCqRgijLKO7n0NzHW1E/ToFvbPIh+gk02qMr+G3C6STRDwN6x76Gv1AC4
	EYA==
X-Received: by 2002:a05:600c:46d1:b0:4a1:825a:56fd with SMTP id 5b1f17b1804b1-4ac18a88fa6mr3733075e9.32.1793307990820;
        Thu, 29 Oct 2026 14:06:30 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.91.147])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4abf60f1076sm12304735e9.6.2026.10.29.14.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 14:06:29 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	obabitemitope765@gmail.com
Subject: [PATCH v3] gpu: host1x: Remove unused host1x_channel_submit_complete tracepoint
Date: Thu, 29 Oct 2026 23:04:53 +0200
Message-ID: <20261029210453.23821-1-obabitemitope765@gmail.com>
X-Mailer: git-send-email 2.53.0
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

The call to trace_host1x_channel_submit_complete() was removed in
commit 625d4ffb438c ("gpu: host1x: Rewrite syncpoint interrupt
handling"), leaving the tracepoint definition unused.

Tracepoints that are defined take up around 5K each, even if they are
not used. Remove it.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
Changes in v3:
- Use the stock paragraph from Steven in the commit message and drop the sentence about performance

Changes in v2:
- Explain in the commit message why removing an unused tracepoint is worthwhile

AI disclosure: in v2 I used an AI assistant (Claude) to help word the last sentence of the commit message. That sentence is removed in v3.
 include/trace/events/host1x.h | 21 ---------------------
 1 file changed, 21 deletions(-)

diff --git a/include/trace/events/host1x.h b/include/trace/events/host1x.h
index 1b6aeb7b177b..143a16e37703 100644
--- a/include/trace/events/host1x.h
+++ b/include/trace/events/host1x.h
@@ -178,27 +178,6 @@ TRACE_EVENT(host1x_channel_submitted,
 		__get_str(name), __entry->syncpt_base, __entry->syncpt_max)
 );
 
-TRACE_EVENT(host1x_channel_submit_complete,
-	TP_PROTO(const char *name, int count, u32 thresh),
-
-	TP_ARGS(name, count, thresh),
-
-	TP_STRUCT__entry(
-		__string(name, name)
-		__field(int, count)
-		__field(u32, thresh)
-	),
-
-	TP_fast_assign(
-		__assign_str(name);
-		__entry->count = count;
-		__entry->thresh = thresh;
-	),
-
-	TP_printk("name=%s, count=%d, thresh=%d",
-		__get_str(name), __entry->count, __entry->thresh)
-);
-
 TRACE_EVENT(host1x_wait_cdma,
 	TP_PROTO(const char *name, u32 eventid),
 
-- 
2.53.0

