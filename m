Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.41
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793466283;
	b=U0s76wfMeyAxx2QfS6LMJc7nkstZv+FeI7bTyGmZDgNTFRuIhjE43Lubsuz/rrt5Hrir
	 xg051DtOcHRdJ0Io+HUOKjPj4QbksUsow99lfj+knqGH7HRf0WQJLLd1mAhWh65UEwfU6
	 0Q6N7j6vOXEWSsNOoRfSiWa5mwi6Scd4D+rujDuKSs+dyFrqPrXZ2V4phXrQTbJtugaNq
	 NtORuHWwREhCmoHs2Fj7SxNodaJOX65xyGJsCBvmuEIMpOXTALnXiuHjYt5QB1UuTkCAR
	 Xt5QKE5IRKtcqNK3976QZaRT/L7wCALEO+u9BTB7Xf+ZFkUBQTZOWMEHYS1XNvNjOFA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793466283;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=Cfria9cCLmFxOsoI1eMT+DXzhAZ+/IyF6wPL+QiCpZU=;
	b=aVCIb4qvpPlVyQhh0B8Mx7NOT0CEsxMkTrZjBcmsPNxm23jq/Gh3hJBUTbLLpuHs1Qmk
	 kHX2VNy6i1lrMdkCpWs+ScA3Rleb+YbnJ4pP3bubTrNOmbf6H5hrxtUyIOHGM92Vs8+tr
	 m9TTYrNNKSmza8f18XkNT+aKGPoxjLBysWHdgdRfAjbPsWJNajepwUgOMY9ZclnNzQicB
	 8GIZn1q27LHa+ncCtfhK6QztytuT3m+pn2cYuzsBZrQIQJHLMoyTzK5y3XWtZ0/+VvsBh
	 0gsdQ2wXhxU3Pp/5v444rDZ+4+TjunP8xC+8mqBLG4NaJblMhMsAkDOMu5f07JmjYiQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LyFzJcc6;
	arc=none smtp.remote-ip=74.125.82.41
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42601606A31A
	for <outreachy@lists.linux.dev>; Sat, 31 Oct 2026 17:04:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 42601606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LyFzJcc6
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-14394530ec6so2241447c88.1
        for <outreachy@lists.linux.dev>; Sat, 31 Oct 2026 10:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793466282; x=1794071082; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Cfria9cCLmFxOsoI1eMT+DXzhAZ+/IyF6wPL+QiCpZU=;
        b=LyFzJcc6/x9ZymmoNRGrN/B07vi/Mqk6Uj4kjloU8vL2PCmBsDd//7C8K98BBxcf5X
         Opo4uvb/SGjqddpw0ozN3ka1x2J1az8erdomYxZ1Lk+LGmpDZNZ8EmrEKMz33z6Nei6p
         RG6evK9Wl4HIMXqhhmB90Jj+dPzBjqrR8LXjl9tCYNR1yxc2Koj0N4M5V0tFYsYNl/YP
         YCmd5wFgFOssg+tytiOarN61OYgl22xoSAKcPGHBo76BSFMa/yveYrfPv3n78IV3Q3G9
         iVS5/uQlf2lfau78Fh1X4bmjOUo7LuhxCBcpHdJ7EkPcV2tRmudbCe+rzZ0CriLgtl0j
         k1yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793466282; x=1794071082;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Cfria9cCLmFxOsoI1eMT+DXzhAZ+/IyF6wPL+QiCpZU=;
        b=n2ylnXJuivmQUx74Wape6nLjfM9H6oz414Fds0EvaMvXgnmf+8S/G9ZFNDB0eolOWQ
         dmYmO3NMtR0jnb4t+g/lvlA2FJH1SZ9W2B78+qiNhHjLwll59S5j5aba0Oku/QGwyt91
         3axCIr3PWRa69G5wXmAaXQGVcs1m17YPCkDXDixDk7NufiQWnScunNi8Wsqdfet8Y3fH
         Fh0T5xA3TvmbPfPYMyNCjYdA0TwOdzD95yTU0qOgIqkqQmh6E0aUXRw7XNYpwEnol/JJ
         4Rr5neGpbvttc7QvLMOLvoyoX5BrYRd5xjp9FbmrFQyGp210U7BAtRmPM6U6qIZ2AWHt
         XoJg==
