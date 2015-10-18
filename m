X-GM-THRID: 6206933614593048576
X-Received: by 10.112.169.34 with SMTP id ab2mr5622782lbc.23.1445164348482;
        Sun, 18 Oct 2015 03:32:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.74 with SMTP id p71ls416100lfd.77.gmail; Sun, 18 Oct
 2015 03:32:27 -0700 (PDT)
X-Received: by 10.112.184.170 with SMTP id ev10mr5881807lbc.4.1445164347907;
        Sun, 18 Oct 2015 03:32:27 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id m4si339898wib.0.2015.10.18.03.32.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 03:32:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id p11so62318349wij.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 03:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nf52YgcA33euJfXbVUSwD2Itze9B6iyJ1kTR0o+oRtI=;
        b=vKMrtJ8DnNE/c28pdWdvK4ECxgx2mhaXxokcSK41d8FO7yC6kO9pUy2aWwHlkaIH//
         tM4S5TdNnJLzJeGUEXLlZltnnmY3ZKLlRzpoE/xg/4ov2uLwKbBWJO4i5BfYZhqOqajG
         2R9UdNIlZSlao9h93YbCt7q2VpBMbs78zCPBfp2mAxWthgkEZEQiY9MRwX7fnUhjJxEe
         CP7u7VzQaCvLZltVtzIi82svdFRaFHFQDPWyIbhI2QdU6Yh56f2NdxeDlUSkN2vebPqF
         qCoVawAfW2jFexbxA+IrIu0E3VK5YmqCgiAZk7sVC7GqUDO/DMfkA/JlVce/YmLLmv5e
         L5YA==
X-Received: by 10.194.76.67 with SMTP id i3mr30248975wjw.5.1445164347785;
        Sun, 18 Oct 2015 03:32:27 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.104])
        by smtp.gmail.com with ESMTPSA id i10sm281930wij.9.2015.10.18.03.32.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Oct 2015 03:32:27 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: lustre: Replace aligned packed with packed
Date: Sun, 18 Oct 2015 13:31:57 +0300
Message-Id: <1445164317-121015-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace __aligned__((packed)) with __packed in order to follow
the best practices and to fix checkpatch.pl warning:
'WARNING: __packed is preferred over __attribute__((packed))'

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 .../lustre/lustre/include/lustre/lustre_user.h     | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre/lustre_user.h b/drivers/staging/lustre/lustre/include/lustre/lustre_user.h
index 286e96a..80f8ec5 100644
--- a/drivers/staging/lustre/lustre/include/lustre/lustre_user.h
+++ b/drivers/staging/lustre/lustre/include/lustre/lustre_user.h
@@ -312,7 +312,7 @@ struct lov_user_ost_data_v1 {     /* per-stripe data structure */
 	struct ost_id l_ost_oi;	  /* OST object ID */
 	__u32 l_ost_gen;	  /* generation of this OST index */
 	__u32 l_ost_idx;	  /* OST index in LOV */
-} __attribute__((packed));
+} __packed;
 
 #define lov_user_md lov_user_md_v1
 struct lov_user_md_v1 {	   /* LOV EA user data (host-endian) */
@@ -344,7 +344,7 @@ struct lov_user_md_v3 {	   /* LOV EA user data (host-endian) */
 	};
 	char  lmm_pool_name[LOV_MAXPOOLNAME]; /* pool name */
 	struct lov_user_ost_data_v1 lmm_objects[0]; /* per-stripe data */
-} __attribute__((packed));
+} __packed;
 
 static inline __u32 lov_user_md_size(__u16 stripes, __u32 lmm_magic)
 {
@@ -364,12 +364,12 @@ static inline __u32 lov_user_md_size(__u16 stripes, __u32 lmm_magic)
 struct lov_user_mds_data_v1 {
 	lstat_t lmd_st;		 /* MDS stat struct */
 	struct lov_user_md_v1 lmd_lmm;  /* LOV EA V1 user data */
-} __attribute__((packed));
+} __packed;
 
 struct lov_user_mds_data_v3 {
 	lstat_t lmd_st;		 /* MDS stat struct */
 	struct lov_user_md_v3 lmd_lmm;  /* LOV EA V3 user data */
-} __attribute__((packed));
+} __packed;
 #endif
 
 /* keep this to be the same size as lov_user_ost_data_v1 */
@@ -766,7 +766,7 @@ struct changelog_rec {
 	};
 	lustre_fid	    cr_pfid;	/**< parent fid */
 	char		  cr_name[0];     /**< last element */
-} __attribute__((packed));
+} __packed;
 
 /* changelog_ext_rec is 2*sizeof(lu_fid) bigger than changelog_rec, to save
  * space, only rename uses changelog_ext_rec, while others use changelog_rec to
@@ -788,7 +788,7 @@ struct changelog_ext_rec {
 	lustre_fid		cr_sfid;	/**< source fid, or zero */
 	lustre_fid		cr_spfid;       /**< source parent fid, or zero */
 	char			cr_name[0];     /**< last element */
-} __attribute__((packed));
+} __packed;
 
 #define CHANGELOG_REC_EXTENDED(rec) \
 	(((rec)->cr_flags & CLF_VERMASK) == CLF_EXT_VERSION)
@@ -894,7 +894,7 @@ static inline char *hsm_progress_state2name(enum hsm_progress_states s)
 struct hsm_extent {
 	__u64 offset;
 	__u64 length;
-} __attribute__((packed));
+} __packed;
 
 /**
  * Current HSM states of a Lustre file.
@@ -978,7 +978,7 @@ struct hsm_request {
 struct hsm_user_item {
        lustre_fid	hui_fid;
        struct hsm_extent hui_extent;
-} __attribute__((packed));
+} __packed;
 
 struct hsm_user_request {
 	struct hsm_request	hur_request;
@@ -986,7 +986,7 @@ struct hsm_user_request {
 	/* extra data blob at end of struct (after all
 	 * hur_user_items), only use helpers to access it
 	 */
-} __attribute__((packed));
+} __packed;
 
 /** Return pointer to data field in a hsm user request */
 static inline void *hur_data(struct hsm_user_request *hur)
@@ -1052,7 +1052,7 @@ struct hsm_action_item {
 	__u64      hai_cookie;  /* action cookie from coordinator */
 	__u64      hai_gid;     /* grouplock id */
 	char       hai_data[0]; /* variable length */
-} __attribute__((packed));
+} __packed;
 
 /*
  * helper function which print in hexa the first bytes of
@@ -1096,7 +1096,7 @@ struct hsm_action_list {
 	char  hal_fsname[0];   /* null-terminated */
 	/* struct hsm_action_item[hal_count] follows, aligned on 8-byte
 	   boundaries. See hai_zero */
-} __attribute__((packed));
+} __packed;
 
 #ifndef HAVE_CFS_SIZE_ROUND
 static inline int cfs_size_round (int val)
-- 
1.9.1


