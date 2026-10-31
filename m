Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.54
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793451874;
	b=3QaWoJwSwmFJZ+J1TZUBx0hw8U573nHzMeTrJsyuM50axPmoWAz4G0kgiw/tZOwEyWeI
	 GPWds6Y48eLrGM0uE04JkuczuycEEgk0uzsON/ICFDvWtzwgr8w1SfbBY7KtCQZTyy2eD
	 O6ZrDqKKomufi/62/Xa9zc971o0i+kSX8ynCogvZUjZ1hpZIM3Lx+9OUETsRgARRDG/N5
	 VZGA7GniL+N7IHfXznuiI8yp7TBZXLhi62PzICT5KFE5usRu9bFG1q1ngwGNehJIpx9Sd
	 Pvg8GnYEx7l8d37fmJzDfikFlcDXhncW/Yve5tg3Wd+YReF9h6FwGTFqJuCOCXVdAJQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793451874;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=dTcXMZ/cwpfH7imi8hGRW83QiEkYCliZtejgmjMpq2A=;
	b=XJgy6J+YfZfsdyNgxltWYL4SqbXjjY/sW8UL8UPXaMcU5gPCtvR6Mbos6ESGiQTm4qeU
	 /tKtVzyCfgMgy7kaC/AeFMtCJf8JEBF4IigR8L87DcdHttZpo0JpjzHS8QZ0dRAfrbwjZ
	 j9SATQnhtW+x7Ib61zOkStSCfGRk8rSxeWt5TGIKUo5hKOuaoo63lVmFYhoYOMabxUDXU
	 lTvGYr69ZD7j9D6CE5PB2haH/jPslmodeL9H/D5lPRO+SgrLoIk3MI+Rs/ChEGcuqndp0
	 cdJdhsYS6ewAuKYpGfqFUuX80ysWWHmz1mStrO0Dv9xfBANurLkzHBfvhvxCyet17UA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uaBe0v2B;
	arc=none smtp.remote-ip=74.125.82.54
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D219F606A31A
	for <outreachy@lists.linux.dev>; Sat, 31 Oct 2026 13:04:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org D219F606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=uaBe0v2B
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-1846bc43c28so1859238c88.0
        for <outreachy@lists.linux.dev>; Sat, 31 Oct 2026 06:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793451872; x=1794056672; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=dTcXMZ/cwpfH7imi8hGRW83QiEkYCliZtejgmjMpq2A=;
        b=uaBe0v2B7cnxyKn3hWLbBpGoVFEpSdUefxDcZ7FwuLqNEvHeaqurN/xOVMX8i+QmWp
         9dFP3iJIR+CTv7Vgwe05r4hAa1fK3GFZnUFalUUamA3QcHpJp7MsqCmxAOgRTTN8Xjmb
         Uy/A4dW76QvPpGB1VEUWhk6WpcW6xaXZ881V7wIKZnA014FQAMisIKKdqt8MzBGqfmr1
         mOOdC5t0Kstr9G/5ns5cqh64tBPIcZg4ce+TsEqeOteDsct3+PwrPf1d73BQo8gu5kz9
         f/FOAFCK+gbWd847Q0t6b7P9T1+Ze9HiOp7uSM1gSRCKltZlNE7askNWpmvJChCpIAnM
         cWQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793451872; x=1794056672;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dTcXMZ/cwpfH7imi8hGRW83QiEkYCliZtejgmjMpq2A=;
        b=J3kijlCSWkRyPmyPC+pwDilnO6etSuQZfhajk7XHq/vCMhTMZNnSFOQrLCjbrh3nG1
         vzLKTrxFpvmXwvHRM7TStaF5oSJthmPccDeZk1CcGiJv7ZtYiVPpVCJp2g3A8zIeiuIZ
         J19QNXoeJj1xpM5pjsuaRs7G6Gnee/QwBB8V8Lt59MBdMkMdNo5QaUT/YVBd7c4JbVg2
         Vh9ZGpgnFTLit6RP1dpGFagFa0p0P4QFqEGD3/TmgStuQzbMOis4DzpG9oAmtPZASc9v
         xfVebk0EEXExd7dps0FKxBzhc3xcmhPi2cHzme6wScTkLtyBvJmRRJoRG4LONo95CR9c
         nFgQ==
X-Gm-Message-State: AFq9FYJ7LrJ+ljZJPK4NsUFJ/04DDfHsXYOvVOdmISU+Wwc5wRzFURev
	nCWWSFf411mgRkxbmPWU0wpglPK56rpy6c0z/TDDooL2BtLfBUloqujtulb/xmPe
X-Gm-Gg: AYBFou1NajjL3PYkX7Bub4v8yV4xZliB7MObl5qOjwiVgTweW6AK1lLjHrvUm7t3Xf2
	NBjoBkYyA6vWvIt2gDH1qwxLUTWzZmV6VSouzihoIcN9Xln+jcwV5gjt5JzIyzftU+ID9ouT4y5
	ZQSieDkVIOh89l/V33gjDwO2IcuVOj1cxM6pk2YhaoUFhT8fbs/JnMBaVQrzrk9a1bKEHRvFxjv
	lnM2IrPpuFcRElXqfy1ADWZVVKtoBdpUguIys+posTf20yLBDzdk+hkuR9Fzwg92W5C6zlRMTEO
	6Bj6Cxnpg+uW+wc/jMe55zGv8lfdTtBGdrzZ/8lrCouwGaJvDAahDsZqwfYMBx1SYIhOIQNAVDx
	inlRI2sTrn/IA4pOgFG3NAMAXAy+GhrZI0mv9EcDfglT46ZuXja9oNuGDKTwJmbu25fAd6bHctO
	HPsr/JCwoaiiQX+WSrrgIBrR1j5NytxHWZOsBSlZkbzg0wVJFk1ju4dEwAix8JpXsqso2MzguHS
	6Hp9ZYrJttOG3h+7NtjxJEWyqbHKTmlIt5eL/EYvPWOxP8sb/doprMa2gwFGLrvrXIQZqX/ahkx
	RssFO3roU03T+WHaySd1WcQM2lgsx7DXkBWE
X-Received: by 2002:a05:701b:451b:10b0:1ae:4ead:8cef with SMTP id a92af1059eb24-1ae4ead97a8mr3765424c88.30.1793451872303;
        Sat, 31 Oct 2026 06:04:32 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:8ff5:62f1:8136:8210])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1ac192c27cdsm27656529c88.10.2026.10.31.06.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2026 06:04:31 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: outreachy@lists.linux.dev
Cc: rostedt@goodmis.org,
	julianbraha@gmail.com,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH] nfs: Only define atomic open tracepoints when NFSv4 is enabled
Date: Sat, 31 Oct 2026 18:34:19 +0530
Message-ID: <20261031130419.87555-1-pavankumaryalagada@gmail.com>
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

Fixes: 6e0d0be715fe ("NFS: Add event tracing for generic NFS lookups")
Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
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

