Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.45
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793886718;
	b=ESLzn+2Rlc+v/Y64IOJQNdnbENVyMnp/T0AuAR4Bk1NFTq2w9jdZSJaznU6VXN4HHSOL
	 ysEHe7UxLABh3amBXYalPqyHkJ5hSZNWkQ3DyWOWpgZIw0mfJ6vG6qBX9AHpJVyNUQVae
	 mi9fSChORT2JKmSDFZjrAqdDBsz6w+htlrn3d5WRDqxAW4mY7+bMKa0Acfxa3ENa/YTUu
	 VYwQXWwK7FBndeo1Yqgt/Pt+Vz1EMB6dSWYKxV1UJUut284drshyi/xEzF0wLQTuyaXXt
	 xycDutAhBOdjO8TsiJIrO79PmeP0mRf016vxwBuJ2aPCG8lRlkY3NTHVzbQZD9EV4Nw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793886718;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=vmBoqCTSSiDrtzcALRvIpsif2toWVKqTtjQ7NFaRzwA=;
	b=1CAB9JuC0kUMM3na3cfi24q5C1IajJlsPZTvw0OIflpjQOPNStZwQgMYbiDhIaGIWJEL
	 hD6VlIWyu0c0KoWPdjBaGi7JidWvqGi3338y1UBUEFuEAHmgWpfxaCmzWmYUSAB+gOFwW
	 eaNdtPoSLfYh902w0NBB5wp9soTyJmenYEWsNIsflISd8f2ynzVM5sXtqNa8MOnKqB+CP
	 SdMp30QRqbI6mtYzQ+SB3LqUxPNcxQ/6zXI5T4VkLIoOoLppSojm5X1TNoXGgd24JZBnm
	 shAAnCuPXU4kYSJKuVEfhGaqGF61AsiZ4mobRb6S8e+barAXMKihgZjszWXm06tY/fw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=yfO+6lN8;
	arc=none smtp.remote-ip=209.85.128.45
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE35606A31B
	for <outreachy@lists.linux.dev>; Thu,  5 Nov 2026 13:51:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 6AE35606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=yfO+6lN8
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4a35db1f202so15011665e9.3
        for <outreachy@lists.linux.dev>; Thu, 05 Nov 2026 05:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793886717; x=1794491517; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=vmBoqCTSSiDrtzcALRvIpsif2toWVKqTtjQ7NFaRzwA=;
        b=yfO+6lN8+FNDf0/5xIVNcTzuvSgN6ls1Vws58d1Jq1xUIRG+DslALUnZZ6L2i1LnuQ
         rB1OtlEpeIorsTx1a2zym2hfNuxstNi3t1d/P+SKLKGJWISN4A6/rFiT9EnycZ8bdoyn
         ePhuhW8HVWOKWbCzAT+uD393hTbm+doBu3EEk4RR2Qj3BbYO1yy8+gJxKX/MmgBZxCkD
         xpY6ic3xBu+5ohfeFC8RLweyqcLk/2dm93Jiq7MTZNTDwYDhDURZ+xMUzbiLUGZ/R7Em
         gzvQ37tPXpwZuGGkc+ZHqikKNDs81LyxBAUgGve9oByxyyjj+Iec2LFalPXZ40UUGbhh
         Ft6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793886717; x=1794491517;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vmBoqCTSSiDrtzcALRvIpsif2toWVKqTtjQ7NFaRzwA=;
        b=vuNpzO+YRSN/u0Q/F3aqK8rIm33ZZzpwre1wHDXvGTvMfzKRe4dXwRDu1c3tjMaEng
         t9dhVoCohhvfk7H7AwUiMVYpx558rBgKQuVMKKSulhrc0DQBglqaIMGxWFIyO/ph/G1L
         sq37c9EpDr6MQo8iWSc8MIczZiDuqNa2pYfaicybPCiYMv0HkPLd5ZV5gBMrhxIjbQKw
         f6js0oSXyDbnBMHxlr9nGBoFX6VW+9cC9Eb53z6h7+0/4LUfbjA8eeQjoW92GeFgxjvq
         nhcc0rMBxmadyWxuXCprqtpuRheESo93rWsop3F7maogokPDvps/nSog9cpUyoQHDwq2
         Kz7w==
