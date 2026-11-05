Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.48
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793900456;
	b=nNfFi1IsMJZPFavEYJ2VL6JfEQfo/VdLQa9dvZ5eAll4ih8MdOMjcKRSWOQuvOPqfWx8
	 DwFmeYQS+Yx+28/lPzi2fPB1yjUlei6oBDshTHIY07F7lBxWxtpgyUVvNXqnjJOFs5bqE
	 zkcmdqVgmLZrPoTNvfyW9VqzNSPZpQo8yKVE2cFiH2jXPPno+6PMG/j1fdwj4ImSCv0pw
	 EzHLdSNSBXngI8wGYZ770TPo/97A5SouY6TDPebrUNLiJ1E6YcLJdL3r0I8ZwLfZ/1HNk
	 QTEp96oss6bVZbeP2Qp6H+v5TsZVXaBg+wXaZaNrHN+4gji81VQXf9hu4KhZhXtyo4A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793900456;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=VB2LitvrMsFAHtRwW6EllkEHijj3Ro3+SCmrdZOxjv8=;
	b=TNHiJM8Kcy+lUwcyxnf0VTmhzHFul0ZLwzybqzsugh528jqCK0pIPJZTPkNuPWQVM1K2
	 Ud28tJjNYo9A/e4jjsSwD9KmCPdYV/eKtwyZ0VLPoebwaJcn/LMwFplZXf7rKY0Iwreat
	 rYfix8dHJrw9BRUbsaI2fClCdJYH8/VdnaeYEWk1sBYDtse3i5sLagMwQ4zAIDe0HcYgV
	 rDVqDiLC4oO/Z4amkle52jn9ABlEOWP8frYtPwKG4/uFcdiODf/Rgc516sHlqc+/pzwj5
	 e0P0cThS2K21pMkSeeIqWBVdfntP0OggzJjVIRJxIB99vVQK3BJkEy7dR7pIiZg4/pQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=0KJbZLG2;
	arc=none smtp.remote-ip=209.85.221.48
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D03606A31B
	for <outreachy@lists.linux.dev>; Thu,  5 Nov 2026 17:40:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org C7D03606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=0KJbZLG2
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-48e1d0e5dafso593069f8f.1
        for <outreachy@lists.linux.dev>; Thu, 05 Nov 2026 09:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793900454; x=1794505254; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=VB2LitvrMsFAHtRwW6EllkEHijj3Ro3+SCmrdZOxjv8=;
        b=0KJbZLG2Q2tjiufyxOMJPz0JSxO0Ek86/4p2xKWgLPFPaEJW4CyQPajDDs332kHN8C
         D3w3TVn9X3GktlDx5heHtfEgOSg+1+Tgy6HFvt5KkWQOZ0uJKLei4zdanz9FEgkXjFRT
         /FC7Jb5V2icS4bI2imJL7sRiIBawu/hdPJ48u9XIPrZQ2edykxcFwGjSXZQfnYq/HXQG
         kOsWzTodpxwr3GLplN2JsTqf+AVbmjy6D1Cs+Dj8TeD2sDL91c6fUBe+vZv1NvG0ldyo
         MZVsfxObdWjThLVsl/jKrjcV5HES8F+SEOaUaqdOll5m3ESyXR/Pndh9XQHBt1O/+S2x
         99SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793900454; x=1794505254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VB2LitvrMsFAHtRwW6EllkEHijj3Ro3+SCmrdZOxjv8=;
        b=ilrfy0q8T8bxWpgIIsXuMzd/lKRdsMzwXB8iG/fz6VyoMm7PugzC2pfYh7/Gd5xOiR
         lduPF7l9VtEDjd8My/clAEMvCnBSeKIhayFxwk0lxMh08M9XbQB5RMbibwGlZJxb7wgh
         UoBgsiOAV2DwJdxHH6o4zhfW3umH2xEb0GuIfl90XKBXv+47CJGwSFy5voOA3JQx9170
         v22lWJ39JugxUV//xQRVuuCS22e8mThMfNuTBENzL+8YvvmkKXDx+YyORf+Np05RJMo6
         gwuKrv8DfQAF7BXLhClCnpOupUn8/ZZUcE4dIOQuiDQ48aDj5g+jRgOr5NNFeBsnWP9Y
         V+Eg==
