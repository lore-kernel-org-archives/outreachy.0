X-GM-THRID: 6532874572090310656
X-Received: by 10.107.112.20 with SMTP id l20mr4579678ioc.124.1521135642199;
        Thu, 15 Mar 2018 10:40:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d4f:: with SMTP id b76-v6ls1145580itc.9.gmail; Thu, 15
 Mar 2018 10:40:40 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt2lzufrI00lv8+YJppO7F6w2UPLjLiZhQnkMPuIwLHjh1+5PK3jyWbBQX/oAnXIZme091n
X-Received: by 2002:a24:1015:: with SMTP id 21-v6mr3255414ity.4.1521135640854;
        Thu, 15 Mar 2018 10:40:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521135640; cv=none;
        d=google.com; s=arc-20160816;
        b=dr/UEWup9JuoQgEPLp8fPsy2rV8QlF2UTpWJFo27KJHVO+i6Th8o1EXxStECk7fQct
         t0OYUQZ+FdXOMfOaaAr8mgqn1pPk9odk0ug0cn5/8dYVNq3mETSaOi0Jvpq9Vh0Nhrs6
         +mlNBZr66tq+wy4twMov8OfFPSRMCyMEML+0JeQ1Vey2W6qM1QPjMnskAymnDeRwCsOo
         fhK935R2UuGlnIq71Tz1gEnmXua1A0LAKmfKkefX9g0qjUplb28jsH2f12bYzOkDHZul
         TFeKn+Dp1YB1L37vTgQ+k+LFDTAvsN8Y3sOompYWtwQdoqOVerb2qmdvlvMCn49HStie
         U45g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=GlqdcmuO2kLo7jJnl+9iYi4sZ7d8uG8Xps54BrLpWDE=;
        b=PegGQTy3YtsPSHgUnzEqZkqjpD7QcjG75AdsGK9IjHU60D17gF0tS6chP1tuveEu3a
         2s9lAzXPEaLKHX8RiNOfj3B1jB4dPjIxB39nN4m9cp87Vjjt468n/ysxSZMSNLucCZMy
         jrF5l0mKRrUW9RvYYPYqHcA2331/QFScOkctQazPPX0uhgEGRp54EodkfC20Dxt2gdez
         a3STtCLDMJ6EKEhl3eMEy+d/0ew3MAXhG9UiseyWyu/9u6Xm+kyf9AiZjVrcWlhEYcZK
         yn0JoLdt3aRtOUBYKr7LR7m4kpRefrl3A25USgnCTWvyJ9pVyNFNufxf1eNDcXAlKdrB
         neUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZnHj+46L;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id j124-v6si120836itj.0.2018.03.15.10.40.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Mar 2018 10:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZnHj+46L;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x242.google.com with SMTP id c11-v6so4211498plo.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Mar 2018 10:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=GlqdcmuO2kLo7jJnl+9iYi4sZ7d8uG8Xps54BrLpWDE=;
        b=ZnHj+46LmtI9nxY/mhYljScSk4f87b+6l5FDwZ4qRLETTGVMZVGdj30uElRfgylGCO
         Eh36uKXDoGjdCsJBQcQCkSEWl/JKrJKr7l2RaeYZ5siPMnbp1dObMjBNF5MNQaPEiyA7
         raSJSnqHMp0CZrKbZ7dJtlEDQv9SJwDhZ+IUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GlqdcmuO2kLo7jJnl+9iYi4sZ7d8uG8Xps54BrLpWDE=;
        b=cyewOpVUjv+r2ox3DibPvWZ2Z56UdWzkDb616n/4CuxGQtTohvZbwKnTNSRPNcrD79
         Skfp0QDkx0J4Nmcw6ZRIxzzcX1vC7FYB8DkStJW2U8KlOhG1z+47F06Kh6Mjnnh8QJIx
         PxFrBA7pVLriOQ5YFOvT/2aY8Wk1fFTrqUWxznyQJ/xf5nPXH65rk4e3z/wRZL2u+5Ac
         adJht3mi1HLW4Vp5KrhiySlKI827BlIxkmO+so3RQkqRCIDLpoja9H6RZ2sdKjRYlGsb
         92OOMTyJyLFLDhXL4JI5twQ0SWc5WvClx864O94Xr7NMgTIZlLxmyx5kz35/6jBDwjUJ
         ZwFg==
X-Gm-Message-State: AElRT7HfkXnOrcJF59n9wy6IZE90mvGA7aUV8tG52geIERdbBWp2xv4d
	q4+G6zoreT56e5kiZEPSWbpmbA==
X-Received: by 2002:a17:902:aa43:: with SMTP id c3-v6mr8935859plr.357.1521135639210;
        Thu, 15 Mar 2018 10:40:39 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id r1sm9209630pgq.41.2018.03.15.10.40.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Mar 2018 10:40:38 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2] staging: sm750fb: Remove typedef
Date: Thu, 15 Mar 2018 17:40:25 +0000
Message-Id: <1521135625-2866-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Change typedef enum to enum and ensure compatibility with the change.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Remove leading _ of affected declarations.
 - Make commit message clearer.

 drivers/staging/sm750fb/ddk750_display.c | 2 +-
 drivers/staging/sm750fb/ddk750_display.h | 4 ++--
 drivers/staging/sm750fb/sm750_hw.c       | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 7710454..1273e7d 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -111,7 +111,7 @@ static void swPanelPowerSequence(int disp, int delay)
 	primary_wait_vertical_sync(delay);
 }
 
-void ddk750_setLogicalDispOut(enum _disp_output output)
+void ddk750_setLogicalDispOut(enum disp_output output)
 {
 	unsigned int reg;
 
diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index 3eeb02f..7fd101d 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -89,7 +89,7 @@
  * LCD1 means panel path TFT1  & panel path DVI (so enable DAC)
  * CRT means crt path DSUB
  */
-enum _disp_output {
+enum disp_output {
 	do_LCD1_PRI = PNL_2_PRI | PRI_TP_ON | PNL_SEQ_ON | DAC_ON,
 	do_LCD1_SEC = PNL_2_SEC | SEC_TP_ON | PNL_SEQ_ON | DAC_ON,
 	do_LCD2_PRI = CRT_2_PRI | PRI_TP_ON | DUAL_TFT_ON,
@@ -102,6 +102,6 @@ enum _disp_output {
 	do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
 };
 
-void ddk750_setLogicalDispOut(enum _disp_output output);
+void ddk750_setLogicalDispOut(enum disp_output output);
 
 #endif
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 3248f88..edeae9d 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -185,7 +185,7 @@ int hw_sm750_output_setMode(struct lynxfb_output *output,
 			    struct fb_fix_screeninfo *fix)
 {
 	int ret;
-	enum _disp_output disp_set;
+	enum disp_output disp_set;
 	int channel;
 
 	ret = 0;
-- 
2.7.4