X-Gm-Message-State: APuU4Z+wE7sGznbq1K/EtEqbcF1hsCSnTrjn449k9Lwi0b16AzT3B8qE
	MTsrVkj+OQw23w4euNi97PsZV/wv6RJlikL6KWLRlpjVENNZWoCI6Xe0BQq0cg==
X-Gm-Gg: AYBFou3KjPAkNN8v95hLP9fV1mF9byGkjTmY1kNLSxlzK74gvNsLfaKFB8fz9xampUP
	JmOG2a5/uVHgbzrxxGg2a3HcOp7qgBtckOBMatw6EdD2sNuL75gpZ0RQkl/MpmN8h6BTZqSgT/S
	RpwtUEqXggXB/l8w4KUp1O1W5jbDwM38UwvM5dmaSdgAFPHoGXfsnC/tv+AbnR4guDj1RWy5cGD
	TYanI4wNil7jMfMfy7oD1QQM64AUEpygYGIj8ipb+kBA/im8qDhkzWzPUd7AcNSnCrmaBZMuwmF
	kC9o1kQBmmu04Cg/NgFoTQHHfsnFqBi0V7H2x7uJaXnG5zMjpxMnROtr8foZ242AEcr7gDLCJCw
	3RRlyxWi0vZXHydkyayi5DVeRzQuC5fvigJU0HbYKV7+XI8syfYqrR869vpY0k7s4FvCmrCuBC1
	puA5caFHR4wvYxgDICotoY97qdWGsAR2iQ/C70qSKnCDht0xb+/pJWCO7atBHDsys7fHZ2vH+sr
	0uNVYCbVSY64AciI35ftxHhcabCHYSfQqQRFW3rrtcpFA/8w8FfPOJIQeC/a+PuMtvRob3EQqUj
	t1yeaDu05VcPx1ih3wKFitqNNlCJy40pv0hoNvx5GA6CzjFIq3h3rHnrjt2+gUgPZw3bBN/0MRJ
	Cp7g0+p956Agywviu9ONdy5B33yIY22cGv3CZ+w==
X-Received: by 2002:a05:600c:6384:b0:4a1:702f:c736 with SMTP id 5b1f17b1804b1-4ac150b20famr427768725e9.3.1793886716607;
        Thu, 05 Nov 2026 05:51:56 -0800 (PST)
Received: from DESKTOP-0KSTGNI.localdomain ([41.36.37.163])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b56eb4da1esm111348325e9.6.2026.11.05.05.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 05:51:56 -0800 (PST)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Temitope obabi <obabitemitope765@gmail.com>
Subject: [PATCH] ASoC: Intel: Remove unused sst_ipc_msg_tx tracepoint
Date: Thu,  5 Nov 2026 15:51:18 +0200
Message-ID: <20261105135118.836-1-obabitemitope765@gmail.com>
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

The sst_ipc_msg_tx tracepoint has had no callers since commit 37465972015c
("ASoC: Intel: Remove unused DSP operations").

Tracepoints that are defined take up around 5K each, even if they are not
used. Remove this unused tracepoint.

Fixes: 37465972015c ("ASoC: Intel: Remove unused DSP operations")
Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
---
 include/trace/events/intel-sst.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/include/trace/events/intel-sst.h b/include/trace/events/intel-sst.h
index 0416e91f8181..c318ae9bc3c3 100644
--- a/include/trace/events/intel-sst.h
+++ b/include/trace/events/intel-sst.h
@@ -33,14 +33,6 @@ DECLARE_EVENT_CLASS(sst_ipc_msg,
 	TP_printk("0x%8.8x", (unsigned int)__entry->val)
 );
 
-DEFINE_EVENT(sst_ipc_msg, sst_ipc_msg_tx,
-
-	TP_PROTO(unsigned int val),
-
-	TP_ARGS(val)
-
-);
-
 DEFINE_EVENT(sst_ipc_msg, sst_ipc_msg_rx,
 
 	TP_PROTO(unsigned int val),
-- 
2.53.0

