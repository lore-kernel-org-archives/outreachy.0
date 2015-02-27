X-GM-THRID: 4525053181952
X-Received: by 10.112.77.101 with SMTP id r5mr2347539lbw.4.1425065085877;
        Fri, 27 Feb 2015 11:24:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.246.11 with SMTP id xs11ls214236lac.54.gmail; Fri, 27 Feb
 2015 11:24:45 -0800 (PST)
X-Received: by 10.112.40.81 with SMTP id v17mr2308541lbk.5.1425065085457;
        Fri, 27 Feb 2015 11:24:45 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id i7si181381wif.0.2015.02.27.11.24.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:24:45 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id bs8so2523026wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pLwTW9B52LpOC6K25h6ImthyscIn3RgeKZ4WWtP7pgI=;
        b=Urvzq0rIh6Meyt3tYX5/n2o8Voy6Fzu1HqOBzUNkLIyMDuw6RbnBuJcwD2JKGb/WLI
         SY5QGh17HcVeafl8HZebEjmqQqHqg6hXAJWPlccgSwWv740Y2So9K6DUaK/kWbvmYWV1
         ahN/Cr9XeATDgFfghSwogRt69Hy4D3f1BEKLsu3RcxhKYRTSaT051OSM8NcV8+OX8QeT
         Ea/mvAmv6GBdncTkcOGrtVEgnzwkGXRrkzVUlW1CYtMCUTCht84gx1p3f1P4YxjN8UjD
         JpxEgH3LXjnz7Rjk+0w/RreQo1I9hLuR3JaExfiTKmo7VwgoC8511nEhsIIN76eQjkRj
         hFGg==
X-Received: by 10.180.87.103 with SMTP id w7mr9409577wiz.48.1425065085346;
        Fri, 27 Feb 2015 11:24:45 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id n3sm7215016wja.36.2015.02.27.11.24.43
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:24:44 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: lustre: Add blank line after declarations
Date: Fri, 27 Feb 2015 21:23:35 +0200
Message-Id: <1425065015-22870-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: "Missing a blank line after declarations"
Add blank line after declarations. That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/connection.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/connection.c b/drivers/staging/lustre/lustre/ptlrpc/connection.c
index 2a875ab..7e27397 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/connection.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/connection.c
@@ -184,6 +184,7 @@ static void *
 conn_key(struct hlist_node *hnode)
 {
 	struct ptlrpc_connection *conn;
+
 	conn = hlist_entry(hnode, struct ptlrpc_connection, c_hash);
 	return &conn->c_peer;
 }
-- 
1.8.3.2


