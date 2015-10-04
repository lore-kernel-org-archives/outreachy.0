X-GM-THRID: 6201691543779147776
X-Received: by 10.66.246.198 with SMTP id xy6mr21704222pac.36.1443974978192;
        Sun, 04 Oct 2015 09:09:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.88.42 with SMTP id bd10ls986547igb.27.gmail; Sun, 04 Oct
 2015 09:09:37 -0700 (PDT)
X-Received: by 10.50.142.103 with SMTP id rv7mr7183625igb.2.1443974977927;
        Sun, 04 Oct 2015 09:09:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si3205328pbb.2.2015.10.04.09.09.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 09:09:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id hy16so11674118pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 09:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=HjYn1GWwjXpjKw7oViEDcWHMoTbwQql6P7NFp/RjfRA=;
        b=bgReWeyTfiGfBBbayzXW/qnUP3Dk/Y9EPFD/OWdVW48XF+9Bwb++4I3uftAo4R1uoY
         NN8Oir7yCBFegSQyz136D/6LqNUZv8UPNk8mpCJNZaDwg4bkSJ+vXfVd9kHW9AjuNiEA
         N+zG5d3s2dfNDH/j/YNOu7ijrTFY7V2HgpSxNanvxzjznOypU9lHxdIfhh7IsFuH7/Vu
         VgbJu5rfMtp7F60qv3EXfAOolIJo3ECWZEiZAZBqJdwKlrPNfm/SJBwy3VdduSfl1phF
         LvaLL0gYh3SeGSRnjGfclkbfN/jJiPaad21LxZmcygQSRXmMs7acYJO2vyEdgLQrAP1x
         zS/Q==
X-Received: by 10.66.218.66 with SMTP id pe2mr34497752pac.13.1443974977804;
        Sun, 04 Oct 2015 09:09:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yq2sm22705483pbb.39.2015.10.04.09.09.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 09:09:37 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/4] Staging: lustre: ptlrpc: pack_generic: Declare as static
Date: Sun,  4 Oct 2015 21:39:17 +0530
Message-Id: <1443974958-5994-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443974958-5994-1-git-send-email-shraddha.6596@gmail.com>
References: <1443974958-5994-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.56114F40.00B4,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare lustre_swab_ldlm_lock_desc and dump_obdo as static since
they are used only in this particular file. Also remove them from
corresponding header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre/lustre_idl.h | 2 --
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c       | 5 ++---
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
index 94d4028..87e85c1 100644
--- a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
+++ b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
@@ -2785,7 +2785,6 @@ struct ldlm_lock_desc {
 	ldlm_wire_policy_data_t l_policy_data;
 };
 
-void lustre_swab_ldlm_lock_desc(struct ldlm_lock_desc *l);
 
 #define LDLM_LOCKREQ_HANDLES 2
 #define LDLM_ENQUEUE_CANCEL_OFF 1
@@ -3355,7 +3354,6 @@ void lustre_swab_lustre_cfg(struct lustre_cfg *lcfg);
 /* Functions for dumping PTLRPC fields */
 void dump_rniobuf(struct niobuf_remote *rnb);
 void dump_ioo(struct obd_ioobj *nb);
-void dump_obdo(struct obdo *oa);
 void dump_ost_body(struct ost_body *ob);
 void dump_rcs(__u32 *rc);
 
diff --git a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
index 3241b1f..23cf1b0 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pack_generic.c
@@ -1977,14 +1977,13 @@ void lustre_swab_ldlm_resource_desc(struct ldlm_resource_desc *r)
 }
 EXPORT_SYMBOL(lustre_swab_ldlm_resource_desc);
 
-void lustre_swab_ldlm_lock_desc(struct ldlm_lock_desc *l)
+static void lustre_swab_ldlm_lock_desc(struct ldlm_lock_desc *l)
 {
 	lustre_swab_ldlm_resource_desc(&l->l_resource);
 	__swab32s(&l->l_req_mode);
 	__swab32s(&l->l_granted_mode);
 	lustre_swab_ldlm_policy_data(&l->l_policy_data);
 }
-EXPORT_SYMBOL(lustre_swab_ldlm_lock_desc);
 
 void lustre_swab_ldlm_request(struct ldlm_request *rq)
 {
@@ -2033,7 +2032,7 @@ void dump_rniobuf(struct niobuf_remote *nb)
 }
 EXPORT_SYMBOL(dump_rniobuf);
 
-void dump_obdo(struct obdo *oa)
+static void dump_obdo(struct obdo *oa)
 {
 	__u32 valid = oa->o_valid;
 
-- 
2.1.4


