Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.214.179
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794144600;
	b=QRIKz7WcgdIj8noLsjrCEooZCg1STJqWs+6TYdRNcCI8+J/Ww1d9phItIo9I2nqPoLyz
	 K9W5oHzuTjaSMRLktyLqyjEtiigLlqLyLEkY5Na4zv6v0RDuss9CJ7G3S+6A+8eVi9kal
	 Rk/YluDLnftOmtgy1buWRJwP/s+IjWZ8jwbwskWsR0EaMjqC8nNyvkgpXhxWRtsyKWIAl
	 em/Ez7zL4oVoEEKz62lmyS/rQZrgUYJVNYCsGs/VyZ1pCobFaf45/1YB3QZohxg3Z6nw4
	 hNQpFk7vWW8svlsASUUY0pWWagT1V0OkjuXfBRuiw4naN55dQneJecPGizLs+0QcdzQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794144600;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=MSdCM0MdpW21AgggaOI9JH53craaVirpAZEHWHQsm3s=;
	b=3r/3ojbiRJFNCowDaCqhzOxfFj3JyAE6hOWes+a0BoBrXRT2O5KaxyZLkHIFA5/XjFx2
	 J3mSs/bh2Y+n+qjZjjxAiZ75KgO8ENpbLBbiJuAjkfgFFzEtikuhMQZygULkqAWNv2XiX
	 lt1+JCNxjLTp/A/N5Of3VG81R1BSiOmqqaZK1897Xq9xE6hv37gAc3G8PwYTbZcz9hvqf
	 Cb4aq2/gFXFpHSDLfdYt3srj76nPU0Tyci+ySoGf+tSq7d2C/GZvJ+FVysVHZdnG421WQ
	 6lQMFfSAL7iUMjlAIX1WCDWBoO0mzsKLO0BOoQpZ2RcrOtDo9XZZnnNiBBJRn4zixpg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=nZF4lNGq;
	arc=none smtp.remote-ip=209.85.214.179
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD77606A31C
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 13:29:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org EFD77606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=nZF4lNGq
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2e99b1e5b4cso351545ad.0
        for <outreachy@lists.linux.dev>; Sun, 08 Nov 2026 05:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794144599; x=1794749399; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=MSdCM0MdpW21AgggaOI9JH53craaVirpAZEHWHQsm3s=;
        b=nZF4lNGqO1XWU4QEn7mqXasYGPG0fQv7ga5IQrlZinDA+uzHBuy23jDqSiJl4j1Egq
         WXC5Rup0SXbQPqywfUlCgSnPwSrKy4Q7yCPBTpBfsskE3SjphcFVwLyyTLD+geCsl1hF
         wLHmCOw1kxd+5EVk5VRMxKIVyW3REFJ+A1jPGqdWedSFM9V2vFZZf1T8vwLM5y0ytBRW
         RlA5Z+fTgLYExnxG+QxgmRWTd7rzX1bpEiA+7q1D/vY3Ax7SLqQ0rEyyrvv1hKejjcuf
         +It519HslAQofl8Y2ROG15zlAC52fFCIom2AxHFgw8KHF3WgNZ2yb7Sjm3lwxDVfWjRQ
         mV8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794144599; x=1794749399;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MSdCM0MdpW21AgggaOI9JH53craaVirpAZEHWHQsm3s=;
        b=z0yG9MWcJiVjRiYMsNrpLnKuuaXoyEo6FJumYgCHTbKe7fIoAjWkDC3KNY4Cn1v3oK
         noEKRNmRiyFIyf+p3YBT73ZIEPcY+lX6CJLudwE91KosfEe9Vx0aBbDKSJPTv0ZFu9Q8
         sXVoQBxY5a4cJtbXjdS8XDXAepO3tPVBRRwIj+OvCI3AEVJHBrjss7j8AoZ0lObtWuZG
         t/cpbIbZSE0KwjdgbDXx6n3c0PfNM7xbsJFW6o5+vOwpP0tj/v3E0+UCs2FkRpWXf0KN
         9whYBOmAvjD1iRzRLNYbJEbrX57B0419Nfl5giAg6JCcTu3ZFMECJoO+TVJUXEKgKBFA
         z5Qw==
X-Gm-Message-State: APuU4Z/78R1x0LURVrMu87nX2719Re4cxcvhxykPECuOvcD5k53Z9HFE
	amZCiL781fEVSlPUcACt8w/qoyt/zR2bMI1scvEzhOK580+aBhZYaU+iMASwdQ==
