Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.180
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792921077;
	b=cfMqoF4H1SYAEQSC/kg1eAjrDoZzhAFwRFQdodR22s+3caMTqN1yXHADQ5bOCN9R2/+l
	 0itpp9maPlvXMqE1ju2RRQVPKS41F8qNo83AXyM0Tit/NAcwzWgToQAPpHxvtFE7dxsKE
	 A9m9dWkHY2ipJK/xQe+dXyjks6vdWamcRuR2KDG0jiHeQ4MF5oyEFfBvcG6Bnkp+bpn+b
	 ggset0qenl/BApBqO5i5dySZ7k41SmfbresZeowSWqC+O1tnNzHbolrh5z0qziVwDltaG
	 O9SNPUnjvP3MdaTBsBEwXH+yPJbeFGv2kGLTiR/x1xQnX4Kw5N5UY2PTWnFnX9mYv9A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792921077;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=J3VB6EWh9rTKf/3ywV5J1neE/4yxkSpCkxc4xFmX99E=;
	b=pGQurI55+OyOAp1of5h60vq0YZr+g41Kn0AV752DuxUqhBCjYwT/BJWI/Tykojxb+351
	 duCbeJnwDAPtB0pNlCzXS79b/q83ImDp7VRTet1E5nLeDvzzq/NahKym7X45qKJThJpms
	 SKJAzHK+V8+rew8lozdqY4L4T+2gHYCMU2OUDk0C1t/mtrGHmu1wMByd1Errhl9IDJKP/
	 6V6/hbu02q6cnE14cjD0XXBFo11EIOpTdPLEmtd2KmkPY4Yt/XpyKoQ5MiXpmbvqwaeTU
	 Q/E/6zc+/MNqUmXzIGTcBkPeGsJU7aVxE6yENAdSR89VDeUvgJiYJvaU6L7F6KRbnxQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=RlTnRGQD;
	arc=none smtp.remote-ip=74.125.82.180
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34708606A31A
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 09:37:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 34708606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=RlTnRGQD
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-36661f953e4so4044900eec.1
        for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 02:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792921076; x=1793525876; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=J3VB6EWh9rTKf/3ywV5J1neE/4yxkSpCkxc4xFmX99E=;
        b=RlTnRGQDboNgDGbPh8LNYn3P6izqZqgzfqBK8AGTOA+BrUQXiGwCERr+Et/L3xWwx+
         ikTrCcIk04BqkFvX4EAanZt6NAe2HLGMo4MvrpUSGtQFnNW6mWgKUjWjmxnK0oB3Spt8
         OhF/Opy414PVjBZ3dLoR/XBh5ZuvlvVTMcOpWMXGBVueBq3CyYKpq9Lt0b8JBcYXV2Oc
         CYdpxjXyQty6qmrrc4cL/CAKyfU5DWn+iOu9vp8Jj47prr8VwjAYQJ4sNaXI+T+7OWRn
         4Zt6hIfUnghM4tpeoZPhYpmgU8t0qbVwFMlhMuhpxMzgVTG8j+4sVueD01qPZJHcTQ1i
         lMLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792921076; x=1793525876;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=J3VB6EWh9rTKf/3ywV5J1neE/4yxkSpCkxc4xFmX99E=;
        b=ESLiaOEF659Tr3M6qxJmPmzX1nldHaJNUOFoJeL2nxbiFtMJWndbVaN6oP4M002yqq
         SWbCk2nGLZoyVv3jaNh+vd56ZDglBCtlIIC55UA2srYH4d9nHfVtGK4l76RuyLtx66JR
         Qbj8scbM58RlCMOkVNoD8UTUvugxdTJPrkdDsFArfy5yA6MrWeeo68ZYcYQGNjvZd0d8
         E6IbqDYz7QITgOCjMsKrn1S6A7u1Ho5g1G9tPbOu+PKA2+mY+IpBXGDDS+KeczDJ/m6J
         CV6Pp/E4vX1AjMLVW8Mo0FXwF1ahgSJivmPKC72vClAHKrXLIF8GgM1pchFshg3IIdku
         zmAQ==
