X-GM-THRID: 1297817272320
X-Received: by 10.112.199.69 with SMTP id ji5mr1282351lbc.0.1424439495975;
        Fri, 20 Feb 2015 05:38:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.102 with SMTP id ud6ls249078lac.26.gmail; Fri, 20 Feb
 2015 05:38:15 -0800 (PST)
X-Received: by 10.112.119.141 with SMTP id ku13mr1291310lbb.7.1424439495532;
        Fri, 20 Feb 2015 05:38:15 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id r6si115556wix.0.2015.02.20.05.38.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 05:38:15 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f181.google.com with SMTP id r20so2962868wiv.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 05:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=8DqKz4HvpFL7Mun9mbfaw9gtuv/YGjp9zYsV04Peub8=;
        b=JgLfP13uqvHBOImoxzY83gsk2ns1l2uPTPt+aLPjnh3abp801cWndjwW1PYdsdqXaM
         UDWrkABhKbl7vsenS8AMWk3NDJNYIdZnbdoeFpkKLs9mEoJSa2PU6TG/2YkxVWCrhQmL
         b7seeScunwzRSSmElvae3eiEi1A3tw40Zk93lHtR5tPYmnlUa5z8PoNeNMraVdUyjwNy
         G8t4fIf+RBszrOckGaE+FMaIMBBlVz89h4kKf56LWi7HDPIUF30J+cDh7DmpmTjT4nTt
         gnPJAZuEcNzd6GVrkjuim4Z6wKGvosan+7BYBH8jZ8XiHEJ24wUwg+VyVVieckzoNGH1
         Rgpw==
X-Received: by 10.180.85.103 with SMTP id g7mr23990867wiz.19.1424439495371;
        Fri, 20 Feb 2015 05:38:15 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id gz3sm2467124wib.1.2015.02.20.05.38.13
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 05:38:14 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: octeon: Add blank line
Date: Fri, 20 Feb 2015 15:38:15 +0200
Message-Id: <1424439495-15824-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index a0f4868..0a16832 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -169,6 +169,7 @@ static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
 		int interface = cvmx_helper_get_interface_num(work->ipprt);
 		int index = cvmx_helper_get_interface_index_num(work->ipprt);
 		union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;
+
 		gmxx_rxx_frm_ctl.u64 =
 		    cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface));
 		if (gmxx_rxx_frm_ctl.s.pre_chk == 0) {
@@ -273,6 +274,7 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 		did_work_request = 0;
 		if (work == NULL) {
 			union cvmx_pow_wq_int wq_int;
+
 			wq_int.u64 = 0;
 			wq_int.s.iq_dis = 1 << pow_receive_group;
 			wq_int.s.wq_int = 1 << pow_receive_group;
@@ -296,6 +298,7 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 			union cvmx_pow_wq_int_cntx counts;
 			int backlog;
 			int cores_in_use = core_state.baseline_cores - atomic_read(&core_state.available_cores);
+
 			counts.u64 = cvmx_read_csr(CVMX_POW_WQ_INT_CNTX(pow_receive_group));
 			backlog = counts.s.iq_cnt + counts.s.ds_cnt;
 			if (backlog > budget * cores_in_use && napi != NULL)
-- 
1.8.3.2


