X-GM-THRID: 6210059285862285312
X-Received: by 10.50.79.234 with SMTP id m10mr17685474igx.5.1445892189445;
        Mon, 26 Oct 2015 13:43:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.214 with SMTP id l83ls1902198ioi.102.gmail; Mon, 26
 Oct 2015 13:43:09 -0700 (PDT)
X-Received: by 10.50.30.37 with SMTP id p5mr17648086igh.11.1445892188979;
        Mon, 26 Oct 2015 13:43:08 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si3722433pbb.0.2015.10.26.13.43.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 13:43:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id z6so198075651pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 13:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=R5bGEge7kLGfTxnTPttsxk8RBNwErjiPtqoMmqaxX3Q=;
        b=ywmCJFJwN9lwoSWXkkpglcuGtyWwR0VLMN43CAKfIbOR75C7ewcQgBLOuQcU3Z2RhC
         yuo2YQUULRF9dBQxsWLVJ+kR+MIL2Ja95241Q6jw6FSBXpL8XXPoUpZhfFEiUgKuhdeB
         znyxqlyMbyIc1/Yq9vPcOp+xyZQy0PxfAN51NakuRMd+QbF5P3MvQZaPAdsQbfOUdO6R
         fEyJ8SZxvpcNkPPYoVexudU0yh67FSYALyyz9HTkFlUZPRYdM0l+bADHlK9ouK4NUrCy
         h2kRBLJSnwALuwhaS+X5wPqTGJbRZkKRzJ5O3fLGNwhD+fWUWeBDqTOXNpKJrnDxDJ8a
         rcxQ==
X-Received: by 10.68.135.161 with SMTP id pt1mr24130544pbb.80.1445892188871;
        Mon, 26 Oct 2015 13:43:08 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yk5sm515183pac.5.2015.10.26.13.43.08
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 13:43:08 -0700 (PDT)
Date: Tue, 27 Oct 2015 02:13:12 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 1/4] Staging: panel: spaces preferred around that '/'
Message-ID: <9bba2654431dadb3333f4cc869be1f2cf3fe5bbf.1445891839.git.theonly.ultimate@gmail.com>
References: <cover.1445891839.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445891839.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue:

CHECK: spaces preferred around that '/'

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/panel/panel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index a7e3875..030a0cf 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -71,7 +71,7 @@
 #define KEYPAD_BUFFER		64
 
 /* poll the keyboard this every second */
-#define INPUT_POLL_TIME		(HZ/50)
+#define INPUT_POLL_TIME		(HZ / 50)
 /* a key starts to repeat after this times INPUT_POLL_TIME */
 #define KEYPAD_REP_START	(10)
 /* a key repeats this times INPUT_POLL_TIME */
-- 
1.9.1


