X-GM-THRID: 6671492660700643328
X-Received: by 2002:a9d:5505:: with SMTP id l5mr10287061oth.259.1553327930748;
        Sat, 23 Mar 2019 00:58:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6417:: with SMTP id h23ls2012524otl.3.gmail; Sat, 23 Mar
 2019 00:58:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwlC5nfdCPF4wyIYjuUccFJvtEqi/TSTwlCH872bqg0yRHb5yFA2KtyxhNpyqqRxjwc5JDE
X-Received: by 2002:a9d:7006:: with SMTP id k6mr4006988otj.81.1553327929967;
        Sat, 23 Mar 2019 00:58:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553327929; cv=none;
        d=google.com; s=arc-20160816;
        b=1J+Vksn7DPlwFmIpsbIDCMf7ruX3SHaAoVCjrJQAY5YjNOX8BGxv8xVgXJ1f2zRrpa
         TUOVQBZuAnI9jkbsAg0JQ55ofo5lj9VVTAmyk60EYR1cFealT0qDhyqtuzqWx8QRMVD2
         orx0bAEAUoYcjaf2qf5LI6A+tB26GRrLpV2DpAo/2+QFDbOD6cw9SMnlYpX58CCHdZJw
         mS2G0No2kNC99FMRm5Pv+Qw4EcRaauCz7OyrvcABEE0G+wJEYVzA9zXayrk7t9YME0+m
         6P1FOPa0DExZ6QZghUltSMtA1O4YVBeWRHGpaw2MUqVB7QAYqZr/+HCxMto+FviTxI0N
         n8JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BvgSVS+8MAU1bboFFBYc5+ZFkMpnOkB5wg0MbPhGM1k=;
        b=lWYj67VSzBndMJz6PZqzz/rIR5XicHSBwPCEjoR0MKlCZWEQNjGlV48FkEehuueHyd
         2JvzRdRg6Tzz2Vxq9rx9hGgIiwyZ6ZOJ7v7oR9uI3dgfw6cb5WqkhWX2keAUBRB8twqK
         DQCYbW3p9gIxjWplvGzEp4Xy8pgR8imKVZ2PA+z0p4xm4Ru95euUNaLlLWXbibaHMxsK
         HiaIVy0pe67t4floKjDfuuPJB8NsPJ7Cj/wjQxOb8wItLp/TZWckfbXCfxv35o7KRhsU
         iKt2fFe2XwzoLflqybntzhWPE3L+bwrbuqt7HIvrH66decBS2bcr0JAFzVbprErxIMed
         MqqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dcWa1kAb;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c13si172136oto.3.2019.03.23.00.58.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 00:58:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dcWa1kAb;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 10so3044876pfo.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 00:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BvgSVS+8MAU1bboFFBYc5+ZFkMpnOkB5wg0MbPhGM1k=;
        b=dcWa1kAb0O22UGKza8Up0HLFXDnq/ECVA0b523JzfA3RVUJyLvkBKz6TW/4+JMd7Lq
         VLyCE0leHJDSkxssklRsQ4bk5F43rqwzYxxLCeID7YZgE/K3lkZKFwHXpyu8BmsQLy79
         YS+Z3BpK6vc3GjQeDvj2FRm9sbQAuh0GxTCf2wHcC0HAEb6SVoCJS/573zsMoeRE0W2z
         yD8txhWLyA1eLMwUxCkGn0LZ8xVJS1Bas96jU6Hv9pPVYSIvW2Dp7f2AMpObrZ5UZTPC
         XD06XSlZLLtlYLcjLFnSZPJhiiEmW93HZQGt0zmZ3qwF08bs1UK+/92sLQXTboOSHP7T
         jcZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BvgSVS+8MAU1bboFFBYc5+ZFkMpnOkB5wg0MbPhGM1k=;
        b=K6mEm8mfAwqToFs+/iK1wNHkzxoI29/b1BCQ17dweVha6irObAqZDPK4QszyUIx+6Q
         tqoUSqjml6F6ucIh7KXv9T9iUyoGSgeXXXw9Oa+o+Y4mb1tz+PXxwA5d+UUjfmwF8ewb
         3jYHQLdIboXFiBV3uJjneCTDNSMyOWBqZIR39gWYXmucWM0p6KnnD06J2ZZj49bFlyuR
         PNqvwyII8aJmEjLzs2MV9s9J564MgmamP//3OjsWPyijdS6qxbSELJ+/6zi9PB2l/zL9
         Dd9Lx6ZjZ4tVwqbM3M7bwnDwUNAd2u60AVJKhvSt2wCny4wMX3JQDBMZND4uUyrr5Y2N
         yyWg==
X-Gm-Message-State: APjAAAWtRDrSK1VY1+ppv+DzR4vLwkQbIbpL0DQ5yP9yuLmEwV/ml3Yk
	wErb80r57vkVKL321F0s44o1IFgi
X-Received: by 2002:a63:fd12:: with SMTP id d18mr12758874pgh.88.1553327929032;
        Sat, 23 Mar 2019 00:58:49 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.173.66])
        by smtp.gmail.com with ESMTPSA id n24sm22379150pfi.123.2019.03.23.00.58.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Mar 2019 00:58:48 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
	pkbehappyallthetime@gmail.com
Subject: [PATCH 1/5] staging: rtl8712: avoid camelcase variable name 'bPowerOn'
Date: Sat, 23 Mar 2019 13:28:27 +0530
Message-Id: <6b2beffe41d8256284179eda6eadd8b9cf0a24fb.1553327467.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553327467.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Eliminate camelcase variable names to fix the style issue – ‘avoid
camelcase’

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 00babd0..3275f7a 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -23,11 +23,11 @@
 /* reserve 3 bytes for HW stop read */
 static int efuse_available_max_size = EFUSE_MAX_SIZE - 3 /*0x1FD*/;
 
-static void efuse_reg_ctrl(struct _adapter *padapter, u8 bPowerOn)
+static void efuse_reg_ctrl(struct _adapter *padapter, u8 power_on)
 {
 	u8 tmpu8 = 0;
 
-	if (bPowerOn) {
+	if (power_on) {
 		/* -----------------e-fuse pwr & clk reg ctrl ---------------
 		 * Enable LDOE25 Macro Block
 		 */
-- 
2.7.4


