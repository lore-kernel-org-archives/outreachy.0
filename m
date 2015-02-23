X-GM-THRID: 3110621675520
X-Received: by 10.194.201.10 with SMTP id jw10mr1656952wjc.3.1424729575888;
        Mon, 23 Feb 2015 14:12:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.26.165 with SMTP id m5ls621783lag.31.gmail; Mon, 23 Feb
 2015 14:12:55 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr1642181lbj.23.1424729575413;
        Mon, 23 Feb 2015 14:12:55 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id el6si792479wib.2.2015.02.23.14.12.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 14:12:55 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id ex7so691838wid.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 14:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZcZ/B+/CMo6BCai/DwR6BcByPW8LNGv9aaW40ylDHpI=;
        b=PUSMLEatfz4sGTJJwsgEdM8tTcG13guncLNjEKN08m2AS5ozP9iiGaBBfaFdFqfAda
         4xnvD1hREDrckq1wC0kCj5C6BpPfdU/us56xwoR7DpPHN41Z95R9FdGsbsoYBiytH4kZ
         JMYE3KY94yS24cl+VoYV4TFj542Ah+S+FNcJDfxZXcCCzEMazd5hD7qaeyMx5mhn/lwD
         yL/8E7B4Is0i3QqV/KwLd7dlBA5PsOg+4m8Ga+oSSyDy145QNpNNsQMbYQ4i2V+CDnuW
         jON0iDLK6LT/2UN/ax3gwOWpiYSy4/loZKKKiuykdSnsgbQHnvQCiYOsRNZwIwU0Yapf
         1gvw==
X-Received: by 10.194.200.68 with SMTP id jq4mr26812481wjc.58.1424729575330;
        Mon, 23 Feb 2015 14:12:55 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id j7sm7096515wix.4.2015.02.23.14.12.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 14:12:54 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: unisys: Change char * array type as static const
Date: Tue, 24 Feb 2015 00:12:45 +0200
Message-Id: <1424729565-6188-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "char * array declaration might be better as static
const" checkpatch.pl warning in visorchipset_main.c
After this exchange that can be accessed pointer, without object
derived from the instance but just just read operation can be done in
pointer.

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/unisys/visorchipset/visorchipset_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/unisys/visorchipset/visorchipset_main.c b/drivers/staging/unisys/visorchipset/visorchipset_main.c
index f606ee9..9f25c7f 100644
--- a/drivers/staging/unisys/visorchipset/visorchipset_main.c
+++ b/drivers/staging/unisys/visorchipset/visorchipset_main.c
@@ -1009,7 +1009,7 @@ device_epilog(u32 busNo, u32 devNo, struct spar_segment_state state, u32 cmd,
 
 	struct visorchipset_device_info *pDevInfo =
 		finddevice(&DevInfoList, busNo, devNo);
-	char *envp[] = {
+	static char const *envp[] = {
 		"SPARSP_DIAGPOOL_PAUSED_STATE = 1",
 		NULL
 	};
@@ -1481,7 +1481,7 @@ int
 visorchipset_chipset_selftest(void)
 {
 	char env_selftest[20];
-	char *envp[] = { env_selftest, NULL };
+	static char const *envp[] = { env_selftest, NULL };
 
 	sprintf(env_selftest, "SPARSP_SELFTEST=%d", 1);
 	kobject_uevent_env(&Visorchipset_platform_device.dev.kobj, KOBJ_CHANGE,
@@ -1637,7 +1637,7 @@ parahotplug_request_kickoff(struct parahotplug_request *req)
 	struct controlvm_message_packet *cmd = &req->msg.cmd;
 	char env_cmd[40], env_id[40], env_state[40], env_bus[40], env_dev[40],
 	    env_func[40];
-	char *envp[] = {
+	static char const *envp[] = {
 		env_cmd, env_id, env_state, env_bus, env_dev, env_func, NULL
 	};
 
-- 
1.9.1


