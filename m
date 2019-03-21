X-GM-THRID: 6670803508303757312
X-Received: by 2002:a67:8797:: with SMTP id j145mr1005080vsd.12.1553167474299;
        Thu, 21 Mar 2019 04:24:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2aca:: with SMTP id q193ls845429vkq.2.gmail; Thu, 21 Mar
 2019 04:24:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyGKbDpNXqHzg8uftcey2+DN3K7MWknAWKnJBXvONVlF3xcyA0O2GBAmyDUgWp4CeX5cXwz
X-Received: by 2002:a1f:2a48:: with SMTP id q69mr844181vkq.7.1553167473415;
        Thu, 21 Mar 2019 04:24:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553167473; cv=none;
        d=google.com; s=arc-20160816;
        b=Pc1J/wUf3tu+OiIUY3lIObyamAaIjulmtHkL2ZeYWx8WZnPfGXWP1U2N0vUUFKcQvT
         owTsTVneBidnZxJnIltS4OVaZgbWWLANe7FoQmvo8pRS5hNGL9re5cOLuzDMHB8GwJzA
         4JS6pRk6bRA2ASBZZmReCAPTlzQJBHsrL0RXXHaerRfEcelWDi0QxIvyUm1UOGlhN/8w
         mpvVmekA1MNmI/YtGy3E/+XC1qUh7qm/9v0ncLJttaeFRMhr6eCCG2XRhI71+2CWselG
         OprgCZTovmeK6GF6n6uXujem2ekeOzRyQ/FEhh1YafpiY2sFBoJovETVlBZVeUOo3gqp
         K8Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=dF2w8smfM+kpiwHvc/eUghXEhosdqwIYSOYvVOWMImA=;
        b=hbfqDV6fpBY6kqS8hRIOVFb7oKlYaHLtpaTYPtZKmt9/6qqDQWODHgQ80fr69xa7Hh
         +UKtKocR58uuaws5mXe6HrwvNArLQZq2UH6NLI80zin4jXiGJX63I/l0ZB1gy1p2U7ZW
         A9MeZfz3nnFScLDI+HWJL1YkKyJ5hWFhrCWwcOnFBdD9m0by4P2PItHKgmnxbQuqWhJH
         XsJVfNshoQOxc0EsSpPsWgy01deqqOqO5Ogtdp15uX9WgH5HhZwZP2/ryIjviglHlVnB
         V96fq2MbI/FGRx5fpfD02K31wC7e2MN6FsW78ydSRlG2hHo4EFS+axcwEJq1dJ7ElKll
         pqCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YyH8JjyO;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x82si281658vkd.1.2019.03.21.04.24.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 04:24:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YyH8JjyO;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id k11so3984371pgb.8
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 04:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dF2w8smfM+kpiwHvc/eUghXEhosdqwIYSOYvVOWMImA=;
        b=YyH8JjyOrgdWpC6H2N8bxOXhqrpibfMtSQ3CsRuc/dp1mVJRRrYtmM+CH1ouEJeBsi
         XWjE7jqO5BQ5gbumdzKmIII1F1bPrqX3PBHeYX6dsDEcjHmTJ8evWGB9QX+3B+cIb9hu
         dmTb3qSskXj55jMMRHtpCLzeZr7SKUW8ZGEvfhxzkY66g/2zVo4s6KKjARXz95vKrwaY
         S7iygJmLYqqsGW1oRxgNdViR/rN7Xh4kqNoXPuUcOrjERk5WJQYt/MocY+BxcCYnlepY
         DDxsTAI4YkWHB86nz5ulWz7X5rjxkO1errhTbkhEc0ubESRJRAdLgIi+zYyV2FpdNDUR
         anUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dF2w8smfM+kpiwHvc/eUghXEhosdqwIYSOYvVOWMImA=;
        b=EwOSjoNEPSkxXwjiMg4bxxfXpeEIz907BfagqxQ0+Cy1vLH+ZXmCWoI3sXFYcXqgN4
         n8EDwsHrYJPYPbuTBa70wOt4XwPcrOATKL8+UhRK1UVtmaXVEfaPfnk9XuFSSvgDe5bZ
         glNJWT9/5iTXRhNHWHAe/7wDErCVNdXFcvCm/qLzZ0R8MknY10UjHAB9towxtM3Puv/y
         K+Hgp4a8yVuVAa54cplHSwbQcAz0B0w9zGVXkMrZs5qLl0dJV4TBZUgKru7QoDfDivaw
         gU4vnIAK6fb+vs+4EVQJeiYOqeIRyoDBKcRGIkPC2YKkUUaacd0K2cQeg3NQs2CT0KxQ
         hCyQ==
X-Gm-Message-State: APjAAAX34RH8fO2ZqUrki4i0OpKcW625GAEVFjxRmfU4HE+FDjafpKjZ
	VaNvOhonzAqBWajd/sy6OOKdjaPr
X-Received: by 2002:a17:902:1486:: with SMTP id k6mr2955418pla.3.1553167472231;
        Thu, 21 Mar 2019 04:24:32 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id r82sm9385390pfa.161.2019.03.21.04.24.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 04:24:31 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 3/3] [Outreachy kernel] staging: sm750fb: avoid camelcase variable names
Date: Thu, 21 Mar 2019 16:54:17 +0530
Message-Id: <1553167457-12539-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase variable names to fix the style issue – ‘avoid
camelcase’.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/sm750fb/ddk750_mode.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index ab21337..5dfa87d 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -14,7 +14,7 @@
  * in bit 29:27 of Display Control register.
  */
 static unsigned long display_control_adjust_SM750LE(struct mode_parameter *p_mode_param,
-						    unsigned long dispControl)
+						    unsigned long disp_control)
 {
 	unsigned long x, y;
 
@@ -35,42 +35,42 @@ static unsigned long display_control_adjust_SM750LE(struct mode_parameter *p_mod
 	       ((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
 
 	/*
-	 * Assume common fields in dispControl have been properly set before
+	 * Assume common fields in disp_control have been properly set before
 	 * calling this function.
-	 * This function only sets the extra fields in dispControl.
+	 * This function only sets the extra fields in disp_control.
 	 */
 
 	/* Clear bit 29:27 of display control register */
-	dispControl &= ~CRT_DISPLAY_CTRL_CLK_MASK;
+	disp_control &= ~CRT_DISPLAY_CTRL_CLK_MASK;
 
 	/* Set bit 29:27 of display control register for the right clock */
 	/* Note that SM750LE only need to supported 7 resolutions. */
 	if (x == 800 && y == 600)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL41;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL41;
 	else if (x == 1024 && y == 768)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL65;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL65;
 	else if (x == 1152 && y == 864)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
 	else if (x == 1280 && y == 768)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
 	else if (x == 1280 && y == 720)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL74;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL74;
 	else if (x == 1280 && y == 960)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
 	else if (x == 1280 && y == 1024)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
 	else /* default to VGA clock */
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL25;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL25;
 
 	/* Set bit 25:24 of display controller */
-	dispControl |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
+	disp_control |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
 
 	/* Set bit 14 of display controller */
-	dispControl |= DISPLAY_CTRL_CLOCK_PHASE;
+	disp_control |= DISPLAY_CTRL_CLOCK_PHASE;
 
-	poke32(CRT_DISPLAY_CTRL, dispControl);
+	poke32(CRT_DISPLAY_CTRL, disp_control);
 
-	return dispControl;
+	return disp_control;
 }
 
 /* only timing related registers will be  programed */
-- 
2.7.4


