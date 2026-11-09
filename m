Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.171
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794210827;
	b=q1dGzQsfQgwBzmCGkVqIYnFQtX1XmEUoOjbuJi0kBmR3OT1Y4P4NK+GG77FNFHuRspP4
	 xmDCCOC59FEM40ZC3/kBwm5F1HFNwpOibhTMXblVRDY5GrNJ3KbOkDUDVGsRVZBeasbzx
	 nKRi4OK46g66OJohXV6mw/6vmZN3qKlf/zhRxnvUBHQFv/MQeuMbWDQb1sz6554VgM/PB
	 MuntvWeACghG0kBa8szj/4Xt5Ykj3A79e8LJ+hOWwYTiGFUeB5TSRGklfYaX8T5Ztl44i
	 HJQebCDN2jVSTGz5xXKnrYF8puKa45gZrunxsl2ldvyED4XGwfOtr4eSR7wWaW+QIKg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794210827;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=+dCPB0qrqwrQPXGgiOT4r4vbb8Gcc9ntf0TxFNdjajY=;
	b=Bhv4s26E43YrKgPBgvtfWuKkW2aNxLHLNq2nmZBhQR9jUQLYBwBN4MJQGFu/UuXFJ7PN
	 rdxJHO1xAqbgaTDBkuqZj/w5lJBPYU1fUgXFmztgjPxDLYErL80piEwnDgOpsEM46C10Q
	 VO+eKAKLAev2XW1kTtLkekMglfcCYcthuJy10CKwXCXl/HDiYHN7pzjXooQGCEm+wwMJB
	 ZjoQIg8hAeZ1htr2CNMs4kH2Rj1GwAy7i1HoLklyoZUydSR3R/taBOVOLTPuyHhQjGjFv
	 2/CwQmhsUkquzZehJli+nucXERp3LOkLl/UsNQlIwvs5QtN7koAU4gsPuOFxmAOtK5A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=RoHoRRM7;
	arc=none smtp.remote-ip=74.125.82.171
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7383B606A339
	for <outreachy@lists.linux.dev>; Mon,  9 Nov 2026 07:53:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 7383B606A339
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=RoHoRRM7
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-3700ed8dbe3so1441170eec.0
        for <outreachy@lists.linux.dev>; Sun, 08 Nov 2026 23:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794210826; x=1794815626; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=+dCPB0qrqwrQPXGgiOT4r4vbb8Gcc9ntf0TxFNdjajY=;
        b=RoHoRRM7c5MmV9bhBSUi1e3Ry/2DdYg8qvN1whIA31uw1nEQwBnz/8CdnBK0Vvntmc
         e/ULOrGXrxNK1qMI2TXsu9JsP1ivxIgnRQWvu/3cd9tLNDpf7eo1fm7f3l1sBII7zGDE
         qzK2xGC7GIKvu51+illbNU3Yi8ag55i5GgJVvQtGOWyuI9zdWQyRmLD/0nuw+3e/FvXM
         x3Qh06ad57jsRb8n5Xj5szvruPHJc7d4excl5+Yued9zvl7W/iCA8w4JHRgWWpdLSyNN
         tUY3SE9Bl+xgjrttp+zPteMbNEHjXTPA7gYDKPRf80HQyOp2nt3pSesf1wPSXF2JKFfK
         S4Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794210826; x=1794815626;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+dCPB0qrqwrQPXGgiOT4r4vbb8Gcc9ntf0TxFNdjajY=;
        b=iJiANUVtf/dfdilpuV1dCHYL3WVEu0GsymYgTD84LMm19GNC1V4SFkaMJDg+KuU6o1
         DrkvH27U/KmG+jDt7U96hlNv1Iayr46pJdxrCA7bnxUzhTrGpVPq+d1pMmGdAoGdPB0s
         pH+NS3XF16wwwMwPXx6vWiZIEBdDEvpwvhIc5ViVr8K7w09/v3T3Cpm+Zt6/H86CeMkS
         LjnxMoIjqNrfjO8wdMz6/sgNVdjmDp3vNr9Go6VKSw1WBeOBccTKmShuecAkMfxOB2GV
         4vVylGsmlLpTSKynoizRg1ulMMbcvtbMXiuTmaSn86KboO2ebSDd9xGWC/rK7ki7yTLo
         2FlA==
X-Gm-Message-State: APuU4Z/nySECgJdeHFV2ebzMqdndpU+y8O2Ii0xMaUN7GWfHNvKDi0e7
	6s+gAZjOcamPzPOLwSaNcb7FtGB/pFB9rU3Qq/wpSWlujaKD3edbzpPN4SCRfBAxA+Y=
