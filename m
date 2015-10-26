X-GM-THRID: 6210059285862285312
X-Received: by 10.50.41.7 with SMTP id b7mr17737314igl.12.1445892226930;
        Mon, 26 Oct 2015 13:43:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.94 with SMTP id u91ls1840820ioi.42.gmail; Mon, 26 Oct
 2015 13:43:46 -0700 (PDT)
X-Received: by 10.66.221.42 with SMTP id qb10mr17581178pac.35.1445892226613;
        Mon, 26 Oct 2015 13:43:46 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id zg1si3791256pbb.2.2015.10.26.13.43.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 13:43:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so198119010pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 13:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=fSNwAw+yyqJjfp3i5jcTlCjl9vLRbTwujSInOUb7Pzk=;
        b=Y7MVPpgHIrYfjjWdTv9scmwt8tqmubDab4fldm5b/xhrDRGqO77lFP2IyrSuaRVR6b
         8yVzIlXM2OVHTA3z9keqNjh7NOnj/dC1PeJaIv/xkyc1UBnG3q/NhHlaFoJbnUnWndtw
         7m3J14gjP/rVGUbY5n8adb+Q1Tma/ozpKcWx2kvL9Kt9zVQBkXycmwq4gMMI+OBS++B2
         ilfyaCGrcJWANNybGNnI1OhXr9WrX8HGdW3Q2VNzPRD/NZP16SqpaR4GpApvfhpoM1ug
         DJnq3C/qqPyKXkYiRwybqnexNSVJD9dvL7BuAJoqxo0Q2JTlPD8wUkVjSQg9jhOZvOCX
         efKA==
X-Received: by 10.66.194.105 with SMTP id hv9mr23594167pac.79.1445892226524;
        Mon, 26 Oct 2015 13:43:46 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ci2sm35515504pbc.66.2015.10.26.13.43.45
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 13:43:46 -0700 (PDT)
Date: Tue, 27 Oct 2015 02:13:50 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 2/4] Staging: panel: Removing multiple blank lines
Message-ID: <bc5959a4e2b99459639017dba20457f0a04c84df.1445891839.git.theonly.ultimate@gmail.com>
References: <cover.1445891839.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445891839.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue

CHECK: Please don't use multiple blank lines

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/panel/panel.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index 030a0cf..11a50f6 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -576,7 +576,6 @@ static int keypad_enabled = NOT_SET;
 module_param(keypad_enabled, int, 0000);
 MODULE_PARM_DESC(keypad_enabled, "Deprecated option, use keypad_type instead");
 
-
 static const unsigned char *lcd_char_conv;
 
 /* for some LCD drivers (ks0074) we need a charset conversion table. */
-- 
1.9.1


