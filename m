X-GM-THRID: 6391852583766458368
X-Received: by 10.129.169.10 with SMTP id g10mr6734023ywh.165.1488219151368;
        Mon, 27 Feb 2017 10:12:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.230 with SMTP id z93ls12141240ota.44.gmail; Mon, 27 Feb
 2017 10:12:30 -0800 (PST)
X-Received: by 10.129.121.199 with SMTP id u190mr7004552ywc.170.1488219150951;
        Mon, 27 Feb 2017 10:12:30 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si3063825pfa.4.2017.02.27.10.12.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 10:12:30 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p185so910928pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 10:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Uv300gixtI6Pu4mrlhF8aC7mOa8YiKTcPSbpdrJHymE=;
        b=UEBLe1hroeWFajEjJ5V9axJwjusU5tGeBX6dI2Cc+wJC2ANFSImKfXZ1vX1dc2tM8A
         /t6UaC7cZ4jZHnl3RSfQ9HEwNMJq9Mu7EdR5PyR674a0jjdSdpzjEmrdXrPKoc19uekA
         dOPPszGA80EItxXBNJNsRTLiBRrnKGvLhUAdqrI9GsaZhJrk6wu0Gz/J7ehFsXFfshxZ
         9EAqi3id+4FSyPma1d4zKKQt8FSjqLRlE5+pkExBq4J7IzTRm4LwdqSuROz6dKsEG2X1
         G24UQwg25chlJOnvYvxxgCs0uHanh2c1opvBoNiaimKvTv2J1brthg0T0dqIGjddSvRU
         XF/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Uv300gixtI6Pu4mrlhF8aC7mOa8YiKTcPSbpdrJHymE=;
        b=FyUi2YnZ1m5M0AHBkW/SihcMR80Q2QofpxZPe1SYUY41MxTp62pjJ6dwv+3axhBGmo
         xZVezSzHPKzrP2xuhyCObBT1qCTutorl2MZZ1+r0eHINfKNhPfIu4D/FDH8QhhlLfvPs
         f8Yv/3avTuvsyot5vfxB0kG1lgUZDhNo7NFUPgCE14FO/0tmOceDY9LqJwNFkypA/9u8
         XjEZ+bpb8U4bSw64c2lHC7cKPKR2izvHlq6283V4EFgH3w95QMixW010mIBJ2lYl/LIt
         kXZCQmey4Pfp/EdTwf9IBCUodea8EHIebtL+oL5bPW5/TOyx/RjLsY0R2JeD2IMhlZn+
         1R0w==
X-Gm-Message-State: AMke39mHhtrSGgBUoV5JNu9yGj1lUnlDeD+hFxv9XLE6iKdhBXM3U+rwlpKXZjE9zUw0Yw==
X-Received: by 10.99.44.138 with SMTP id s132mr22543821pgs.88.1488219150713;
        Mon, 27 Feb 2017 10:12:30 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c11sm31950293pfe.68.2017.02.27.10.12.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 10:12:29 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: lustre: Remove unnecessary else after return
Date: Mon, 27 Feb 2017 23:44:24 +0530
Message-Id: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 3 +--
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c      | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index fbbd8a5..02d49b7 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -1806,8 +1806,7 @@ ksocknal_close_matching_conns(struct lnet_process_id id, __u32 ipaddr)
 
 	if (!count)
 		return -ENOENT;
-	else
-		return 0;
+	return 0;
 }
 
 void
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index cf3fc57..ac32c82 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -338,8 +338,7 @@ static int ldlm_cli_pool_shrink(struct ldlm_pool *pl,
 
 	if (nr == 0)
 		return (unused / 100) * sysctl_vfs_cache_pressure;
-	else
-		return ldlm_cancel_lru(ns, nr, LCF_ASYNC, LDLM_LRU_FLAG_SHRINK);
+	return ldlm_cancel_lru(ns, nr, LCF_ASYNC, LDLM_LRU_FLAG_SHRINK);
 }
 
 static const struct ldlm_pool_ops ldlm_cli_pool_ops = {
-- 
2.7.4


