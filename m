X-GM-THRID: 6392026082663464960
X-Received: by 10.157.29.131 with SMTP id y3mr290821otd.18.1488265448883;
        Mon, 27 Feb 2017 23:04:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.19 with SMTP id p19ls197572iod.9.gmail; Mon, 27 Feb
 2017 23:04:08 -0800 (PST)
X-Received: by 10.107.130.199 with SMTP id m68mr401523ioi.2.1488265448192;
        Mon, 27 Feb 2017 23:04:08 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u12si166350pfd.3.2017.02.27.23.04.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 23:04:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id y23so500518pfk.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 23:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VnfM/xite/h2ZrrTTGD1ff04oX5YwS9hp5aQjq3mCVE=;
        b=BP2ms3mVkUKB1uTE868xxdLqRdURC8Yq35bCeZODPX9OZwer1IKUIGf9vBro1WA90T
         Kd2ywl+fDmc7ufQlab8Ykx9js3otbBZ4TUa1FwuJ0DCxbN6yS9uUrpOwXL7sRvlId5oW
         Mo+p7OQ9QCcuG0zOi5rSV4FJT3LnGjiS28cwgQ7YyfvYyLQ5AhG+TQ862GNEyLarvPOV
         zIqUtpbnViQiPzZSzzOwohYkoi9KnC7DhSEQBJDcdQGidR9gA49NrFLQewephF5bcB2d
         lewxmL9LI9JZWTXyWqeL3fNC8iLGaPoKk1xPX2uOvJdZG9Rt7FhYnZdQb8t/XvIDCyYe
         KnWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VnfM/xite/h2ZrrTTGD1ff04oX5YwS9hp5aQjq3mCVE=;
        b=MP7nJgGO8Dpy6/Wl5qIo6Iy3eNNsU8FMXXLfvtBNRF8wbT1XQUmDyo5lZp9C7vEd6o
         68btPOMaVbI3mHfrUjEZi4Mj3hzsSkKOTyFUdc6dJJjB70T4ChDGU3goba0P4m0v4a6b
         NaOZ1NsSALgvw3rMvB7mF/+DAPypHw7yblUTqUjp4JLS4JnaQq7CYQlqhP4bAZVq62Uy
         r7ClPaZmP3IGd3aC8LGZb7qSS8JmMF5t+2q+1kSZXu7uBZEUHiSWDZDt1ncv/+eDqdJk
         McPUoZ2TwBlTmNVitLZJAmCXNmNUpH7Sgu1+fBHc55OSNmJ6SdNg/w6tP0gIJCEw6HF3
         8GXg==
X-Gm-Message-State: AMke39m96+zRZDUATX3PImGjPoWK0o+nBU0IYjXulvn7duTWO7VJUZqltYT3kpaiW9HEUg==
X-Received: by 10.98.68.199 with SMTP id m68mr947437pfi.31.1488265447941;
        Mon, 27 Feb 2017 23:04:07 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l71sm1824221pga.7.2017.02.27.23.04.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 23:04:07 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: lustre: Replace typedef with struct
Date: Tue, 28 Feb 2017 12:31:47 +0530
Message-Id: <1488265307-24641-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

As per the Linux kernel coding style guidelines, using typedef for a
structure type is not recommended. Hence, occurences of typedefs have
been removed. To find the occurences of the structures grep was used
and no uses were found.

Coccinelle script:

@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
coccinelle.T2=T;

@@
type r1.T;
identifier c1.T2;
@@
-typedef
struct
+ T2
{ ... }
-T
;

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
	- Improved the commit message.
---
 drivers/staging/lustre/lustre/include/lustre_eacl.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_eacl.h b/drivers/staging/lustre/lustre/include/lustre_eacl.h
index 1e71a86..c198eda 100644
--- a/drivers/staging/lustre/lustre/include/lustre_eacl.h
+++ b/drivers/staging/lustre/lustre/include/lustre_eacl.h
@@ -49,17 +49,17 @@
 #include <linux/fs.h>
 #include <linux/posix_acl_xattr.h>
 
-typedef struct {
+struct ext_acl_xattr_entry {
 	__u16		   e_tag;
 	__u16		   e_perm;
 	__u32		   e_id;
 	__u32		   e_stat;
-} ext_acl_xattr_entry;
+};
 
-typedef struct {
-	__u32		   a_count;
-	ext_acl_xattr_entry     a_entries[0];
-} ext_acl_xattr_header;
+struct ext_acl_xattr_header {
+	__u32 a_count;
+	struct ext_acl_xattr_entry a_entries[0];
+};
 
 #define CFS_ACL_XATTR_SIZE(count, prefix) \
 	(sizeof(prefix ## _header) + (count) * sizeof(prefix ## _entry))
-- 
2.7.4


