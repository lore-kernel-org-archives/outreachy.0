Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.53
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793623420;
	b=FKBB23mYTi7ag39bib2YTLYrkJUU7sUAZW1uMLdOnwwvM5ov01sImREhuj/wQ8R8/bP/
	 JxIa7gnGN+wNbAg6VDGHxAkbDlXneTaJ1GLLQNhLF6UtVCbOebWbRHpZNdb7CoquMxdTP
	 d2uRrSKSXMMlCi615JOSiZ8g7asCSKjb+5Dr09lLO6QsyyF3rHnS3xdIr14e1CeUKQ+NA
	 aN1sagL7kDA10eXkwzlBQJy1Fwu6vEy4ehw+3L4Siq7eHUdIKEwZtlvCLgNIYIkDj2cHE
	 c5z65lqvU5UuHGY2EVv6jE7RLAZdkecWQWA8XmWAFvZxMSCVl2vVBaF1UHjQR77zF+Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793623420;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=NH0Ab+/DuO0o96gpS6mMf+k4V4+FhNSsKcjacght+vg=;
	b=KnEINgk3OLs+q9GJzImcKvaQ41cTuAhB5PFfBr98unw3g/ljEXaqfsqUhINod97JXvtq
	 Ws8laD/bQzmRHW6gJiOPZM5K/R21oRZiXq5kVuUji+sIr2hDEmChZVNC7hu+VC7SQH2GK
	 5dw+HAXABePINLSNcNoLXpwbeWmREl1LshKeBKrKGydby56INPNT0mxDkr6QHXKviOLuZ
	 zsOJbd1Wvki2gkxMJ3r9NHdH76jYs7CYD4gChRph4KRif5QfIwNf+d9JeHElkSt633qjV
	 +ydl4v+Wb5gyH7loPTxExfM6/hQlRWfujcwwo7q+NTGu9pDOBbpVvn+pXz9kFywVkmw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="T36/h/fe";
	arc=none smtp.remote-ip=209.85.128.53
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DE160A2605
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 12:43:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E8DE160A2605
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=T36/h/fe
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4a9a8d6cea8so38585955e9.1
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 04:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793623418; x=1794228218; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=NH0Ab+/DuO0o96gpS6mMf+k4V4+FhNSsKcjacght+vg=;
        b=T36/h/feZv6nw7X288cGapcvO2vDUrGg2MJK+8od9OOEXphMJrbKG4f/IXiwGLP1SP
         lnGOKOaNzATF4wrPpqH5gzXSTQUH8/8cVrtG8lFXZB7G1EUyvXSQqd17pILDFUyLFIgu
         JwKBKhBGwX1sEMvtTdXowoXs+OzegKT22tayKf9XMfhz252TYTg0gOV8LmfFdy4mVB63
         swFnSQrdBZs1K3HUhKc7X3Pp1LBzjsiitZZ1CJBLEPtANtYfv8EuydaUD0jbygLBTGAj
         /z4m3TzbXD/4ssOuuefbjzH3O39ArIgx3U5TO9IiwXFCAalWTrmRIAtODLhyuPVpia5N
         FKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793623418; x=1794228218;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NH0Ab+/DuO0o96gpS6mMf+k4V4+FhNSsKcjacght+vg=;
        b=JDBSZQTaxGQUM2cMwf7Z68tSPVBfHR0HWKZZ9UhXF5ZDxj3Epz4BJXl1BMA7Dn0vRE
         i4CGmWV1F5O9qKABzIMQBgXFB1dwx9iyUpqVM12FIcrf4IrD2sOt8tOAtXKpPP4vu9o+
         szmgv8BM8K0+WC/MSFjYTo9e6yK648QcqcRokw0xjevXuFPRwdikeH+EGRlQHBMcjIX4
         7985hNMFio2KcN0tZRc+Js4PTA9mtsZlfc3GIMCHMb1W2l5oZ6KbgPzIiBVZEFBT9by9
         xYHqJHUIl0GOlPRyPvbh9qEkaejoVUGN/pOIW7TfII1sjlR5g7AD5Lt8JpOUkHNpGVsa
         /0iw==
X-Gm-Message-State: AFq9FYIlRs+5tE5cXMy4I8lzRQC95/dJYAR2RpllD4hjx/Lzi5yV91TM
	FI+v4FV+5LhQs5fu/5FvF8G9ZXaT3iqQe1z3HctrDKFP2Cqo/k1cgzM3f8s3cA==
