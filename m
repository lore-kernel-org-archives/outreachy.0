X-GM-THRID: 6254513741412433920
X-Received: by 10.66.191.230 with SMTP id hb6mr421956pac.25.1456481126680;
        Fri, 26 Feb 2016 02:05:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls921586qgd.27.gmail; Fri, 26 Feb
 2016 02:05:26 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr454896ywd.48.1456481126202;
        Fri, 26 Feb 2016 02:05:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id r75si273855pfr.0.2016.02.26.02.05.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:05:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id yy13so4266229pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7vFnDuaZbZwAyiUBaxdKa27z3P8CcmIdvAcX8JTsg/w=;
        b=SJUHDqStzEvTibdCCk/LhgCukSQQ+vKoYCIFl3Co74f6fJDp7Kn1/TadkAI6wsuz36
         5KiQe6RjeLcxFe7nnDe0MYXIZ1X0UXdJtK4QvSTi80iF77bHIRu5KPLJh3O8Zw4w6si5
         P9wyqgP11RnL9Wih6+9BTT5jpH12NgqThdm/5bBSAxZNqSe4/rKxQxnK9oQLLpIE9Wa8
         L0CmPbdBhQh5tMZY886spNgq0/WzqmLXBM6lIvUll/aArekGWvRuUGDSzPsuqJUPeok9
         wzD4hk5oVuVgX9R8xCMqv59HPhY6H3Tq3fTkFDWH3aTr0zw7u7ELobmtt0hRaV6v0w0k
         bqag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7vFnDuaZbZwAyiUBaxdKa27z3P8CcmIdvAcX8JTsg/w=;
        b=izAHp9DjHpIPySiKgY1BqYmHMRe1wngv9wuf0cU+jidQJ2OoDMhhfwDEyW1MDI0mI7
         cZ+s2p8ZlVIcS3Dhh6reG5fz8mn6olhMkb8KDyco8a6vMjgorxQC9t4oHLKqzd6eeXve
         T89I0ftXbqDIz+bKr9ZBzdgjDsoozysVOT5b+rXfh3/jwGVlbVnKCBWkMVrQen+96/vR
         Xp7dcM75hqcwLlF/d/NTw3NiEg9WdH3ETN07ydmjCwbHWdbD3lH3ZpivoMsK3IPlW+aW
         hJkxsX6rTARaqHE9VH4qKw9I0h+MVVSlRRW7uilBDDwGfaHs/ThrVbI2iGI8ayKUcvNu
         Bq2A==
X-Gm-Message-State: AD7BkJJNmn2atkkWY+6SHzEej0z7WJMdw1JqnwXdwu9q8luYXD+U1PjkIaDBgfchDKb1Lw==
X-Received: by 10.67.14.138 with SMTP id fg10mr790842pad.145.1456481126021;
        Fri, 26 Feb 2016 02:05:26 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.139.245])
        by smtp.gmail.com with ESMTPSA id ml5sm18187120pab.2.2016.02.26.02.05.22
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:05:25 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 15:35:16 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 4/5] Staging: lustre: Use min or max instead of ternary operator
Date: Fri, 26 Feb 2016 15:34:33 +0530
Message-Id: <1456481074-9898-5-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456481074-9898-1-git-send-email-bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
 <1456481074-9898-1-git-send-email-bhumirks@gmail.com>

Replace ternary operators with macros min/max as they are
shorter and thus increases code readability. Macro min returns the
minimum and max returns maximum of the two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
Use min()/max() instead of min_t()/max_t() as the values passed in the
macros are of same type.
Changes in v3:
No change

 drivers/staging/lustre/lustre/include/lustre_disk.h | 6 ++----
 drivers/staging/lustre/lustre/osc/osc_request.c     | 2 +-
 drivers/staging/lustre/lustre/ptlrpc/events.c       | 2 +-
 3 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_disk.h b/drivers/staging/lustre/lustre/include/lustre_disk.h
index 0f06feb..c437631 100644
--- a/drivers/staging/lustre/lustre/include/lustre_disk.h
+++ b/drivers/staging/lustre/lustre/include/lustre_disk.h
@@ -337,14 +337,12 @@ static inline void lcd_cpu_to_le(struct lsd_client_data *lcd,
 
 static inline __u64 lcd_last_transno(struct lsd_client_data *lcd)
 {
-	return (lcd->lcd_last_transno > lcd->lcd_last_close_transno ?
-		lcd->lcd_last_transno : lcd->lcd_last_close_transno);
+	return (max(lcd->lcd_last_transno, lcd->lcd_last_close_transno));
 }
 
 static inline __u64 lcd_last_xid(struct lsd_client_data *lcd)
 {
-	return (lcd->lcd_last_xid > lcd->lcd_last_close_xid ?
-		lcd->lcd_last_xid : lcd->lcd_last_close_xid);
+	return (max(lcd->lcd_last_xid, lcd->lcd_last_close_xid));
 }
 
 >>>>>>> Staging: lustre: Use min_t and max_t instead of ternary operator
diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 10f262f..578e98a 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -1181,7 +1181,7 @@ static u32 osc_checksum_bulk(int nob, u32 pg_count,
 	}
 
 	while (nob > 0 && pg_count > 0) {
-		int count = pga[i]->count > nob ? nob : pga[i]->count;
+		int count = min(nob, pga[i]->count);
 
 		/* corrupt the data before we compute the checksum, to
 		 * simulate an OST->client data error
diff --git a/drivers/staging/lustre/lustre/ptlrpc/events.c b/drivers/staging/lustre/lustre/ptlrpc/events.c
index 47be21a..9ef3b26 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/events.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/events.c
@@ -260,7 +260,7 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
 
 	new_seq = (sec << REQS_SEC_SHIFT) |
 		  (usec << REQS_USEC_SHIFT) |
-		  (svcpt->scp_cpt < 0 ? 0 : svcpt->scp_cpt);
+		  (max(0, svcpt->scp_cpt));
 
 	if (new_seq > svcpt->scp_hist_seq) {
 		/* This handles the initial case of scp_hist_seq == 0 or
-- 
1.9.1


