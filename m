X-GM-THRID: 6201804435735183360
X-Received: by 10.129.155.5 with SMTP id s5mr21387049ywg.38.1443970118130;
        Sun, 04 Oct 2015 07:48:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.220.200 with SMTP id py8ls1109382obc.58.gmail; Sun, 04 Oct
 2015 07:48:36 -0700 (PDT)
X-Received: by 10.182.107.162 with SMTP id hd2mr22554462obb.29.1443970116753;
        Sun, 04 Oct 2015 07:48:36 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si3067732pbb.0.2015.10.04.07.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 07:48:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id lk4so150034010pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=53/ZjWcfoP85uxfbNqy78jXxfpKAb0Kj6Lwuhjk7ag4=;
        b=BrphSKvWcYqQHx82BIfdZd96HC3VWrrftghqN/fZkAUE84vjhBbZ9mgn8RJByIuzQt
         MVMvpM+0bmB47Gzq81k9RT3gOF5i2/Rn5EWDrj1eYu350u9VP0VKHhpH0/ii+U3r/SD1
         vDwMlBaroHvRlCb7UcO4e40JOF+SOX6aw1wvBHvBbhFna52oCfHFAXfcD6fYbcCUXXSi
         dBTcMXun6AATZjX0leh2I7ka/YgBM5XN8pn6fb5cqDviEFB38hgqtFVyqkCFxvtXc0WH
         aelnHBhjeWBOg8UcDp5XCLESn2acM0AVkKBjDLcw0hyuG9D0x5QlH5jKULdXhEhWUfZ3
         wOlw==
X-Received: by 10.68.137.3 with SMTP id qe3mr34152943pbb.26.1443970116594;
        Sun, 04 Oct 2015 07:48:36 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.217.58])
        by smtp.gmail.com with ESMTPSA id ux7sm22577577pac.10.2015.10.04.07.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 04 Oct 2015 07:48:36 -0700 (PDT)
Date: Sun, 4 Oct 2015 20:18:32 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: sm750fb: Add space around ':'
Message-ID: <20151004144832.GA9774@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add space around operator ':'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that ':' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 2aacb01..03e259d 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -410,7 +410,7 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 			M = quo * X;
 			M += fl_quo * X / 10000;
 			/* round step */
-			M += (fl_quo * X % 10000) > 5000 ? 1:0;
+			M += (fl_quo * X % 10000) > 5000 ? 1 : 0;
 			if (M < 256 && M > 0) {
 				unsigned int diff;
 
-- 
1.9.1


