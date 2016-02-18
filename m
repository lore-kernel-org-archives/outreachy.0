X-GM-THRID: 6252694043408465920
X-Received: by 10.50.43.227 with SMTP id z3mr4215154igl.1.1455818778001;
        Thu, 18 Feb 2016 10:06:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.83 with SMTP id p80ls2395365iop.77.gmail; Thu, 18 Feb
 2016 10:06:17 -0800 (PST)
X-Received: by 10.50.25.133 with SMTP id c5mr4212608igg.4.1455818777700;
        Thu, 18 Feb 2016 10:06:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id 79si1124579pft.0.2016.02.18.10.06.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 10:06:17 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id q63so35361909pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 10:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6Zj2Hwxg0AwW6eq0RuAz9HcPgEIqfqACze+0bvit2DQ=;
        b=YGOL3zfpIvT7amghcImPkS6tpLTB6FvYi163/dPICYN7Kz/OPkv2UZPAd/t/MBZLnf
         dwKutIlJCcDAm5UXN1xKeYEAUI9wzJlFyjnMVxzExw49r+/7/V2K2weVO4FxGAD53Xty
         CYilsh1Mof1W22zSzpK+2oXB8XLy6PvX3g1No6zjje4P0CQQhpEnsuhnZup36nb3c/jz
         5VAhEDaF0Oz5rKbCADVyhqgp/y3aozwv1+5gxbtGIhOEkGTeq0t8dZKGN4eHjS14xDml
         YabubYDtwqehwRRg15w9rVBdHLob4RNGQFXFBZRf3VozqJW6p0JtyKfk5lamELYIPt/4
         yUZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=6Zj2Hwxg0AwW6eq0RuAz9HcPgEIqfqACze+0bvit2DQ=;
        b=Fdm0urBZEbb60dNsebg1Icc2pv8uW5jsOZ4Hw173mkbamdSWHyblPiPxmW/BTLk0oD
         zFDPii3EEc8xXq96ztLcKY9NrLCMSj1Dsu+6XWHPwSUJ2tPg/x9gfen1Z3RVZ5/xRYE1
         wbdAbEi+e0LqaAJIA60pRdWZapDDxRhSKuV8UGEQ/DqdRR7ctcxkddLVvx7MqOrUmffU
         jVYbrGqHnWjpaZ8zl2YSJZcjX8gaBCMpTExYEKeforIJoBRvAghdPIKq7ZTctrCEsX6P
         7h5+UWW7ftEmFDQZPQxZzRB20iDtlMWnYep26d0VmIBGNSoK9vrBzkI1SBf0pwrdnjp9
         CTjw==
X-Gm-Message-State: AG10YOTHBMpchAeEuS9Ba1s1QT6bK1sHfAHYNGGktHdIBdLj6tLuuZaBJxOauR5IbxVdeQ==
X-Received: by 10.98.15.17 with SMTP id x17mr12269002pfi.52.1455818777432;
        Thu, 18 Feb 2016 10:06:17 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.49.90])
        by smtp.gmail.com with ESMTPSA id vy6sm11753946pac.38.2016.02.18.10.06.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 10:06:16 -0800 (PST)
Date: Thu, 18 Feb 2016 23:36:12 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: Replace __attribute__((packed)) with
 __packed
Message-ID: <20160218180612.GA19429@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the following checkpatch.pl warning:
"WARNING: __packed is preferred over __attribute__((packed))".

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 .../lustre/lustre/include/lustre/lustre_idl.h      | 44 +++++++++++-----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
index b064b58..6ee3ce3 100644
--- a/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
+++ b/drivers/staging/lustre/lustre/include/lustre/lustre_idl.h
@@ -2933,7 +2933,7 @@ typedef enum {
 struct llog_logid {
 	struct ost_id		lgl_oi;
 	__u32		   lgl_ogen;
-} __attribute__((packed));
+} __packed;
 
 /** Records written to the CATALOGS list */
 #define CATLIST "CATALOGS"
@@ -2942,7 +2942,7 @@ struct llog_catid {
 	__u32		   lci_padding1;
 	__u32		   lci_padding2;
 	__u32		   lci_padding3;
-} __attribute__((packed));
+} __packed;
 
 /* Log data record types - there is no specific reason that these need to
  * be related to the RPC opcodes, but no reason not to (may be handy later?)
@@ -3006,7 +3006,7 @@ struct llog_logid_rec {
 	__u64			lid_padding2;
 	__u64			lid_padding3;
 	struct llog_rec_tail	lid_tail;
-} __attribute__((packed));
+} __packed;
 
 struct llog_unlink_rec {
 	struct llog_rec_hdr	lur_hdr;
@@ -3014,7 +3014,7 @@ struct llog_unlink_rec {
 	__u32			lur_oseq;
 	__u32			lur_count;
 	struct llog_rec_tail	lur_tail;
-} __attribute__((packed));
+} __packed;
 
 struct llog_unlink64_rec {
 	struct llog_rec_hdr	lur_hdr;
@@ -3024,7 +3024,7 @@ struct llog_unlink64_rec {
 	__u64			lur_padding2;
 	__u64			lur_padding3;
 	struct llog_rec_tail    lur_tail;
-} __attribute__((packed));
+} __packed;
 
 struct llog_setattr64_rec {
 	struct llog_rec_hdr	lsr_hdr;
@@ -3035,7 +3035,7 @@ struct llog_setattr64_rec {
 	__u32			lsr_gid_h;
 	__u64			lsr_padding;
 	struct llog_rec_tail    lsr_tail;
-} __attribute__((packed));
+} __packed;
 
 struct llog_size_change_rec {
 	struct llog_rec_hdr	lsc_hdr;
@@ -3045,7 +3045,7 @@ struct llog_size_change_rec {
 	__u64			lsc_padding2;
 	__u64			lsc_padding3;
 	struct llog_rec_tail	lsc_tail;
-} __attribute__((packed));
+} __packed;
 
 #define CHANGELOG_MAGIC 0xca103000
 
@@ -3062,20 +3062,20 @@ struct llog_size_change_rec {
 struct changelog_setinfo {
 	__u64 cs_recno;
 	__u32 cs_id;
-} __attribute__((packed));
+} __packed;
 
 /** changelog record */
 struct llog_changelog_rec {
 	struct llog_rec_hdr  cr_hdr;
 	struct changelog_rec cr;
 	struct llog_rec_tail cr_tail; /**< for_sizezof_only */
-} __attribute__((packed));
+} __packed;
 
 struct llog_changelog_ext_rec {
 	struct llog_rec_hdr      cr_hdr;
 	struct changelog_ext_rec cr;
 	struct llog_rec_tail     cr_tail; /**< for_sizezof_only */
-} __attribute__((packed));
+} __packed;
 
 #define CHANGELOG_USER_PREFIX "cl"
 
