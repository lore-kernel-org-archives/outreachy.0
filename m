X-GM-THRID: 6254064858167246848
X-Received: by 10.182.246.130 with SMTP id xw2mr27184417obc.29.1456138191559;
        Mon, 22 Feb 2016 02:49:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.82 with SMTP id w76ls534845qgw.44.gmail; Mon, 22 Feb
 2016 02:49:51 -0800 (PST)
X-Received: by 10.140.143.200 with SMTP id 191mr26446544qhp.3.1456138191030;
        Mon, 22 Feb 2016 02:49:51 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id u66si3397903pfa.2.2016.02.22.02.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 02:49:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id x65so90991705pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 02:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=x3X03fH7ClltPlD/3aDBcvmxSg713Mr0r9t8O+64gnU=;
        b=lYC2coyGWvdKrxWNyqfYmwiIfMmfCtzcKF3yMKtAZWZJdeSFVnGgBr7mjZax7NRWmo
         m0JMlTKWe9r+cSuZDgUW1+rc7FgsJHFYWCosS0BsG5GFOIvDFFf2F/oYs8GJoqW0ZpQt
         DdHyXtOb3JkvyqGVEFd9oOfCR1vD3jO9ZCWPXSIHXflsvj+5Dd2zTq/Bid3LL8L/qa/g
         pHRJeMepZ7gDEmPsh1kBNEY4X8nt86ngiM3nIyi1pivzTC0zdxUoSDKK7SoDDyv36ZLC
         rbqDfMMwkCu1j6+AKG06mrI1kzk+j5pLt1w+fuT5zZPrKay+2v3c5b43bfcZsO7UPh09
         BOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=x3X03fH7ClltPlD/3aDBcvmxSg713Mr0r9t8O+64gnU=;
        b=mLztGzXj7IoeolLCodoALLZIz8lTAsCJC9Yt1vV+4Ftt9k4iS8HwDGgWRmJ0LKw1cD
         T+Gy64Ox+3DSnzaAj7cVciKNVb4d2BEU+/vKcczW9/Oyk7/3OiAVR+knIuGuWremvTnW
         HHyv4w7s1elRXh+qjWZPm40oUDSk3cnoH/2wgPDBVnWqk0mg1R3Wwi6i/EbMK3FrqiHY
         cajPCC407oa4TD+3f76lVIMGsxNqLX2FI2zcl29SKW5DzUyvNIZZXpBR23djuTaRFpWn
         fZ2Re/iWVr5mY5Y8Hy+C24jrW2nGCYhNXL+GTMVsSfxfohJsvz3lj04h66LNiK6e/AJG
         +KOQ==
X-Gm-Message-State: AG10YORDertWc1jHijz6rQVoVAcMR/+5tI0N0rh4Xu8RcQd8VChOoXcE/Y4apjFUYRqblQ==
X-Received: by 10.98.34.212 with SMTP id p81mr36706631pfj.23.1456138190899;
        Mon, 22 Feb 2016 02:49:50 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.155.110])
        by smtp.gmail.com with ESMTPSA id i15sm35867225pfi.55.2016.02.22.02.49.46
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 02:49:50 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 22 Feb 2016 16:17:33 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 4/5] Staging: lustre: Use min_t or max_t instead of ternary operator
Date: Mon, 22 Feb 2016 16:15:33 +0530
Message-Id: <ae653a4fe839af60c62a545477d803c8b0866968.1456136671.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>

Replace ternary operators with macros min_t/max_t as they are 
shorter and thus increases code readability. Macro min_t return the minimum
and min_t returns maximum of the two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min_t(T,x,y)
|
- x > y ? x : y
+ max_t(T,x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_disk.h | 6 ++----
 drivers/staging/lustre/lustre/osc/osc_request.c     | 2 +-
 drivers/staging/lustre/lustre/ptlrpc/events.c       | 2 +-
 3 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_disk.h b/drivers/staging/lustre/lustre/include/lustre_disk.h
index 7c6933f..c886f7c 100644
--- a/drivers/staging/lustre/lustre/include/lustre_disk.h
+++ b/drivers/staging/lustre/lustre/include/lustre_disk.h
@@ -331,14 +331,12 @@ static inline void lcd_cpu_to_le(struct lsd_client_data *lcd,
 
 static inline __u64 lcd_last_transno(struct lsd_client_data *lcd)
 {
-	return (lcd->lcd_last_transno > lcd->lcd_last_close_transno ?
-		lcd->lcd_last_transno : lcd->lcd_last_close_transno);
+	return max_t(__u64, lcd->lcd_last_transno, lcd->lcd_last_close_transno);
 }
 
 static inline __u64 lcd_last_xid(struct lsd_client_data *lcd)
 {
-	return (lcd->lcd_last_xid > lcd->lcd_last_close_xid ?
-		lcd->lcd_last_xid : lcd->lcd_last_close_xid);
+	return max_t(__u64, lcd->lcd_last_xid, lcd->lcd_last_close_xid);
 }
 
 /****************** superblock additional info *********************/
diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 43b11c6..065a915 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -1170,7 +1170,7 @@ static u32 osc_checksum_bulk(int nob, u32 pg_count,
 	}
 
 	while (nob > 0 && pg_count > 0) {
-		int count = pga[i]->count > nob ? nob : pga[i]->count;
+		int count = min_t(int, nob, pga[i]->count);
 
 		/* corrupt the data before we compute the checksum, to
 		 * simulate an OST->client data error */
diff --git a/drivers/staging/lustre/lustre/ptlrpc/events.c b/drivers/staging/lustre/lustre/ptlrpc/events.c
index 64eaa0e..3219fad 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/events.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/events.c
@@ -254,7 +254,7 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
 
 	new_seq = (sec << REQS_SEC_SHIFT) |
 		  (usec << REQS_USEC_SHIFT) |
-		  (svcpt->scp_cpt < 0 ? 0 : svcpt->scp_cpt);
+		  (max_t(int, 0, svcpt->scp_cpt));
 
 	if (new_seq > svcpt->scp_hist_seq) {
 		/* This handles the initial case of scp_hist_seq == 0 or
-- 
1.9.1


