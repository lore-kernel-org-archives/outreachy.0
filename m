X-GM-THRID: 6389549071972958208
X-Received: by 10.157.4.196 with SMTP id 62mr8483510otm.46.1487682823655;
        Tue, 21 Feb 2017 05:13:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.28 with SMTP id j28ls1261641otb.40.gmail; Tue, 21 Feb
 2017 05:13:43 -0800 (PST)
X-Received: by 10.13.247.4 with SMTP id h4mr9510048ywf.4.1487682823293;
        Tue, 21 Feb 2017 05:13:43 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f7si2975114pfk.5.2017.02.21.05.13.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 05:13:43 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so11064800pgz.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 05:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XT2HV90/ApQmBMYWQdQqSyuz6WR1eMmoor7hPVgqGJQ=;
        b=jtFlB5YR6Zp8YXyuE9C4VflK0lSs4TCAoU4ncaSSgqMFLx/z8u6AmIKdbqKz8DcHM7
         FU4Sj7Ow9VbkgFfxaPIJzXzzHnZpr4aFYOjyax53OYkiFKIyic3D1/MCqxhtAcvmCXLY
         xJgE8ua0CXsEMPoPi0/JMRi0VLJ0X3aZg8IbVmzdMONzPrcpPts2jvisiUDUTRPi9beQ
         wb10Kya/eZ5I4tamXjI2J/fy1Rgcvb9dXG9vI+63OuqmKRxVVnObEjcCBfFauy5Uctsj
         CsJn6ZRePF9lzH7EGaVEtsZOQSjeY/v8wIIBqQMv1rf/VzFG30dpHfgjWcFiV+U4FuYH
         CEfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XT2HV90/ApQmBMYWQdQqSyuz6WR1eMmoor7hPVgqGJQ=;
        b=M69nt7WReeIcBqeZ/WWvjGP1ioI+AfR9+wKYgnig17ZxY+uyg46wsvVNMVdCXb8usH
         01Tczv+9THQwYNpWgLXFVMO2pRctz73AL91N9cNti5bGLGBbluUkRMN/4nxmcLjCG7/1
         zHijlcOL/N6vHztX7XQTXx3eVWMuJ2uXqxQDPtQOJsCC2V3DtMyXihE7O1UGZw+qE0RA
         sBvPe6oVODYMsA+WT082b00N0hm/Ydpi5hWSw0wUlzGEz9oHRqWf146b5XwL1/TCTB4d
         IrvfXnRhtD02onsf/bsystcLps2GuvSSyhsRV/9H/Acsk4qwrjT+UtoRbvIx65zPB/Nu
         tuVw==
X-Gm-Message-State: AMke39m4tJN1wvz/0AIc2CV3eVDJed1uV8/7i6gCFqqKnESesYLVSo2tuPUy6CUzC3yyHw==
X-Received: by 10.84.134.36 with SMTP id 33mr12417741plg.34.1487682822956;
        Tue, 21 Feb 2017 05:13:42 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y201sm31046299pfb.16.2017.02.21.05.13.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 05:13:41 -0800 (PST)
Date: Tue, 21 Feb 2017 18:45:35 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: johan@kernel.org
Cc: elder@kernel.org, gregkh@linuxfoundation.org,
	greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/6] staging: greybus: Remove unnecessary braces
Message-ID: <20170221131535.GA3718@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes braces for single statement blocks. The warning
was detected using checkpatch.pl.
Coccinelle was used to make the change.

@@
expression e,e1;
@@
- if (e) {
+ if (e)
  e1;
- }

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v2:
   -I forgot to cc outreachy mailing list

 drivers/staging/greybus/audio_manager_sysfs.c | 3 +--
 drivers/staging/greybus/audio_topology.c      | 9 +++------
 drivers/staging/greybus/bootrom.c             | 6 ++----
 drivers/staging/greybus/control.c             | 3 +--
 drivers/staging/greybus/es2.c                 | 3 +--
 drivers/staging/greybus/gpio.c                | 6 ++----
 drivers/staging/greybus/manifest.c            | 3 +--
 drivers/staging/greybus/module.c              | 3 +--
 drivers/staging/greybus/svc.c                 | 9 +++------
 9 files changed, 15 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
