X-GM-THRID: 9114401898496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d1f69188a62ef4a,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.94.102 with SMTP id db6mr67021973pdb.0.1426771362778;
        Thu, 19 Mar 2015 06:22:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.155.11 with SMTP id d11ls803603ioe.90.gmail; Thu, 19 Mar
 2015 06:22:42 -0700 (PDT)
X-Received: by 10.66.249.35 with SMTP id yr3mr72860855pac.13.1426771362540;
        Thu, 19 Mar 2015 06:22:42 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id gu4si236878pac.1.2015.03.19.06.22.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2015 06:22:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id we9so75720411pac.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2015 06:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=k5cyXIxTesVAHBMhon9U37cI7AbdQAb4rHfMsIN8XFk=;
        b=fgAAWZt6jLErWdj5tawQZWVJMVNYvK9uIR5DJ1ZnOVVEgbAKt3gc6sl3FIAy92M+8/
         XL0Z1qkAxn7uXMPVxmxIVwuRgPPVwr4IC6VR+msqs5oQr/piVQhjMWbEUL9fK3Pbqktg
         sUbTH4E0tOTZGwNuxMo6NLUDt5fXL1TRkmw9QOGyrLABsCumfiVk0jEgRKjMkTeGam/H
         eI5qL2LV4bGgbmMlpmnLOPguTzdDlygtP89u1ASCdOP7Pp61WcMFxeEMBMR4tG3U7Y4+
         SnjCKsez8koXePuVSpR+BL6YeE//md02j2t/XT3eKVmtN3djqCVUjQeirOfEIRZOGc1t
         crSg==
X-Received: by 10.66.241.36 with SMTP id wf4mr118575797pac.8.1426771362399;
        Thu, 19 Mar 2015 06:22:42 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([182.19.48.18])
        by mx.google.com with ESMTPSA id yf6sm3104730pab.26.2015.03.19.06.22.40
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 19 Mar 2015 06:22:41 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH] Staging: iio: Documentation: Fix resource leak in function dump_channels
Date: Thu, 19 Mar 2015 18:52:36 +0530
Message-Id: <1426771356-19448-1-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch fixes the following error reported by cppcheck tool:
[drivers/staging/iio/Documentation/lsiio.c:59]: (error) Resource leak: dp

The closedir function closes the file descriptor dp which was previously
opened by calling opendir and eliminated the cppcheck error.

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/iio/Documentation/lsiio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/iio/Documentation/lsiio.c b/drivers/staging/iio/Documentation/lsiio.c
index 98a0de0..7935ffc 100644
--- a/drivers/staging/iio/Documentation/lsiio.c
+++ b/drivers/staging/iio/Documentation/lsiio.c
@@ -55,6 +55,7 @@ static int dump_channels(const char *dev_dir_name)
 		    check_postfix(ent->d_name, "_raw")) {
 			printf("   %-10s\n", ent->d_name);
 		}
+	closedir(dp);
 
 	return 0;
 }
-- 
1.9.1


