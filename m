X-GM-THRID: 1526974119936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7ff0cbb979278efc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.234 with SMTP id db10mr1528430wjc.2.1424462690569;
        Fri, 20 Feb 2015 12:04:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.42 with SMTP id cr10ls349297lad.91.gmail; Fri, 20 Feb
 2015 12:04:50 -0800 (PST)
X-Received: by 10.152.26.74 with SMTP id j10mr1517225lag.10.1424462690178;
        Fri, 20 Feb 2015 12:04:50 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id ta1si175825wic.1.2015.02.20.12.04.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 12:04:50 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id k48so7603667wev.3
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 12:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+VipIeKtXHdjN7MJ5b6P9s6mEJ9oUNaQsgPI5ZEXjaY=;
        b=CFQtmCYCpGsgnjPfi6laPJ6m43u7IJwCYLBNiS8pjaiaAO2B/8QpmJn+ttnD5lpTmO
         UU65ExeTm3Va8V175pNgqjrBFp4rKJ9T777IJz0V0Fy1uvcGkKzwKzPZKImmjKVBeJsF
         fw4roUsS3jXfQmhRQSh6AJC7Pq08Wpb2GpFFTAcOt8ATeBsEc7T5AT3UkV/IenOj1xnB
         qEpPIr36OugLzg50PWr/rUeSVshQIC5khlbyD6gMb6uE/DF/z3IYEmreSQzRgXzOX23m
         T/doidRodrqidCiOMwqNG7wrfe/8+OOu15JxZXoQ3L4arod+PYDDnEx3wgveq6JHrMAJ
         aqXQ==
X-Received: by 10.194.172.35 with SMTP id az3mr22471975wjc.43.1424462690075;
        Fri, 20 Feb 2015 12:04:50 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id p1sm3809165wib.23.2015.02.20.12.04.48
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 12:04:49 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2 2/4] Staging: lustre: removed suspect code indent for conditional statements
Date: Fri, 20 Feb 2015 22:04:05 +0200
Message-Id: <1424462647-4861-2-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: suspect code indent for conditional statements
suspect code indent is deleted.That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---

v2:changed the subject line and description

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


