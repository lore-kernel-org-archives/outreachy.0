Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.53
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793400576;
	b=RIxhtfTKd3c9S3dTlJbTFn6RMZnB3NYEd8TuOpprpL1026LaEPmUqD2BMao1zqC2dx96
	 Y/AElfQa2kpObCSftX4sH+Of2J0oniptTeMKfwhl+ki9V+KkKDw4Xu9F92T/KWfcLXLfN
	 QLbztZMkLfRQLxO3jCwdh7OJUz3HX7WJ1JharqttLTGjU3oBqnw4QLpZceWcDdFQPK5mx
	 2JPTl6mFNrWZUDt/5CsVHTR1W48JPXWFaJ9yqB1A1FWPYeGhV/53ELdw+wYLJ8ntM/B5R
	 6Mq41QQlZhntYoQDcuf1h4ZKC6pB3DuQuRxA+rgU3WSnUg9oWLJgWCdUJQpd4cZb/pg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793400576;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=1NyWWHtSDB1NVSaLah8khDimQUTgJnIrre9/fMaH3j4=;
	b=eRjnI6Ue3uh0cpQr3USVrcrUMoEFmUdUulZ/gnyMXVAqptvYdXBM49L8tnNha0og819P
	 R/zr94Wp1j7fIbhWn1VnAjYQrkzZm6JySYePH6oewIb3foRPS+N2c/Bsq5uaHQ6ulx/c3
	 SN0uLxUwbprGUQrT9GJwEaQ3y5xwbNnZcdFItngU1eZHvqQ7DLWOGz/SPxPD/ZAn+5idG
	 pTG0RWjGIbitsLZq2rNzmJhxDzI+VljceyVc5JM/U1BGMafiRanHO9ZIUxDQMO/KeCUg4
	 j1U70KfmnlBLkiWoO5XpWmaHsgPWb+S2Qe66d9SmDRAv2ytiq1Z3ppi6tfCUlPWeRJw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=WZ5p5vpR;
	arc=none smtp.remote-ip=209.85.128.53
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D224606A31C
	for <outreachy@lists.linux.dev>; Fri, 30 Oct 2026 22:49:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 6D224606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=WZ5p5vpR
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4a1b07c3c5fso11169935e9.1
        for <outreachy@lists.linux.dev>; Fri, 30 Oct 2026 15:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793400575; x=1794005375; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1NyWWHtSDB1NVSaLah8khDimQUTgJnIrre9/fMaH3j4=;
        b=WZ5p5vpR3Ud+w8EkJn7Zu6/2ajpSHVTZ7r6gCe64Da7A4gTmkoOvuSFyQ1fKHBobng
         XQkOmhwGGQpFng84/o1xKN0qeKG99wgeXvc3FN1usI1zV+2DLx6GxeUv/+BwpVzSskRN
         ia+oiJzrHXaMBKKAScyyZEgrgNMd/Bp2bdSU/veyvHQkghpPI6p58xA2wXA7uoxfwV09
         Cn9P0pE5Jf814LoH+qNJIGC3AV8KwnXxINRT0rk3GAbGv3gn3zT9AI67fG/LhxueOxLA
         2OoaTh+ydlaD/lRlCIwczSYcaHMiuNrfhp6GJ0UofgYrlzHFi/Q1uJBDb5jjaY7X0AXD
         LKrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793400575; x=1794005375;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1NyWWHtSDB1NVSaLah8khDimQUTgJnIrre9/fMaH3j4=;
        b=YzmfcB5kjjQpSij0//8bTyx2dZ+LLdBoHDSEMJ2CM77PoL0CD5G4c3nwBbuBJq4SBc
         xsSpMzzzS5b0fKBikqt0pkTwgIuYAUUI5JrVfC1wYd6cikCT7E5whoeb3nP9oKUnWHvi
         7QZe4hQq5klzpumde288qjGdt2Bs006R+vv7u982Sz+6Ii8NiSP4km0NoXGKKdMxtG6L
         GM0XlNCAkIv3tT9passIOWy5PXAA0Jluflt+n+8zED6/vL6J4Af3uNTXk7CbvwXAdWYE
         yF13VxQFPalO0Jpp4RVWx0LM6nwpPmVNFBWduT7LV7LLm9GqrHL754upGNQaumYo8xKb
         D2Hw==
X-Gm-Message-State: AFq9FYIVGoc1nztwAOQM8BsQD/TXor6jKx3CsyQcAgR9Lqg+G5KBS2Pb
	oJ3oMJhbbeBeE05Cz496dp2PAZfjAmT2CYfhSWcfGOvy3qSMS0PObcYhwyCwBbut
