X-GM-THRID: 5567574704128
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d5db48a77f760ce5,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.8.67 with SMTP id p3mr1713513wia.7.1425243645118;
        Sun, 01 Mar 2015 13:00:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.170 with SMTP id fp10ls383806wib.13.gmail; Sun, 01 Mar
 2015 13:00:44 -0800 (PST)
X-Received: by 10.194.95.67 with SMTP id di3mr1836094wjb.0.1425243644820;
        Sun, 01 Mar 2015 13:00:44 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id cl5si540042wib.3.2015.03.01.13.00.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:00:44 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id r20so10684926wiv.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=t0i6/3ZR1UrOcSd0nIZy5zJnXzGhBXk9WgKHripLglg=;
        b=pVJ1qWQhPkiQkeNu6ZDmX6UynoHlcxTTpAsAht8CgMmOffDL677iiEV6nk8OKP0g+U
         d0TUqJwqfH0Ew1FuGe6K+0fKyEp0LWib0vdCfNuTLu9gr9XZK1KvNXZHRad5/V0kimyT
         KI0Ns7VKnMq453HAI7I+2EEkGULi2Et7UT3eutTnbP904cjN9t7BrqhkjuJzVVNvUK+e
         aMXtwC0m1f0M1ZG7tEYPxVV9N9YyZz4uyJzmdQkyEt2/ib3ps/tzDh84NmH4YvRPclDT
         Za4h1Fg15HqVck3SdU3roPEvDEWlk9P7AqScE/EW8uIJr0p2mpQ6lhzX+PJKJQpxlD7D
         05mw==
X-Received: by 10.180.72.208 with SMTP id f16mr28894681wiv.17.1425243644728;
        Sun, 01 Mar 2015 13:00:44 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id fs8sm13106906wib.8.2015.03.01.13.00.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Mar 2015 13:00:44 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Fix __printf(string-index, first-to-check) is preferred over __attribute__((format(printf, string-index, first-to-check))) in libcfs_debug.h
Date: Sun,  1 Mar 2015 23:00:37 +0200
Message-Id: <1425243637-10849-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with __printf(string-index, first-to-check) is preferred over __attribute__((format(printf, string-index, first-to-check))) in libcfs_debug.h

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
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


