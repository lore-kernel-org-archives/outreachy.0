X-GM-THRID: 6205566056947253248
X-Received: by 10.182.50.170 with SMTP id d10mr3920088obo.48.1444848518144;
        Wed, 14 Oct 2015 11:48:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.5 with SMTP id o5ls254001ioe.67.gmail; Wed, 14 Oct
 2015 11:48:37 -0700 (PDT)
X-Received: by 10.50.17.74 with SMTP id m10mr23441174igd.3.1444848517935;
        Wed, 14 Oct 2015 11:48:37 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id pe1si977478pac.2.2015.10.14.11.48.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:48:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ur7so12646391pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=f99l0O2DGTFqHloagmRkLQ9KKdNgv8zu8OyXeLLdZ3g=;
        b=lreDy1xBFFGckVNWdD7UFElkoxONzQJJxbX5r7V9l9EP5185dtyF4d6eDtwqIYn+gf
         ig1UR1NvqISpoPezaF2sJIwUjUWvWTRO9w2lvAYr+VnSHiR2U0YVyIzPDb0MKctnpkit
         bGkXGraX3SILZ/2AjXY87RSGtmeaY3LSJtdQG0LXHynu8MNY1pxc2xOGFcOndkPPtOxN
         QrNhm+XuM9ubJ+Pm+DAicUwTD8Tzlu+QGRmYcKCFPXcUiSFCLFIbffBvrgQXHE/Ac6lf
         +OMhdjMZ4j4+4cnwvQ56tuoZvqWUzayXfAwPwj+ko7qrS5U/o1DhuCQK6ihcw9JZ2/P8
         l5FA==
X-Received: by 10.66.141.165 with SMTP id rp5mr5064136pab.127.1444848517773;
        Wed, 14 Oct 2015 11:48:37 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id vm6sm11007751pbc.8.2015.10.14.11.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:48:37 -0700 (PDT)
Date: Thu, 15 Oct 2015 00:18:33 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/6] staging: lustre: mgc: Remove useless cast on void
 pointer
Message-ID: <3be4bf489dc0ad4fa5727541c9e2fe1291953a52.1444847780.git.amitoj1606@gmail.com>
References: <cover.1444847780.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444847780.git.amitoj1606@gmail.com>
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
Changes in v2:
        -None
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


