X-GM-THRID: 6201947249365221376
X-Received: by 10.182.70.4 with SMTP id i4mr23081255obu.15.1444003376176;
        Sun, 04 Oct 2015 17:02:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.70.3 with SMTP id i3ls503358obu.78.gmail; Sun, 04 Oct 2015
 17:02:55 -0700 (PDT)
X-Received: by 10.182.240.202 with SMTP id wc10mr24694124obc.9.1444003375919;
        Sun, 04 Oct 2015 17:02:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id uv4si3540241pac.0.2015.10.04.17.02.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 17:02:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so157134872pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 17:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=q3oDqs3dSwX1S1HbKBCzIIjFcRZc1QgKhF+CnhjdvFw=;
        b=AK8QLKba+2Fe3Z5BfM74NhXsx3Ok9ZcBMtHmqzfluLqtmxsOFl++q/N95FHnZ5uG+3
         IU9SvopimnQL/Tz6sefj5LXbsDLWwBjhoOTecMuXIS9gULeY3fiaV11C5EYbJ8CFwulZ
         qhjEYKhD+XnZsVAfaKx8em8xhMaSvyd8iyJrZHOGL0iArYcXKp3swJHKre4TyBV/GQoQ
         vCXaHz+b4Cmzq3cRIZDu9I0XtQ1AKid+wJTjvFoDKFkD/VubD9S67yl5DJCoPdgUn4tG
         bpTQxBWBPuzva/+54ww7pCLlOX39Oo06tdSzb01osqJmaAOkbzQTghLn2fRj14FtMrnJ
         5nSA==
X-Received: by 10.68.183.5 with SMTP id ei5mr36554902pbc.124.1444003375791;
        Sun, 04 Oct 2015 17:02:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id py6sm23884348pbb.62.2015.10.04.17.02.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 17:02:55 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/4] Staging: lustre: ptlrpc: pack_generic: Declare local functions as static
Date: Mon,  5 Oct 2015 05:32:38 +0530
Message-Id: <1444003359-6619-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
References: <1444003359-6619-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.5611BE2E.0059,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare functions lustre_swab_ldlm_lock_desc and dump_obdo as static since
they are used only in this particular file. Also remove them from
corresponding header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Made commit message and subject clearer.

 drivers/staging/lustre/lustre/include/lustre/lustre_idl.h | 3 ---
 drivers/staging/lustre/lustre/ptlrpc/pack_generic.c       | 5 ++---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
index 94d4028..e629ca3 100644
--- a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
+++ b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
@@ -2785,8 +2785,6 @@ struct ldlm_lock_desc {
 	ldlm_wire_policy_data_t l_policy_data;
 };
 
-void lustre_swab_ldlm_lock_desc(struct ldlm_lock_desc *l);
-
 #define LDLM_LOCKREQ_HANDLES 2
 #define LDLM_ENQUEUE_CANCEL_OFF 1
 
@@ -3355,7 +3353,6 @@ void lustre_swab_lustre_cfg(struct lustre_cfg *lcfg);
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


