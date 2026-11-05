Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.52
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793847795;
	b=t+FZoir/lmlM8hSu9/gQ61LNC3OS1/WKSE9c01mlPbQhORIPWLjqiCpCMQIvEKYFyN/t
	 MMEtvGb+xo7YL+QLmjD5kYAn4vA7LFv0gm8XV8Sf9Y3+VMDG18XtHwAZ49gSGK4k/UBYC
	 3/fp/DYtwsOvzSOPWFC1xMRkYUtsDFiJ55+g6gtasos4fGuU0cjN6Rm/JJJSMj4/t19tL
	 gh1yeGSUYWe3qxjEsoYfeneix3jVqeV2Scjy9GMq+XHC+4DJKzgNvdU711irgmJWQ/8As
	 soliF5wW0BbT0hncTD2VUvRPYConVv2WaeBUIb5Xo4/kQV35iS31WJS5t0aOdni0k5Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793847795;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=+XgAKvL9Yz88WJI2U+RHkRWBYREJXUrZL2P4iN0ZY3c=;
	b=sCWrh1TfZ/inONyv074w5dSmoCUM5hOr954nYzEZiAuHgHV/g3Xk8XUgLiLwoAWi7u18
	 PfTNNa6/LcN5ryEC29M4pVQ9ovXUmiWEpjfOQVKK/usCxfKhJWnanIu2K1LOAMA+ECJTD
	 Y8Qrl98iuFyRBuWxSGtYpj0QaGJKaxrRhosw+aov502grrr5Nq5Q95/PM15UTReMIPWGJ
	 84vord19oyAb3mtZ449E6Xj7RLehQALRu0UaLzh26u7+OAX35iPSNUMQi2+S1UA4jPlJo
	 qtryKuvRus5bknEeHXHLSIAxXx22Crai8ySQlNGoSwQGVtXgtwL4L6fB2smKAW6zI2A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KrT+HdkG;
	arc=none smtp.remote-ip=209.85.128.52
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0DB606A31B
	for <outreachy@lists.linux.dev>; Thu,  5 Nov 2026 03:03:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5F0DB606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KrT+HdkG
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4ac95761c85so9671755e9.2
        for <outreachy@lists.linux.dev>; Wed, 04 Nov 2026 19:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793847794; x=1794452594; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=+XgAKvL9Yz88WJI2U+RHkRWBYREJXUrZL2P4iN0ZY3c=;
        b=KrT+HdkGAgi8ylK+rCjolParKb5wZPtFPvKJFOa3SN8Sf/h5LbyNhBGwNct5NTrA75
         Fgxz76e46T7xQrPo/Y3brUHHJGjncEXSBq6Cw8nf1HXBnRfcpOyWrJH2APiAkhdVnl//
         jasuB+0exLTG3f1MvMcBmJQoP6tCYDhDqr9a2ZOZCGkZ6y8h6S3YTpR+q0RVhDO9kNnC
         b7jtRn2/rIDagXkMO14LfNoPtQ1mAhlcXps+bfCOy6FUVUGc4YBB2d2v63ZIGyFu+ZNA
         bQGaXuDGG4u2r9UX9HaFlFljsQpwxy0g5j0HysXX0P+bCNLd3ut9a2cAEck4Fv76oTEN
         cXgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793847794; x=1794452594;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+XgAKvL9Yz88WJI2U+RHkRWBYREJXUrZL2P4iN0ZY3c=;
        b=Q97MuFqEiVFhceV6BHjN9HAVNJy20SDv9K4K0/OR1JgK3w+Oj4DqvdPfpiRRA5B1Y2
         riM0fUdGiY9nn+5t6BdovxOj/Jj+dsIu3+ttMYhPYrM12JduhsMAIM2qk+tzph7BSHrP
         DOFx+mskYPGGdZE6DXMEdH3f42Kt7gEmOzcfSJec5RF9HIcpHC+tVMEj95VTPkSJ+Xyj
         kubEj2FAkmC9jaoESgIFzhfckazl8BOpS/bzSYaL3rc1K256zIhyU1bFhlw8xmnFqhrI
         1voVUzE31UcC6kg2dBxh2oplg6fvUk+G9TKHSGWwXHYzZqrTb8lU4sJF1SUzBx5a43tw
         2RMw==
