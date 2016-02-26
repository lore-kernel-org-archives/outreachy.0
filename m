X-GM-THRID: 6255472984804294656
X-Received: by 10.107.169.88 with SMTP id s85mr5713351ioe.30.1456470185278;
        Thu, 25 Feb 2016 23:03:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.64.180 with SMTP id p20ls226595igs.40.canary; Thu, 25 Feb
 2016 23:03:04 -0800 (PST)
X-Received: by 10.98.8.15 with SMTP id c15mr7709pfd.0.1456470184720;
        Thu, 25 Feb 2016 23:03:04 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si1781658pab.0.2016.02.25.23.03.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 23:03:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e127so4220775pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 23:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=cgfffyeJev69FvYoAHYivY1FCpbt2moGw9OdSSvGWpE=;
        b=JASqz68Z5lCNEhCclAh55A/YtUSvi+WU0obPcSSfNQE3ojnIOA0eHQe/cdwL4oWuoZ
         mblWvsvl5lBqZV/Ooj4kPTuH1dTXXpESj8Q7q5EM2P3cIZI6aUUaZ8PctN3z/ipqRQOo
         ZBC+xF8Ejd2Wgty7LS99zRbnRR+75KkEZCCut98QAUN5zRIBOqBDliMOD9Cvm32msI7V
         tInvjmdRZx73SZTk1Qa5Y79Za1zso7aYh1hJQqOugZ2qnXDsLYqfN3Jqh/unCFjXSIkL
         d6Fk2fyOTpeiTl11c39mza/3gpKb5O52Bmp0ZqYxcK5P20q0TM6MvE31ZlioIvceD2KE
         HD1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=cgfffyeJev69FvYoAHYivY1FCpbt2moGw9OdSSvGWpE=;
        b=WOzeBQ+tM70JB8tErmoO8Qdk8bRdG4MZ5GP7I7qXUpGDzlkkxAF1Jt0VaJVPqIRSO8
         sFz/lYUJGUks+Nfes+NxPmOerYlbdRO09AspyJvXJQHXzwx5FfQ2GPRwK+fKbBOs+Z+u
         5l51gEzaioz67PWYJ573w7OmsGx5sfVtj8pZbK4qn6nMqkHNvS7V5gQwLtKBU8MHF0zt
         egtsEpmGAiUXmz4TtVQ39yDYvKGeOe2hyfBg1ZQ/E7zLK6dJnO+vieUXAIGS+pLHPTz/
         Y/9/lHNKnjZNXitK3qG2865FBkghDyIZm3U7HrW2eXjhyi+IIClC9S/RzZROSVdXHf2o
         orwA==
X-Gm-Message-State: AG10YOSn7ZXdtSucR9Jea9mbZOm0kCtVyjqpIDlspIlJ/+7Jbsc8KobnbBJI+GreFRd/jw==
X-Received: by 10.98.33.199 with SMTP id o68mr68049220pfj.125.1456470184578;
        Thu, 25 Feb 2016 23:03:04 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id ud10sm16706654pab.27.2016.02.25.23.03.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 23:03:04 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/5] staging: wilc1000: remove code for HOST_IF_MSG_Q_IDLE
Date: Thu, 25 Feb 2016 23:02:59 -0800
Message-Id: <2296024de7cc843d5c0a9c4fa00bea4889131e36.1456469587.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456469587.git.amsfield22@gmail.com>
References: <cover.1456469587.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, and the #define.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 6efee28..741a6c7 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -41,7 +41,6 @@
 #define HOST_IF_MSG_GET_STATISTICS              31
 #define HOST_IF_MSG_SET_MULTICAST_FILTER        32
 #define HOST_IF_MSG_DEL_BA_SESSION              34
-#define HOST_IF_MSG_Q_IDLE                      35
 #define HOST_IF_MSG_DEL_ALL_STA                 36
 #define HOST_IF_MSG_SET_TX_POWER		38
 #define HOST_IF_MSG_GET_TX_POWER		39
@@ -755,12 +754,6 @@ ERRORHANDLER:
 	return result;
 }
 
-static void Handle_wait_msg_q_empty(void)
-{
-	wilc_initialized = 0;
-	up(&hif_sema_wait_response);
-}
-
 static s32 Handle_ScanDone(struct wilc_vif *vif,
 			   enum scan_event enuEvent);
 
@@ -2549,10 +2542,6 @@ static int hostIFthread(void *pvArg)
 		}
 
 		switch (msg.id) {
-		case HOST_IF_MSG_Q_IDLE:
-			Handle_wait_msg_q_empty();
-			break;
-
 		case HOST_IF_MSG_SCAN:
 			Handle_Scan(msg.vif, &msg.body.scan_info);
 			break;
-- 
2.1.4


