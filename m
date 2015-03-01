X-GM-THRID: 5586368331776
X-Received: by 10.152.36.132 with SMTP id q4mr3313671laj.6.1425244065133;
        Sun, 01 Mar 2015 13:07:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.9 with SMTP id bc9ls399538lab.101.gmail; Sun, 01 Mar
 2015 13:07:44 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr3352961lbb.20.1425244064586;
        Sun, 01 Mar 2015 13:07:44 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id by11si572783wib.1.2015.03.01.13.07.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:07:44 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwl15 with SMTP id l15so10744782wiw.5
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nOzeoD3SGLCN3ed9IjLVqFNnheeFMi0zYEOnIhkZL5w=;
        b=KpgYCPKKiDlt7wMrkcOEylV0nDCujUGvStH/r3RUTp2EaRHf8wrT1AXHZeeEy61CkU
         7/Tag7c5TQFj1e5l0tqddLgtayqKGv/RESBVJek1kt9fajt0TLvZEdn/0ybJOFBmqoXa
         Xh0tLRMv+54/Wofhn+YKFb5gPizLoyeUa0+k0L/tepiSyB1JM9PjUEIYSGmG4zQP+rz4
         +xrkHW2P0rzJYEisXQt8w8ItIWVyNyeIqcs6S2fQUpFNhWKTj2MAg3unKroOFXCy/5mW
         tgN1s2OAcZoUDZxnsOvZkMMjkYp7zQ22kodPK4/B2XeZ9VhDqqQRA4lP4kQshOG7gLBg
         LIpA==
X-Received: by 10.180.211.235 with SMTP id nf11mr29998833wic.52.1425244064484;
        Sun, 01 Mar 2015 13:07:44 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id b4sm13146977wic.2.2015.03.01.13.07.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 13:07:43 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH v2] Staging: lustre: Replace  __printf(string-index, first-to-check) with __attribute__((format(printf, string-index, first-to-check)))
Date: Sun,  1 Mar 2015 23:07:35 +0200
Message-Id: <1425244055-11203-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with __printf(string-index, first-to-check) is preferred over __attribute__((format(printf, string-index, first-to-check))) in libcfs_debug.h

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---

Changes in v2:
   Changed subject line
 
 drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
index 2e5a9e5..d5b6887 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_debug.h
@@ -244,12 +244,12 @@ do {									\
 
 int libcfs_debug_msg(struct libcfs_debug_msg_data *msgdata,
 			    const char *format1, ...)
-	__attribute__ ((format (printf, 2, 3)));
+	__printf(string-index, first-to-check);
 
 int libcfs_debug_vmsg2(struct libcfs_debug_msg_data *msgdata,
 			      const char *format1,
 			      va_list args, const char *format2, ...)
-	__attribute__ ((format (printf, 4, 5)));
+	__printf(string-index, first-to-check);
 
 /* other external symbols that tracefile provides: */
 int cfs_trace_copyin_string(char *knl_buffer, int knl_buffer_nob,
-- 
1.9.1