X-Gm-Message-State: APuU4Z+ituFrnLgQVrFuTAbabVpearlG551LrH7wKIPykN5qriWRyMqL
	Jy5hDNa1s1cadSUIuW838IM8IAUD1pE8sHtPF4Rsz6FY+OnRH+z+cb7j
X-Gm-Gg: AYBFou3W0TezqwFj0fvEyABPS5XfnCrGeXAhZHla5lkfb6ElyRD2PKIS4Yjf0gLSV0H
	ynW5IR6z82TdQl/UL1dRVNKg5bF/+43ShikdULNmaUpMU40gPPEATVheuGHGH+cGs32AuUUkI6p
	VdTFoveWKLyLU/eggNg/z9kM6QZvof5bfWaaajfOgsscn0vjjgREY16/EB5bn59DbZPffH3U6yE
	PVO8D0u4G9pvVlBlf2beinwSp5eyWZZeJfIjecWx5KT+Qnpt8Amu8n9l43/DJXHafOlZMhauzYG
	UiHT7faC2AeX5XK+q/1x76fe9/vgOdv6DswyxEZOj4osD89J6XvPuYFYJ+waVR2h0jazB1DSYQ5
	aKJ+ynB53pOOOwv3AJ5vNuVw9ofUuSc+0ItoIAjpzHdccVQ4ca8LDHpPf7rK6ykEaIt5Be/6cv/
	srbJkTlgZOszXN/7y5nhaddaenoXcNofGR7nas30jIuQCuieuHRLnV7ayeEGh5jZdToZKvgaRsS
	iEbZFaMceqC8enXhNDbnEcUjqFlnN9dwk6a6dSVALc1romdi+fbBu8qVbXkdirlgugupfOt/3CT
	cElCZVg0/Khk1zutjNLsB4Pk/SRHMIZlQYFJ/B1dKAKX4el58YGjRmDJRrI+/2an/EXMGIjO3TE
	xdR7yBmUqYnFHa0xAlhgpJi2RvAY2I5LpC5Z+H7Ans3GRqBz/E1T98ofG3ojwiCYMe70JhhrXYC
	ECscAT8RiUYoOJ
X-Received: by 2002:a05:600c:8b61:b0:4a2:1398:dd05 with SMTP id 5b1f17b1804b1-4ac17752ee4mr365377435e9.16.1793847793414;
        Wed, 04 Nov 2026 19:03:13 -0800 (PST)
Received: from maria-VMware-Virtual-Platform ([187.55.86.118])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b57317cae5sm43662175e9.12.2026.11.04.19.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 19:03:12 -0800 (PST)
From: Maria Sheikh <mariasheikh812@gmail.com>
To: outreachy@lists.linux.dev,
	rostedt@goodmis.org,
	julianbraha@gmail.com
Cc: Maria Sheikh <mariasheikh812@gmail.com>
Subject: [PATCH] sunrpc: Remove unused rpc_socket_reset_connection tracepoint
Date: Thu,  5 Nov 2026 08:02:57 +0500
Message-ID: <20261105030258.48868-1-mariasheikh812@gmail.com>
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

Tracepoint definitions consume kernel memory even when they are not
used. The rpc_socket_reset_connection tracepoint has had no callers
since commit 4efdd92c9211 ("SUNRPC: Remove TCP client connection reset
hack") removed the code that used it, but its definition was left
behind.
Remove unused definition. This reduces the size of sunrpc.ko by 628
bytes.

Fixes: 4efdd92c9211 ("SUNRPC: Remove TCP client connection reset hack")
Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
---
 include/trace/events/sunrpc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/trace/events/sunrpc.h b/include/trace/events/sunrpc.h
index ff855197880d..a0d02d735a7c 100644
--- a/include/trace/events/sunrpc.h
+++ b/include/trace/events/sunrpc.h
@@ -950,7 +950,6 @@ DECLARE_EVENT_CLASS(xs_socket_event_done,
 DEFINE_RPC_SOCKET_EVENT(rpc_socket_state_change);
 DEFINE_RPC_SOCKET_EVENT_DONE(rpc_socket_connect);
 DEFINE_RPC_SOCKET_EVENT_DONE(rpc_socket_error);
-DEFINE_RPC_SOCKET_EVENT_DONE(rpc_socket_reset_connection);
 DEFINE_RPC_SOCKET_EVENT(rpc_socket_close);
 DEFINE_RPC_SOCKET_EVENT(rpc_socket_shutdown);
 
-- 
2.53.0