index 34ebd14..dc1d7a1 100644
--- a/drivers/staging/greybus/audio_manager_sysfs.c
+++ b/drivers/staging/greybus/audio_manager_sysfs.c
@@ -88,10 +88,9 @@ static void manager_sysfs_init_attribute(
 	int err;
 
 	err = sysfs_create_file(kobj, &kattr->attr);
-	if (err) {
+	if (err)
 		pr_warn("creating the sysfs entry for %s failed: %d\n",
 			kattr->attr.name, err);
-	}
 }
 
 void gb_audio_manager_sysfs_init(struct kobject *kobj)
diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 3001a49..0e02f00 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -327,10 +327,9 @@ static int gbcodec_mixer_ctl_put(struct snd_kcontrol *kcontrol,
 
 	gb_pm_runtime_put_autosuspend(bundle);
 
-	if (ret) {
+	if (ret)
 		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
 				    __func__, kcontrol->id.name);
-	}
 
 	return ret;
 }
@@ -637,10 +636,9 @@ static int gbcodec_enum_ctl_put(struct snd_kcontrol *kcontrol,
 
 	gb_pm_runtime_put_autosuspend(bundle);
 
-	if (ret) {
+	if (ret)
 		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
 				    __func__, kcontrol->id.name);
-	}
 
 	return ret;
 }
@@ -837,11 +835,10 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 
 		gb_pm_runtime_put_autosuspend(bundle);
 
-		if (ret) {
+		if (ret)
 			dev_err_ratelimited(codec->dev,
 					    "%d:Error in %s for %s\n", ret,
 					    __func__, kcontrol->id.name);
-		}
 		for (wi = 0; wi < wlist->num_widgets; wi++) {
 			widget = wlist->widgets[wi];
 
diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
index 5f90721..0e01e2b 100644
--- a/drivers/staging/greybus/bootrom.c
+++ b/drivers/staging/greybus/bootrom.c
@@ -176,10 +176,9 @@ static int find_firmware(struct gb_bootrom *bootrom, u8 stage)
 
 	rc = request_firmware(&bootrom->fw, firmware_name,
 		&connection->bundle->dev);
-	if (rc) {
+	if (rc)
 		dev_err(&connection->bundle->dev,
 			"failed to find %s firmware (%d)\n", firmware_name, rc);
-	}
 
 	return rc;
 }
@@ -226,11 +225,10 @@ static int gb_bootrom_firmware_size_request(struct gb_operation *op)
 	mutex_unlock(&bootrom->mutex);
 
 queue_work:
-	if (!ret) {
+	if (!ret)
 		/* Refresh timeout */
 		gb_bootrom_set_timeout(bootrom, NEXT_REQ_GET_FIRMWARE,
 				       NEXT_REQ_TIMEOUT_MS);
-	}
 
 	return ret;
 }
diff --git a/drivers/staging/greybus/control.c b/drivers/staging/greybus/control.c
index 5b30be3..d8452c8 100644
--- a/drivers/staging/greybus/control.c
+++ b/drivers/staging/greybus/control.c
@@ -167,10 +167,9 @@ int gb_control_disconnecting_operation(struct gb_control *control,
 	request->cport_id = cpu_to_le16(cport_id);
 
 	ret = gb_operation_request_send_sync(operation);
-	if (ret) {
+	if (ret)
 		dev_err(&control->dev, "failed to send disconnecting: %d\n",
 				ret);
-	}
 
 	gb_operation_put(operation);
 
diff --git a/drivers/staging/greybus/es2.c b/drivers/staging/greybus/es2.c
index 93afd93..478eb53 100644
--- a/drivers/staging/greybus/es2.c
+++ b/drivers/staging/greybus/es2.c
@@ -1019,10 +1019,9 @@ static int arpc_sync(struct es2_ap_dev *es2, u8 type, void *payload,
 	spin_unlock_irqrestore(&es2->arpc_lock, flags);
 	arpc_free(rpc);
 
-	if (retval < 0 && retval != -EREMOTEIO) {
+	if (retval < 0 && retval != -EREMOTEIO)
 		dev_err(&es2->usb_dev->dev,
 			"failed to execute ARPC: %d\n", retval);
-	}
 
 	return retval;
 }
diff --git a/drivers/staging/greybus/gpio.c b/drivers/staging/greybus/gpio.c
index 250caa0..ea9e3f8 100644
--- a/drivers/staging/greybus/gpio.c
+++ b/drivers/staging/greybus/gpio.c
@@ -125,10 +125,9 @@ static int gb_gpio_get_direction_operation(struct gb_gpio_controller *ggc,
 		return ret;
 
 	direction = response.direction;
-	if (direction && direction != 1) {
+	if (direction && direction != 1)
 		dev_warn(dev, "gpio %u direction was %u (should be 0 or 1)\n",
 			 which, direction);
-	}
 	ggc->lines[which].direction = direction ? 1 : 0;
 	return 0;
 }
@@ -181,10 +180,9 @@ static int gb_gpio_get_value_operation(struct gb_gpio_controller *ggc,
 	}
 
 	value = response.value;
-	if (value && value != 1) {
+	if (value && value != 1)
 		dev_warn(dev, "gpio %u value was %u (should be 0 or 1)\n",
 			 which, value);
-	}
 	ggc->lines[which].value = value ? 1 : 0;
 	return 0;
 }
