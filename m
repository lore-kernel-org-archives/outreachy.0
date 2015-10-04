X-GM-THRID: 6201721942564667392
X-Received: by 10.112.173.136 with SMTP id bk8mr691133lbc.20.1443950911002;
        Sun, 04 Oct 2015 02:28:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.82 with SMTP id m79ls402627lfg.19.gmail; Sun, 04 Oct
 2015 02:28:30 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr4179218lbb.19.1443950910299;
        Sun, 04 Oct 2015 02:28:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id ch7si209584wib.2.2015.10.04.02.28.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 02:28:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id lk2so78284556wic.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 02:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=/bCgGV1RNsvEkcxb9wdWo9q28n9HO6JYV7ilXDnAzLU=;
        b=pvqDLalo3tAfwAloNT9UrUFZVei+lVbfwkfSKj6xctFUCAhfpT7mygnzM1RdzRFS3A
         AlbMtn1b4TpsZXZy+PlQLInvoTgy+TVFNk5pTbArpkXzOKMaZPObxDAOQ1TqTmSgE724
         zJS81/bc3gxvM3Y9JD5mj9qgsdh0gL+68R+6Gs7WAnB+p0KAp8dlPHLAReAtrcucfjhk
         FHD1N/nhf2Pp8ZSfNOgKmbq35a8INck3SeNrMDit3xNVrTmsDwKXV6LlR9s8gRbzN5to
         5n/Bl7vOpFCQrxgPV/WtREFhkER2agqPwB2g/03LBk3krBSrB5srEARE/Ca3TwHu91KA
         Vc8g==
X-Received: by 10.181.13.241 with SMTP id fb17mr5564290wid.45.1443950910169;
        Sun, 04 Oct 2015 02:28:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id w1sm20641769wjz.37.2015.10.04.02.28.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 02:28:29 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: obdclass: Remove unused function obd_export_nid2str
Date: Sun,  4 Oct 2015 14:58:01 +0530
Message-Id: <1443950881-25330-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.5610F13C.0068,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove obd_export_nid2str as it is defined but not used anymore.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/genops.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index fbf216b..e0b8150 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -1104,14 +1104,6 @@ void class_fail_export(struct obd_export *exp)
 }
 EXPORT_SYMBOL(class_fail_export);
 
-static char *obd_export_nid2str(struct obd_export *exp)
-{
-	if (exp->exp_connection != NULL)
-		return libcfs_nid2str(exp->exp_connection->c_peer.nid);
-
-	return "(no nid)";
-}
-
 #if LUSTRE_TRACKS_LOCK_EXP_REFS
 void (*class_export_dump_hook)(struct obd_export *) = NULL;
 EXPORT_SYMBOL(class_export_dump_hook);
-- 
2.1.4


