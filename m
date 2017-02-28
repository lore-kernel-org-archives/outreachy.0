X-GM-THRID: 6392026082663464960
X-Received: by 10.36.20.18 with SMTP id 18mr5365149itg.2.1488259547824;
        Mon, 27 Feb 2017 21:25:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.237.77 with SMTP id r74ls156178ith.11.gmail; Mon, 27 Feb
 2017 21:25:47 -0800 (PST)
X-Received: by 10.99.96.71 with SMTP id u68mr176042pgb.32.1488259547127;
        Mon, 27 Feb 2017 21:25:47 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id c123si122584pfa.4.2017.02.27.21.25.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 21:25:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id p185so281159pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 21:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=NHQNGQ4un3p3+/EKJpKrMd3Ms/dV5oCxUkhVYf6i+Ks=;
        b=uvP5nLd3gfy2gfZraubsmWI36IZYFWCxuf4Y5GG9z6REiN8TZUnCA39H1wh1JYV21R
         i/ooswMsTBMjX1rrQI3eAVgN/d0dhrT4TXHFdPGqeekeZTrOLEa+/xRaW4jZz0qRF4EZ
         NsoAQ7hQVzpSG/HGbOCJVWgeVHtxYvXcRxynK7hfWmE64CkAiUGI2EX+FdXnGg57tAFW
         I+UesG+WSKu9Pi6JiyQIk/SKcTP7GTTtEN4Z9ZyhvIhKky7/W0rHSrDdPlVn8OVXn6x+
         Xmuk0rl4iW9LylbQSbmLnwoR0F/MBr0CCL2KQ6+zS+wulkI27zYmh3mG+1V2D3vgdow1
         2/CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NHQNGQ4un3p3+/EKJpKrMd3Ms/dV5oCxUkhVYf6i+Ks=;
        b=B7nPfs0j8aIGvTkruxScQLwuS2ALG4rI30iHd8ExEcJHWghHmYfvgXnF64e7XFXki3
         Tk9IIT5Nz8wbmf2rcNW90l6izGZB4vsBHDSaG9/Vcw+yNUi3ABNh7NpIigGgB41ov2uJ
         W6zqKpyFJvbdpzXGB3WVMExotqNGplbxykUrB+ummvhF4+TaSNBHzlnU3nJs7biWt8rC
         iIEVUkQh8r2YtEYLJVJGJ7UfTzo8kQ0OICpj7Vs9WzEULd+JFgRIhMzTooClBXl90anf
         mh1wxTQNr4rRhCDiqk5ekbEZcWvGCSHQWt+vKLhYMRCJARJG2fI7MI/HYC0tlCWkcw3C
         AhdQ==
X-Gm-Message-State: AMke39lj3EMyjryjXSwQtYXf0lwmOMuFrzuT0NjLIOG4HhPjroIuP5KlWnAwbcip04dPVQ==
X-Received: by 10.99.56.94 with SMTP id h30mr595913pgn.23.1488259546917;
        Mon, 27 Feb 2017 21:25:46 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d189sm1072495pga.17.2017.02.27.21.25.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 21:25:45 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: lustre: Replace typedef with struct
Date: Tue, 28 Feb 2017 10:53:25 +0530
Message-Id: <1488259405-19730-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

As per the Linux kernel coding style guidelines, using typedef for a
structure type is not recommended. Hence, occurences of typedefs have
been removed.

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


