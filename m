X-GM-THRID: 6255472984804294656
X-Received: by 10.107.168.139 with SMTP id e11mr5504974ioj.32.1456466298536;
        Thu, 25 Feb 2016 21:58:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.101 with SMTP id r5ls423647igh.40.gmail; Thu, 25 Feb
 2016 21:58:18 -0800 (PST)
X-Received: by 10.107.62.8 with SMTP id l8mr5551241ioa.11.1456466298298;
        Thu, 25 Feb 2016 21:58:18 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id r75si193421pfr.0.2016.02.25.21.58.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 21:58:18 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id yy13so3964913pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 21:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=GFQ+qurWfnskyz2Dg8J1fuOOJYHEarvABKa6yzNhSkU=;
        b=FIIMRjMwoSROsZYzvkExZAqqc9CDUKeK+X8xDDMHLcbu4kiFk3Z23d5a6X8UAtG5iB
         9au0z/CjQlAb2xHkBHvwhS13SDj/v1JfJeFQXUHVEAElIRtdyPU//+xD+kcZshMeipYc
         tHQmAZlao42MPaYvwZxRKfs5ozznfnQg8uRQ9Gx6FXWfLZuZfQn0rKcy0O1HNMgdGlSy
         UdPOBOHa6PzjPMwvbcLeRWX/0BK6keKGI+ok4FUT9DB9kQ6iRvke2lrEZ9vCcZyGX31I
         xX+hbQfKBxRdKZnD1nLie/OnFh7HZpz1dMTOwSnZaXdQw3kt9wCbOY3l+dWBmwqholbg
         TKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=GFQ+qurWfnskyz2Dg8J1fuOOJYHEarvABKa6yzNhSkU=;
        b=Xtv6nwMTJ0laLoV+r10MToAQgnvP9Jz1JdOdg2vNStZOt/EVHY2k4t4w0jMbwW91Sl
         bS3xlRJ7rga/Svap8XR4TZPixH2DTIopj5uiAp4Q2WJUdlvyzzooJW7lQoCsZWfIFr/2
         Tq7E1bdp649/2SVL/ATjl1/p42+HXfQWfselTjWUwyyvNUHg7LcEIg6CqQIwwz5fR+Pb
         ElRMOyJ8Zjqx2rhatcv3H+5k8K5Yj4C4XGWqXH3DfquPk9mQA5WKfLLiLUs8W+Jg/G4x
         OEEmjoTpncS7FcTuQA5eEyp/12Kj2qgOenYiBS6EvTKdj6D/1EMxMAivz6YxMNmdxhKn
         oo4A==
X-Gm-Message-State: AG10YOStj0bRtEXCOrySUZN4rM/ybNR4Giv6i4F1Zi3t0nO0cPUUt60fll4Y6cAmi7bNvg==
X-Received: by 10.66.222.199 with SMTP id qo7mr68923432pac.38.1456466298139;
        Thu, 25 Feb 2016 21:58:18 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id 27sm16132390pfh.48.2016.02.25.21.58.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 21:58:17 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: wilc1000: remove code for HOST_IF_MSG_Q_IDLE
Date: Thu, 25 Feb 2016 21:58:13 -0800
Message-Id: <5963b9a723cb600840c4ee5bdc22d938483a6a18.1456464955.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1456464955.git.amsfield22@gmail.com>
References: <cover.1456464955.git.amsfield22@gmail.com>

The function that sent this message id was previously removed.
Finish the cleanup by removing the call to the message handler,
the message handler, and the #define.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 6c0e7e1..212e436 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -40,7 +40,6 @@
 #define HOST_IF_MSG_GET_STATISTICS              31
 #define HOST_IF_MSG_SET_MULTICAST_FILTER        32
 #define HOST_IF_MSG_DEL_BA_SESSION              34
-#define HOST_IF_MSG_Q_IDLE                      35
 #define HOST_IF_MSG_DEL_ALL_STA                 36
 #define HOST_IF_MSG_SET_TX_POWER		38
 #define HOST_IF_MSG_GET_TX_POWER		39
@@ -733,12 +732,6 @@ ERRORHANDLER:
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
 
@@ -2527,10 +2520,6 @@ static int hostIFthread(void *pvArg)
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


