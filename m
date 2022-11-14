Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1491113
	for <outreachy@lists.linux.dev>; Mon, 14 Nov 2022 03:27:16 +0000 (UTC)
Received: by mail-vs1-f53.google.com with SMTP id q127so10252231vsa.7
        for <outreachy@lists.linux.dev>; Sun, 13 Nov 2022 19:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yxX3OIBDkcVlovbHm4tFTUu9RG36PlIClh6+/DpyF1I=;
        b=OPCRlzEGND4rb7PvWqRNSymr1Miw4Fn/NDxDTb9wIpHLUV1Wl7jMQSIImwiwSJURqc
         OG07yNqLOV9e5WauBONbPGyk+L7Y8RDOXPPVXIxPhFV6xhEhD1+XzWJZekhC8YRcSCNa
         WkMnN1MDNM4rLQfVMltD7hubYFgysFCZL0/dROuhAzS73l26ldipK1D5M0PEULTNzrss
         PN33qBgZvwoOjhyHgw1NeY21fDbQ7Te2RnexCiKLfzNlcQaD3/BV5caqglu0Q1ByujQ8
         ApwYcrzaHgS4xixDE9ruHzxheQ6Ql6/07DBeYHiKFunlfcFbDaa+9x6mMd/PohtSgX0X
         dX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yxX3OIBDkcVlovbHm4tFTUu9RG36PlIClh6+/DpyF1I=;
        b=gEmDDnBHpAlQUNlHCF9yQmoohzpUvyLNDXmpPk0pf/07EAJysDdlamUPI+k/DIR08F
         +B2YttzksWkAsKyo7TPyruE9qKD93F4pvSZlclM7FnBEuAnKqEOSfGLuDnXWApAdwQID
         VLxNJKsOQLSh9di2teOhmEIU/+EfjxnjYb37nlAnqzesCRKZoqiolhm7Ni1D7u1KJdTO
         KR8ozGRigXoTBhcwv146rRxypuWBjHdn5i9cqvd1zSj6r69Vc1N54zMfuSLPWZ5I6k8e
         S3C3SYw1Q5Dcnws662kOOubaUMUnwczFPp2iH5MV/pUOK6sKXbbv0gnxeyVD67oNR923
         NWdw==
X-Gm-Message-State: ANoB5plQq2/YwEWzBBGMtNLo1HROvXswyL0hQF/E2ORlgEpYZM5IoU+K
	qd73ujYbr++bL6vuDHRt/pY8Fno1C4BYIaDgb3sST5Y5thWWGw8QCIN5JcRQauwrFnONF3O4zmH
	ysxEs0cDtgtKk2oIzJLTzXCOWnuB9Nlihtjmz3ZEuyv3xiY2HbbFxp0v22fIB9UfUZqmZwDi2e1
	W49rFOuQ==
X-Google-Smtp-Source: AA0mqf5vzwd7Fp2L0SHUlOY2oT4Xbp1C+z4JavKNaopKY5s9TSTFE7RBxYPdFOAcnbp8YMXQZZRnnw==
X-Received: by 2002:a67:fb81:0:b0:3a9:afe1:eef6 with SMTP id n1-20020a67fb81000000b003a9afe1eef6mr5051739vsr.61.1668396435704;
        Sun, 13 Nov 2022 19:27:15 -0800 (PST)
Received: from zeda.home ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id h2-20020a1f9e02000000b003bbd05d3370sm1206897vke.47.2022.11.13.19.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 19:27:15 -0800 (PST)
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: outreachy@lists.linux.dev
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	hvaibhav.linux@gmail.com,
	vireshk@kernel.org,
	pure.logic@nexus-software.ie,
	Hunter Chasens <hunter.chasens18@ncf.edu>
Subject: [PATCH v3 1/2] Staging: greybus: Whitespace cleanup
Date: Sun, 13 Nov 2022 22:26:45 -0500
Message-Id: <35ee8be5f3737350b5324bfb2b6fd6b74fd02c58.1668395762.git.hunter.chasens18@ncf.edu>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <cover.1668395762.git.hunter.chasens18@ncf.edu>
References: <cover.1668395762.git.hunter.chasens18@ncf.edu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Modifies whitespace to better come into compliance with the kernel's coding style.

Signed-off-by: Hunter Chasens <hunter.chasens18@ncf.edu>
---
 .../Documentation/firmware/authenticate.c     |  2 +-
 .../greybus/Documentation/firmware/firmware.c | 34 +++++++++----------
 drivers/staging/greybus/arche-platform.c      |  2 +-
 .../staging/greybus/greybus_authentication.h  |  1 -
 drivers/staging/greybus/loopback.c            |  3 +-
 drivers/staging/greybus/tools/loopback_test.c | 16 +--------
 6 files changed, 21 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/greybus/Documentation/firmware/authenticate.c b/drivers/staging/greybus/Documentation/firmware/authenticate.c
