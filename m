X-GM-THRID: 4683701682176
X-Received: by 10.194.178.234 with SMTP id db10mr2255696wjc.2.1425059614940;
        Fri, 27 Feb 2015 09:53:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.38 with SMTP id x6ls205326lax.63.gmail; Fri, 27 Feb 2015
 09:53:34 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr2262913lbb.14.1425059614531;
        Fri, 27 Feb 2015 09:53:34 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id cl5si159225wib.3.2015.02.27.09.53.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 09:53:34 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghk14 with SMTP id k14so21920219wgh.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 09:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pIoUEmQllXGauf66qBAoUVYt1/B3K+/fZbJ0v63P7L8=;
        b=rVEqO2SSobT+q6l9B39mEskBYLo92LdvXxWP55l3UOgQNklTPEcCQqnuVMh5ueptqZ
         qeUYrQOzLUmWuSS2wKQ7wgEJF4qBT91U+pFZWTTVa+kzuyG2WT1IkP7DDSCJG4d4HxJF
         4ker1xZrIOZTEpRZvL+28T5xrUVamiFGcbIWEId+y6uFG55/alxcFL6zkz0tB6oxBtyl
         nv3IjeNIbYsIHuplCwQoilbXcQgdrq8kCImWl0Ih5HMfjVjeYv9qLN1mkSP3nM77++QH
         4aaykgtBEXSodcN3+83bQigcEXs2uKzzg17OwgjGgTf9mEEWOcTBzM8TfSJI8rDTC3IA
         61cA==
X-Received: by 10.194.61.100 with SMTP id o4mr30622660wjr.28.1425059614426;
        Fri, 27 Feb 2015 09:53:34 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id fs8sm3791363wib.8.2015.02.27.09.53.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 09:53:33 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: lov: Add blank line after declarations
Date: Fri, 27 Feb 2015 19:53:27 +0200
Message-Id: <1425059607-13367-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/lov/lov_dev.c WARNING: Missing a blank line after declarations

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_dev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/lustre/lustre/lov/lov_dev.c b/drivers/staging/lustre/lustre/lov/lov_dev.c
index 796a015..aadb8f2 100644
--- a/drivers/staging/lustre/lustre/lov/lov_dev.c
+++ b/drivers/staging/lustre/lustre/lov/lov_dev.c
@@ -155,6 +155,7 @@ static void lov_key_fini(const struct lu_context *ctx,
 			 struct lu_context_key *key, void *data)
 {
 	struct lov_thread_info *info = data;
+
 	LINVRNT(list_empty(&info->lti_closure.clc_list));
 	OBD_SLAB_FREE_PTR(info, lov_thread_kmem);
 }
@@ -180,6 +181,7 @@ static void lov_session_key_fini(const struct lu_context *ctx,
 				 struct lu_context_key *key, void *data)
 {
 	struct lov_session *info = data;
+
 	OBD_SLAB_FREE_PTR(info, lov_session_kmem);
 }
 
-- 
1.9.1


