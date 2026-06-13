Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBA3305664
	for <outreachy@lists.linux.dev>; Sat, 13 Jun 2026 01:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781315405; cv=none; b=n4nLTIkvbB+EVrzNZPX9n2T9lDnymWlbBYOfPg85kwS4kYzEk6Cg0VRPx3a+TzUaHl8Ti/8lWb1jN4AevDNzPWi9tCJIU4FBetZcPr4QmKXUlk9a6NqQalws717PK88/cTGmLM20P7UP3GTlKKboqkwRRC7/syRYU9q6wGlTUI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781315405; c=relaxed/simple;
	bh=2Woh6FChjTfvhDIM77iBJMo9iKET98W88YfAX52Le1k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VtDEVDzk8rmoGgtxT/KPznxJ77vijm0yt9+iDPsqO4zIejnluiSGIeYugF3aT2vtWBipsAyh+Irf/U9i6kI7awQ3SkYnocl1n8MAWIM2WEAISBUrKRsZmuQM6fe6iYAaGMp0nVtu/cV0crHeV5cp/YBOU34kwh1MjRRM/3zwCYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pznrxNqt; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="pznrxNqt"
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-842319576d5so905951b3a.1
        for <outreachy@lists.linux.dev>; Fri, 12 Jun 2026 18:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781315403; x=1781920203; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t37aJaEtFHDIlL04HCphJkfdvq0+XVtQ1GXGJFYW14U=;
        b=pznrxNqtH+a7ZZ2NS2OWn+wWj2e0XoaP17+nolTNfy3wEyWLYUE/W3FhZSwv7EH3aI
         H1Wlerk/30A8N8NkmJmT7yBp7tx4JJqCmjeCerZkK5vsfYO3SuhJQXKjKslMHwvEv6kw
         YoyeN9c48PrcuSuFDsfOw0wA6mSAF1/yayFgqvFlHMvHVAzH46O2GAnrwPYy7Dggo9oo
         iOEDuFUlezHBfeJs8jeAo8fFz8PYG8S73L92BwkJr5Ck3b6Y1oddLsy5nvNppCQPDgkE
         i/ZSk43E8WGjN4Q1x6dKhsynybULcez5eUOCbhFYtYxwZNsF/nAGcNz3z8Wwsg70xnOL
         af8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781315403; x=1781920203;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t37aJaEtFHDIlL04HCphJkfdvq0+XVtQ1GXGJFYW14U=;
        b=gkMAWKF7b5UwEJZ+eedaNxkE9ykUUgTVjxnj4vAlme15RghCrAeu32DUmdOxuM1b+W
         oVlzNpBXbSdUemf4XFPwbPyD2R7dCxlbe9O8tNK6WKxFo4fR47rRCMLA2kkF0dhgw/BC
         dTAhRnBd8qz8ltqcrtl4cWwluAWFs/zYpeuNUi5aY8rs80IWTtH6f5QFXfkD2xRl1A9v
         aeqX5CfHP2nwIOn7FvxLhlheFkItDE8CNIDY5TW7OdkDIs+WWC6wQP+ULyHvpfeYFK2F
         YuCajaNtBx0KwK+C9eW84pcbeIDsG0CE8JJm4dy/gN3hhpyvEf3JdBN+SUKnUqNMbS4V
         lF5g==
X-Forwarded-Encrypted: i=1; AFNElJ/8PPau3XdOr1lxhvmFx9aT/mN6riKvWFalVATkiMlElTlwmVe3/qeFInKd+8mjQnde9KfaiHfDlVY=@lists.linux.dev
X-Gm-Message-State: AOJu0YxIilohLv1OjnzzE4hYkZsjmZopclUgPuoJBoCpmZDyktakLgYP
	rN4+1e6KBSImM3OtGH/3NGQq36py7aTzfIDyJv8avuLdYHyZmnFMxQuW
X-Gm-Gg: Acq92OE2h0OUUkL0A2ZF/cCb/RlFsvN8i3W1sqFkAayizez/SsQdwOAf3vfB5XIJf+W
	20hi28GZQrz3uv1bTUKB0+er6WWEiHnctOnVKRXHJt86LqIszI33E5rdC4zopYqVBpxep4ifJlw
	ZunJ8CRXQEJZRLsyotWrx/m+lCxskLcCukrXE6wIO/lZtGAhBNruwVIDif5khkKAvWiy9Ph8Yer
	Ok2vA5SGd3yf6CKJzf7c3AFYL7BZOua3YkkENolRgFhIoV5uxZ1X9R8+TZ4N548uZWBIWkB2RMz
	zW/oCoVStpgFEdLMEEo+z5rlfeYRFXJ8knM2Y3MqPXvMA7QASZtahpCK5ViyVfX1WyDQvvUMD5P
	iSSlFZwFdM8RKVuD+Ym4YzyXZzc062cI8VJDtUpYVshgHbw6aOsWLRXTbsTD1zx6oZBuzAXt3A1
	E0WEkT9g/KnwkFvEnTZnpjahvoTg==
X-Received: by 2002:a05:6a00:39a9:b0:836:3f6a:3e7a with SMTP id d2e1a72fcca58-8434d07b973mr5705482b3a.26.1781315403315;
        Fri, 12 Jun 2026 18:50:03 -0700 (PDT)
Received: from localhost.localdomain ([2604:3d08:2474:4800::857b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434acf23a7sm3336210b3a.22.2026.06.12.18.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 18:50:02 -0700 (PDT)
From: Brock Haftner <brockhaftner@gmail.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy@lists.linux.dev
Cc: greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Brock Haftner <brockhaftner@gmail.com>
Subject: [PATCH] staging: greybus: audio: add missing newline to sysfs_emit formats
Date: Fri, 12 Jun 2026 18:49:05 -0700
Message-ID: <20260613014905.48458-1-brockhaftner@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The sysfs_emit() function is used to format strings that are returned
to userspace. According to the sysfs documentation, these outputs
should include a newline character for visual clarity.

Fix the checkpatch.pl warnings by adding the missing '\n' to the
sysfs_emit() format strings inside several functions.

Signed-off-by: Brock Haftner <brockhaftner@gmail.com>
---
 drivers/staging/greybus/audio_manager_module.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
index dc90cc2d2308..5737f2a32f5a 100644
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
2.54.0

