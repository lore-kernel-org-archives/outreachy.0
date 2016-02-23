X-GM-THRID: 6254513741412433920
X-Received: by 10.182.142.8 with SMTP id rs8mr33419999obb.33.1456242518254;
        Tue, 23 Feb 2016 07:48:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.233 with SMTP id t96ls137746qgd.49.gmail; Tue, 23 Feb
 2016 07:48:37 -0800 (PST)
X-Received: by 10.129.85.68 with SMTP id j65mr34282572ywb.57.1456242517793;
        Tue, 23 Feb 2016 07:48:37 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ui7si3978785pab.0.2016.02.23.07.48.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 07:48:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id ho8so115332862pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 07:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=QxgVulY7TxZ+5GEL+fSUO3ViQ/FhJr76VbgXcWqCsAg=;
        b=NuwSJZKqZRjkPBOQWzlY80w97320d4dwVlKMTZ1rSNM2rGd6s2jP54f8VKWnKif8td
         yEG7nCMJY2F2hol4wxnFCSFDd1K9+cB6AzN+Ie/ATXjTrJvkXWl/AC+wpTnG8U4oDPMU
         8xhStd9xy9BCv9Yv93DgCNIyXAW3HksCGY6gwylGgKrG3ZCsVrYWoqO4sIWTr9QF/40C
         9gm+/yiVDmBcWz8Q1/kPu4a//iK+26VsOmo3027ijKyOKucrDrAPs/ImZ7Xq8EBXTaPK
         P5VXSt1aEmvoHcHRDAlj+b7k15md8R74T81b3x6xDfx30arFdvGAYRFBHWqKeanVaY9H
         G2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=QxgVulY7TxZ+5GEL+fSUO3ViQ/FhJr76VbgXcWqCsAg=;
        b=NK2TN0o46fWav3lTXEblKnd2UfDzQIKUSEMW149nVvJ0Es4b5fc1FY9tvVTxQPuAK7
         3N9JUEQ97hwue4NUPEEfKAjBuLZu6eqoIX7cTDI8lRdZTuP4O5BwO7SUABAJXyIDXGVB
         bD43gvBSzKDhxP//C7l4+wH0CUWTseC0lSUzduwhGAJ/yaymB3gqpyh/Ebd8XiUsIA6b
         3Sq0NEdIPEtHYxQSPxyGDWYoRmub9KcsGaXPBJVvJG9ffCxs3oFW8S+a9RCpUUccDcsg
         Ct90TgS2ARYvwY24dnw0spzyRfUqohaDsN/rDhHXOwMXcP9ZJpxXMteBjSa1F5mJQHlj
         /2Pw==
X-Gm-Message-State: AG10YOTExyFt6pUzZxq8bhNQ8isPPHmz/6O1I8sU9guNrzoAxeUF7hy4/PquAsd6oi7vFQ==
X-Received: by 10.66.234.166 with SMTP id uf6mr47259241pac.122.1456242517654;
        Tue, 23 Feb 2016 07:48:37 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.174.102])
        by smtp.gmail.com with ESMTPSA id 1sm45177575pfm.10.2016.02.23.07.48.31
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 07:48:37 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 23 Feb 2016 21:18:25 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 4/5] Staging: lustre: Use min or max instead of ternary operator
Date: Tue, 23 Feb 2016 21:17:19 +0530
Message-Id: <8af7a8ccdaed489dabc1ee84571ff8fe2d8b3368.1456241358.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>

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

 drivers/staging/lustre/lustre/include/lustre_disk.h | 6 ++----
 drivers/staging/lustre/lustre/osc/osc_request.c     | 2 +-
 drivers/staging/lustre/lustre/ptlrpc/events.c       | 2 +-
 3 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_disk.h b/drivers/staging/lustre/lustre/include/lustre_disk.h
index 7c6933f..8254428 100644
--- a/drivers/staging/lustre/lustre/include/lustre_disk.h
+++ b/drivers/staging/lustre/lustre/include/lustre_disk.h
@@ -331,14 +331,12 @@ static inline void lcd_cpu_to_le(struct lsd_client_data *lcd,
 
 static inline __u64 lcd_last_transno(struct lsd_client_data *lcd)
 {
-	return (lcd->lcd_last_transno > lcd->lcd_last_close_transno ?
-		lcd->lcd_last_transno : lcd->lcd_last_close_transno);
+	return max(lcd->lcd_last_transno, lcd->lcd_last_close_transno);
 }
 
 static inline __u64 lcd_last_xid(struct lsd_client_data *lcd)
 {
-	return (lcd->lcd_last_xid > lcd->lcd_last_close_xid ?
-		lcd->lcd_last_xid : lcd->lcd_last_close_xid);
+	return max(lcd->lcd_last_xid, lcd->lcd_last_close_xid);
 }
 
 /****************** superblock additional info *********************/
diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 43b11c6..b48c23e 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -1170,7 +1170,7 @@ static u32 osc_checksum_bulk(int nob, u32 pg_count,
 	}
 
 	while (nob > 0 && pg_count > 0) {
-		int count = pga[i]->count > nob ? nob : pga[i]->count;
+		int count = min(nob, pga[i]->count);
 
 		/* corrupt the data before we compute the checksum, to
 		 * simulate an OST->client data error */
diff --git a/drivers/staging/lustre/lustre/ptlrpc/events.c b/drivers/staging/lustre/lustre/ptlrpc/events.c
index 64eaa0e..dc2996f 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/events.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/events.c
@@ -254,7 +254,7 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
 
 	new_seq = (sec << REQS_SEC_SHIFT) |
 		  (usec << REQS_USEC_SHIFT) |
-		  (svcpt->scp_cpt < 0 ? 0 : svcpt->scp_cpt);
+		  (max(0, svcpt->scp_cpt));
 
 	if (new_seq > svcpt->scp_hist_seq) {
 		/* This handles the initial case of scp_hist_seq == 0 or
-- 
1.9.1


