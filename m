Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.218.49
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793297998;
	b=ASlAXjHuUHfFqqhUTf8jMe6jSRqyJijA/0+GYB9ySLEnp6c/pGareHLYryxOyqy0zFUb
	 HSltFJAGBPBEMF43VGXzA+YpxyGV0Amn1DQ4FyfbAIQAOk+yXg+mIFnKMV3qLHG4YmRfD
	 quJa+X488xTeKrfHQdWFs4fWz6pO+1Rmg476wW/klId2KzkfaiU1FzpR6QKuW+T00PMMp
	 ySGRDedTRyjLz6ZD2FITgYvmnmRrCJgTdcMaU/8mdC+mfB7MkgG00nTvLTOkWT+hoi689
	 fAhvD1xWLELqBgsVGaMoXZzGzo6HocTFsqS2//J189KXfhY2Npq2seDvUMJjX6KYVAA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793297998;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=iX/5kcgJLHYenTjEkqTynO0b70ye+PYgd2o/7R7g0Oc=;
	b=2xXGriYEyefjOit+1Sa9vpY1jqrpj4qdSqDx1AOOOQAmiDHB7QrSNbbaBw7yuhZws9MO
	 9EZBZqFGr4tI4DpQ6ySULxXSZKPCVkuktYRokPX6gENFZV9GcxbXAC8NfT3hoj9Q+tyXC
	 iIrLIwW9t2hALjaCBV8u9hTWAL4ETMG2cJxAa0Ji5KoLlqkHKp4iY1u5q642zS321kk/3
	 LcxkobyXQ61QuI/2jJY3vsbwgzRGekZJnCU5X3vnaPOJ9UINRJERVn908fnXn8SP6OoC8
	 Xhxd0bdCgYRIvwLOIii1BPEbAoOnQr5OuebIMTmWX+PaUcLRcfXBuYUgnULtJ7rIOOw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=YNRetcNi;
	arc=none smtp.remote-ip=209.85.218.49
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0136D606A31E
	for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 18:19:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 0136D606A31E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=YNRetcNi
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-c4395d31228so391191066b.1
        for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 11:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793297996; x=1793902796; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=iX/5kcgJLHYenTjEkqTynO0b70ye+PYgd2o/7R7g0Oc=;
        b=YNRetcNioRbw88kB8q0hzVCt+n2IH7gm5+0ajIiDW5nbpKEyAZacRw65KH0lRE5/l9
         xv1Mfi4Lfnr9ItChvZYFDPg1EmyQGGgxseZoNjF0JXuE/CEd1GHbOHzyzdlCcF6C9VVj
         4Gi+N7uqUL7eXKSrdzN3KXTnDcBzhIQcKlCDMlyXIoWU+BGvXLdHEmmrqnCniJiWQYoy
         woyvNOM6HhgJ96FMthr7vRrJtd7Gnk0KaHhUtBQT1BLdotQP2+RvUYxevD3LLNCivjFM
         hTzKjkLQHCJII3XIrgvzcLAIuU0sOztpmuD28kZ4BCIPRrARojlqBprDJ7SFgxggsOUw
         6+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793297996; x=1793902796;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iX/5kcgJLHYenTjEkqTynO0b70ye+PYgd2o/7R7g0Oc=;
        b=tXLX9rK5Arm22+hM+e8HKU+FnnY/+dhfje+QpNCWZ++rS/7MscIh6p6oecJS/oR5QU
         57Y+JxPaLSf0IogUtrTZgwqu/GZQE9qSrm6y1kTo8wuN2ly85s3+dFztvSNkuLKnx575
         ENcVe6uPrpWfoYSMICIpfpbEOzAJpZjPtqap77arYdKwoj5nWaPMf/nMmHa6uD1h7kJ2
         MoBE6UFNP+WaClzM23PbyniKq87oGylT1E7b4hd7ZHf1uGNkGRmJrfWA45/+URyEC2/M
         ctFs3UivFqiv3g0tUw+2yTaCYvPJx2Rev2XuumKRcGfPACPVV9kCiTcYq66t+SvtOOds
         ailA==
X-Gm-Message-State: AFq9FYKsKIJMrhJ6b+kcwmJ1MbuMvoM+qlg78zrzAQFD1Qw9RiHT0K6u
	XL6O7WoFde6D8rBr2LXd/mSYlDd42QLMsp6Del+7uwkxOzuLpqWQvEXS
X-Gm-Gg: AYBFou0S4+6AuJ9zMheUuVQcCnRrIyBdC/qUqPnUSXwnkw9tZwHaOtnTravlZqRwBn8
	pXgEK2eBbawZPmY1NXyOeUtlOnmPZ2ja+4FRB2aQW83gibCifb8LbH/cscwBR/dg1MfsfQ0heOl
	4Lujxc/ofGUOUoPxRJe1GCsMYMJfwUsjO71Lxxll0c99flpzmN6cNI+Nrw2HA+CDpSQxjmPEZln
	PtE27RrXrmmx+35UrGQbgfrWyEDDu/2WSLsfKbkXmu3n2f5xpdpI/tCRvP6uzJmre4naQwyA6J4
	BpLxetk+IHti9uEqkzUCHRIjMzI/u+5lXSSlMaAP+FZiJf2TNdq/adBAwuNPgFKyYiIOzgfJUYH
	skd7tdoV+BgrRsCzC46qGTdDuJa44QuvCnycEvxaRD0EQjaC+j4mnDNtZ8UEFfpK/wergxgaytN
	/kWSlwcREL2O1MLr8Y6UU9kQFojzDSF4vgmnnfgk5eSCjl4yyx2gQ86iddI8E1dkZyuY1BdXyMM
	iqNjPKq+4UK4vBRVYZiGEwHJw3EewT3anrv0NVCm/XX9A2FokPBuRJb2VfN68xCEOO71LSJvqfd
	hNa0kq3rp+Lgwgt2plvcC2jVRO5oyh/V2ODIfx8nJxQTVIRbhfeEURkiI+JH3fnm5rBOdX5B3xS
	opRDMvby8iSBs8UyxBNUA3Yjw6hwtcaONbLjbJi+9UqV7SKs/vNG+s1ZELa45OVve
X-Received: by 2002:a17:906:448:b0:c41:1e13:8896 with SMTP id a640c23a62f3a-c49c635f4b8mr354049166b.28.1793297996159;
        Thu, 29 Oct 2026 11:19:56 -0700 (PDT)
Received: from maria-VMware-Virtual-Platform ([182.186.0.95])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4ca2de1b78sm10323466b.2.2026.10.29.11.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 11:19:55 -0700 (PDT)
From: Maria Sheikh <mariasheikh812@gmail.com>
To: outreachy@lists.linux.dev,
	vaibhav.sr@gmail.com,
	mgreer@animalcreek.com,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Maria Sheikh <mariasheikh812@gmail.com>
Subject: [PATCH] staging: greybus: audio_manager: Add newline to sysfs output
Date: Thu, 29 Oct 2026 23:19:40 +0500
Message-ID: <20261029181948.13121-1-mariasheikh812@gmail.com>
X-Mailer: git-send-email 2.53.0
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

Fix checkpatch warning:

WARNING: return sysfs_emit(. . .) formats should include a terminating
newline.

Add "\n" to the sysfs_emit() format strings of the name, vid, pid,
intf_id, ip_devices and op_devices attributes.

Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
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
2.53.0