X-Gm-Gg: AYBFou0URGI9ToFBwvq0nHA9NXLlvbvloNrxx/c5JdIVvhZQrNnPZlqyAkmaFXECz0t
	nvHeg/Gqcr3i7A9m+hrRgTrryWv71n+XhJDRAgMXLwTxb7TVF+sNgJ5DeLh9RJwrbqA5mCO6LjI
	pjEgnbMxRCPyDRfhjN9A5M5wVQ8xps2mnGNUUPWJ7oWFvqCaH9qWl2lnmcW4cFWwB4iKg2dZbwe
	WaprQ8rwxV632mpb8um3538sBdjxUV7S6Wv66J9/RiLUlAmVxqttu9e1vw+rqxMXREHr5/5TtB2
	ldGt5ZzNKwSE0dZRO+vzGrMmyGlllaQBhXaX+pJGsqkocinqODQHhBIkkkYYF6rtWbUee8unYv8
	HIOZuTbi7QudYjyP4/Ju9dKPpw+e3aRmP+PS/W4amAtuIgeXXoEGRoTKZidLFlTAYLGMHGZ3J54
	zO+CRCU6c1ECFfjRmLG8ygPmFpEdCQ/gfbPPV0P6PcKDztWqzjWJ18v/cRyqXhIXLHRk+FSAe9n
	2lVc/q3fuFgwNK0FExGwrhCoEHCT7bZKqRYuvFJZIxERMwtxUAXnztQCI/IKMVXJUkpUnmw4Ane
	x7ISO1OpCaZnWZtXXKiz5nzvcU+3DVuWCkdjGwFPTJc/hcQcdh9LFCCKXw==
X-Received: by 2002:a05:600c:e54a:20b0:4a2:b89:b02 with SMTP id 5b1f17b1804b1-4ac1c361ademr54030175e9.10.1793400574678;
        Fri, 30 Oct 2026 15:49:34 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.161.162])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b789ecsm5419617f8f.29.2026.10.30.15.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 15:49:32 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Temitope obabi <obabitemitope765@gmail.com>
Subject: [PATCH] gpu: host1x: Remove unused host1x_syncpt_wait_check tracepoint
Date: Sat, 31 Oct 2026 00:48:37 +0200
Message-ID: <20261030224837.30148-1-obabitemitope765@gmail.com>
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

The call to trace_host1x_syncpt_wait_check() was removed in commit
24c94e166dfe ("gpu: host1x: Remove wait check support"), leaving the
tracepoint definition unused.

Tracepoints that are defined take up around 5K each, even if they are
not used. Remove it.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
I used AI assistance (Claude) while preparing this patch. I checked that
there are no callers of the tracepoint, found the commit that removed
the last call, and built drivers/gpu/host1x with COMPILE_TEST.

 include/trace/events/host1x.h | 28 ----------------------------
 1 file changed, 28 deletions(-)

diff --git a/include/trace/events/host1x.h b/include/trace/events/host1x.h
index 1b6aeb7b177b..4f87b337703d 100644
--- a/include/trace/events/host1x.h
+++ b/include/trace/events/host1x.h
@@ -235,34 +235,6 @@ TRACE_EVENT(host1x_syncpt_load_min,
 	TP_printk("id=%d, val=%d", __entry->id, __entry->val)
 );
 
-TRACE_EVENT(host1x_syncpt_wait_check,
-	TP_PROTO(struct host1x_bo *bo, u32 offset, u32 syncpt_id, u32 thresh,
-		 u32 min),
-
-	TP_ARGS(bo, offset, syncpt_id, thresh, min),
-
-	TP_STRUCT__entry(
-		__field(struct host1x_bo *, bo)
-		__field(u32, offset)
-		__field(u32, syncpt_id)
-		__field(u32, thresh)
-		__field(u32, min)
-	),
-
-	TP_fast_assign(
-		__entry->bo = bo;
-		__entry->offset = offset;
-		__entry->syncpt_id = syncpt_id;
-		__entry->thresh = thresh;
-		__entry->min = min;
-	),
-
-	TP_printk("bo=%p, offset=%05x, id=%d, thresh=%d, current=%d",
-		__entry->bo, __entry->offset,
-		__entry->syncpt_id, __entry->thresh,
-		__entry->min)
-);
-
 #endif /*  _TRACE_HOST1X_H */
 
 /* This part must be outside protection */
-- 
2.53.0