index 3d2c6f88a138..80f30c907905 100644
--- a/drivers/staging/greybus/Documentation/firmware/authenticate.c
+++ b/drivers/staging/greybus/Documentation/firmware/authenticate.c
@@ -85,7 +85,7 @@ int main(int argc, char *argv[])
 	}
 
 	printf("Authenticated, result (%02x), sig-size (%02x)\n",
-		authenticate.result_code, authenticate.signature_size);
+	       authenticate.result_code, authenticate.signature_size);
 
 close_fd:
 	close(fd);
diff --git a/drivers/staging/greybus/Documentation/firmware/firmware.c b/drivers/staging/greybus/Documentation/firmware/firmware.c
index 765d69faa9cc..1955a97fc7c4 100644
--- a/drivers/staging/greybus/Documentation/firmware/firmware.c
+++ b/drivers/staging/greybus/Documentation/firmware/firmware.c
@@ -47,13 +47,13 @@ static int update_intf_firmware(int fd)
 	ret = ioctl(fd, FW_MGMT_IOC_GET_INTF_FW, &intf_fw_info);
 	if (ret < 0) {
 		printf("Failed to get interface firmware version: %s (%d)\n",
-			fwdev, ret);
+		       fwdev, ret);
 		return -1;
 	}
 
 	printf("Interface Firmware tag (%s), major (%d), minor (%d)\n",
-		intf_fw_info.firmware_tag, intf_fw_info.major,
-		intf_fw_info.minor);
+	       intf_fw_info.firmware_tag, intf_fw_info.major,
+	       intf_fw_info.minor);
 
 	/* Try Interface Firmware load over Unipro */
 	printf("Loading Interface Firmware\n");
@@ -69,20 +69,20 @@ static int update_intf_firmware(int fd)
 	ret = ioctl(fd, FW_MGMT_IOC_INTF_LOAD_AND_VALIDATE, &intf_load);
 	if (ret < 0) {
 		printf("Failed to load interface firmware: %s (%d)\n", fwdev,
-			ret);
+		       ret);
 		return -1;
 	}
 
 	if (intf_load.status != GB_FW_U_LOAD_STATUS_VALIDATED &&
 	    intf_load.status != GB_FW_U_LOAD_STATUS_UNVALIDATED) {
 		printf("Load status says loading failed: %d\n",
-			intf_load.status);
+		       intf_load.status);
 		return -1;
 	}
 
 	printf("Interface Firmware (%s) Load done: major: %d, minor: %d, status: %d\n",
-		firmware_tag, intf_load.major, intf_load.minor,
-		intf_load.status);
+	       firmware_tag, intf_load.major, intf_load.minor,
+	       intf_load.status);
 
 	/* Initiate Mode-switch to the newly loaded firmware */
 	printf("Initiate Mode switch\n");
@@ -108,21 +108,21 @@ static int update_backend_firmware(int fd)
 	ret = ioctl(fd, FW_MGMT_IOC_GET_BACKEND_FW, &backend_fw_info);
 	if (ret < 0) {
 		printf("Failed to get backend firmware version: %s (%d)\n",
-			fwdev, ret);
+		       fwdev, ret);
 		return -1;
 	}
 
 	printf("Backend Firmware tag (%s), major (%d), minor (%d), status (%d)\n",
-		backend_fw_info.firmware_tag, backend_fw_info.major,
-		backend_fw_info.minor, backend_fw_info.status);
+	       backend_fw_info.firmware_tag, backend_fw_info.major,
+	       backend_fw_info.minor, backend_fw_info.status);
 
 	if (backend_fw_info.status == GB_FW_U_BACKEND_VERSION_STATUS_RETRY)
 		goto retry_fw_version;
 
-	if ((backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS)
-	    && (backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE)) {
+	if ((backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_SUCCESS) &&
+	    (backend_fw_info.status != GB_FW_U_BACKEND_VERSION_STATUS_NOT_AVAILABLE)) {
 		printf("Failed to get backend firmware version: %s (%d)\n",
-			fwdev, backend_fw_info.status);
+		       fwdev, backend_fw_info.status);
 		return -1;
 	}
 
@@ -148,10 +148,10 @@ static int update_backend_firmware(int fd)
 
 	if (backend_update.status != GB_FW_U_BACKEND_FW_STATUS_SUCCESS) {
 		printf("Load status says loading failed: %d\n",
-			backend_update.status);
+		       backend_update.status);
 	} else {
 		printf("Backend Firmware (%s) Load done: status: %d\n",
-				firmware_tag, backend_update.status);
+		       firmware_tag, backend_update.status);
 	}
 
 	return 0;
@@ -185,8 +185,8 @@ int main(int argc, char *argv[])
 		fw_timeout = strtoul(argv[4], &endptr, 10);
 
 	printf("Trying Firmware update: fwdev: %s, type: %s, tag: %s, timeout: %u\n",
-		fwdev, fw_update_type == 0 ? "interface" : "backend",
-		firmware_tag, fw_timeout);
+	       fwdev, fw_update_type == 0 ? "interface" : "backend",
+	       firmware_tag, fw_timeout);
 
 	printf("Opening %s firmware management device\n", fwdev);
 
diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index fcbd5f71eff2..6f86b0141853 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -179,7 +179,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
 				if (arche_pdata->wake_detect_state !=
 						WD_STATE_COLDBOOT_START) {
 					arche_platform_set_wake_detect_state(arche_pdata,
-									     WD_STATE_COLDBOOT_TRIG);
+									    WD_STATE_COLDBOOT_TRIG);
 					spin_unlock_irqrestore(&arche_pdata->wake_lock,
 							       flags);
 					return IRQ_WAKE_THREAD;
diff --git a/drivers/staging/greybus/greybus_authentication.h b/drivers/staging/greybus/greybus_authentication.h
index 7edc7295b7ab..48b4a9794d3c 100644
--- a/drivers/staging/greybus/greybus_authentication.h
+++ b/drivers/staging/greybus/greybus_authentication.h
@@ -41,7 +41,6 @@
 #define CAP_AUTH_RESULT_CR_NO_KEY	0x03
 #define CAP_AUTH_RESULT_CR_SIG_FAIL	0x04
 
-
 /* IOCTL support */
 struct cap_ioc_get_endpoint_uid {
 	__u8			uid[8];
diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 1a61fce98056..a6a975a442ad 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -588,8 +588,7 @@ static int gb_loopback_async_sink(struct gb_loopback *gb, u32 len)
 	return retval;
 }
 
-static int gb_loopback_async_transfer_complete(
-				struct gb_loopback_async_operation *op_async)
+static int gb_loopback_async_transfer_complete(struct gb_loopback_async_operation *op_async)
 {
 	struct gb_loopback *gb;
 	struct gb_operation *operation;
diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index 4c42e393cd3d..539c7030ffec 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -240,8 +240,6 @@ static void show_loopback_devices(struct loopback_test *t)
 	for (i = 0; i < t->device_count; i++)
 		printf("device[%d] = %s\n", i, t->devices[i].name);
 
-}
-
 int open_sysfs(const char *sys_pfx, const char *node, int flags)
 {
 	int fd;
@@ -274,7 +272,6 @@ float read_sysfs_float_fd(int fd, const char *sys_pfx, const char *node)
 	char buf[SYSFS_MAX_INT];
 
 	if (read(fd, buf, sizeof(buf)) < 0) {
-
 		fprintf(stderr, "unable to read from %s%s %s\n", sys_pfx, node,
 			strerror(errno));
 		close(fd);
@@ -367,7 +364,6 @@ static int get_results(struct loopback_test *t)
 			r->apbridge_unipro_latency_max - r->apbridge_unipro_latency_min;
 		r->gbphy_firmware_latency_jitter =
 			r->gbphy_firmware_latency_max - r->gbphy_firmware_latency_min;
-
 	}
 
 	/*calculate the aggregate results of all enabled devices */
@@ -407,9 +403,7 @@ static int get_results(struct loopback_test *t)
 			r->apbridge_unipro_latency_max - r->apbridge_unipro_latency_min;
 		r->gbphy_firmware_latency_jitter =
 			r->gbphy_firmware_latency_max - r->gbphy_firmware_latency_min;
-
 	}
-
 	return 0;
 }
 
@@ -537,7 +531,6 @@ static int log_results(struct loopback_test *t)
 			abort();
 		}
 
-	}
 	for (i = 0; i < t->device_count; i++) {
 		if (!device_enabled(t, i))
 			continue;
@@ -550,10 +543,8 @@ static int log_results(struct loopback_test *t)
 			if (ret == -1)
 				fprintf(stderr, "unable to write %d bytes to csv.\n", len);
 		}
-
 	}
 
-
 	if (t->aggregate_output) {
 		len = format_output(t, &t->aggregate_results, "aggregate",
 				    data, sizeof(data), &tm);
@@ -680,6 +671,7 @@ static int close_poll_files(struct loopback_test *t)
 
 	return 0;
 }
+
 static int is_complete(struct loopback_test *t)
 {
 	int iteration_count;
@@ -740,7 +732,6 @@ static int wait_for_complete(struct loopback_test *t)
 		ts = &t->poll_timeout;
 
 	while (1) {
-
 		ret = ppoll(t->fds, t->poll_count, ts, &mask_old);
 		if (ret <= 0) {
 			stop_tests(t);
@@ -780,7 +771,6 @@ static void prepare_devices(struct loopback_test *t)
 		if (t->stop_all || device_enabled(t, i))
 			write_sysfs_val(t->devices[i].sysfs_entry, "type", 0);
 
-
 	for (i = 0; i < t->device_count; i++) {
 		if (!device_enabled(t, i))
 			continue;
@@ -823,7 +813,6 @@ static int start(struct loopback_test *t)
 	return 0;
 }
 
-
 void loopback_run(struct loopback_test *t)
 {
 	int i;
@@ -852,7 +841,6 @@ void loopback_run(struct loopback_test *t)
 	if (ret)
 		goto err;
 
-
 	get_results(t);
 
 	log_results(t);
@@ -881,10 +869,8 @@ static int sanity_check(struct loopback_test *t)
 			fprintf(stderr, "Bad device mask %x\n", (1 << i));
 			return -1;
 		}
-
 	}
 
-
 	return 0;
 }
 
-- 
2.38.1

