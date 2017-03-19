X-GM-THRID: 6399195765741191168
X-Received: by 10.129.182.11 with SMTP id u11mr12050416ywh.149.1489928869761;
        Sun, 19 Mar 2017 06:07:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.232 with SMTP id k37ls11760806ote.15.gmail; Sun, 19 Mar
 2017 06:07:49 -0700 (PDT)
X-Received: by 10.13.245.67 with SMTP id e64mr12932134ywf.127.1489928869431;
        Sun, 19 Mar 2017 06:07:49 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si2225086pfx.8.2017.03.19.06.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 06:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so7253608pgf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 06:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CXrI0Uj+HcrOiy9ZX3Phyn49A679Hg5LyKl0lBQvu7I=;
        b=OM5gIa9f2r7JSryWo/un5JuPLY0LOYrVWxszA7O5vCsyehgnaGlBlGWyArhaNzYEdh
         cZznTvbGD/r8Hd3mLYZyf/42DqZ1fOv/UOj/jPnewG/dP96DBrYWJZw70fhA40Shrv+j
         rupvzmCiIv+r2YTadxhXRiE+Xc8U0ePVfDO9qS0GVQ/8hM4R4LnypobnjtWHnLNCn7AV
         boLkDzm3RzQoLthD25PoGuS9WtL6KbUVx6nT96Y6fK6qo12MWm863U06a+R6mQsg861i
         swMlYaOG2DCkJIsI52oo3UvMn2JFn2+NYC19Vt8+w1oWJfPc65J1KHVrSqO09QmctZ+c
         5kDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CXrI0Uj+HcrOiy9ZX3Phyn49A679Hg5LyKl0lBQvu7I=;
        b=NWk3bNls6HPLRNK56KXdmioE66AFl3AbhKgxnqSy+7k6ffTffJsfpimgX7xAXt9qR4
         9RRFZpMKvdODYv/G+NCDKfPuHd1F+83jarKqWGhMxxR4LmUSAgRq4Xlnbr46xBd0ieZz
         56sUUR48kkuDu4u1TvFnevpFRn8ks11ABCobJ3l/q8EoGnR+bDFeINn4BTJKgl1etzmS
         oOQ3yaZOhr3NGmkmjwlWyz9ex4qg+D8Fs/Uf35ByRaPpVQNVzj0t1epAequXn3weP7GV
         xOvAY8gkhBKgmjlP20dlbli7OXlZG77XVS+/6bLuELkEk/FyzQOAD+sfBAuGNJRT5SPi
         aiQg==
X-Gm-Message-State: AFeK/H0N55OF1yRDXFnm9WO1P5lZUkh3z68n4Bp4+zhcEJMxPFR1YQwQMj1YPRI2ZZC1Qg==
X-Received: by 10.84.231.193 with SMTP id g1mr20615145pln.1.1489928869150;
        Sun, 19 Mar 2017 06:07:49 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v186sm27406363pgv.44.2017.03.19.06.07.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 06:07:47 -0700 (PDT)
Date: Sun, 19 Mar 2017 18:37:44 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: sm750fb: Code readability is improved
Message-ID: <20170319130744.GA24605@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

New variables are added to make the code more readable.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v3
 -try to make the code much more readable.
 
 drivers/staging/sm750fb/ddk750_mode.c | 61 ++++++++++++++++++++---------------
 1 file changed, 35 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index eea5aef2956f..5f18ce4d10de 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -81,33 +81,42 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
 	if (pll->clockType == SECONDARY_PLL) {
 		/* programe secondary pixel clock */
 		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
-		poke32(CRT_HORIZONTAL_TOTAL,
-		       (((pModeParam->horizontal_total - 1) <<
-			 CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
-			CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
-		       ((pModeParam->horizontal_display_end - 1) &
-			CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
-
-		poke32(CRT_HORIZONTAL_SYNC,
-		       ((pModeParam->horizontal_sync_width <<
-			 CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
-			CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
-		       ((pModeParam->horizontal_sync_start - 1) &
-			CRT_HORIZONTAL_SYNC_START_MASK));
 
-		poke32(CRT_VERTICAL_TOTAL,
-		       (((pModeParam->vertical_total - 1) <<
-			 CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
-			CRT_VERTICAL_TOTAL_TOTAL_MASK) |
-		       ((pModeParam->vertical_display_end - 1) &
-			CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
-
-		poke32(CRT_VERTICAL_SYNC,
-		       ((pModeParam->vertical_sync_height <<
-			 CRT_VERTICAL_SYNC_HEIGHT_SHIFT) &
-			CRT_VERTICAL_SYNC_HEIGHT_MASK) |
-		       ((pModeParam->vertical_sync_start - 1) &
-			CRT_VERTICAL_SYNC_START_MASK));
+		unsigned int a = (pModeParam->horizontal_total - 1) <<
+				CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT;
+		unsigned int b = a & CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
+		unsigned int c = (pModeParam->horizontal_display_end - 1) &
+				CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
+		unsigned int temp = b | c;
+
+		poke32(CRT_HORIZONTAL_TOTAL, temp);
+
+		unsigned int a = (pModeParam->horizontal_sync_width <<
+				CRT_HORIZONTAL_SYNC_WIDTH_SHIFT);
+		unsigned int b = a & CRT_HORIZONTAL_SYNC_WIDTH_MASK;
+		unsigned int c = (pModeParam->horizontal_sync_start - 1) &
+				CRT_HORIZONTAL_SYNC_START_MASK;
+		unsigned int temp = b | c;
+
+		poke32(CRT_HORIZONTAL_SYNC, temp);
+
+		unsigned int a = (pModeParam->vertical_total - 1) <<
+				CRT_VERTICAL_TOTAL_TOTAL_SHIFT;
+		unsigned int b = a & CRT_VERTICAL_TOTAL_TOTAL_MASK;
+		unsigned int c = (pModeParam->vertical_display_end - 1) &
+				CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
+		unsigned int temp = b | c;
+
+		poke32(CRT_VERTICAL_TOTAL, temp);
+
+		unsigned int a = pModeParam->vertical_sync_height <<
+				CRT_VERTICAL_SYNC_HEIGHT_SHIFT;
+		unsigned int b = a & CRT_VERTICAL_SYNC_HEIGHT_MASK;
+		unsigned int c = (pModeParam->vertical_sync_start - 1) &
+				CRT_VERTICAL_SYNC_START_MASK;
+		unsigned int temp = b | c;
+
+		poke32(CRT_VERTICAL_SYNC, temp);
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
 		if (pModeParam->vertical_sync_polarity)
-- 
2.11.0


