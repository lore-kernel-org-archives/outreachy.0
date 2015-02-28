X-GM-THRID: 4525053181952
X-Received: by 10.180.83.168 with SMTP id r8mr1063519wiy.6.1425122734845;
        Sat, 28 Feb 2015 03:25:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.26.165 with SMTP id m5ls275071lag.31.gmail; Sat, 28 Feb
 2015 03:25:34 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr2658194lai.4.1425122734428;
        Sat, 28 Feb 2015 03:25:34 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id r6si291611wix.0.2015.02.28.03.25.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 03:25:34 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevl61 with SMTP id l61so24892941wev.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 03:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cZFA07MArLL1ypuMokxUrRmfLcfA++abxnPm9dOk2WI=;
        b=JOLlmjqYGAfC9xU21jRLgmkx8d6ZrcVZveuTPoRsBAJF/sP5nHj09OxBsmrW7lw4In
         oJiqrb9ldjw/6nqwB2t+6nAS2BonJhtP7yejiQ/PwfoB7PnbGlcz29UBdkc8HL3/0M10
         Doa2VDVJ7ySuiMw1PdnYSQBOkHznYBLt9lxM6gzVF3ln/z5NBU9ZAsP/m9W692dd/XVc
         FrZwjCMUGR4I6vPJQRJp7/yW0ciAsFTJLzy6SoJVb2N5yuFnoIRHCyJefwrf1LwgY1Nz
         HvwJWJixfRtKBHcncTg/Pf3AN3GdKjFA/JWNU9lDaTdhGFaXHYr53psUxgG0KpJdvcaq
         UoYQ==
X-Received: by 10.194.178.161 with SMTP id cz1mr38270680wjc.102.1425122734335;
        Sat, 28 Feb 2015 03:25:34 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id uc18sm6701269wib.0.2015.02.28.03.25.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 03:25:33 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH 06/10] Staging: lustre: Add blank line after declarations
Date: Sat, 28 Feb 2015 13:25:11 +0200
Message-Id: <1425122715-2938-6-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>
References: <1425122715-2938-1-git-send-email-dilekuzulmez@gmail.com>

The following patch fixes the checkpatch.pl warning:
drivers/staging/lustre/lustre/ptlrpc/pinger.c WARNING: Missing a
blank line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/pinger.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/pinger.c b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
index 340d98a..5a459c2 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/pinger.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
@@ -113,6 +113,7 @@ int ptlrpc_ping(struct obd_import *imp)
 void ptlrpc_update_next_ping(struct obd_import *imp, int soon)
 {
 	int time = soon ? PING_INTERVAL_SHORT : PING_INTERVAL;
+
 	if (imp->imp_state == LUSTRE_IMP_DISCON) {
 		int dtime = max_t(int, CONNECTION_SWITCH_MIN,
 				  AT_OFF ? 0 :
@@ -150,6 +151,7 @@ long pinger_check_timeout(unsigned long time)
 	mutex_lock(&pinger_mutex);
 	list_for_each_entry(item, &timeout_list, ti_chain) {
 		int ti_timeout = item->ti_timeout;
+
 		if (timeout > ti_timeout)
 			timeout = ti_timeout;
 		break;
-- 
1.9.1


