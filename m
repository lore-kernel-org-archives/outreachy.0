X-GM-THRID: 6671634495141052416
X-Received: by 2002:a65:624a:: with SMTP id q10mr15141964pgv.377.1553360953601;
        Sat, 23 Mar 2019 10:09:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:68c7:: with SMTP id d190ls4570720pgc.3.gmail; Sat, 23
 Mar 2019 10:09:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyqpdQJ87yAs91ZrSl1Rdl6dNHpfkLwQYV3cBrqM7xfbLrdf5WPnZGLXqvcZMBElLMvoUoQ
X-Received: by 2002:a63:2ad4:: with SMTP id q203mr15188731pgq.43.1553360952725;
        Sat, 23 Mar 2019 10:09:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553360952; cv=none;
        d=google.com; s=arc-20160816;
        b=KAT5suEHncvHwq8iwjYzYvZgTZh/7coTLumH7Zf4B8ev0EBEKHcjD7Y1hj8XXXeYqX
         NB84R6ePNsFFwQAr5LUghJFmCke4sE/jNiq+u6Xue69x9R49qREfNo3XI45nKardBXyx
         Lhzy9jrm3MlLdLT0IXFEJqfoNlcHrvWatmhr0O1DGNKwNh/GnKLKnT2US7SzeGayBGJq
         Nl8aMBeltJgp/FXfEAWLiOdddLKld4qrpbvaKhYwuL9i2bsDUTJJyqNyRZAFXNAkZUyp
         oBASYrKuXBFJ4gWcO/fMp8Xi6z/a6NCrzWlFzE0kCh6DK1wC65h9MYDgc/WxAtl1O5gi
         M2Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=dXDaq+hrbOK5gEjM9/dkj431veFZACiu+Kw7vE82iEA=;
        b=cDb5mzhTW1o7m3e80UQ/azVSTk6NMo/tCyxa0g2ijgRTA1ldTekVu/J5qWuB0zJe7E
         lGFZ94iiBzvvStEYkobKa2glgzcGyuMKX/wxcGo5vdrtYYtpBILlGzjD5rVAlE2OEXQM
         8V069wL5EX75e4dqLkB6xMsxiilaw2ZDlKhely3RHZlLeWY/CoNoh1T+4U8LWAuEJrom
         78Yhucjd+QLNIrQ16DC9wskWJVSoAmiWiCl44cswPA3VOYqxjhdLK9Xairi3UX5cFiaW
         tV4Eu1B4vvoe8S2twJtrqwlFeJvTEbWR5ix8oIdKk0YJ2dcVnPlcoNe+erK088uoNkHu
         720Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDK87wYD;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id c6si616684pgm.2.2019.03.23.10.09.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 10:09:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDK87wYD;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id h8so3596018pgp.6
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 10:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dXDaq+hrbOK5gEjM9/dkj431veFZACiu+Kw7vE82iEA=;
        b=uDK87wYDCNfHTRAjLvNQLg/k3jkfXh8jlPn3O9rrVcg1Sm0QPDpDdaZ6DIp4HPSTuu
         kCcSaZFDlz7n5hi7uo7Yj9wJTANKsckJUnAv65Fvqf+wLE9ff+DRj1rE1wrpm5gdOQj9
         DWjCtO5jMDdR0uMQyHvEz48BccJL+WkrxL2by3M7czz8rZXIkePh29yH27xaE4NE2XJV
         4RBgcD9qFEGR7UdtlElRgS+1yJ4AGiF59sG4c+AOoDlfKdfdQg3HRRDQBtPWKvPgd8WK
         i+SkfuRPlDb3il4YQLZdfSS0mhFa4uXb6Apk2Nh0X8MzWD3HGMOIQGYRTHkQNL4Do+LX
         fHpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dXDaq+hrbOK5gEjM9/dkj431veFZACiu+Kw7vE82iEA=;
        b=l+fx2A2bDrtv436o2+SABgUSNmR+zHkbfNErLIPLL9w+FtAal6ZlfuU7DTWeLWVOXt
         /rI1nEbMZBN+XNtCBz7pu6WnpVDINuFuWlG236FdvqHM+BxPztVWYi9WtOHSnCD6Jn5q
         d80XvCfiMJcMGw6FH3KOWzcLHwlT/eXs8+0KpB0/jbrbiF5H0+ZsggdXAvgAD8ZVyfvN
         LVdUZI5uNLO+1ziJupvx3yyJ8IWh4ZbK6bZyQGTjhQjMZdDuhRMz4DTu7NOVRJ4AVbqB
         rucBqIPO82+Q4g9qy5NGwOcvB4gI5a3F2d+XcNbgVobaInIFAZYdXuTKsxHU5XmZXBxh
         FPWA==
X-Gm-Message-State: APjAAAXejwYR8PHGFrC+zTOJsZBef/UbXPZDBkDWtQ+hzMYnedR401X9
	MlY12gtcqdDb/k+5xoftaNzZAjOZ
X-Received: by 2002:a17:902:b404:: with SMTP id x4mr16104318plr.232.1553360952092;
        Sat, 23 Mar 2019 10:09:12 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.154.243])
        by smtp.gmail.com with ESMTPSA id j9sm17943804pfc.67.2019.03.23.10.09.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 10:09:11 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH v2] [Outreachy kernel] staging: rtl8712: change type variables
Date: Sat, 23 Mar 2019 22:38:56 +0530
Message-Id: <1553360936-3525-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Change the type of variable tempu8 to u8.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
Changes in v2:
	-Making the variable type temu8 of type u8.

 drivers/staging/rtl8712/rtl8712_efuse.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index dde1255..4e2764f 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -25,7 +25,7 @@ static int efuse_available_max_size = EFUSE_MAX_SIZE - 3 /*0x1FD*/;
 
 static void efuse_reg_ctrl(struct _adapter *padapter, bool power_on)
 {
-	bool tmpu8 = 0;
+	u8 tmpu8 = 0;
 
 	if (power_on) {
 		/* -----------------e-fuse pwr & clk reg ctrl ---------------
-- 
2.7.4


