Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C706E3207
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 15:57:48 +0000 (UTC)
Received: by mail-ua1-f43.google.com with SMTP id j6so1144021uaa.10
        for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 08:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qibyw9gfJZfWqQbi6D5/yzsyAcIfIsFHGm/JzzaauCo=;
        b=QthxDT+dd3dvYK6DlRzZF7BzD35G7zFMG0cpZVv6YSRhloyEq/kJgK4OcFpSssFCMy
         wIx1o6sD7PrNJ7bXowrvQM0h0ia51XZzzYkl3JqODlyh5lIIUXWKsXu4PvoE5GWwf7Tf
         X2UxyzHQ91hJxyI0bcwy4hdXw3tDarXbXbGh5McNgCYTUuHYemux4Q+F+Css6AAM3IEv
         ikO1ulBRrmXjfLPiEMqVAnbF3c7CA0GtCMqgq7wNN8NFvjgxvRxwQ63yFk2NL7TQpaC4
         KNM3LQdJ9cxtqnmG7c8/a0lCelQPp/cA7vi2Tmv0LQOCf1hbftN11hPgft0ZEET9qz3x
         qMYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qibyw9gfJZfWqQbi6D5/yzsyAcIfIsFHGm/JzzaauCo=;
        b=rfVRhGOzoJWH5ZvBpghmF8D021uhrq6RLFZbpJagrK1wkuKLz73wdpMM8nQseK54rX
         qFxuXy06c67Y4rx3d8L+IdfPeoIlxZPCs4TQz9QPvS2+zYpeUlXAAR2eXBodYyI8ORgX
         NWxgc09ivaFP4IuOvU9cS4IculrUDTgoOKqizXfES5nIwUhWYemPbo1NotDjh9vzFFo6
         JwjofeRqOVHl7ZGhbZCWlIGzPFcSmOGv/H7pGWejwrclQfBQmzpLitPrmdvIZ2dkQfeM
         iIUrEHR+G5qOaNgCiGeBW3sJ8MYCIWD1lSblQbj4UPYkEToWb7IVza0yzGazTr+//dwr
         weKw==
X-Gm-Message-State: ACrzQf11XlPGvnsvRRKxs9huLc6o6/ArACBSRFzUwhGwBTZZAICIzqNB
	Nv6EiKekp4ch5fxZo4OU2UgfAV8Tt1Xa1F7uP4Ic+M8sUHUbOfmghZvFyfGPqSmM3fUna+6WDHm
	fmJSHt+9AogCpxExzlZHschEcwr8QzN1ZYZWvGjq+cNRynzjRDGuTQkluOvDwOHcAjgEC7wLUvi
	XT+gU=
X-Google-Smtp-Source: AMsMyM58qwI2PV6NKh7KXQFdKuVhsaUV1DH7sCJQyg97Hq4UEyzwNu2GgGYuhXgChEgIDZicecfZfg==
X-Received: by 2002:ab0:3348:0:b0:3d8:7a1c:2e1e with SMTP id h8-20020ab03348000000b003d87a1c2e1emr9128944uap.37.1665417467305;
        Mon, 10 Oct 2022 08:57:47 -0700 (PDT)
Received: from zeda.home ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id q134-20020a1f2a8c000000b003a9f2a90f43sm1968600vkq.29.2022.10.10.08.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 08:57:46 -0700 (PDT)
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: outreachy@lists.linux.dev
Cc: Hunter Chasens <hunter.chasens18@ncf.edu>
Subject: [PATCH] Staging: greybus: Fixed whitespace style issues
Date: Mon, 10 Oct 2022 11:57:36 -0400
Message-Id: <20221010155736.117492-1-hunter.chasens18@ncf.edu>
X-Mailer: git-send-email 2.37.3
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixed multiple whitespace and alignment code style issues.
Changed "unsigned long long int" to "unsigned long long" as 'int' was redundent in file 'greybus/Documentation/firmware/authenticate.c'.

Signed-off-by: Hunter Chasens <hunter.chasens18@ncf.edu>
---
 .../Documentation/firmware/authenticate.c     |  4 +--
 .../greybus/Documentation/firmware/firmware.c | 34 +++++++++----------
 drivers/staging/greybus/arche-platform.c      |  2 +-
 .../staging/greybus/greybus_authentication.h  |  1 -
 drivers/staging/greybus/loopback.c            |  3 +-
 drivers/staging/greybus/tools/loopback_test.c | 16 +--------
 6 files changed, 22 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/greybus/Documentation/firmware/authenticate.c b/drivers/staging/greybus/Documentation/firmware/authenticate.c
index 3d2c6f88a138..ba4b16b04557 100644
--- a/drivers/staging/greybus/Documentation/firmware/authenticate.c
+++ b/drivers/staging/greybus/Documentation/firmware/authenticate.c
@@ -58,7 +58,7 @@ int main(int argc, char *argv[])
 		goto close_fd;
 	}
 
-	printf("UID received: 0x%llx\n", *(unsigned long long int *)(uid.uid));
+	printf("UID received: 0x%llx\n", *(unsigned long long *)(uid.uid));
 
 	/* Get certificate */
 	printf("Get IMS certificate\n");
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
2.37.3

