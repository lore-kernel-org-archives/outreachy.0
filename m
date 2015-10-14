X-GM-THRID: 6205566056947253248
X-Received: by 10.140.135.5 with SMTP id 5mr3798722qhh.11.1444846398302;
        Wed, 14 Oct 2015 11:13:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.161 with SMTP id x1ls1772858igl.29.canary; Wed, 14 Oct
 2015 11:13:18 -0700 (PDT)
X-Received: by 10.66.163.102 with SMTP id yh6mr3827625pab.23.1444846398017;
        Wed, 14 Oct 2015 11:13:18 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id el2si1042210pbb.0.2015.10.14.11.13.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id cn9so29819680pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dkSdsEcgdbbroKJSuX868Y41ZvBNgmSm7uTKOGHCbXc=;
        b=YSRsX34cH1ScWme7q3UM7K6YUDjdXTVepKfkwJD/1FXMJ89fj+y5/HplXKDdnhYPqS
         n3jj+IR1YLUxgetmRo9onYiBlS6W9JjJLTEq6ecAsQxXtsQNCZD+QogE/dhjSJL8/HIK
         R11WT1oC295MTMRC1CWL2/04cceqqz5JcuIJSLxiqDBB4DsuUAFTVstazf818kov3Vbc
         DdSi97QTv7z9Sb7+fAZ8DRKWpj/qvQV9ePycwmoV1MCqsQV/krKdk44JchULeofu1ohl
         8JOruQVDbJUduT+yIeJvsR7wCzVTyVY3Y4djrkOoNcRJADs7M412KI0a8BR5jKfuAFaE
         TEPQ==
X-Received: by 10.68.111.3 with SMTP id ie3mr5019314pbb.63.1444846397851;
        Wed, 14 Oct 2015 11:13:17 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id yp9sm10960911pab.1.2015.10.14.11.13.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:13:17 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:43:13 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: lustre: mgc: Remove useless cast on void pointer
Message-ID: <2b1d049d4f1404be907b51028ebc92f78bdfe95a.1444845733.git.amitoj1606@gmail.com>
References: <cover.1444845733.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444845733.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The semantic patch used to find this is:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/mgc/mgc_request.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
index 3e9cca0..b36bad9 100644
--- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
+++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
@@ -756,7 +756,7 @@ static int mgc_blocking_ast(struct ldlm_lock *lock, struct ldlm_lock_desc *desc,
 			    void *data, int flag)
 {
 	struct lustre_handle lockh;
-	struct config_llog_data *cld = (struct config_llog_data *)data;
+	struct config_llog_data *cld = data;
 	int rc = 0;
 
 	switch (flag) {
@@ -860,7 +860,7 @@ static int mgc_enqueue(struct obd_export *exp, struct lov_stripe_md *lsm,
 		       void *data, __u32 lvb_len, void *lvb_swabber,
 		       struct lustre_handle *lockh)
 {
-	struct config_llog_data *cld = (struct config_llog_data *)data;
+	struct config_llog_data *cld = data;
 	struct ldlm_enqueue_info einfo = {
 		.ei_type	= type,
 		.ei_mode	= mode,
@@ -972,7 +972,7 @@ static int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
 	if (KEY_IS(KEY_SET_INFO)) {
 		struct mgs_send_param *msp;
 
-		msp = (struct mgs_send_param *)val;
+		msp = val;
 		rc =  mgc_set_mgs_param(exp, msp);
 		return rc;
 	}
-- 
1.9.1


