X-GM-THRID: 6208177008118071296
X-Received: by 10.129.106.212 with SMTP id f203mr6300903ywc.5.1445454097219;
        Wed, 21 Oct 2015 12:01:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.117.101 with SMTP id kd5ls764880igb.23.canary; Wed, 21 Oct
 2015 12:01:36 -0700 (PDT)
X-Received: by 10.67.24.39 with SMTP id if7mr9192411pad.24.1445454096907;
        Wed, 21 Oct 2015 12:01:36 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si1236843pbb.2.2015.10.21.12.01.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 12:01:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id z6so62330632pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 12:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=obfRxa+/v09q2ab0X14mRE0R+c+FzQjepuXoWdbRVAE=;
        b=F5soKqVy84fiPCFuEb2l9L8JMMfQScchDJrNGyzi4Y1zkswOTmkyPTXEsw4m/QjYVi
         0nvGdi1dtlIu4PWy/PAxAOmJPsVZ8xFaimmnSGZ0AM63DrCxOwjmslX+QzSdPh4x4fyk
         h3CZCg8yt2zBJmGd7bTcTfcmUPsBiGxD9XKAqAejWnCH6zl21IKKndbSeoR0D25z/JUO
         62cDt/70VLOqbWyzbAl0bH3VfnaW7cMiUWssiwgDXUN16+YAOnXfMRU8yfJfApfFiVln
         aUf2lozAmrrSxOkrUSSiXyFMkR+CIrnXx2vC76t8MPRapR9fwSmAK8aIWSQjgQ8Sb7eo
         MyWg==
X-Received: by 10.66.219.162 with SMTP id pp2mr12389378pac.59.1445454096728;
        Wed, 21 Oct 2015 12:01:36 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.194.209])
        by smtp.gmail.com with ESMTPSA id ph8sm10454096pbc.8.2015.10.21.12.01.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 12:01:36 -0700 (PDT)
Date: Thu, 22 Oct 2015 00:31:32 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: lustre: lmv: Fix endian sparse warnings
Message-ID: <7c9a1c8af81dc6676b31d2ad2e8d9de2df9dfbd8.1445453573.git.amitoj1606@gmail.com>
References: <cover.1445453573.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445453573.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix bug found using sparse which generates the following warning:

drivers/staging/lustre/lustre/lmv/lmv_obd.c:2422:25: warning:
incorrect type in assignment (different base types)
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2422:25: expected unsigned
int [unsigned] [usertype] mea_magic
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2422:25: got restricted
__le32 [usertype] <noident>
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2423:25: warning:
incorrect type in assignment (different base types)
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2423:25: expected unsigned
int [unsigned] [usertype] mea_count
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2423:25: got restricted
__le32 [usertype] <noident>
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2424:26: warning:
incorrect type in assignment (different base types)
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2424:26: expected unsigned
int [unsigned] [usertype] mea_master
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2424:26: got restricted
__le32 [usertype] <noident>
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2467:25: warning: cast to
restricted __le32
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2477:30: warning: cast to
restricted __le32
drivers/staging/lustre/lustre/lmv/lmv_obd.c:2478:31: warning: cast to
restricted __le32

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_obd.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index 7e6a060..8d90f19 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -2419,9 +2419,9 @@ static int lmv_packmd(struct obd_export *exp, struct lov_mds_md **lmmp,
 	    lsmp->mea_magic != MEA_MAGIC_ALL_CHARS)
 		return -EINVAL;
 
-	meap->mea_magic = cpu_to_le32(lsmp->mea_magic);
-	meap->mea_count = cpu_to_le32(lsmp->mea_count);
-	meap->mea_master = cpu_to_le32(lsmp->mea_master);
+	meap->mea_magic = lsmp->mea_magic;
+	meap->mea_count = lsmp->mea_count;
+	meap->mea_master = lsmp->mea_master;
 
 	for (i = 0; i < lmv->desc.ld_tgt_count; i++) {
 		meap->mea_ids[i] = lsmp->mea_ids[i];
@@ -2464,7 +2464,7 @@ static int lmv_unpackmd(struct obd_export *exp, struct lov_stripe_md **lsmp,
 	if (mea->mea_magic == MEA_MAGIC_LAST_CHAR ||
 	    mea->mea_magic == MEA_MAGIC_ALL_CHARS ||
 	    mea->mea_magic == MEA_MAGIC_HASH_SEGMENT) {
-		magic = le32_to_cpu(mea->mea_magic);
+		magic = mea->mea_magic;
 	} else {
 		/*
 		 * Old mea is not handled here.
@@ -2474,8 +2474,8 @@ static int lmv_unpackmd(struct obd_export *exp, struct lov_stripe_md **lsmp,
 	}
 
 	(*tmea)->mea_magic = magic;
-	(*tmea)->mea_count = le32_to_cpu(mea->mea_count);
-	(*tmea)->mea_master = le32_to_cpu(mea->mea_master);
+	(*tmea)->mea_count = mea->mea_count;
+	(*tmea)->mea_master = mea->mea_master;
 
 	for (i = 0; i < (*tmea)->mea_count; i++) {
 		(*tmea)->mea_ids[i] = mea->mea_ids[i];
-- 
1.9.1


