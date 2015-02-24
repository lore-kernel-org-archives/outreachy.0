X-GM-THRID: 3110621675520
X-Received: by 10.180.83.168 with SMTP id r8mr67883wiy.6.1424817601482;
        Tue, 24 Feb 2015 14:40:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.131 with SMTP id k3ls730672lak.21.gmail; Tue, 24 Feb
 2015 14:39:59 -0800 (PST)
X-Received: by 10.112.174.36 with SMTP id bp4mr26527lbc.15.1424817599883;
        Tue, 24 Feb 2015 14:39:59 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id l8si1176666wia.0.2015.02.24.14.39.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 14:39:59 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so50012wes.7
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 14:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KCOYycQUVLZo/PUmUJoG6X8BYoX63SPpNdjkEHGjtTM=;
        b=spS+gY+EfunPVEuEH7YJZCR2KOWi3lwRQAavUJrN2ijyi2l3O5qfY/EC+7qanTZ26l
         dECC0FXOlmSgKa1KyQSjCM0ocPslVO+V03vht9bBCjpxoluPnjRX0JQhcEnFBcX2FyxL
         nJqKVWU9NH6YclEp7YlKPiGla1ggiGDPWyWxn4/Z3kMieYd81py90tZPA23MvqAslWFo
         BJYd6Tk3Mh7DQLdMKgbVyMADn7vUZ58vmywiNY5y1pdwkOTcvWMrrd4ziSvI2DE9+HR6
         07MW1ycoI8WY1i+SP/m5KcXxTTQMRUN7mzhPpXIO+1/0t5DIG3bQz/P6s3a3cGVteojj
         DB+w==
X-Received: by 10.180.106.70 with SMTP id gs6mr25223056wib.39.1424817599756;
        Tue, 24 Feb 2015 14:39:59 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id bd3sm14868673wib.17.2015.02.24.14.39.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 14:39:57 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2] Staging: unisys: Change char * array type as static const
Date: Wed, 25 Feb 2015 00:39:42 +0200
Message-Id: <1424817582-9438-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "char * array declaration might be better as static
const" checkpatch.pl warning in visorchipset_main.c
After this exchange that can be accessed pointer, without object
derived from the instance but just just read operation can be done in
pointer.

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* Used "static const char *const" instead of "static char const"
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
1.9.1