X-Gm-Message-State: AFq9FYKTZYzXDwtj74Zwf6+oWJxJasqS/sOBoPYqXasfmQZI5DeVhrzA
	T06KuljLJbgAuztyZAtKEsqthEhE9ButHPHuNIGk0NYsPYk4GMuTZiWsDbdBS4Vb
X-Gm-Gg: AYBFou2HnLaXDZ1a/n5GY8tYPFCjGx5I2Vjrt328WffsoCbNSCF9t1k5Izz7fO72ztb
	wOlMoOFJSRjhc0Zi1IPrTM4c2zaB44Yw/SCz+YNAYEAZ2PHDkg50R+91YchTnwEd9qeAp7efIS7
	LFlI/bZv5XtpjZhO8+PGPyB3ffxXe5f5koEZ4/QmkygLJpJmtzowUetTiLgOQrIV3KBjGCh1RgP
	+8vuuJUuchGTrbPkwtnT64sZmU+YBB9/+J4CuWT/iVj7ujRYILpTkDuCTAWDVpse/Cg1HMq9IRq
	iGA6L89seJAhChAPsqguReoPv28+v7NKVtPL7ibwVkBxT4TPvRj1txX5jor5KHu8XF22OWirsN/
	wq5Hw8a24uFY6pcqPFxhzEGRHGj62EmM/cpM4Qw/UpG5ga6Q1pLhZzMbePkwaCLZAm5JQVFin0T
	TdwaLuKgoggDAsq8t1aeBq6BjOPkXd4FDFgQPvOyEl4IFInBndF3xhrMomQJ7qldI157tsh/lOM
	QCUwKFXDEWzz6UkxSzt3nBhU280BTDByHHDvFlK+c55wbm2zF5ka+v702YMjLJnNQA7cEZ2VqZ2
	4saoblobgT5mcsyAbDTvkqKBscH1k3jhJngSmQ==
X-Received: by 2002:a05:7022:ea57:b0:196:c1ca:3489 with SMTP id a92af1059eb24-1ac50799c22mr6920171c88.0.1793466281975;
        Sat, 31 Oct 2026 10:04:41 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:91da:d4e3:39c7:3a9f])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1ac192c27cdsm31149865c88.10.2026.10.31.10.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2026 10:04:41 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH v2] nfs: Only define atomic open tracepoints when NFSv4 is enabled
Date: Sat, 31 Oct 2026 22:34:21 +0530
Message-ID: <20261031170421.95632-1-pavankumaryalagada@gmail.com>
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

The nfs_atomic_open_enter and nfs_atomic_open_exit tracepoints
are used only in fs/nfs/dir.c, but they are defined unconditionally
in fs/nfs/nfstrace.h. This causes unused tracepoint warnings
when CONFIG_NFS_V4 is disabled.

Guard both tracepoint definitions in fs/nfs/nfstrace.h with
CONFIG_NFS_V4 so they are only compiled when NFSv4 is enabled.
This avoids generating unused tracepoint definitions when NFSv4
is disabled.

Fixes: 6e0d0be715fe ("NFS: Add event tracing for generic NFS lookups")
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
v2:
- Explain why the tracepoint definitions should be guarded.

v1: https://lore.kernel.org/outreachy/E78430D8-5F7C-47FD-ADE7-6AA995F88A53@inria.fr/T/#t
---
 fs/nfs/nfstrace.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/nfs/nfstrace.h b/fs/nfs/nfstrace.h
index b15c1732c869..1b17e8b02692 100644
--- a/fs/nfs/nfstrace.h
+++ b/fs/nfs/nfstrace.h
@@ -514,6 +514,7 @@ DEFINE_NFS_LOOKUP_EVENT(nfs_readdir_lookup);
 DEFINE_NFS_LOOKUP_EVENT(nfs_readdir_lookup_revalidate_failed);
 DEFINE_NFS_LOOKUP_EVENT_DONE(nfs_readdir_lookup_revalidate);
 
+#if IS_ENABLED(CONFIG_NFS_V4)
 TRACE_EVENT(nfs_atomic_open_enter,
 		TP_PROTO(
 			const struct inode *dir,
@@ -590,6 +591,7 @@ TRACE_EVENT(nfs_atomic_open_exit,
 			__get_str(name)
 		)
 );
+#endif /* CONFIG_NFS_V4 */
 
 TRACE_EVENT(nfs_create_enter,
 		TP_PROTO(
-- 
2.43.0

