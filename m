X-GM-THRID: 6201802870110552064
X-Received: by 10.13.222.196 with SMTP id h187mr22301404ywe.0.1443969754826;
        Sun, 04 Oct 2015 07:42:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.33 with SMTP id c30ls2207618qgc.61.gmail; Sun, 04 Oct
 2015 07:42:34 -0700 (PDT)
X-Received: by 10.129.74.198 with SMTP id x189mr22539422ywa.53.1443969754268;
        Sun, 04 Oct 2015 07:42:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pe1si2794957pac.2.2015.10.04.07.42.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 07:42:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv12so153877876pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 07:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=KE0K8JRR23C2Z7I+F7U5imujzU91W68PWqfnxTOjhKY=;
        b=Dsy4mrrIZy+B5xZzkxNTN5Q5J2EMrBoCehZzM7efTvd/n5HtjPXIO8LRM71M/YaQ/i
         QEYR5kimetToPKDmmGZRA0sCopgC9gcR/vGHgfaVyCUCWVf0wMPoTroOM0EysuaZYNjH
         zBsXQU76x9VLi8olFWbqTLHb1DtFLCep5Z2d9/PAeVeouuWVJPhdEEo6ToR6rjBO3/Y8
         0bWpYvcbEDv36Bh1uCxODYqwzgVgNnpygm8I26i3hyQegec74r/TDcdTbykf6AJvW8Dl
         wXVXaTzuPGAKqThAPLBMVUeKQUwmpfh1baGU6tHW3DfX2CAF015MMQErlQcB611GzOfl
         BA8g==
X-Received: by 10.68.109.2 with SMTP id ho2mr34043793pbb.158.1443969754094;
        Sun, 04 Oct 2015 07:42:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.217.58])
        by smtp.gmail.com with ESMTPSA id ps1sm11385191pbb.66.2015.10.04.07.42.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 04 Oct 2015 07:42:33 -0700 (PDT)
Date: Sun, 4 Oct 2015 20:12:30 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: sm750fb: Add space around '*'
Message-ID: <20151004144230.GA9688@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add space around operator '*'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '*' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 8d167fc..057a4c3 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -407,10 +407,10 @@ unsigned int calcPllValue(unsigned int request_orig, pll_value_t *pll)
 
 		for (d = xcnt - 1; d >= 0; d--) {
 			X = xparm[d].value;
-			M = quo*X;
+			M = quo * X;
 			M += fl_quo * X / 10000;
 			/* round step */
-			M += (fl_quo*X % 10000) > 5000?1:0;
+			M += (fl_quo * X % 10000) > 5000?1:0;
 			if (M < 256 && M > 0) {
 				unsigned int diff;
 
-- 
1.9.1


