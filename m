X-GM-THRID: 6666569383936
X-Received: by 10.152.6.41 with SMTP id x9mr966261lax.10.1425499363806;
        Wed, 04 Mar 2015 12:02:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.75 with SMTP id da11ls219390lad.95.gmail; Wed, 04 Mar
 2015 12:02:43 -0800 (PST)
X-Received: by 10.112.156.65 with SMTP id wc1mr990400lbb.7.1425499363382;
        Wed, 04 Mar 2015 12:02:43 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id i7si1188047wif.0.2015.03.04.12.02.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 12:02:43 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id x13so1750633wgg.12
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 12:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eLjt7l6dY9cseW5R3OlmUQgtQH6oy7stvcnbbdbIRAM=;
        b=RkDuGfAjfRWYrmHacPjx5jVcybINhNBWnCfxR/8nGYszkpzMpy3h0uQyAURhwYQv+w
         beNrlI9tTE1Twut3dz53o6tcHOv9ZtkCcOyPBF2JNasv2pS0hVxrMaNPKaSP8OKpE7dB
         kH9r0pJ+Id40Rf7zwRnR/bT/y9iD/bIhhxp9G9Z7p1iLsFBRbGVEcWgB10sOFeeHpbuT
         nlWJapM5YhPRf8ffEr3FWOLw0seWpV0JKXvAdnVF9GZalbMhb/ZB120wqx8orBOKuP/2
         Ro9mPM0+WBsQqZ0EdCbVFS6TSlPnDV7znl1b0DpNfFHoqqbGD2Q/sUoRMvRJY427SVlp
         m0Fw==
X-Received: by 10.180.78.202 with SMTP id d10mr58943602wix.25.1425499363278;
        Wed, 04 Mar 2015 12:02:43 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id l9sm7083890wij.16.2015.03.04.12.02.42
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 12:02:42 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: unisys: Change char * array type as static const
Date: Wed,  4 Mar 2015 22:02:57 +0200
Message-Id: <1425499377-11968-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes "char * array declaration might be better as static
const" checkpatch.pl warning in visorchipset_main.c

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/unisys/visorchipset/visorchipset_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/unisys/visorchipset/visorchipset_main.c b/drivers/staging/unisys/visorchipset/visorchipset_main.c
index f606ee9..7e97b8e 100644
--- a/drivers/staging/unisys/visorchipset/visorchipset_main.c
+++ b/drivers/staging/unisys/visorchipset/visorchipset_main.c
@@ -1009,7 +1009,7 @@ device_epilog(u32 busNo, u32 devNo, struct spar_segment_state state, u32 cmd,
 
 	struct visorchipset_device_info *pDevInfo =
 		finddevice(&DevInfoList, busNo, devNo);
-	char *envp[] = {
+	static const char *const envp[] = {
 		"SPARSP_DIAGPOOL_PAUSED_STATE = 1",
 		NULL
 	};
@@ -1481,7 +1481,7 @@ int
 visorchipset_chipset_selftest(void)
 {
 	char env_selftest[20];
-	char *envp[] = { env_selftest, NULL };
+	static const char *const envp[] = { env_selftest, NULL };
 
 	sprintf(env_selftest, "SPARSP_SELFTEST=%d", 1);
 	kobject_uevent_env(&Visorchipset_platform_device.dev.kobj, KOBJ_CHANGE,
@@ -1637,7 +1637,7 @@ parahotplug_request_kickoff(struct parahotplug_request *req)
 	struct controlvm_message_packet *cmd = &req->msg.cmd;
 	char env_cmd[40], env_id[40], env_state[40], env_bus[40], env_dev[40],
 	    env_func[40];
-	char *envp[] = {
+	static const char *const envp[] = {
 		env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
 	};
 
-- 
1.8.3.2


