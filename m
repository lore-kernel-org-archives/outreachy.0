X-GM-THRID: 6205566056947253248
X-Received: by 10.107.157.82 with SMTP id g79mr4432321ioe.29.1444846488413;
        Wed, 14 Oct 2015 11:14:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.4.5 with SMTP id g5ls1898693igg.6.canary; Wed, 14 Oct 2015
 11:14:48 -0700 (PDT)
X-Received: by 10.68.131.193 with SMTP id oo1mr3796044pbb.6.1444846488091;
        Wed, 14 Oct 2015 11:14:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ce6si442750pad.0.2015.10.14.11.14.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:14:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id p3so13011036pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xJHRxbysPcINuJW2jHBjMbZiPIVfnrgc5w+J2F5YJ48=;
        b=0sGUP0GWcoj/s33aOL7399uc2KOKc5NDww7RP3lFN3OiAOAci5ZwSp1nLaQGUV7xEI
         gbzobNpDTiU3WD2K1liFI7uog2dt6WkwaW9zLPpQBPtWgDEX5a60nWWyxYd1axPPirdj
         wN00umRUkEPDN8EZqPfD3oYDEcBrn2GevxabPZt+oT6pCz2a0mJSXKncaFLrWJADTzoc
         fH282KCMSYFkupY6QkjsvpgLgnLN04CB4BdxFWZSjSlE3Q+grIt3FgDQdOX99XmhtGQK
         IsqYlPYpfPdVSFBmAWhXAaw6+6f7atNf2U5NAagG1dSY/BJOd0HDN2PJUJMj7Qwe5+eX
         6JYw==
X-Received: by 10.68.129.231 with SMTP id nz7mr4996684pbb.53.1444846487959;
        Wed, 14 Oct 2015 11:14:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id dt1sm10863979pbc.96.2015.10.14.11.14.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 11:14:47 -0700 (PDT)
Date: Wed, 14 Oct 2015 23:44:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: lustre: osc: Remove useless cast on void pointer
Message-ID: <dd14e77b68aecf24c0cbee9f6c77f982a5d7c9d6.1444845733.git.amitoj1606@gmail.com>
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


