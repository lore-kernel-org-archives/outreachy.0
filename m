X-GM-THRID: 10181885820928
X-Received: by 10.43.5.201 with SMTP id oh9mr38585050icb.10.1427564716947;
        Sat, 28 Mar 2015 10:45:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.72 with SMTP id w66ls1813608qgd.0.gmail; Sat, 28 Mar
 2015 10:45:16 -0700 (PDT)
X-Received: by 10.236.230.39 with SMTP id i37mr28136723yhq.47.1427564716645;
        Sat, 28 Mar 2015 10:45:16 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id iw3si593752pbd.1.2015.03.28.10.45.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 10:45:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id p1so37610891pdc.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 10:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=hwOMQLT/xl8neSD69Mjl371VxzADHsa7/vQR5mrzRsc=;
        b=vkIcwMYnOVoty32p1IUhXP+AwDn8Cu6ZWWIEzDXfS5dW4fpyD0j1SqkR0+zNv+3teW
         T1o65Uo6X6+ZF3fZok9AkJQjf6XdUjakXU3vVw9++gfbBU0wPh+iPqCtxu0/ZNeaXzlb
         a+sviXaee4TtS4GMYSqnx4G//p2hGD4CcELjZ9nGSFYEOl7rqGRtAPO3XLVWF69gxpXk
         Atg5XHPvDNCKsjCo26eieLzhhR7XQIkVFu34ElyuGi6yFBBZiNv+WaYCLa6ONje4omnH
         bXLtKj1SBPgaxojyjy1IR9dKWtf1+/8pAzXBR1Z5B9Qookz+MQsC7L1Fx8bvzr2VQfb9
         Rikw==
X-Received: by 10.70.126.225 with SMTP id nb1mr45540266pdb.40.1427564716541;
        Sat, 28 Mar 2015 10:45:16 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.212.243])
        by mx.google.com with ESMTPSA id eo5sm5618187pbb.51.2015.03.28.10.45.12
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 10:45:15 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 6/6] Staging: lustre: Mark internal functions static in llog_cat.c
Date: Sat, 28 Mar 2015 23:13:57 +0530
Message-Id: <1427564637-10305-7-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
References: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch marks functions llog_cat_set_first_idx and cat_cancel_cb
static as these are used only within this file.

This eliminates the following sparse warning:
warning: symbol * was not declared. Should it be static?

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/llog_cat.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/llog_cat.c b/drivers/staging/lustre/lustre/obdclass/llog_cat.c
index 08afdf3..aae660d 100644
--- a/drivers/staging/lustre/lustre/obdclass/llog_cat.c
+++ b/drivers/staging/lustre/lustre/obdclass/llog_cat.c
@@ -692,7 +692,7 @@ int llog_cat_reverse_process(const struct lu_env *env,
 }
 EXPORT_SYMBOL(llog_cat_reverse_process);
 
-int llog_cat_set_first_idx(struct llog_handle *cathandle, int index)
+static int llog_cat_set_first_idx(struct llog_handle *cathandle, int index)
 {
 	struct llog_log_hdr *llh = cathandle->lgh_hdr;
 	int i, bitmap_size, idx;
@@ -751,7 +751,7 @@ int llog_cat_cleanup(const struct lu_env *env, struct llog_handle *cathandle,
 	return rc;
 }
 
-int cat_cancel_cb(const struct lu_env *env, struct llog_handle *cathandle,
+static int cat_cancel_cb(const struct lu_env *env, struct llog_handle *cathandle,
 		  struct llog_rec_hdr *rec, void *data)
 {
 	struct llog_logid_rec	*lir = (struct llog_logid_rec *)rec;
-- 
1.9.1


