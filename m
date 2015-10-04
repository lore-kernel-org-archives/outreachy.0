X-GM-THRID: 6201728963441590272
X-Received: by 10.66.227.196 with SMTP id sc4mr21204016pac.30.1443952546852;
        Sun, 04 Oct 2015 02:55:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.129.195 with SMTP id ny3ls1242549obb.31.gmail; Sun, 04 Oct
 2015 02:55:46 -0700 (PDT)
X-Received: by 10.182.80.193 with SMTP id t1mr21387790obx.0.1443952546505;
        Sun, 04 Oct 2015 02:55:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id uv4si3153783pac.0.2015.10.04.02.55.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 02:55:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so146515529pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 02:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=E/VqXWmkL7kAm9bsor8GF4KQYkl+sKqhBxqbAOjtkLQ=;
        b=cb4WLz4ukQqK8s9qa5EdPT7lwoZRJYWZxHBwqvqn3Dy3oddiwiPwOBFL0oJ39sAqaq
         CzYnkrvIEtkcNKVd8XYqxRYxOyUlcCmY40PTdkvqk3bwiv+J/m3b1uk21fzOsffXMyfe
         ECPhUXmcStvQFZ9a56KhUNg8R7/JqUEgx5ZlChH+OT0EYERRotvz5fmWVBko5z412IKS
         r3MT9rlx9d+3NPRltQ4emhHQNYQPpoDubwDyU0RNixv4+EAfOsg8/UlqQJlN2GDnX9yr
         /8UMzBmtyiRhLql/1hKaILo1Cpbk004g0yYCsVy+NgBXiJOicsBP0d19tJzzAA5+JH95
         hj+A==
X-Received: by 10.67.3.167 with SMTP id bx7mr32085795pad.47.1443952546327;
        Sun, 04 Oct 2015 02:55:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.240.135])
        by smtp.gmail.com with ESMTPSA id te7sm21305395pbc.87.2015.10.04.02.55.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 04 Oct 2015 02:55:45 -0700 (PDT)
Date: Sun, 4 Oct 2015 15:25:42 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Remove space after paranthesis
Message-ID: <20151004095542.GA7011@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space after paranthesis '('. Problem found using
checkpatch.pl
ERROR: space prohibited after that open parenthesis '('

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 665238c..9f0883b 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -600,9 +600,9 @@ unsigned int formatPllReg(pll_value_t *pPLL)
        On returning a 32 bit number, the value can be applied to any PLL in the calling function.
     */
 	ulPllReg =
-	FIELD_SET(  0, PANEL_PLL_CTRL, BYPASS, OFF)
-	| FIELD_SET(  0, PANEL_PLL_CTRL, POWER,  ON)
-	| FIELD_SET(  0, PANEL_PLL_CTRL, INPUT,  OSC)
+	FIELD_SET(0, PANEL_PLL_CTRL, BYPASS, OFF)
+	| FIELD_SET(0, PANEL_PLL_CTRL, POWER,  ON)
+	| FIELD_SET(0, PANEL_PLL_CTRL, INPUT,  OSC)
 #ifndef VALIDATION_CHIP
 	| FIELD_VALUE(0, PANEL_PLL_CTRL, POD,    pPLL->POD)
 #endif
-- 
1.9.1