X-Gm-Gg: AYBFou3dp39g9Up/5oHCwkjosn1foFmOlCTa4RgD02u2A2cxjoHsDHh/M2XyfsQw66m
	dVgYjEtx/LAFVwi8q3XTQ5MRNCiDBgvQLmk+NFkBeFZGNPHq1Laf5Dnrj1kHr/J+w7KsIg139nj
	Rw+6+8L/iWHqeZyCohptsBn01xxbW0imdJu7NcR3PrNTx7eOkVNOydjD7SeeckVfyHsBXFXoKQz
	h32IHi+dc9jr+E7hztZHciud2Vf8GWbOahTLDlulkm1ay8qCUcpuzr732itGmu9+3Gby39N6zmH
	L36+3KmB/6TV1G14kkuiFbRzSHUTtnqjTTy04PY+g1mC12vVLvX+y/o5QPlvVPHz/Nh5SKw0W7X
	Oi7sRmXy7+7vHjPX45R09OZG5dyb/40gIm5jX8V/5LAiAAyRS2abpdigbrMBvFEDb7zOT5+jREi
	7HTJMy/QZw4zekyhOUYRbAKjNvfV44MBX2hx2ivYDbacZ72UZmqycsyvszg3QzkrjRpcAMhue/n
	ezeg9yMWx4uRfahK/B8qBvxE0EXqhtu52scOZ1ylwcdtvGj29UFj3rmUhRcffY1Q1wyR3+Uuo2P
	vHdnhjc/nigQcMLo9GMMtqEbRRrFyu9GcGJCwr3Fz3iAGtsXj/gZr8CAZKgIh34Fi6nUpdE17/n
	L85aG36nTvUagXlRH66a8FGA1WlbfCi0o1FkarsHG9x+X
X-Received: by 2002:a05:7300:e9cc:20b0:36a:22c8:ac57 with SMTP id 5a478bee46e88-3725e91fc4cmr6696478eec.33.1794210826242;
        Sun, 08 Nov 2026 23:53:46 -0800 (PST)
Received: from localhost.localdomain ([203.92.58.30])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-372667d6088sm12500047eec.25.2026.11.08.23.53.43
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 08 Nov 2026 23:53:45 -0800 (PST)
From: Shivani Patel <patelshivani2283@gmail.com>
To: outreachy@lists.linux.dev
Cc: vaibhav.sr@gmail.com,
	mgreer@animalcreek.com,
	johan@kernel.org,
	gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	Shivani Patel <patelshivani2283@gmail.com>
Subject: [PATCH] staging: greybus: audio_manager_module: Add newline to sysfs output
Date: Mon,  9 Nov 2026 13:22:42 +0530
Message-ID: <20261109075242.62681-1-patelshivani2283@gmail.com>
X-Mailer: git-send-email 2.50.1
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

The sysfs_emit() calls in the show functions for audio manager module
attributes were missing terminating newlines. Add them to conform to
the kernel coding style requirement that sysfs output ends with a
newline character.

Signed-off-by: Shivani Patel <patelshivani2283@gmail.com>
---
 drivers/staging/greybus/audio_manager_module.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
index dc90cc2d2..5737f2a32 100644
--- a/drivers/staging/greybus/audio_manager_module.c
+++ b/drivers/staging/greybus/audio_manager_module.c
@@ -75,7 +75,7 @@ static void gb_audio_module_release(struct kobject *kobj)
 static ssize_t gb_audio_module_name_show(struct gb_audio_manager_module *module,
 					 struct gb_audio_manager_module_attribute *attr, char *buf)
 {
-	return sysfs_emit(buf, "%s", module->desc.name);
+	return sysfs_emit(buf, "%s\n", module->desc.name);
 }
 
 static struct gb_audio_manager_module_attribute gb_audio_module_name_attribute =
@@ -84,7 +84,7 @@ static struct gb_audio_manager_module_attribute gb_audio_module_name_attribute =
 static ssize_t gb_audio_module_vid_show(struct gb_audio_manager_module *module,
 					struct gb_audio_manager_module_attribute *attr, char *buf)
 {
-	return sysfs_emit(buf, "%d", module->desc.vid);
+	return sysfs_emit(buf, "%d\n", module->desc.vid);
 }
 
 static struct gb_audio_manager_module_attribute gb_audio_module_vid_attribute =
@@ -93,7 +93,7 @@ static struct gb_audio_manager_module_attribute gb_audio_module_vid_attribute =
 static ssize_t gb_audio_module_pid_show(struct gb_audio_manager_module *module,
 					struct gb_audio_manager_module_attribute *attr, char *buf)
 {
-	return sysfs_emit(buf, "%d", module->desc.pid);
+	return sysfs_emit(buf, "%d\n", module->desc.pid);
 }
 
 static struct gb_audio_manager_module_attribute gb_audio_module_pid_attribute =
@@ -103,7 +103,7 @@ static ssize_t gb_audio_module_intf_id_show(struct gb_audio_manager_module *modu
 					    struct gb_audio_manager_module_attribute *attr,
 					    char *buf)
 {
-	return sysfs_emit(buf, "%d", module->desc.intf_id);
+	return sysfs_emit(buf, "%d\n", module->desc.intf_id);
 }
 
 static struct gb_audio_manager_module_attribute
@@ -114,7 +114,7 @@ static ssize_t gb_audio_module_ip_devices_show(struct gb_audio_manager_module *m
 					       struct gb_audio_manager_module_attribute *attr,
 					       char *buf)
 {
-	return sysfs_emit(buf, "0x%X", module->desc.ip_devices);
+	return sysfs_emit(buf, "0x%X\n", module->desc.ip_devices);
 }
 
 static struct gb_audio_manager_module_attribute
@@ -125,7 +125,7 @@ static ssize_t gb_audio_module_op_devices_show(struct gb_audio_manager_module *m
 					       struct gb_audio_manager_module_attribute *attr,
 					       char *buf)
 {
-	return sysfs_emit(buf, "0x%X", module->desc.op_devices);
+	return sysfs_emit(buf, "0x%X\n", module->desc.op_devices);
 }
 
 static struct gb_audio_manager_module_attribute
-- 
2.50.1 (Apple Git-155)

