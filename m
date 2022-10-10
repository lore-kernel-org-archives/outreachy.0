Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96ED45C84
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 19:53:10 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id b21so558347qkh.3
        for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 12:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jksRK0NovPg94aetuo4t3ii5PIXXNe/diE/uFwaLnjQ=;
        b=UNXX2FNCK7Htaup7OKUhqt0AZansJ9wHE+yFpNAVA/6H31NH6UxKTKPy7fMBeUoTGA
         OWT6kg58n8TMz9OX62iK8WN/rcmW76FqYFR7Uwmmk834l4mZ/woKz/t26jhiI6xM0QIy
         icKCTzLhjACEtiMCPm035PolK9cNwdjNVX0S9UHHx3HOM6teSO+iz3XUfF0o+0gzo2xv
         olSeCEdgzYfCg3k1dkPRpeT8Tv6fwvC+b6zlIGuanK5/eegqQyXuXixafNFIpc+l1zel
         kkiqA5AJ22/B6HR5NYIn7Q7n/wfEb79I7Eq9Hho0yt+NxiXyzhIwmRXFtw8pnlmpTNYs
         cCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jksRK0NovPg94aetuo4t3ii5PIXXNe/diE/uFwaLnjQ=;
        b=B9chAdl9SPG3FeWPw9HaUfPs5jo/weQ9z6pzWBVT80jrWYtFAb0xtNNXkdzbxcCG7N
         QGJjqIXbVxJD01MA0fAO7fkRfM5EOwHEry0JgO1dRUIC3HCT30oYq4dnoH5ivKkLUybC
         5JHw/y888O5E4ehFlJ9TmTaopSv0m4DpA7RanyQJ73cUXPXLVckVju0qYEgIAvd3vM7e
         GhewUGKCYolqk3dlOCtB6YLp1k4098qN4nODWCtql4PsLODb8J2oHGSS+YYwVU3J1ybi
         6vZymsSXjsI1QFK/SJpcYszA0fZS/AJ/ELaIndo/qdm3uKm0KWQt87HBZYI3b5HBECQx
         XsqA==
X-Gm-Message-State: ACrzQf1UhnyxrONs6JaoFWQxppcjozR5DMlRLgDPB3fvt6riIYUuUi49
	QtaRuBAYuZ87hYh6tAri+KqBO7leQMJvk6e11+lCGhrZxBaQ5xDx30TgrlLvabowl6poNpwnget
	1cbNhTZ3cC+1QoUWSARu8Ae1y2QfT9w8m2hwARnyu8TCT/sUFDN2elQVxNlrPCEv42Kg1FL3q1d
	hsWOA=
X-Google-Smtp-Source: AMsMyM4HOMddDZbOwyqg4UTTWeCUxyzks/Wnlqf29wDkAyk01Jc45zpsHaPRuRPDj9hIOEaoniUUHw==
X-Received: by 2002:a05:620a:46a7:b0:6ce:4075:4e4d with SMTP id bq39-20020a05620a46a700b006ce40754e4dmr14071944qkb.621.1665431589189;
        Mon, 10 Oct 2022 12:53:09 -0700 (PDT)
Received: from zeda.home ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id y15-20020a05620a25cf00b006bbf85cad0fsm11177586qko.20.2022.10.10.12.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 12:53:08 -0700 (PDT)
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: outreachy@lists.linux.dev
Cc: Hunter Chasens <hunter.chasens18@ncf.edu>
Subject: [PATCH v2 1/2] Staging: greybus: Fixed whitespace style issues
Date: Mon, 10 Oct 2022 15:51:58 -0400
Message-Id: <78af8ab0297e0af46835937d73dee23f187650a1.1665430031.git.hunter.chasens18@ncf.edu>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <cover.1665430030.git.hunter.chasens18@ncf.edu>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixed multiple whitespace and alignment code style issues.

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
2.37.3

