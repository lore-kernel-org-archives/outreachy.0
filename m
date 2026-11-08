Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.177
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794152793;
	b=utYeMSn8t6+ngoX1x541WTwSwC6F0mkNpFHe3qsQEgrst1tT8iYu17SDxPk3DwXKCDjI
	 7ZAM7GH6DnTKknB+VtaWBLwjycIPOWHmEJ7HwoXW1ejB0Wk8EKzUJjbGjkOPSh7uXdPYr
	 sarHfTHjYr+rOKG5ELAJYneohxL7y198e9IkoZ/eWtEvebu/L+2p1H5XWnxgkAvqql6fU
	 a03aXW9cGmXQ49pADdITyXRbqJH05KefuORUiv+Cg1djlNlTU6hQDr6WznyCMic6BliQ2
	 KzseJ2kv8iXKcWYwhQ0093JnGx5tvuonVS1kgx81/0w2O+jhBsNSN82E1irtxrXSCkQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794152793;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=lMOfG0dt5KJ9wYZo/2EFNqyAmbitPJpSB6PuhWq07Ko=;
	b=4G4t7oWz7KlNwO5x69DjdtNWSbu18J/rZgtOxeSTcGao6XBFd2LghonE9PHXjGvh6B5h
	 GQtW4aG71UUhMWHc57s1WrNWosv50tuC0O1AUHnPS7mmMnJpSMYq4TRjwXCwMZAQHaU03
	 sRJS9l/9uPtCO6tQgn0g6qiydjksRjeTIxgeGJ7y05Ezweq5h6MvftOLRzPmiWAQ5N9pv
	 1cmkwqmKdS7O8jnE7r1DGbALv3JDJFIbdJcOwFp1uufT6pLd/YpvI2ymbsOoyRPR1/iiM
	 bWglLSKTg2PxW1jjaAKcXtAX/IMIYXMJHyjQ/ySQg3gL7mq9aOnLb1LUTQ0vXGNKf3w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=WZ6XXop5;
	arc=none smtp.remote-ip=74.125.82.177
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7217606A31C
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 15:46:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B7217606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=WZ6XXop5
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-36eb1cb7aabso201709eec.0
        for <outreachy@lists.linux.dev>; Sun, 08 Nov 2026 07:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794152792; x=1794757592; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=lMOfG0dt5KJ9wYZo/2EFNqyAmbitPJpSB6PuhWq07Ko=;
        b=WZ6XXop53GNbTAlAtB0RzM20+L2yJMHt3sp1bB8Gs9aTBt0Bw0tXrJyObYa2naDOPf
         EFi6t4Hi7EELhYXbQPafCos7wcJP2D9lkR5VdrfuCABhjbWxR/LIuuQK12rbc8fILQnV
         Xn9w+NgCL8OCNRHO+o9jDGYLtLSYHHPv9xxBwte3+asIPAVSLr8EMmbWt1GlBEjTZmAV
         YSlhKu15hMfg9ki0/gYetRHmcL1qwKMYx2HgKWrtQtOAEAsA7BqstY535vMWkDwj2Ond
         6N8Uz2WN5SK3M3n1tHVcV68punMIALBS0kp8QWNaWobvn2eJzqLAbconnwp9uRCuF1YB
         M6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794152792; x=1794757592;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lMOfG0dt5KJ9wYZo/2EFNqyAmbitPJpSB6PuhWq07Ko=;
        b=so3oRjywHuanhXsOClI5PYn2I3iwvVeOrZbFtieyIFT93MDmyn9nlkCqkrSaKKAyPe
         elBhBXFfan2YIF9pmkWoq4LokXi/AdzMoLSVHv5bYj14dvh+f5nwbk63c0ZxZTmzcS+U
         SGxtxx+cor/lwiuDRDf0L1dPsX8ZRjaSX088fFhtwiD6bi9rukDlJ1nWhyVyNdSCs1SX
         xeVOPxs6YUIKSNusPCVXv57kdyRgvmbMKG/UdPeRtgC60E8/nqtty20JC03cyUaamBlL
         gGCxaNW412Yak9opAStfNorvRAB9Lt+3wFZ3fhDM284ePP2g8JfYA1kLtuDiuqqWNnBd
         vA/Q==
X-Gm-Message-State: APuU4Z9gU0Ozm5+CJKWcPdJlYjwFPRosMF92omcWpYYiId1Oujn0Vknn
	tGYF3eAaPYeTCt8jaA0ft73zaM10WoyBckCofhjwWJtIwgD1Fp6KRAe+oEa6FQ==
X-Gm-Gg: AYBFou1oODhdxrQpRBleit2RJPsgZfRjNJY61iLODCmlgk1+4yyOtVJNw2WF3+qcHq6
	uFxEVKSDgusUxMD2fJLEwn+4ZsL0JUmwzJL9bH3H0AeLPtRcK6aSljRYZ8qg1m/1hRrLbQR4s8x
	Vuj8RFmSG0rwyxaOrqcZMp7stRgliYmxhMBlMMfFkNTz3U+klU6a9znCJfGyxTgXUuGWXAYEKi7
	51G4Y/kXVzvVjagn1vWQcaeQkx3qivJTFU4nSDUq38Ow52iJWW0vHT7wwNdqtHOO/7TrQl4m8K5
	2/nK+eo5NpEjPN7qA0ZABUM5zY5CZO7WkdhykMssoRuSJIytAuI92OaUeGyt8KL5Cw3Hs0kwMNX
	XPaPTcCxWWLJ1bIbXAAFeuLwnf/JOnXqBfYi8fU/6cGjQk6/Iw19vcNGlY0iJhg/zAzsGnwmfbT
	QQ1EwZMHWbwt8vNYlceP91UfniD/KzByDaC6RibViCG1pHHa/aQy8Fn8ud19GVlq8/eohT4mDRI
	3afcbjqS5/699EWLSvLZNLqyRc/TyCQ/pT3OAj3CskwAxl4CMezEDdJxaCAwo3eDih+3bW8qP1N
	FxNsEHkXmrnaoWPdLSCwJsfPpszwtC2bNWqNhO8ZhNIevSxHHYn/nMrUKzs=
X-Received: by 2002:a05:693c:41c6:20b0:36c:3b8a:8090 with SMTP id 5a478bee46e88-37252b4bb0amr4111104eec.2.1794152791371;
        Sun, 08 Nov 2026 07:46:31 -0800 (PST)
Received: from user.. ([2405:201:c052:b00b:3518:8eda:fe84:e2d0])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-372660f385bsm6499534eec.20.2026.11.08.07.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2026 07:46:30 -0800 (PST)
From: pavankumaryalagada@gmail.com
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH v4] nfs: Only define atomic open tracepoints when NFSv4 is enabled
Date: Sun,  8 Nov 2026 21:16:19 +0530
Message-ID: <20261108154619.52359-1-pavankumaryalagada@gmail.com>
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
only used in nfs_atomic_open(), which is compiled only when
CONFIG_NFS_V4 is enabled. Guard their definitions with
the same config to avoid unused tracepoints and reduce memory usage
by approximately 8 KiB.

Fixes: 6e0d0be715fe ("NFS: Add event tracing for generic NFS lookups")
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
v4:
- Clarify the commit message as suggested by Steven.

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