X-Gm-Gg: AYBFou3i06E3KehgEgtWpwHscyTPtWxpssY854eNi48zCEdxSH0LHmB25a1PuAUr+Sn
	oROsRY+vQWq5fEHOcgjMU5rHmlKEVZpuAZtj9aEdKQMHsSj5dgMMNI2nC/oMwYntno79lScVO+5
	VfJlmp6g0wLfsWky6icPcdLgEIg/+vDj5L6KrZLgI271xV3cYNSZM8m4Bm5ha9zX9ZYgjRS4j0h
	H3Ov9tboBAN67DrSUsX/1IumVf6qvXcejFGOtnFAJCXWasmyH5GO22e13hPN+8qsWoPc8dxj55B
	FYcqJlHZ3V2G52eM1qbe/sqNDha6B3ifweN3ryzL6BQDHrvWS/PiXu5Si1OJ/jX7fEfecQXuKCk
	Rl1l5T1gDjKsT/IP2Rv769MQ8FMSCI0A0UVb2F+rUpKEMXSm0qeobir5C8otNzgZNlU29VmuU48
	VsbjN33I0TPjURDxVon6B6ZSoFmm8CCUfg64tQksekmyNZWS8JKg+6cB/Y7nqP2Wpg/wVdmW2k9
	oYUc+XiJpOftOAgo08bCSJuRbvbeCK+gU6iVZEAPxDhdZ45HhGqg6xG2stu21vm/hWbbWu7XzX8
	GejzV3LAAV9viVMAWTEtN0/GYwKt1c2uhxMPdp8McVzC34O/QhBJJYqhHA==
X-Received: by 2002:a05:600c:1387:b0:4a1:88df:8a2a with SMTP id 5b1f17b1804b1-4ac1793e81cmr243337095e9.13.1793623418069;
        Mon, 02 Nov 2026 04:43:38 -0800 (PST)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.161.162])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4aa7f322c46sm329842425e9.2.2026.11.02.04.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 04:43:37 -0800 (PST)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Temitope obabi <obabitemitope765@gmail.com>
Subject: [PATCH v2] rxrpc: Remove unused rxrpc_drop_ack tracepoint
Date: Mon,  2 Nov 2026 14:42:50 +0200
Message-ID: <20261102124250.37179-1-obabitemitope765@gmail.com>
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

The only caller of trace_rxrpc_drop_ack() was removed by commit 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and local processor work"). The tracepoint has had no users since, so remove its definition.

Tracepoints that are defined take up around 5K each, even if they are not used. Remove this unused tracepoint.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
Changes in v2: clarify the commit message wording.

I checked that there are no callers of the tracepoint, found the commit that removed the last call, and built net/rxrpc with CONFIG_AF_RXRPC=m.

 include/trace/events/rxrpc.h | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/include/trace/events/rxrpc.h b/include/trace/events/rxrpc.h
index 56dc9b614071..ec145da21ca8 100644
--- a/include/trace/events/rxrpc.h
+++ b/include/trace/events/rxrpc.h
@@ -1837,35 +1837,6 @@ TRACE_EVENT(rxrpc_send_ack,
 		      __entry->serial)
 	    );
 
-TRACE_EVENT(rxrpc_drop_ack,
-	    TP_PROTO(struct rxrpc_call *call, enum rxrpc_propose_ack_trace why,
-		     u8 ack_reason, rxrpc_serial_t serial, bool nobuf),
-
-	    TP_ARGS(call, why, ack_reason, serial, nobuf),
-
-	    TP_STRUCT__entry(
-		    __field(unsigned int,			call)
-		    __field(enum rxrpc_propose_ack_trace,	why)
-		    __field(rxrpc_serial_t,			serial)
-		    __field(u8,					ack_reason)
-		    __field(bool,				nobuf)
-			     ),
-
-	    TP_fast_assign(
-		    __entry->call	= call->debug_id;
-		    __entry->why	= why;
-		    __entry->serial	= serial;
-		    __entry->ack_reason	= ack_reason;
-		    __entry->nobuf	= nobuf;
-			   ),
-
-	    TP_printk("c=%08x %s %s r=%08x nbf=%u",
-		      __entry->call,
-		      __print_symbolic(__entry->why, rxrpc_propose_ack_traces),
-		      __print_symbolic(__entry->ack_reason, rxrpc_ack_names),
-		      __entry->serial, __entry->nobuf)
-	    );
-
 TRACE_EVENT(rxrpc_retransmit,
 	    TP_PROTO(struct rxrpc_call *call,
 		     struct rxrpc_send_data_req *req,
-- 
2.53.0

