X-GM-THRID: 6201691543779147776
X-Received: by 10.13.220.4 with SMTP id f4mr4651143ywe.22.1443943844082;
        Sun, 04 Oct 2015 00:30:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.25.147 with SMTP id 19ls2432424qgt.12.gmail; Sun, 04 Oct
 2015 00:30:43 -0700 (PDT)
X-Received: by 10.31.154.19 with SMTP id c19mr20445115vke.13.1443943843510;
        Sun, 04 Oct 2015 00:30:43 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si2871791pab.1.2015.10.04.00.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:30:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so148539303pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 00:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Dx1jcnV9PSLKB0CQtLox5fe6zR9uK7agkaQgVgzwiVI=;
        b=SbNfLk0LHNz5qr/wXOkhxlR3j9Dt02qz/65QhA3dP+EAgs7Jc52hh256LJTasaDPDF
         krD6D573LEBK0QLyjlePQEhpY1dIcJ+SEeIQri9O4YjccVJbu5zMrrivBXfjezG0oG76
         aCPrspoodKP4QzCSJiLMVGfetaXMRMnckLC6GrDb3IDfUKjo6FWusmVMLUsaAMpDAGQZ
         gSNBmfKLDPMlPchtRPD2KKqz4KNUGykK8i5P9ARkenMMN0vfuG0wou+japoMUEgiW70f
         shc6xWAquBsQjE4UyZyYMcclVY5oAiCzWgC5WV+FWnL15N/IONs8SS5ZLPD/KPiTZ587
         71Hw==
X-Received: by 10.66.161.7 with SMTP id xo7mr30802381pab.57.1443943843362;
        Sun, 04 Oct 2015 00:30:43 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq1sm4087085pbc.82.2015.10.04.00.30.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 00:30:42 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/8] Staging: lustre: ptlrpc: layout: Declare as static
Date: Sun,  4 Oct 2015 13:00:12 +0530
Message-Id: <1443943816-21546-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
References: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5610D5A2.0037,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare req_capsule_init_area and req_capsule_field_present as static
since they are used only in this particular file. Also remove the
corresponding declarations from header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_req_layout.h |  4 ----
 drivers/staging/lustre/lustre/ptlrpc/layout.c             | 10 ++++------
 2 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_req_layout.h b/drivers/staging/lustre/lustre/include/lustre_req_layout.h
index cfcc995..df292f6 100644
--- a/drivers/staging/lustre/lustre/include/lustre_req_layout.h
+++ b/drivers/staging/lustre/lustre/include/lustre_req_layout.h
@@ -80,7 +80,6 @@ void req_capsule_init(struct req_capsule *pill, struct ptlrpc_request *req,
 void req_capsule_fini(struct req_capsule *pill);
 
 void req_capsule_set(struct req_capsule *pill, const struct req_format *fmt);
-void req_capsule_init_area(struct req_capsule *pill);
 int req_capsule_filled_sizes(struct req_capsule *pill, enum req_location loc);
 int  req_capsule_server_pack(struct req_capsule *pill);
 
@@ -118,9 +117,6 @@ void req_capsule_extend(struct req_capsule *pill, const struct req_format *fmt);
 int req_capsule_has_field(const struct req_capsule *pill,
 			  const struct req_msg_field *field,
 			  enum req_location loc);
-int req_capsule_field_present(const struct req_capsule *pill,
-			      const struct req_msg_field *field,
-			      enum req_location loc);
 void req_capsule_shrink(struct req_capsule *pill,
 			const struct req_msg_field *field,
 			unsigned int newlen,
diff --git a/drivers/staging/lustre/lustre/ptlrpc/layout.c b/drivers/staging/lustre/lustre/ptlrpc/layout.c
index 991fb74..36876a8 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/layout.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/layout.c
@@ -1679,7 +1679,7 @@ EXPORT_SYMBOL(req_layout_fini);
  * req_capsule_msg_size().  The \a rc_area information is used by.
  * ptlrpc_request_set_replen().
  */
-void req_capsule_init_area(struct req_capsule *pill)
+static void req_capsule_init_area(struct req_capsule *pill)
 {
 	int i;
 
@@ -1688,7 +1688,6 @@ void req_capsule_init_area(struct req_capsule *pill)
 		pill->rc_area[RCL_SERVER][i] = -1;
 	}
 }
-EXPORT_SYMBOL(req_capsule_init_area);
 
 /**
  * Initialize a pill.
@@ -2260,9 +2259,9 @@ EXPORT_SYMBOL(req_capsule_has_field);
  * Returns a non-zero value if the given \a field is present in the given \a
  * pill's PTLRPC request or reply (\a loc), else it returns 0.
  */
-int req_capsule_field_present(const struct req_capsule *pill,
-			      const struct req_msg_field *field,
-			      enum req_location loc)
+static int req_capsule_field_present(const struct req_capsule *pill,
+				     const struct req_msg_field *field,
+				     enum req_location loc)
 {
 	int offset;
 
@@ -2272,7 +2271,6 @@ int req_capsule_field_present(const struct req_capsule *pill,
 	offset = __req_capsule_offset(pill, field, loc);
 	return lustre_msg_bufcount(__req_msg(pill, loc)) > offset;
 }
-EXPORT_SYMBOL(req_capsule_field_present);
 
 /**
  * This function shrinks the size of the _buffer_ of the \a pill's PTLRPC
-- 
2.1.4


