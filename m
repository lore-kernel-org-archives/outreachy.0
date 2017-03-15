X-GM-THRID: 6397563110488539136
X-Received: by 10.129.115.197 with SMTP id o188mr641274ywc.114.1489548736594;
        Tue, 14 Mar 2017 20:32:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.218 with SMTP id i26ls1203373ote.48.gmail; Tue, 14 Mar
 2017 20:32:16 -0700 (PDT)
X-Received: by 10.157.56.251 with SMTP id k56mr527076ote.28.1489548735982;
        Tue, 14 Mar 2017 20:32:15 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by gmr-mx.google.com with SMTPS id v64sor8844ioi.1.1969.12.31.16.00.00
        for <outreachy-kernel@googlegroups.com>
        (Google Transport Security);
        Tue, 14 Mar 2017 20:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of tahia.khan@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=tahia.khan@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DiknY/5ktBZ9+A7Ph2ejJ14dUry/5/Oxn8yQ7kkY+1s=;
        b=BF9tJkZwkcdgbRBcZHZ3TvYycU5/nByOBpQ3ofB5UzG/2x+lNsGWb0j/WBU+TrvtHk
         6M8YB6UM0RPsDwi7f1AelNVVluMyf2HhN9r5QrEMO0h7Z9pSp6N9IAYHr0THWTR3fzt5
         Xim5BsSa1xuR4XsOeZb1O5H9wmXoL5RffZQcixqc2Z4kSqmfy2BIebXwpq3j71th9pZY
         ec8wukyMNux0BraMqCGWYTLDoobutb7B1fitcdK//kz9j39xxiHTqXQFonOvLEJUUBpP
         6aLPgJrO+Lbs/STh1PCvHT7zv06btZZt0mPEiEHHphrFrKU16ffp4nFgJkjkR36Wer/M
         R7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DiknY/5ktBZ9+A7Ph2ejJ14dUry/5/Oxn8yQ7kkY+1s=;
        b=OXY3d0Pg675mAm5I6BVlwJQD0yOaXTfthH6Z9lDYI6usXFYJ65vKhUDvbzc9x9XfmH
         N1neTM9iInkmU0QuTvxQAiUTVs2G/IVKGXkKGNzp8a69Ykl6T2zpNMiLMMDEuYsMbfoz
         sciH7Ddt4xboJuR003NvNpGumYrID5W8kGLLD6lXGwBG7F3oPm8ILnGnE3ku2yoryq+S
         dYEyiBDrBasdCpkLZ9JBOTGMalwsi/rbL9OkPKQbI01DKVZGVradRmKAjQISgngYCAm2
         xmKJhE/TY1Kr7rKKQHt/oFrF7DwjEHkxxEme/A72SFyeFUpQBdo1nzGo4mCfpnUOUsYP
         vLWQ==
X-Gm-Message-State: AFeK/H3u9JQ1j6Qtf9wvlu9Fsh7J8OGUPzB87VUdUUT4m4m1u7BeZLu6VXiISEP33EE+ow==
X-Received: by 10.107.41.212 with SMTP id p203mr3365151iop.13.1489548735781;
        Tue, 14 Mar 2017 20:32:15 -0700 (PDT)
Return-Path: <tahia.khan@gmail.com>
Received: from coolbox (24-212-136-169.cable.teksavvy.com. [24.212.136.169])
        by smtp.gmail.com with ESMTPSA id m125sm944637iom.38.2017.03.14.20.32.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 20:32:14 -0700 (PDT)
Date: Tue, 14 Mar 2017 23:32:13 -0400
From: Tahia Khan <tahia.khan@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: sm750fb: Removes unused variable from
 sm750_hw_copyarea
Message-ID: <20170315033213.GA20913@coolbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes unused variable opSign from sm750_hw_copyarea. Identified
using coccinelle script 'unused.cocci'.

Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 6db9b90..6be86e4 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -144,11 +144,9 @@ unsigned int height, /* width and height of rectangle in pixel value */
 unsigned int rop2)   /* ROP value */
 {
 	unsigned int nDirection, de_ctrl;
-	int opSign;
 
 	nDirection = LEFT_TO_RIGHT;
 	/* Direction of ROP2 operation: 1 = Left to Right, (-1) = Right to Left */
-	opSign = 1;
 	de_ctrl = 0;
 
 	/* If source and destination are the same surface, need to check for overlay cases */
@@ -212,7 +210,6 @@ unsigned int rop2)   /* ROP value */
 		sy += height - 1;
 		dx += width - 1;
 		dy += height - 1;
-		opSign = -1;
 	}
 
 	/*
-- 
2.7.4


