X-GM-THRID: 6329968789142110208
X-Received: by 10.98.22.149 with SMTP id 143mr2889426pfw.10.1473810715835;
        Tue, 13 Sep 2016 16:51:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.121.132 with SMTP id z126ls244790itc.5.canary; Tue, 13 Sep
 2016 16:51:55 -0700 (PDT)
X-Received: by 10.66.85.104 with SMTP id g8mr2834580paz.33.1473810715436;
        Tue, 13 Sep 2016 16:51:55 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z4si278997pam.0.2016.09.13.16.51.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 16:51:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id z84so217023pfi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 16:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=FUS5GV40uG2OeUGUS+YxmuQgjhTQVSB/gksAOjIovL0=;
        b=jDeN250m0W8w/7vfXNdBamKR2DYs3f7amR88/CApiRMCKpmjxcHfpI6hQ3JLMSjXLt
         XtvDi91v5n41HnQtrbU+k1JNUO6VIvfF5Kt5XbMXO6gc0etptjC4wjQVyML0FT3QzSOS
         ugTHUSv3d/hy/dHl4Q3Kbi1LLe09Kv5DadlTNp2FLL7O/sSTrq8FOPQdTNzmInlKpdxU
         XSgEP6/LBXAPAZcY8r9RKTytnQT1t/r897WuRxl1XyEUCXNqN6RDZxxM2XQWWPMKgM3O
         TN94IrP3stxh1NEFeWP3gCeZdtmZQUHubu2s5KVSVNeO0aq2bdMrw2xRxEIn2NePMQ/O
         tLYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=FUS5GV40uG2OeUGUS+YxmuQgjhTQVSB/gksAOjIovL0=;
        b=h6lbZ69hKRjkZDk49yOPDMTMK5M+K3aW8vRW1UVNlOdlfdyiX8KEo38egBzlB6rwb+
         gjlWILngRfOnHJnBzdXovqubOSxCDrl/ozg9igCpu174dnmIIZSwVmmAdsnlGE6kt5tL
         aKTDaLz3x1OoTNOSmo0reDQabZJZqewlZNjJ6zmFvBBieyBdpHVWT5w7KQ04aTaxtYS4
         ZwIKez7PPsJ4PVhxu8Gnh5KWhF5o8XBU0wWlkXCNAJJxqnVVSLncmenNdFRj0gh1hhgB
         GJjmj3lUNPiGuztX0umgo5MaxYtyqXERWyBtZdpw5Ih6doLh6iaLgTxnNQDaNyw8FXwi
         /qVw==
X-Gm-Message-State: AE9vXwMRGWD+3YEcyOACbHSz/WTN5eQAWhXVdvzQtQH1Q0IAqhUfADDphNIXyyDoA+bEpA==
X-Received: by 10.98.210.202 with SMTP id c193mr6017735pfg.161.1473810715263;
        Tue, 13 Sep 2016 16:51:55 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d5sm33439090pfa.44.2016.09.13.16.51.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 16:51:54 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 4/6] staging: xgifb: add spaces around |
Date: Wed, 14 Sep 2016 05:21:03 +0530
Message-Id: <8dbef9aa38c31ffcdcd4f207a2bfa5c645a0502f.1473809551.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>
In-Reply-To: <cover.1473809550.git.gs051095@gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com>

Fixed the checkpatch issue spaces preferred around that '|'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 41dcc6d3..b0ec981 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1914,7 +1914,7 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
 		}
 	}
 
-	if (pVBInfo->VBType & (VB_SIS301LV|VB_SIS302LV|VB_XGI301C)) {
+	if (pVBInfo->VBType & (VB_SIS301LV | VB_SIS302LV | VB_XGI301C)) {
 		if (temp & SetYPbPr) {
 			/* shampoo add for new scratch */
 			temp = xgifb_reg_get(pVBInfo->P3d4, 0x35);
-- 
2.9.2


