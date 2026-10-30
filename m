Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.50
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793393581;
	b=3sCpHFrDCrNmj9q4uCpRoY3/JpZWjie6nFobFF9aunlw6vGAEa8BnnSv1sdGV4rtuv/e
	 q1l5dA0+7w5Smw7GK0HFqXs9tyqjv2UlLKCnud5EPLAq9YJRpC3dAZYebvx1FeYdeYatd
	 CWMQ5afA4uI8mvLudywIi3DmuSjhYnh2KVurllyYQCIk4tso2+5feTPLFThPEA2HqmgTa
	 bBbGDEykzg63/xHCZ2Xkj4J8hMfX9aPl0BCTo5cuF+1kWd7JxKM+adTrUTM49Qk2RUD2e
	 nveIVqyGThq5ZdOHa2VfD8eUN/tRcjC2TVX1u/8kNs2SBF2Ig4INPPOeW2Cs1LBgSRg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793393581;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=fhBp2waA0Ox4PU5dl5MrB3p49e5oeaJsinTZCl47PEY=;
	b=x1MGRJ410+2Qk2oIkypnG4KhmVXYtQwxfVGhgNL83mW0aWLQLhttMlJ83xIHupqXiWjj
	 66L3o/2LLKzQvho3SpHXxFCvC5diZ9UU2lRuNg06hKUcpiqPUiF6mOhH/AW3oMWsW8fYX
	 gA1bFzNVvoHUjfFndqOBM2zXmrAR3Sy9UUce5fGYgu3kE3R2eLJkVj/+4AMW3RBaBBaQ0
	 iBVnqmxPVxv4gVau9m0wFZCfJbBORwD9IdWLSHhMP3xu2GsI9D42KdB9V0W8dPS0Ove+P
	 fYDP9GJC1Iq+SdFuKQ6sFqVoxb+Sdyu/TmAZUCZxk10A4FlEWShTsM6nX0gBLKWPuFQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=m+LfmdTY;
	arc=none smtp.remote-ip=209.85.128.50
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37852606A31A
	for <outreachy@lists.linux.dev>; Fri, 30 Oct 2026 20:53:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 37852606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=m+LfmdTY
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4a215e64962so11472525e9.1
        for <outreachy@lists.linux.dev>; Fri, 30 Oct 2026 13:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793393579; x=1793998379; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fhBp2waA0Ox4PU5dl5MrB3p49e5oeaJsinTZCl47PEY=;
        b=m+LfmdTYhztqTw4BU+COUI5CFUtvq/MvUhuqOKJWjoQbwv0owttVrv6kNJf1F794Fw
         AlYrJJxWuasffADoI9i63Nm0jLeVJIIKDUyprru3IKMrJltApPBtjtHC2UHJG/Byi2bZ
         /oqliKExJ6h+lLZrMD/h8/4MUbaMwnyAAC0C5YfzukfL8LzoqLqsPRuDZ4brNmd5TO2s
         +7EFlLMiCCzW0BrGJYvrTclTvhVPkXNea1gxMMCvdmVwIXjJviaiGh0d2FgJz4xyuorG
         iMqcoKejMKQnK5dw7HK3F9lDDY2TAOlpJHukP9Xel2dN9yOF9X9UVlS+4a2teMtBmA1r
         gT5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793393579; x=1793998379;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fhBp2waA0Ox4PU5dl5MrB3p49e5oeaJsinTZCl47PEY=;
        b=fYv0Pd4myihG0e6zmqsoqduKh85nJj5bCR9iXLybDrUkgFImcOS8uYc99NEtr+v2mg
         H18rFd2OhUEzW+FS4WrGcOIP1XoXnu05gZt+FHyIgM7sbc2JXX/akzn+jeAWBLp7QML3
         i2bVZfoh+p4UGanvKdouKBU43MMFtvwEpYkvThxPg//Evy6xz0ry6v6rPtDjYF4ShLqJ
         7vm8LgjBxfRxeWiqu6wKZcJq5OH8V3/hdWoQOU8LNIsEE/Cr/g/+aKJmt/bpW3ZJmD8D
         dmQ6bHSuVkkGmnnUa4i7qgrjvY0z+kJQIYL8syfjwtQ/EOoaxbtRjKBH5aogrbF2PI2L
         jkAQ==
X-Gm-Message-State: AFq9FYLkkEOVax5XSQbCI2ws+ai/IDOYxeRvSIE4E2VVqOUxH+cgo0Pe
	J5zcyoFaIQFcLvn9iopQrLo/TwqKrgI549BanUbjbEvzgaesixJswhoZkufU6x2c
X-Gm-Gg: AYBFou2cXJUcYoCe2pi0giiTVS5JLhT8uFHaI7dEGdgpoDloCr+kwHFmUXeqIWMmzt5
	FP9Ff+z1yQrvmIv7pSFXFw5iEfCHRkcna969DuEMNOOlzJzRREj5wm5kyMrn8NtU7WP0DmRYjr6
	0DYh8fXSCOP4x3zBAewYZbCloLGmcnPCR5dhlrGNMz0IRPX6BQSHmbKytxiyetjxELnTavi5q6v
	6UiIyGBMdQqkA1l63xfPqFgXhG/DTHmaHNqiqOt9jchk35K0lb0wB4z51N1WpynNz89G5rFP7C9
	y8dgBCLXeBUKQXM4kixUtDWAsEvgVP7Af9VF7PCpuYPn4wO+cQ+W/ejsRNKQcCn19w4IThCIyRG
	QnTE/nDdmrRHzt9yTrSUdfS+kVQ1JJSN4+ElOeebY/KsYWz4G1jTC2AGlgQDW9EGKgZ9vzhgZ8i
	jqVqoadEJcYRfBi+NOexdZnim/spqf+4mXr28TeJJ5zI7GmT9b9BiRzr40WeQHm+ydnQSIfNd76
	crOmElhLNHsMgQiEgCPaai6+ZmByqnapNucXb3aOgpz58pGLkrtgmDjfFrHv8/ldKWG0j8m7TRM
	PbRbEdiL7MIZRxN3aRpzhXF5fVjzageLuXsE5ysSgXjSpPJ2g3MsVre+OQ==
X-Received: by 2002:a05:600c:19d2:b0:4a6:4d6b:a840 with SMTP id 5b1f17b1804b1-4ac1932a12fmr77509695e9.31.1793393579278;
        Fri, 30 Oct 2026 13:52:59 -0700 (PDT)
Received: from DESKTOP-0KSTGNI.localdomain ([197.52.161.162])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ac09bcc967sm61858895e9.3.2026.10.30.13.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 13:52:58 -0700 (PDT)
From: Temitope obabi <obabitemitope765@gmail.com>
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com
Subject: Tracepoint project: starting host1x_syncpt_wait_check
Date: Fri, 30 Oct 2026 22:52:16 +0200
Message-ID: <20261030205216.24718-1-obabitemitope765@gmail.com>
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

Hello,

I am starting work on removing the unused tracepoint
host1x_syncpt_wait_check (include/trace/events/host1x.h).

I found no callers of trace_host1x_syncpt_wait_check() in the tree, and
a lore search shows no recent patch removing it.

If someone is already working on it, please let me know.

Thanks
