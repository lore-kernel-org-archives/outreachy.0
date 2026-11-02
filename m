Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.49
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793612655;
	b=V/fVGfFdgjU7YZ4UgfSZhj0jG688dzz5d5XGWseQKhXFTfn+4zkyVdxF6fas4GJPL5AI
	 BOeRPHJGAoSAnPismS0M4mzVEMpBzCppP6jYiveQ6BvtBDeMTFnF9WYwNSCMb/XI7bvv+
	 kAgh4W9s79Rjp4HQa6sAUZsk3pDIQ+gdwOt9C9nNL5Jc5pR7n6OZ5QSrJyrabaF8lzhdA
	 j8KaqX+Z66hnO48RcY+0VpVWRGdRFo94Hq1zJOWYnp8vXhNam+5BJHSh3sAYEbiPWzCW0
	 UbQ2koJj9dHeY0CpzYfHgj/GpQGMltpT9T6YuCbi3UG7dHWaXQJQbTLVcZVKuNDawkw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793612655;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=TyOVNRBtrap7g3ucDkNHiXlte11tL06bQ8YzqupWUKQ=;
	b=QWAAHsAQGubvgqs1sJoT8yL9YGjzsT3p/UpDJOIumpBLi1PBr0gyzKav9Y3xy4qxa8X9
	 ktnQNAF9pBNKvTHymrizCEw/BVw3NlsmiKlej4xPDTS2Jkcp+U+wrlJ6cZY4lQWDhKG2M
	 BxmDXAdPylG+ls03Z5Ki+T0C1GBbQ5vKifBgf+JBwYQ9l/B6G3PDJZxQtGdV8AWe4TbqM
	 CMwijg046y9Z5GOuOyMSuOYm7eQJwU+e8mDt/RpbQe4Awpe5C7q5/0zmrsK48dVv3UL2V
	 4Ob27X2HFOTMGPNsNN0b59uUjk8/FQWaXfrZtQuJWEO8ifdHSa3PNZ5m48SuCytHC+A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xKy3gC6e;
	arc=none smtp.remote-ip=209.85.221.49
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B352606A324
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 09:44:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 4B352606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=xKy3gC6e
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-48afbd2c386so1564908f8f.3
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 01:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793612654; x=1794217454; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=TyOVNRBtrap7g3ucDkNHiXlte11tL06bQ8YzqupWUKQ=;
        b=xKy3gC6eXGYWBNfLSaVbpAQutgfKUpehpteb1oDynoZ7Duzb/m/0A6Q8ETjSNSkcWT
         bEH7LmZQUuDiHNpK0hX9DfR+1XSvpXTBpPsYiHfrya8Ztn8TfL2fYtjvOB/sSjPb1/gc
         6UdVD3d2kCima6yhS3Mr4DQx86CSm+xGflx9uAPF8zi7vmWigpD9q3fvTbVMDbeVfCol
         /stkGHfQzhkPT0DSCxHTw+WQD8vx+h285Sp+RR7TtJqwGTC49ZtYWHCG4bxBLIaf4ZNz
         dyLFHa69g/w8rXn8isQbaHyhdcEo+H8Qv4BJpMhd3VzeKXXHTo0fVitaQ4jixDbzj+vE
         Liyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793612654; x=1794217454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TyOVNRBtrap7g3ucDkNHiXlte11tL06bQ8YzqupWUKQ=;
        b=O4/4MLdQBRaFr7HeLErreqGTNu9LnDFYwJ5a9a2PB1WKAVXo20evBjxMSrtr4pSi4x
         rtUg+OJVFSbZb4bSOzHD1/xJwfwqpa7VzGGQQ82lOn4xifl+m1MphIcYhIMz+0rKhEQ5
         OxkspUjEsY9ecflpNAnJt/OSkYhZ3WqjwDJBkJyHT/54trim9iY/pqyB6dB3uEeXyvc+
         B8YzFCqvBZq+H4eVaPuSewwM+f2GvZC0HjOc5n2lZdEREcmsPPonqftPuU64LqC3ZTmj
         OnR1EnOIJRpmh+6A+stqjOzNaPch3tXzSUJME64NQPSq9Dl/XqzxLe1S/q2g5aDqAoPw
         w9sw==
X-Gm-Message-State: APuU4Z+ga5DYSclgcBL8Zp1kmL+JvinWkZ2hwZYwtQ/OMqVEKJCNILIW
	btQ35zcnBCI4IsxrsGmTQBVgy5FJuJplxqiVAP8lgRpTQOxcaSTs1YV8nJO19Q==
X-Gm-Gg: AYBFou3h9KhDDuymDo/hAAsolVQue8azW3WSW+Mfxnp/WX02Vzmbyfn7sesK8u14gvo
	rA3jfy1Nd758+hsNMLjDoEfiqq1ZM7OTMqanQWHhXUUme9xy+HkkuQQKclZBp7Sl+H/FLtSiSwN
	KIgbQMWG6opgA4LPnklsQ6SBDbKH6/acScziNMbO1rN3b0n2vNVocBFeSt2iM9X+SPdAi4SGZFG
	YZNL9ZYqqi+z6czeODJuVz5SEkGWZil5PyG/7wieJb5RHLkaQt1cC5XeJ2ELkX0MXTBhOGZhaaS
	9es3VS4FzuOKiZ/oDQtD27dfZsDfbBdS6Jv+KfRHGwVmhlLX08MUbNf5r/yUUQsEGZvX5yWPOTb
	tOVEvlvhhKVdV1dQcnDyCkw1CCfj0lzLNTtQ9QQO73JUzkcDhP4hqTkWL8757fbKgK8C35KFhZU
	kBrRAPvVRpli6fBi3sG+aTDhzmOJ7jB4QsmZfBkyouqPhJ9Oj1/yoH2LjetML3OE/eriwWAZF6C
	Lyr0ce7v94WXX/lwuXa3iYMrc84yl2Ds8+TMIMcIrPs+vkis4oCxyTd3wIRT7GPNWlWea93fcdo
	Y07aBS+8JjqQm7Nmvo1rkJZxOMng6GeSM9RqBdsNZbOYEeAnz48kbYkdQg==
X-Received: by 2002:a5d:4ec6:0:b0:48e:bf0:30f with SMTP id ffacd0b85a97d-48e6e308ed9mr16528808f8f.34.1793612653534;
        Mon, 02 Nov 2026 01:44:13 -0800 (PST)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.161.162])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b723b4sm19576057f8f.17.2026.11.02.01.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 01:44:12 -0800 (PST)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Temitope obabi <obabitemitope765@gmail.com>
Subject: [PATCH] rxrpc: Remove unused rxrpc_drop_ack tracepoint
Date: Mon,  2 Nov 2026 11:33:48 +0200
Message-ID: <20261102093350.36811-1-obabitemitope765@gmail.com>
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

The only caller of trace_rxrpc_drop_ack() was removed by
commit 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and local processor work").
The tracepoint has had no users since, so remove its definition.

Tracepoints that are defined take up around 5K each, even if they are not used. Remove it.

Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
I used AI assistance (Claude) while preparing this patch. I checked that there are no callers of the tracepoint, found the commit that removed the last call, and built net/rxrpc with CONFIG_AF_RXRPC=m.

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

