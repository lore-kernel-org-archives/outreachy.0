X-GM-THRID: 6202887067130658816
X-Received: by 10.180.210.212 with SMTP id mw20mr1088366wic.3.1444332346115;
        Thu, 08 Oct 2015 12:25:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.130 with SMTP id hc2ls230234wib.1.canary; Thu, 08 Oct
 2015 12:25:45 -0700 (PDT)
X-Received: by 10.180.188.211 with SMTP id gc19mr1092559wic.6.1444332345249;
        Thu, 08 Oct 2015 12:25:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id bn1si385107wib.0.2015.10.08.12.25.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:25:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id fx3so42221463wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=n/zuYYpEnlBOINuLmwDAaG6T4bNqSPaXfrmF64KTys0=;
        b=RZ0zrKlPhvPVOsQ0AODdVJB3cDk1gCaZFdrFKz+lLeysgsMwMRLgYF1KLA7SJJAwK7
         gRTHNHszBXe1JXoc+Q37dtZl9hTJHn2tndBixN5RafSgFDf0HKANxhvd7VM5DeyUBmog
         52QX6qdNql2EKjs4MPnA++Esn06G5xOV/FSLooqdKb96ijv5GVJNwR/cRD+6TBr0qCfh
         E+i63RybtTShMNczshVo5GGqd7e+5Ogtovhaq7lmtfROVSUNAC4pn6zj6r+tr+UrkYpu
         xnX7rFp0JO3a96ROghKjCx7vhM5LANp4skiv44n9yZTs5aFyce7LEJW3NkFG6fJV8zEu
         AYvw==
X-Received: by 10.180.87.194 with SMTP id ba2mr5815549wib.11.1444332345151;
        Thu, 08 Oct 2015 12:25:45 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv5sm75362wic.7.2015.10.08.12.25.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 12:25:44 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/3] Staging: rtl8188eu: core: Use ARRAY_SIZE macro
Date: Fri,  9 Oct 2015 00:55:19 +0530
Message-Id: <1444332319-654-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444332319-654-1-git-send-email-shraddha.6596@gmail.com>
References: <1444332319-654-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5616C337.007A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

ARRAY_SIZE is more concise to use when the size of an array is divided
by the size of its type.

Changes made using Coccinelle-

@@
type T;
T[] E;
@@

- (sizeof(E)/sizeof(T))
+ ARRAY_SIZE(E)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 drivers/staging/rtl8188eu/core/rtw_rf.c       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 0270755..d8a0895 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -3926,7 +3926,7 @@ static unsigned int OnAction(struct adapter *padapter,
 
 	category = frame_body[0];
 
-	for (i = 0; i < sizeof(OnAction_tbl)/sizeof(struct action_handler); i++) {
+	for (i = 0; i < ARRAY_SIZE(OnAction_tbl); i++) {
 		ptable = &OnAction_tbl[i];
 		if (category == ptable->num)
 			ptable->func(padapter, precv_frame);
diff --git a/drivers/staging/rtl8188eu/core/rtw_rf.c b/drivers/staging/rtl8188eu/core/rtw_rf.c
index 1170dd0..6983c57 100644
--- a/drivers/staging/rtl8188eu/core/rtw_rf.c
+++ b/drivers/staging/rtl8188eu/core/rtw_rf.c
@@ -52,7 +52,7 @@ static struct ch_freq ch_freq_map[] = {
 	{216, 5080},/* Japan, means J16 */
 };
 
-static int ch_freq_map_num = (sizeof(ch_freq_map) / sizeof(struct ch_freq));
+static int ch_freq_map_num = ARRAY_SIZE(ch_freq_map);
 
 u32 rtw_ch2freq(u32 channel)
 {
-- 
2.1.4


