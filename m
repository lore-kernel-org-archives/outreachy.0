X-GM-THRID: 6201803660128681984
X-Received: by 10.182.52.132 with SMTP id t4mr22003099obo.16.1443969938958;
        Sun, 04 Oct 2015 07:45:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.80 with SMTP id i77ls1291211iod.17.gmail; Sun, 04 Oct
 2015 07:45:38 -0700 (PDT)
X-Received: by 10.107.166.136 with SMTP id p130mr21640087ioe.33.1443969938674;
        Sun, 04 Oct 2015 07:45:38 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si3039856pab.1.2015.10.04.07.45.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 07:45:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv12 with SMTP id fv12so153929908pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 07:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=VE3/2CU9G8vSjFt4ChVSBBhsaoErVn92i3lU+tedUt4=;
        b=bCAY/TmJHiJnim5MrayW+MHDNHhN0FATkztLx49+C4owGlJmp6alTYCJYhV6Pw+m2K
         GRc94Bh8bgrVnZoX4XE4a+OOaY4tbpXwbETa1p9h/lAO+x8L297kMsMZxdtKz3gB/mk0
         UKLQbpTmvfGA5YQkcZUlSa7uvEslNCzDoYy3Zi7rnSvjK4uR/7ejfPssI+ODG4gXDz6v
         TdVPlLa+wvlOk+VuAj6mV2tmOWKZ2iVXNypRQ3tNR5+BUwiLLKfVoI4Jq1hP8yvnbOF7
         dpbegxC8+8oOzDr6rgPqvH2EjVriYfjG+xL599FPA1int2UjoHOw717Qllot1zfqLSRd
         1U8A==
X-Received: by 10.66.138.11 with SMTP id qm11mr33497366pab.126.1443969938504;
        Sun, 04 Oct 2015 07:45:38 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.217.58])
        by smtp.gmail.com with ESMTPSA id yq2sm22410072pbb.39.2015.10.04.07.45.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 04 Oct 2015 07:45:38 -0700 (PDT)
Date: Sun, 4 Oct 2015 20:15:34 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: sm750fb: Add space around '?'
Message-ID: <20151004144534.GA9743@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add space around operator '?'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '?' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 057a4c3..2aacb01 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -410,7 +410,7 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 			M = quo * X;
 			M += fl_quo * X / 10000;
 			/* round step */
-			M += (fl_quo * X % 10000) > 5000?1:0;
+			M += (fl_quo * X % 10000) > 5000 ? 1:0;
 			if (M < 256 && M > 0) {
 				unsigned int diff;
 
-- 
1.9.1