X-Gm-Gg: AYBFou2NIdyAoGTByk8r+kcFdARliOUyTq5cw2g25ReLX/T9y/YndGpg5qYGLCUz/Mt
	+QVHpgJ4DM03gapRwBHYUna1llhliaUXe9z5sdkKKLAg9++6QSGi1p5TxuCtYj1QBP40bOfV+ue
	B3ELD2OdpFaLO7NzVXzpZFBuTlKeNnFopR1lYTUInUnCWDybBaW61HlVjIlqQIoZAZOcTaYa2yV
	dpzH0ctCb6xo8tN/gjktFhOJ6irSkpZ9pFNYzUXgaweL+QxtSXBXwVhZ5kM3OFCqsCYTER0S4Nc
	99N3d6vLbejFdN6Y3Zo4aS5KonQsMOyQ45MjuaQ3GGGSzVii/P1lSCybes8Z0y0gSGxH9AHZyRP
	w8o0Bkc5f/fsXYSUkIG2qihfhWuRESr9sm9Nbz/iaHfxIknV3PQ70p5t4Dh927ALQfYLY6tM9fj
	jfmnoGp/NNCVv5tnKT0zjYmQGnhg4JXoxOlqey5qisptziLElAGsXM3iKBQwpGQxtoJpaKkzfdZ
	F9Lv3muWWBPgedcU5ojUTuwPgtfSmli/7yDQc2iOFpCvmRg1ZSGqRnLIhE5VuVT6RENSd2IM6x4
	mgtLrIqH7GxnCIb9zqijcaT+HaqKM4uCuXZwPQ==
X-Received: by 2002:a17:903:907:b0:2ed:38c0:3317 with SMTP id d9443c01a7336-2ed837750b3mr12645075ad.24.1794144599098;
        Sun, 08 Nov 2026 05:29:59 -0800 (PST)
Received: from user.. ([2405:201:c052:b00b:12ac:3c1a:70a3:f258])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ed8174be29sm3917375ad.72.2026.11.08.05.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 05:29:57 -0800 (PST)
From: pavankumaryalagada@gmail.com
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH v3] nfs: Guard nfs_local_open_fh tracepoint with CONFIG_NFS_LOCALIO
Date: Sun,  8 Nov 2026 18:59:36 +0530
Message-ID: <20261108132936.43333-1-pavankumaryalagada@gmail.com>
X-Mailer: git-send-email 2.43.0
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

From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

The nfs_local_open_fh tracepoint is used in fs/nfs/localio.c.
The NFS Makefile includes localio.o in the NFS module only when
CONFIG_NFS_LOCALIO is enabled. When this configuration is disabled,
localio.o is not built, leaving this tracepoint unused.

Guard the tracepoint definition with CONFIG_NFS_LOCALIO to avoid
wasting memory when it is not used.

Fixes: 70ba381e1a43 ("nfs: add LOCALIO support")
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
v3:
- Move nfs_local_open_fh tracepoint definition into the existing
  CONFIG_NFS_LOCALIO block as suggested by Steven.

v2:
- Explain why the tracepoint needs a CONFIG_NFS_LOCALIO guard.

v1: https://lore.kernel.org/outreachy/736e1fe0-f4bf-abcf-b7b-1cd874cce131@inria.fr/T/#t
---
 fs/nfs/nfstrace.h | 58 +++++++++++++++++++++++------------------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/fs/nfs/nfstrace.h b/fs/nfs/nfstrace.h
index b15c1732c869..17db1d533647 100644
--- a/fs/nfs/nfstrace.h
+++ b/fs/nfs/nfstrace.h
@@ -1804,6 +1804,35 @@ DEFINE_NFS_LOCAL_DIO_EVENT(read);
 DEFINE_NFS_LOCAL_DIO_EVENT(write);
 DEFINE_NFS_LOCAL_DIO_EVENT(misaligned);
 
+TRACE_EVENT(nfs_local_open_fh,
+		TP_PROTO(
+			const struct nfs_fh *fh,
+			fmode_t fmode,
+			int error
+		),
+
+		TP_ARGS(fh, fmode, error),
+
+		TP_STRUCT__entry(
+			__field(int, error)
+			__field(u32, fhandle)
+			__field(unsigned int, fmode)
+		),
+
+		TP_fast_assign(
+			__entry->error = error;
+			__entry->fhandle = nfs_fhandle_hash(fh);
+			__entry->fmode = (__force unsigned int)fmode;
+		),
+
+		TP_printk(
+			"fhandle=0x%08x mode=%s result=%d",
+			__entry->fhandle,
+			show_fs_fmode_flags(__entry->fmode),
+			__entry->error
+		)
+);
+
 #endif /* CONFIG_NFS_LOCALIO */
 
 TRACE_EVENT(nfs_fh_to_dentry,
@@ -1898,35 +1927,6 @@ TRACE_EVENT(nfs_mount_path,
 	TP_printk("path='%s'", __get_str(path))
 );
 
-TRACE_EVENT(nfs_local_open_fh,
-		TP_PROTO(
-			const struct nfs_fh *fh,
-			fmode_t fmode,
-			int error
-		),
-
-		TP_ARGS(fh, fmode, error),
-
-		TP_STRUCT__entry(
-			__field(int, error)
-			__field(u32, fhandle)
-			__field(unsigned int, fmode)
-		),
-
-		TP_fast_assign(
-			__entry->error = error;
-			__entry->fhandle = nfs_fhandle_hash(fh);
-			__entry->fmode = (__force unsigned int)fmode;
-		),
-
-		TP_printk(
-			"fhandle=0x%08x mode=%s result=%d",
-			__entry->fhandle,
-			show_fs_fmode_flags(__entry->fmode),
-			__entry->error
-		)
-);
-
 DECLARE_EVENT_CLASS(nfs_xdr_event,
 		TP_PROTO(
 			const struct xdr_stream *xdr,
-- 
2.43.0

