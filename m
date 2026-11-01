Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.181
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793491740;
	b=UAIGjophOcudRbqYNF7HEMDiu8xO4zBSZe90IEkjU8LxuTtN6rOi58FolnZ881e1rHdf
	 x2wsGOXpHQTNzYPbk1fhvnOWMngMdP0z+jblCfwxlEQgxyrfkVomIi5iXmgSUk8U6Lu5/
	 ChJM6BGknRc8bf1FlvlGwPIma2yXWf7bDoQAEjQ/wUVxrx4F7WGLeCFkCgSXASuSi3xhU
	 GYYOXVmontu36B80PmNSHBBc0e0JJda10qKTcpn9rOuIJ5sKr2smhGWHFAzQPZWb+BJwe
	 aQW7TtWAxT6z/b5hlquKw+fnB5gl5hvf9FbMbGJ4l5p4s7NemIiLRUa201LOo00fCBw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793491740;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=nHb2SsTcLjAOOAS0io1ELanG8GGgeGM/1TIGHlfcReE=;
	b=enIXbP+T+6G3ZNRTSW6gCiNW87WBYOKcM4R51tBS1tiBspaD8jIbxpagkOeUz/MFr9MF
	 SkYU2ahmDTR3VSnebGnpfpRrSaPSyL+GWDMx7QN+H4DqRMACggl9MbdqJ91VUXLXg3jZv
	 Qm+VhiLWOW0cHn7FU1EuBLrng4lgxa4PTQpp7KywF+A5Og4O8upJDuQbOJr57+a9oAp/R
	 tD2FSYblHqAdJvqzWCqFjtszfTLGuFCcw3oEUvF0whVlveWbajTIEXQT7QMXo5vYlVtyd
	 tJmDTL93lLNZgY8GHBpy48BTBdfNFAdBjyFMXx1cHLfRf2ZuxGjvsL/1LqciX4Y0C2g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NDFr95na;
	arc=none smtp.remote-ip=74.125.82.181
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17787606A31A
	for <outreachy@lists.linux.dev>; Sun,  1 Nov 2026 00:08:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 17787606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NDFr95na
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-3282db206d3so2064855eec.0
        for <outreachy@lists.linux.dev>; Sat, 31 Oct 2026 17:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793491739; x=1794096539; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=nHb2SsTcLjAOOAS0io1ELanG8GGgeGM/1TIGHlfcReE=;
        b=NDFr95nar+bIDHzt2V6FYXCdvBDEPEWUyLSt2SVRwkkUObOItYadpWDcxFcuzvtZRU
         SFHNGrJK7Kk6OU9VMEwBvdc0Ib4bWJYcKU5vNBtofw9ni0mPwMShitNai9M36g9u8rTs
         djM9Rs+Z7bDaV5zi80287uwPm1SqMyaDT+fpVlwJwZkjs7jKHICWIcJyO5sc7VAqbXmn
         a/Gfvh1cfU0eUN6iN6EyuxDKdjgu2aJMy2zIFjrQzabpEnis/VYDjmhLZM4ztScYorY6
         whyBhGaON65utEYlVtmuyR+dZVqBvES2sfp73qutRSajmmND9UMSYqoao79G8cHs3Shp
         qyVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793491739; x=1794096539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nHb2SsTcLjAOOAS0io1ELanG8GGgeGM/1TIGHlfcReE=;
        b=nH1GhHW75jf2e+BVFnzqtVx5VKvfmfwS6qkgZQPG5diBIvQfUaFi3ZLW+SBDBPJlOT
         ucsD32gXve28miMKAzyztMMJ94FKaiYiCNJXjvJMTaKDu+F5j6JFh81IfcmY3V6ytcFS
         rmUq5DpKFklR7mzcmTXYaiM7uIcvuybP3/q5GoUx1qrbo0+zAvsUXM6694ydHElE23vn
         UzeQvcClBBawBUBY9+libO0JiVja6AD22jFkXD158fUACyWMCtvLA1nLIvh1lC//mXm/
         1Ke7vpUU+gr4r+kOe8sb5B9a6678LFBbv7T+mKDQjHt+u7tQ3PGJEWFeLDc/Xls3U3b3
         g2vA==
X-Gm-Message-State: AFq9FYKw+i9kCFLRsUFR+3Bpe79sTxYh7hSxpiwssPGkIH/oh5451vFp
	weH5ZP2XpVqilJLsHWmgiI69HLlEz7ASKA/tY3qfBkqlLWNee6w4GA4ILZNSeAwH
X-Gm-Gg: AYBFou0sGO6OQRmyTYE0lePaaRKRuGKApoGTZRsP3+43wkXKL9XhzhAja2aW9lJcxnS
	shkATgGxxLl9FPJ7YMIbPsRx3qEee6vYwsyRV8g2/cG3uNsG/T+bJEEHO1ylqWUyJzEd0ByFN6J
	HGlp7ztchnj6Qf4uvV/paITSedMWjstV5vgLzYg4CIyMf5QdTOP2VuEMzrWJOsuubzxgIu2s2fC
	dC07X3n8bhBbLF5cNK2bmpyDwPrRjQkjJi85WKoryosjck3/tLpA+G9MqGdNKwYYGrbVNEoOnWd
	iuAlIT8lryEVLdvcgQrUEnnNkV6iBjTQMugmIhCLyKSeZ5ZapGDz2fzkblGlISX64QBRvgeWaVm
	BWgV99RfdMCePbxgR/G8FyCrnnC7aZQBZYTS5AoIuyY2RJmbuNEoIwRmCVc9ISO2raZhhJywrON
	zJc9LvqGdTj1Sl4fvHCN9lly+gBP6IgHzRe8sTyQGekV0sIKUmc8aiBB+6nOa1KRs1/etmYAlMd
	eLlwred9MKqQzdBkVFp+9gIGnZdhGdnHNDY6los6S9kOx8n6XIxEvHaFYLrv5+3IPSN1mophG/s
	FuQwodbf/i6rWy1MZiZlBS4CH5hUHTyAnoLd9Q==
X-Received: by 2002:a05:693c:639b:20b0:369:f2f4:b227 with SMTP id 5a478bee46e88-36a4238e9e4mr9568578eec.18.1793491738978;
        Sat, 31 Oct 2026 17:08:58 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:a854:56a6:b75c:e25b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428af4e6sm17896388eec.4.2026.10.31.17.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2026 17:08:58 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH v3] nfs: Only define atomic open tracepoints when NFSv4 is enabled
Date: Sun,  1 Nov 2026 05:38:43 +0530
Message-ID: <20261101000843.188761-1-pavankumaryalagada@gmail.com>
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

Tracepoint definitions consume kernel memory even when they are not
used. When tracepoints are only used in code compiled under a specific
configuration, their definitions should also be guarded by the same
configuration to avoid wasting memory.

The nfs_atomic_open_enter and nfs_atomic_open_exit tracepoints are
only used in nfs_atomic_open() in fs/nfs/dir.c, which is compiled
only when CONFIG_NFS_V4 is enabled. Guard their definitions with
the same config to avoid unused tracepoints and reduce memory usage
by approximately 8 KiB.

Fixes: 6e0d0be715fe ("NFS: Add event tracing for generic NFS lookups")
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
v3:
- Clarify why unused tracepoint definitions waste memory and include
  the measured memory reduction.

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

