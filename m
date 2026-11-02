Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.42
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793644943;
	b=V8Y3CzfUY1lvWBx7dFJlaBYJle4YaPjKSVQP/Sy/fe2Smwwod8AqKjAYO5fQMQqR6BSi
	 oVzHN5jR/xQaf1Silhohf+vGVy1yq5RgZ/5fI5uNq/nXXmXGM2vEcmOPy3RSKnxE2JwCT
	 VKe6rOQ21ocS3+Mitv2gGPzFZ2qW2gaMPwL+ZhaPijAsHNcGwAu66IkZlRtKHEowyLTUD
	 o7BDDR674u0FOJIhqEAC663TeOGEiKIgmwPV+NedWiSvKICvGYIv7QzIA/ig2m5lN/j8T
	 ZehGolkHpsN2Luxe5+TCe1IX0r5qiBfhzNkcbE0nFaGl0vxjhK3H2+P2z5MAiRhE7Mw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793644943;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=9ujouwqjLzG8fYSIkA2s99VHJAJxX5OE5Cl6m5JGnwA=;
	b=S0h5y3xQN86EOIRKiqz89LgZBd6VtfLxf0vLXFk1tGHOPcb1SSzQwjuV875xB90CQ5wD
	 Rx8UbqpCgCcAyqE7g5iVCMxipLPAJgoihDmVVbSK8SY1jX9MFteI/+8UHiL8LTdjL60Zz
	 fC0YRZ5rXkN08zAay58CkvzQlKPlTIx+glB4zJtnNJDucMDw3geKS5qilW6PhexOvQCqK
	 8FxaiHL9Xyk8KSN5CU+bULhLJskb88+cfi0f0I37Q0a4pJudmkpXWopRzqHbuzadYelW/
	 +6HGXLtPFoEetAKdKQQY0T8C7Yd+tyct7ufVQrDUXoJmhhq/reN8r8NizASqfmOBvOA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=yW79pt41;
	arc=none smtp.remote-ip=209.85.221.42
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B82606A32D
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 18:42:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 23B82606A32D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=yW79pt41
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-48c4d99c32bso2322117f8f.1
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 10:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793644941; x=1794249741; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=9ujouwqjLzG8fYSIkA2s99VHJAJxX5OE5Cl6m5JGnwA=;
        b=yW79pt41BGqHYn/ksLoSf6u+PBgSit/6cqhPfrgjL15BNYzkcctoIcUGg5bCecZq2z
         6EEBbm6j9m8S0X9y5T6grrWyYzEr+mqOkwXAx4v0JrGvpr0cSoeRVMbfWsUglw5vbQCs
         1v00kGBfXE8SraFwTcd6t4Sn+36pBXUKC+ky2TDhsyUElIa3EnJ6vuVXX79BHagQoOIi
         pokOyy1UchpYM9yQoTqovEUIQQ7XPBRvXDigBLg1HhAkmClDNcO5o224/d5aLEEjX7K/
         KvGFG9bP4xe0xmEPUovMSFHA5c3P/dZzpuyevi5UP5jpf6yEnlchJnie/hg/GUbbgWml
         iFyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793644941; x=1794249741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9ujouwqjLzG8fYSIkA2s99VHJAJxX5OE5Cl6m5JGnwA=;
        b=lNPOSz0clpRcGCemhaT9OtH+9HYXxCHt+WBn+zSZY/mc3eqJ8uDI6cj9QB3C0X/kAW
         H1FzqhHIK+bosGEWUanl+jkMi1SL/o2HcGOcDimBExrczPd4MLQON3BliI6y9rh7UU4J
         PnB20IdMSN4PQyp8RrKaVyUNqGiAJDM0kTNiUWWJhqzhq0uszPFjsbJOEGZJVjGRxzo7
         mWNfLl160pmkJ9hgbztU4YUY8jaR2VBwA9YDkM+1x2IIluBjS/4S/MWG24vi6SmUZtHH
         jKoAkTtAz4nhS43XQhTQI5Ezx93zCnH11xNBSTKDRjzN6RubtjFnT+ahNi64786Zo0MM
         tK1g==
X-Gm-Message-State: APuU4Z/Cft/iuh/pq2+MudOvhHZNZb3qU4FA0FTYa39OQsXzffz3sg0w
	WuMLW3rQd8JDhejRMAIfyuzbcf6q/8JX15q8POSZd+pZpLz+uqhnT0kSbxNUug==
X-Gm-Gg: AYBFou3LyyfBwlXzkpSVtZE3hZM7ziHH0VdVMWTFfLt7X2MJiFDYa0lihqbrltam2Eo
	QHiBErlCSBhovfTBFiF4seSku31G1bl16zrC83/dRWcU1+FAPqR4uoinLnPwOa5woEPyYb8vJlr
	zw4vhHBck2MScJoMeEiKIR5Z5HdR6ci8PaQ4ZTRZjHLiXBfGTGNNGxMJrTLh/0957foDluiYmNG
	sHafSkBwgPIT5VQ4PP0g6fcTBmUhQdgM/verEl1WJzKuzIZ1Smdg2VDn+QEEkhPHRuwRSYZTzaI
	T3isStR2JVRm81RRcxZJzElXs1lKAgZkLbHRn0c0qs/Ny5KaI/2h8aDOvJRCxyUvUEEHh9YMkc0
	Coy8dDN8vzcIYm3vaoUPf9JWwWOXSHHI3KpUrhd1OWLJPVDYXBuydThmVe07I6qq7EsFnR0lV9S
	fxuaF26cyBVwI0leeUc0uo1j5A5dyU8HjpJlQnMdplbnjXHhsT2Ev+bRMiJcivOiz4g5+Muxwmp
	V7H50VG1gVnYSgoWCP+F5X4vM8LZLXLK3MSx6POwQhypmVhA2f+YsEzv0T/I3rNAndlhlOyOJ15
	ZJq7jKy4xH95g0ZHb2jjJKXuQQ8uN29VOMcMG7yCJSC+Dz+IJ6XInjyuvw==
X-Received: by 2002:adf:e3cf:0:b0:48e:69ff:b8a3 with SMTP id ffacd0b85a97d-48e6e500986mr17154816f8f.38.1793644941212;
        Mon, 02 Nov 2026 10:42:21 -0800 (PST)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.161.162])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b723bfsm20045474f8f.15.2026.11.02.10.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 10:42:20 -0800 (PST)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Temitope obabi <obabitemitope765@gmail.com>
Subject: [PATCH v3] rxrpc: Remove unused rxrpc_drop_ack tracepoint
Date: Mon,  2 Nov 2026 20:38:46 +0200
Message-ID: <20261102183847.38109-1-obabitemitope765@gmail.com>
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

The only call to trace_rxrpc_drop_ack(), in rxrpc_send_ACK(), was removed
by commit 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and
local processor work"). The tracepoint is no longer reached by any caller.

Removing this tracepoint avoids keeping unused tracing code and makes the
code easier to maintain. Each defined tracepoint also takes up around 5K of
code and data, even when it is never used.

Fixes: 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and local processor work")
Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
Changes in v3:
- Added a Fixes tag.
- Wrapped the commit message at 76 characters.
- Clarified that the 5K refers to both code and data.

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