@@ -3085,7 +3085,7 @@ struct llog_changelog_user_rec {
 	__u32		 cur_padding;
 	__u64		 cur_endrec;
 	struct llog_rec_tail  cur_tail;
-} __attribute__((packed));
+} __packed;
 
 enum agent_req_status {
 	ARS_WAITING,
@@ -3131,13 +3131,13 @@ struct llog_agent_req_rec {
 	__u64			arr_req_change;	/**< req. status change time */
 	struct hsm_action_item	arr_hai;	/**< req. to the agent */
 	struct llog_rec_tail	arr_tail; /**< record tail for_sizezof_only */
-} __attribute__((packed));
+} __packed;
 
 /* Old llog gen for compatibility */
 struct llog_gen {
 	__u64 mnt_cnt;
 	__u64 conn_cnt;
-} __attribute__((packed));
+} __packed;
 
 struct llog_gen_rec {
 	struct llog_rec_hdr	lgr_hdr;
@@ -3175,7 +3175,7 @@ struct llog_log_hdr {
 	__u32		   llh_reserved[LLOG_HEADER_SIZE/sizeof(__u32) - 23];
 	__u32		   llh_bitmap[LLOG_BITMAP_BYTES/sizeof(__u32)];
 	struct llog_rec_tail    llh_tail;
-} __attribute__((packed));
+} __packed;
 
 #define LLOG_BITMAP_SIZE(llh)  (__u32)((llh->llh_hdr.lrh_len -		\
 					llh->llh_bitmap_offset -	\
@@ -3187,7 +3187,7 @@ struct llog_cookie {
 	__u32		   lgc_subsys;
 	__u32		   lgc_index;
 	__u32		   lgc_padding;
-} __attribute__((packed));
+} __packed;
 
 /** llog protocol */
 enum llogd_rpc_ops {
@@ -3212,13 +3212,13 @@ struct llogd_body {
 	__u32 lgd_saved_index;
 	__u32 lgd_len;
 	__u64 lgd_cur_offset;
-} __attribute__((packed));
+} __packed;
 
 struct llogd_conn_body {
 	struct llog_gen	 lgdc_gen;
 	struct llog_logid       lgdc_logid;
 	__u32		   lgdc_ctxt_idx;
-} __attribute__((packed));
+} __packed;
 
 /* Note: 64-bit types are 64-bit aligned in structure */
 struct obdo {
@@ -3463,7 +3463,7 @@ struct lustre_capa {
 /* FIXME: y2038 time_t overflow: */
 	__u32	   lc_expiry;      /** expiry time (sec) */
 	__u8	    lc_hmac[CAPA_HMAC_MAX_LEN];   /** HMAC */
-} __attribute__((packed));
+} __packed;
 
 void lustre_swab_lustre_capa(struct lustre_capa *c);
 
@@ -3497,7 +3497,7 @@ struct lustre_capa_key {
 	__u32   lk_keyid;     /**< key# */
 	__u32   lk_padding;
 	__u8    lk_key[CAPA_HMAC_KEY_MAX_LEN];    /**< key */
-} __attribute__((packed));
+} __packed;
 
 /** The link ea holds 1 \a link_ea_entry for each hardlink */
 #define LINK_EA_MAGIC 0x11EAF1DFUL
@@ -3518,7 +3518,7 @@ struct link_ea_entry {
 	unsigned char      lee_reclen[2];
 	unsigned char      lee_parent_fid[sizeof(struct lu_fid)];
 	char	       lee_name[0];
-} __attribute__((packed));
+} __packed;
 
 /** fid2path request/reply structure */
 struct getinfo_fid2path {
@@ -3527,7 +3527,7 @@ struct getinfo_fid2path {
 	__u32	   gf_linkno;
 	__u32	   gf_pathlen;
 	char	    gf_path[0];
-} __attribute__((packed));
+} __packed;
 
 void lustre_swab_fid2path (struct getinfo_fid2path *gf);
 
@@ -3567,7 +3567,7 @@ struct hsm_progress_kernel {
 	/* Additional fields */
 	__u64			hpk_data_version;
 	__u64			hpk_padding2;
-} __attribute__((packed));
+} __packed;
 
 void lustre_swab_hsm_user_state(struct hsm_user_state *hus);
 void lustre_swab_hsm_current_action(struct hsm_current_action *action);
-- 
1.9.1