diff --git a/drivers/staging/greybus/manifest.c b/drivers/staging/greybus/manifest.c
index 7b90377..eee57a3 100644
--- a/drivers/staging/greybus/manifest.c
+++ b/drivers/staging/greybus/manifest.c
@@ -152,11 +152,10 @@ static int identify_descriptor(struct gb_interface *intf,
 	}
 
 	/* Descriptor bigger than what we expect */
-	if (desc_size > expected_size) {
+	if (desc_size > expected_size)
 		dev_warn(&intf->dev, "%s descriptor size mismatch (want %zu got %zu)\n",
 				get_descriptor_type_string(desc_header->type),
 				expected_size, desc_size);
-	}
 
 	descriptor = kzalloc(sizeof(*descriptor), GFP_KERNEL);
 	if (!descriptor)
diff --git a/drivers/staging/greybus/module.c b/drivers/staging/greybus/module.c
index 660b467..956b8ab 100644
--- a/drivers/staging/greybus/module.c
+++ b/drivers/staging/greybus/module.c
@@ -148,11 +148,10 @@ static void gb_module_register_interface(struct gb_interface *intf)
 
 	ret = gb_interface_activate(intf);
 	if (ret) {
-		if (intf->type != GB_INTERFACE_TYPE_DUMMY) {
+		if (intf->type != GB_INTERFACE_TYPE_DUMMY)
 			dev_err(&module->dev,
 					"failed to activate interface %u: %d\n",
 					intf_id, ret);
-		}
 
 		gb_interface_add(intf);
 		goto err_unlock;
diff --git a/drivers/staging/greybus/svc.c b/drivers/staging/greybus/svc.c
index be151a6..dbf0f87 100644
--- a/drivers/staging/greybus/svc.c
+++ b/drivers/staging/greybus/svc.c
@@ -512,10 +512,9 @@ void gb_svc_connection_destroy(struct gb_svc *svc, u8 intf1_id, u16 cport1_id,
 
 	ret = gb_operation_sync(connection, GB_SVC_TYPE_CONN_DESTROY,
 				&request, sizeof(request), NULL, 0);
-	if (ret) {
+	if (ret)
 		dev_err(&svc->dev, "failed to destroy connection (%u:%u %u:%u): %d\n",
 				intf1_id, cport1_id, intf2_id, cport2_id, ret);
-	}
 }
 
 /* Creates bi-directional routes between the devices */
@@ -544,10 +543,9 @@ void gb_svc_route_destroy(struct gb_svc *svc, u8 intf1_id, u8 intf2_id)
 
 	ret = gb_operation_sync(svc->connection, GB_SVC_TYPE_ROUTE_DESTROY,
 				&request, sizeof(request), NULL, 0);
-	if (ret) {
+	if (ret)
 		dev_err(&svc->dev, "failed to destroy route (%u %u): %d\n",
 				intf1_id, intf2_id, ret);
-	}
 }
 
 int gb_svc_intf_set_power_mode(struct gb_svc *svc, u8 intf_id, u8 hs_series,
@@ -960,10 +958,9 @@ static void gb_svc_process_module_inserted(struct gb_operation *operation)
 	dev_dbg(&svc->dev, "%s - id = %u, num_interfaces = %zu, flags = 0x%04x\n",
 			__func__, module_id, num_interfaces, flags);
 
-	if (flags & GB_SVC_MODULE_INSERTED_FLAG_NO_PRIMARY) {
+	if (flags & GB_SVC_MODULE_INSERTED_FLAG_NO_PRIMARY)
 		dev_warn(&svc->dev, "no primary interface detected on module %u\n",
 				module_id);
-	}
 
 	module = gb_svc_module_lookup(svc, module_id);
 	if (module) {
-- 
2.7.4