X-Gm-Message-State: APuU4Z855eWhk+WqWNF69J3Bk6Xx1eAXxbgDBT+BMc94d81AxYzbfTqa
	zZCiS6hf5X2ddahK7IBfIE1ZoE39M64e5cfXGtLw03A48PwchcG/M0s7Gq3+0BN3
X-Gm-Gg: AYBFou3LYUdaH4hHtIi9AbyJQ0YjSNnx25/rVeeSWRUhZVUbaY+O9cfkqCuVauPCaCx
	Ych/B1j4LdxuVF6V5akq7+HgAeJopWAXtLSiXdhkzmIjpOua5/MtYWnFoJBeHy4jntncHFVoRXp
	qZfMzUHHhcUeCXWr1JfXMSXtRvzgAs0ZZ+oUOZUa/qzzhJ5OXPxQ9ZfHz5hV8IRQ1iaQk88sjU8
	Exc1qbfncchqySvVX4hjKIADnYxtld6GkFbBhfWjJnV9V5JJD+T8xo0bxsaLcZZ4L5yPdny9nFA
	MuIlme+sMcConG4moRnikfCfuzh3kfGaV2V+VLKkW6RcT2gZkcM5o62tLzM/SEDdJStTa2v4TWd
	HfL5qs+N3y8WM4yG5LjGbMw3SSeQPmI/kvelsReevqbKk8ig1+tOm98kMjdMzY2ikNgwa9GgiNU
	pwmUWOoo1EG/Fd0YPQsgZo8bS12Xzc/9R36Yp5lUsnIcxP37U2PEyfOgNfYg4SVf2sEVGno06Uc
	o3mh/OlaZ24DGCGgF9oeicjqgYoohrxB6TM2CwfavpcUABh95DASu1tkRApALcGzGs6Pqbke3QH
	43/eS9shagKgiXkHwDXfE0zcEt2JrGaO35EQSQsetI/hLypxozA2kDUsV/zJx0nxPEB6rwY7aMZ
	IjJ5nRNcvESC6ANbunJcQYOOqoPBSZMiT/B/ufoo0UhQIXma14FQmyKuhXrZzIGIK
X-Received: by 2002:a05:6000:2385:b0:492:3f98:506e with SMTP id ffacd0b85a97d-4923f9851f0mr2149028f8f.19.1793900454065;
        Thu, 05 Nov 2026 09:40:54 -0800 (PST)
Received: from maria-VMware-Virtual-Platform ([182.186.5.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48fed553441sm10175209f8f.43.2026.11.05.09.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 09:40:53 -0800 (PST)
From: Maria Sheikh <mariasheikh812@gmail.com>
To: outreachy@lists.linux.dev,
	rostedt@goodmis.org,
	julianbraha@gmail.com
Cc: Maria Sheikh <mariasheikh812@gmail.com>
Subject: [PATCH] drm/xe: Remove unused xe_vma_acc tracepoint
Date: Thu,  5 Nov 2026 22:40:21 +0500
Message-ID: <20261105174023.6512-1-mariasheikh812@gmail.com>
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
used. The xe_vma_acc has had no callers since commit 816e12793c6d
("drm/xe: Remove unused GT page fault code") removed the code that used
it, but its definition was left behind.
Remove the unused definition. This reduces the size of xe_trace_bo.o by
452 bytes.

Fixes: 816e12793c6d ("drm/xe: Remove unused GT page fault code")
Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
---
 drivers/gpu/drm/xe/xe_trace_bo.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_trace_bo.h
index 36fc7eb65882..1025bf9e571a 100644
--- a/drivers/gpu/drm/xe/xe_trace_bo.h
+++ b/drivers/gpu/drm/xe/xe_trace_bo.h
@@ -130,11 +130,6 @@ DEFINE_EVENT(xe_vma, xe_vma_pagefault,
 	     TP_ARGS(vma)
 );
 
-DEFINE_EVENT(xe_vma, xe_vma_acc,
-	     TP_PROTO(struct xe_vma *vma),
-	     TP_ARGS(vma)
-);
-
 DEFINE_EVENT(xe_vma, xe_vma_bind,
 	     TP_PROTO(struct xe_vma *vma),
 	     TP_ARGS(vma)
-- 
2.53.0

