X-GM-THRID: 6205566056947253248
X-Received: by 10.129.107.139 with SMTP id g133mr3952338ywc.38.1444848607785;
        Wed, 14 Oct 2015 11:50:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.136 with SMTP id e8ls340531qga.40.gmail; Wed, 14 Oct
 2015 11:50:07 -0700 (PDT)
X-Received: by 10.31.165.84 with SMTP id o81mr3898281vke.11.1444848607378;
        Wed, 14 Oct 2015 11:50:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id zg1si1066342pbb.2.2015.10.14.11.50.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ur7so12694277pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=cAZScV+n7PDVTzcgDNPTStXy8PCgWY4tGbBNhrxSgu0=;
        b=VPsHJ+897TFCM8z2sHh2yDZRcP4tXSjX+MzLM49URo7mwdfELDVM8DowW7D+Oa4YCL
         BUpgqGoddgS6f+zXha5Y2kLutw0m7Qz162T92KZGYzR2w7i7RXCFcQKJvO1dHWtsXE7+
         fYBFYD7j84OmmfiC+pcTC4kAyhMslo42lPI0SgzSv/aImM1sqVYzSwpBn8F/V1YGYvvq
         TZfYTLklWFH6l7rbF16j0mDsY6aBHLf5P29M4O/brrrqkJqDYhJGWQiwo5p+UgSLOlFv
         770u6AQQMRZasxzAQs+Br8F9NJGw9FZecGUlQPGBy24JYU4V+XhKdSFjX4cqY5mJJx+h
         z3KA==
X-Received: by 10.68.190.170 with SMTP id gr10mr4978953pbc.91.1444848607180;
        Wed, 14 Oct 2015 11:50:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id rk2sm10971965pbc.75.2015.10.14.11.50.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:50:06 -0700 (PDT)
Date: Thu, 15 Oct 2015 00:20:03 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/6] staging: lustre: osc: Remove useless cast on void
 pointer
Message-ID: <1fd382602338da45f57dc5eb8e966109ed3b023e.1444847780.git.amitoj1606@gmail.com>
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
 drivers/staging/lustre/lustre/osc/osc_request.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 225e5ed..2ab94c5 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -2664,7 +2664,7 @@ static int osc_iocontrol(unsigned int cmd, struct obd_export *exp, int len,
 					       data->ioc_offset);
 		goto out;
 	case OBD_IOC_POLL_QUOTACHECK:
-		err = osc_quota_poll_check(exp, (struct if_quotacheck *)karg);
+		err = osc_quota_poll_check(exp, karg);
 		goto out;
 	case OBD_IOC_PING_TARGET:
 		err = ptlrpc_obd_ping(obd);
@@ -2731,8 +2731,7 @@ static int osc_get_info(const struct lu_env *env, struct obd_export *exp,
 		ptlrpc_req_finished(req);
 		return rc;
 	} else if (KEY_IS(KEY_FIEMAP)) {
-		struct ll_fiemap_info_key *fm_key =
-				(struct ll_fiemap_info_key *)key;
+		struct ll_fiemap_info_key *fm_key = key;
 		struct ldlm_res_id res_id;
 		ldlm_policy_data_t policy;
 		struct lustre_handle lockh;
@@ -2854,7 +2853,7 @@ static int osc_set_info_async(const struct lu_env *env, struct obd_export *exp,
 		struct client_obd *cli = &obd->u.cli;
 
 		LASSERT(cli->cl_cache == NULL); /* only once */
-		cli->cl_cache = (struct cl_client_cache *)val;
+		cli->cl_cache = val;
 		atomic_inc(&cli->cl_cache->ccc_users);
 		cli->cl_lru_left = &cli->cl_cache->ccc_lru_left;
 
-- 
1.9.1


