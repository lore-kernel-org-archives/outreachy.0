X-GM-THRID: 1328454565888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6f1dd75346e94f50
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr1335303lbf.21.1424446119402;
        Fri, 20 Feb 2015 07:28:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.98 with SMTP id bf2ls165463lab.70.gmail; Fri, 20 Feb
 2015 07:28:39 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr1356341lbo.8.1424446119018;
        Fri, 20 Feb 2015 07:28:39 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id ta1si126974wic.1.2015.02.20.07.28.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 07:28:38 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id hi2so7131268wib.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fMMhgWvslGufgb3nj3K2aa/5FS4KBsFcfOK/R2/AwQU=;
        b=MfUSQtOG/u4Lt+X79lx7GVjfvxs1MzXmKwzyoNGk0whhRv+36RpwinnHyIajg7YF78
         A5l6QgeU9Jb4Uz/KiSfSZDQONGa5C/CvPjtddQ/hW4kxHeJsecqxyHpsXvR9TaO3J7z5
         KBVH8fkgLnpH+4bcnLSzzNwI7XMZAY2Qb2fuKNisW8iAiEoxVa7h8vQaavSRjTWnNdwI
         w7A4rTCnqsYD9SyV6DTHc+42T7NwK+uiD/H5d7IakZ6ENalWishTbYM0qfYsnGp3rzxm
         vtpz8KkmdeTpAqFjOLDL7IVNaYoP3wpZGSKIZokLUQYHBXW7beSDXdhVyaGS0bzm9LZC
         Jq5g==
X-Received: by 10.194.122.196 with SMTP id lu4mr20237338wjb.154.1424446118921;
        Fri, 20 Feb 2015 07:28:38 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id dx11sm39614476wjb.23.2015.02.20.07.28.37
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 07:28:38 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 2/4] Staging: lustre: lnet: klnds: socklnd: removed suspect code indent for conditional statements
Date: Fri, 20 Feb 2015 17:27:48 +0200
Message-Id: <1424446070-14232-2-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: suspect code indent for conditional statements
checkpatch.pl warning in socklnd.c

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index aac3a7d..6ec2a13 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -1085,12 +1085,12 @@ ksocknal_create_conn(lnet_ni_t *ni, ksock_route_t *route,
 		write_unlock_bh(global_lock);
 
 		if (conn->ksnc_proto == NULL) {
-			 conn->ksnc_proto = &ksocknal_protocol_v3x;
+			conn->ksnc_proto = &ksocknal_protocol_v3x;
 #if SOCKNAL_VERSION_DEBUG
 			 if (*ksocknal_tunables.ksnd_protocol == 2)
-				 conn->ksnc_proto = &ksocknal_protocol_v2x;
+				conn->ksnc_proto = &ksocknal_protocol_v2x;
 			 else if (*ksocknal_tunables.ksnd_protocol == 1)
-				 conn->ksnc_proto = &ksocknal_protocol_v1x;
+				conn->ksnc_proto = &ksocknal_protocol_v1x;
 #endif
 		}
 
-- 
1.8.3.2


