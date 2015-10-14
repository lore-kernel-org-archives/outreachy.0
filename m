X-GM-THRID: 6205587481887244288
X-Received: by 10.67.3.137 with SMTP id bw9mr4252012pad.4.1444850938808;
        Wed, 14 Oct 2015 12:28:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.33 with SMTP id z30ls425906qge.18.gmail; Wed, 14 Oct
 2015 12:28:58 -0700 (PDT)
X-Received: by 10.13.221.143 with SMTP id g137mr4153364ywe.48.1444850938326;
        Wed, 14 Oct 2015 12:28:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ce6si476635pad.0.2015.10.14.12.28.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:28:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id p3so14520031pay.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=BfvxVmNzTkATDjeF2SlJKlhKAMfuPFkU3PHKyJmgLwQ=;
        b=ILLJrbC+KsEcv4SKjKh+iKZC+gT2J6mlxe7DNByktbuGl1QStkajIUqss1Jl2TIZse
         kA26eTgaoBBLOVSyXhxkc9dYtaxweG2llicQuhinPWrW13M/HbwD27GkzjEEpG21vNia
         M9J2yeeCybgMmfvp95xUBLUMobkKthlX2VpBVS5j4vndn60jgrMLVuxfk8asjM2BlwzJ
         CGtP5sLZeW8sM/XcrnxyGzhlw/x1U9AKNLiijUWQqYs5lsxT2B9y0DkbjUmyPHE09EzP
         a8g6Uwmq1sXVa+fvViWEWIMVyJstcU20GRXoWxmoFCPCp0lIWhWXLB5iD3zm6LEEChEO
         saLA==
X-Received: by 10.66.190.6 with SMTP id gm6mr5285204pac.27.1444850938195;
        Wed, 14 Oct 2015 12:28:58 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.28.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:28:57 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 04/12] Staging: lustre: lnet: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:22 +0530
Message-Id: <1444850910-11408-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EACF8.009F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

The semantic patch used to find this:

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

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
index f1799aa..8989e36 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
@@ -3234,7 +3234,7 @@ kiblnd_cq_completion(struct ib_cq *cq, void *arg)
 	 * consuming my CQ I could be called after all completions have
 	 * occurred.  But in this case, ibc_nrx == 0 && ibc_nsends_posted == 0
 	 * and this CQ is about to be destroyed so I NOOP. */
-	kib_conn_t *conn = (kib_conn_t *)arg;
+	kib_conn_t *conn = arg;
 	struct kib_sched_info *sched = conn->ibc_sched;
 	unsigned long flags;
 
-- 
2.1.4


