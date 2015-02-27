X-GM-THRID: 4823613177856
X-Received: by 10.152.1.5 with SMTP id 5mr2327796lai.4.1425067455455;
        Fri, 27 Feb 2015 12:04:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.203.171 with SMTP id kr11ls202313lac.36.gmail; Fri, 27 Feb
 2015 12:04:13 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr2325837laj.6.1425067453944;
        Fri, 27 Feb 2015 12:04:13 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id o3si179599wib.2.2015.02.27.12.04.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:04:13 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id em10so2729908wid.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=sNsJauq0up18dTEB0ajGbR8BMMLjxJtfCvsYSmiGBCE=;
        b=ibB9zQb7ofamVrF7TLc4gjKccls7aSjIiVKlP+1FzSwiJS4vfsGnuGrCaltft86gQf
         H7jNax/GErkGeHF5t6nCYtkaJnMsUoec6wnVcEkV9kdd4ttY+GeT3RT14kotDgHKGgHB
         Wc1UWyh2HgtDH1aUf9TRBQ2fL9c0xLpQlJFB9CKOu58ThWTL7dcBRFCOW4TKi/H3VMCq
         zl5Pj2gcFZahR692gLdySVgAk/baKqouczDchYinWqUMK9K6WwY2peV/7xAwM0ONiLK+
         wlCGXKbtvyxvzjUGL3TB1NpGSDadcISiMnt+thXxLr2EoqLVk5Z7oc/HLS4M0m4aD4VX
         MAOg==
X-Received: by 10.195.12.167 with SMTP id er7mr32096208wjd.54.1425067453857;
        Fri, 27 Feb 2015 12:04:13 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id g10sm4232629wic.7.2015.02.27.12.04.12
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:04:13 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: lustre: Change char * array type as static const
Date: Fri, 27 Feb 2015 22:03:13 +0200
Message-Id: <1425067393-26435-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: char * array declaration might be better as static
const. That was found by running checkpatch.
After this exchange that can be accessed pointer, without object
derived from the instance but just just read operation can be done in
pointer.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/import.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/import.c b/drivers/staging/lustre/lustre/ptlrpc/import.c
index 4ceb90d..3a60124 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/import.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/import.c
@@ -623,7 +623,7 @@ int ptlrpc_connect_import(struct obd_import *imp)
 	int set_transno = 0;
 	__u64 committed_before_reconnect = 0;
 	struct ptlrpc_request *request;
-	char *bufs[] = { NULL,
+	static const char const *bufs[] = { NULL,
 			 obd2cli_tgt(imp->imp_obd),
 			 obd->obd_uuid.uuid,
 			 (char *)&imp->imp_dlm_handle,
-- 
1.8.3.2