X-Gm-Message-State: AFq9FYKtxEPX1acmx0/iC6g0d5p00LZ2hiXdd4QApaZYL8UgiwkjKhem
	d+hHOlJKVipCZF++ZatZ4KmL3WiUy/+1+bWfzQvauBq98CFB2xOhtwR5udd7PtT9
X-Gm-Gg: AYBFou3ndHti3bfVS6v35nJZaKpSDeoEZ6t4CKdYy4m+HcUVnQm4sTR1z3uaREDnyYL
	RxaZJcgp2zO2hqYFi+PjE0UayYryBeMgZxpEeDZka74OFK+/2fVIxrvEXiy4emdkf8o2C6n7KrM
	wyfi5jn4yQU/kHDQQoxwOPfPfnqNNKCgOGjzv3pqo861bFJxvqY71vlgg21lLrZc5ii4D7K0NXy
	yrQOoYZpGUAa6ZC5GHCy5NvrHlEnJfG/1cQs2T2x6lZLsJ4TngjBIFTIshauLwH1ccBGLNLlyyi
	AcJ5fuxeUOfOPDttHJdGa5Pif4y/8EvZzPee2ajqsu/vHxPiUEOweyPJEN7fVW4gDsIpidtjfpv
	+JK524HUJ3KwUFfKrZoeLa9xbmsSNENnUvut7LVi3SzFX1A1XnoaMwIi8Y6tl2KMUgNmfSdf4gs
	AyrAqyyzaeTtmx/dzTCrZLZvAgmxoz6CdfFXlwnc19BttfYiAJKoCOvVNURSEaVI8lQrdLQzwZQ
	SvvoilV+op8QxnL17BjO+s86EcmQ+YkBqFsgOZAtUNpgPRmYHYx/0hStInWwno=
X-Received: by 2002:a05:7300:d18b:b0:360:34e4:39d2 with SMTP id 5a478bee46e88-369e8492585mr5610800eec.10.1792921076044;
        Sun, 25 Oct 2026 02:37:56 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:661b:b5a2:80e5:3fad])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8daa3a8sm18609580eec.16.2026.10.25.02.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2026 02:37:55 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH] nfs: Guard nfs_local_open_fh tracepoint with CONFIG_NFS_LOCALIO
Date: Sun, 25 Oct 2026 15:07:44 +0530
Message-ID: <20261025093744.12949-1-pavankumaryalagada@gmail.com>
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

Tracepoints take up kernel memory even when they are not used.
When a tracepoint is used only in code that is compiled when a
specific configuration is enabled, its definition should also be
guarded by the same option to avoid wasting memory.

The nfs_local_open_fh tracepoint is only used when CONFIG_NFS_LOCALIO
is enabled. Guard the definition of this tracepoint with the same
configuration option.

Fixes: 70ba381e1a43 ("nfs: add LOCALIO support")
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
 fs/nfs/nfstrace.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/nfs/nfstrace.h b/fs/nfs/nfstrace.h
index b15c1732c869..bbd7735a1f67 100644
--- a/fs/nfs/nfstrace.h
+++ b/fs/nfs/nfstrace.h
@@ -1898,6 +1898,7 @@ TRACE_EVENT(nfs_mount_path,
 	TP_printk("path='%s'", __get_str(path))
 );
 
+#ifdef CONFIG_NFS_LOCALIO
 TRACE_EVENT(nfs_local_open_fh,
 		TP_PROTO(
 			const struct nfs_fh *fh,
@@ -1926,6 +1927,7 @@ TRACE_EVENT(nfs_local_open_fh,
 			__entry->error
 		)
 );
+#endif /* CONFIG_NFS_LOCALIO */
 
 DECLARE_EVENT_CLASS(nfs_xdr_event,
 		TP_PROTO(
-- 
2.43.0

