X-GM-THRID: 6200611211635064832
X-Received: by 10.182.252.200 with SMTP id zu8mr7269157obc.30.1443692306467;
        Thu, 01 Oct 2015 02:38:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.50.172 with SMTP id d12ls175060igo.10.canary; Thu, 01 Oct
 2015 02:38:26 -0700 (PDT)
X-Received: by 10.107.18.148 with SMTP id 20mr7935678ios.32.1443692306176;
        Thu, 01 Oct 2015 02:38:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si858647pbb.2.2015.10.01.02.38.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 02:38:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so71161592pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 02:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=veaq9D409rbyY30dit61inBtNovuEb9Vk9O6O+mWZ50=;
        b=LU7Z6KGGC6aKoKknjMYoneM1uVwXfNR+/7t6/ZoUOtU1C9NDe2WYDczheC7RP42OKj
         dFoYnTzkKWpjjkex6507h5XzPpsTzZK/Ydk3A1wPo7B7Migq1K6ar9XFum0JSXkoXg2v
         OQoGNO4ETi1OVdj1+eQenasq87MFtdX42dYfIoRdSNCOfEt13i9COGEKgtCy93QzGzk5
         i9RpppaXJ9bAk+76zUX4pGZRjkKMHz6+NgduIQNNzCuQDrgWmrqiXWin+l87OkzLMcLf
         Ckyhr7thMdRSi9Xi6llRFztn3bPj0QSpwTaVHumte3CTLya9KndoRsH3h5BWlBCdWivY
         2ZYA==
X-Received: by 10.66.194.138 with SMTP id hw10mr11083661pac.71.1443692306053;
        Thu, 01 Oct 2015 02:38:26 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id b7sm5520201pbu.20.2015.10.01.02.38.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 02:38:25 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: lustre: obdclass: Declare structure as static.
Date: Thu,  1 Oct 2015 15:07:58 +0530
Message-Id: <1443692278-9074-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com>
References: <1443692278-9074-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.560CFF11.0006,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare structure as static since it is not accessed anywhere
apart from this particular file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/lu_object.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index c892e82..897c089 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -440,7 +440,7 @@ LU_KEY_INIT_FINI(lu_global, struct lu_cdebug_data);
  * Key, holding temporary buffer. This key is registered very early by
  * lu_global_init().
  */
-struct lu_context_key lu_global_key = {
+static struct lu_context_key lu_global_key = {
 	.lct_tags = LCT_MD_THREAD | LCT_DT_THREAD |
 		    LCT_MG_THREAD | LCT_CL_THREAD | LCT_LOCAL,
 	.lct_init = lu_global_key_init,
-- 
2.1.4


