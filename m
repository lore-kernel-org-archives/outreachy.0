Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.41
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794848269;
	b=H5uszOhQ15bxucRr8FnZWHSi4wFBVuMpkRWc62X83MwFmv3xbEVtBFSivpWSxh6I80qX
	 ADJvm3/765AocwiA/dmxAyNKPlWRkUdEtsY5rA1FRemKoFj/HNXTZSAH0bXEww7SObYKz
	 M1PBlfHTsizAkVQSZwGBL8R6+kwBRUpcOEWUGrRgeaFgqr7KfPji7Vql7ih27faOFiugf
	 AEtPih28xWbYM2lokhBs5dRqO5XV2JzUUQ6USLSCVVuWcIM641Dha9ecdEmkCvXFJSj+A
	 eL81k2UhnKvldo+a8SduVveEXCDxztZHjBllR41w+CYiuu1yDOvwDkU4sIcN8x2gS6w==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794848269;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=IitEF6HBs/3NYGjmjD1QtA2n8rcQcFjFp8w7GGpkv6I=;
	b=yeYB3I+DgIUjD11QgZlZLME0p9tAjxUPSgxnHrOYJcsuzf2ey+hcpZBGQf1B+hVvcDLO
	 G1yqnJ2L3Nsd6FDMy7UxwHr5zBuodo+zWyySkjHTssixwkf8NW82DOztVxO883ZbqSbqk
	 A7ylORU3/EcTeBr66xz4ZHnvHaG4VE+ak4q0hpYQh0p3PE1YAao0krK3KimJYEgZUYre9
	 HdY1CWrsBsdEwuLp35UPYaoififCHlkiN1YSDgTLmCCSb5wS8GgxxkuTjKpDiZPLR3OsX
	 pul0oTnaLzVMaDKI/zlZSJA/SPduT137xg5/ljfZOMHKeHSj/gf5/HS6SSWq4F/j7Kg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=nUBPRzh1;
	arc=none smtp.remote-ip=74.125.82.41
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94912606A336
	for <outreachy@lists.linux.dev>; Mon, 16 Nov 2026 16:57:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 94912606A336
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=nUBPRzh1
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-1a3c08d6928so5068541c88.0
        for <outreachy@lists.linux.dev>; Mon, 16 Nov 2026 08:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794848267; x=1795453067; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IitEF6HBs/3NYGjmjD1QtA2n8rcQcFjFp8w7GGpkv6I=;
        b=nUBPRzh1IaQMlnXivZ3DkGdoUibHNk/ebERINaViuDhhgQYiSuJaRQcuXgJM0aBKYF
         BYBhbgAo10gBibPh2ckbrciM4fJh/J2nyCj4TXDrONQlGDfeKt1YmSjawLHIyJFC27Ss
         8V9h+vhdxDsopIdRPkjwfgrkuoyOaTz6aTwarcGdY/e0qeG+jzp0Y9v0VpZxWK3iRB2m
         Gl62AJaSvn6yaPOXosZhg42RJFBY2ipqMtOohP5ozkrlgozHRaXtnUFAj192vcOg7hdq
         E+kwZVtlqcuI5DYuDISt40iTrkaSQbtnJXetucEs+KWXFBDxy8KXzP1iodhX3N1klmn9
         mv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794848267; x=1795453067;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IitEF6HBs/3NYGjmjD1QtA2n8rcQcFjFp8w7GGpkv6I=;
        b=UF67TwDJwPRSJ6m1rAyKn5Mkn5kraRCcIb6FXLl56qQkAzeSJZfDNoajSMZcJ070e5
         gJxvNz59SCBk1HIEvMqUMcKkxDol3nXCcBt42cLt1k1oKruhsYjR51JV8IO3wJS1OsE+
         EJbxPXszfkXB3f30WDEKBK06jtGMlZ7pJZXs9kSMtLv0rotwkFmABpburqQEj+t78QBD
         Bv/MDP8u+Qg1HZcpPqCWMxud93P6Qmrwbn4Fwo7hzMEFOq3mMd32KIKI3iSaDSvcE8od
         YvPFOFgO8PXrKAAOITy6iTayfBVJHZsIyOMzlhAnBHxJZVDGhEagD416gnhy/2KYkTIT
         x9aQ==
X-Gm-Message-State: APuU4Z9a5Z4Tbt3mi7DRIrWVDfNU6CVDncyZwUynMNtbBdYDPpZaVWIo
	U9nKLCaQkFalBuKS7UsipayhAviR6SWHsV69qdSASOYOcEXHa68cf3sUpNY+jQ==
X-Gm-Gg: AYBFou0+BCZai63TWQvhMKoLYwyrjGHk2U44ULqWnBJh2nPOIihel7ccHkICEfaXg/V
	WKaqEcEY6J63rj0HCqCVSf/w4JmDpzv2SwS+mlcnhKkB1f+yiEhOsF1gMFEsV7RetImK7w5yoEw
	6cwNhJpNyjPjIJ42ajdCKxfaXZEWovB75OWifHktECfeVduBJgW/OuaM2wIwRnf/819xDEW5MsR
	fPG8OAaWpFfJlYvZTA6HsdYjE8936GftfmS6WuaKA4V6fdr+99BLyy0igNNQRQ6c2nC4KNySIb2
	eNi6+MDl8FjML3Gr0cXjsIqtr55veWIwQTy3wmNfi04WXNm6ci3/z5b2iQR/tPtlBmxA4FzsCzv
	LqUsccFR9qlgBy/e+puI87HxFM+lXw4OzJAhX1BbIepNMc75Ju17+D9fF+4cyE+L29uSu/uHvXN
	xGCfo8/jl0mrwdUZD3EvPKeQbNZ1RiITfba5nIEgri1vLRl2ekV7zmmQxafONCnzxKQgt7luhuf
	9h7df+QC9fBuIkDa9+0ZlY/cSGoFUDJCf4G9xnvrUC8P0NGITnHLKEziYK6CsOHrZ0tw2ASnUFS
	mRjfFLvLnlUG7mb51e92h61ucZ809PilD17ipQ==
X-Received: by 2002:a05:7022:3c84:b0:1b4:fa58:9d3 with SMTP id a92af1059eb24-1b5030bb43dmr10288811c88.24.1794848266437;
        Mon, 16 Nov 2026 08:57:46 -0800 (PST)
Received: from user.. ([2405:201:c052:b00b:7f2c:5fd3:81f8:3647])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5031b2519sm30039597c88.13.2026.11.16.08.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 08:57:45 -0800 (PST)
From: pavankumaryalagada@gmail.com
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH v4] nfs: Move nfs_local_open_fh tracepoint definition under CONFIG_NFS_LOCALIO
Date: Mon, 16 Nov 2026 22:26:59 +0530
Message-ID: <20261116165659.32938-1-pavankumaryalagada@gmail.com>
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

Move the nfs_local_open_fh tracepoint definition into the existing
CONFIG_NFS_LOCALIO block to ensure it is only defined when LOCALIO
support is enabled.

Fixes: 70ba381e1a43 ("nfs: add LOCALIO support")
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
v4:
- Clarify in the changelog that the tracepoint definition is moved
  into existing CONFIG_NFS_LOCALIO block, as suggested by Steven.
- Update the subject to reflect the change.

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

