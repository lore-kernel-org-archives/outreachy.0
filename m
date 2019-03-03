X-GM-THRID: 6664067951305424896
X-Received: by 2002:a17:902:12f:: with SMTP id 44mr4379482plb.102.1551607322407;
        Sun, 03 Mar 2019 02:02:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6e02:: with SMTP id j2ls5355721pfc.5.gmail; Sun, 03 Mar
 2019 02:02:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqxXcGJdKknVxzGB4vY2dZgomitu7l83L0K61d2Ehn6w3GH3kN3mYAvPiGBISmC5hg53tDea
X-Received: by 2002:a63:5926:: with SMTP id n38mr5042269pgb.33.1551607321613;
        Sun, 03 Mar 2019 02:02:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551607321; cv=none;
        d=google.com; s=arc-20160816;
        b=wR5e1MK/Fo2FEYH1IVd91S0WG7/P/Hl6upAeNjepcaVUzduA8mPaCkUvRxXDkdMBf9
         rwtj/rDo1ve7Ya2Q13ly55OQDV969TWHpQsKpzmdEVA+nIIXpEbR0+wQ+wkP6SgFxIdW
         336Cd4jQXR1CJ2AuJS2xvwj4Cgr1ymXJUZwnJCwdvm9RAN6qIWfEwyw+Tfgc2PDiEcJT
         kVPkSI5Pd9RSLymhb6RB4Tb3tBZYxHrJNzcVV1mJAw/giLoNlXjYMG66xzriTooWC/V5
         fMXWbq4HQ0CwRSb6I8AL75lWpugHEF8CeDWVsu+AwXccsd9PG3krbo0Aks7uSdipf1EN
         DuzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jIgmFQMlSXrbL40hHacrFregXs+98ir72cHIVcEo6p0=;
        b=YYRogiHt3skxJV9DM5WLJlimylBJW2+w2iNa348KbczpUSLG90ljGc1pXrfEvu/Skq
         DHvtVhX9XCaZd+yitkCf468FbH2HBh6O+9yB/Qi3echOzSEnj1zplk2eiDrCOnkX0nom
         RfaShkRjIdJK6xuJH4nNLd9Vvs1iYJiKyUDuCqAmrCIMeaYA8sHnhLAHUThP2/COraK1
         L8kFgIW1C5WMxKGb+apYzSEXk6FTAQU4dLmXKztSInJbDSP1a+7jfkyHc6SYCR31NCOH
         yNs1ryxMFBXzU+NVg0R6PV7s/YTruM4dMYcyoHoFhCNs6wzhrORgy84dr54V3srsII+E
         zm3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZGYxAztj;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r133si145134pgr.4.2019.03.03.02.02.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 02:02:01 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZGYxAztj;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id k11so122256pgb.8
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 02:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jIgmFQMlSXrbL40hHacrFregXs+98ir72cHIVcEo6p0=;
        b=ZGYxAztjgCFB99TQLt7UkoFRkIQ2FtmQk1yzlIts5WSN6YEtdJzK9rKPrebTCwSopo
         G0N1SchApqSoWWBbz2smwF/NKi7bMmh4cN7o0zTeW19dT+l8RTjFAU7+Ht4St18apKMN
         GxZ7x7o+vOrsdAPtQh9LJstR76r9/Z/mBEEFjlAmcBqm8R7i04twh9YoAXO3JycKME2a
         7LbxgNxFOXBQ4f+ZgIb7r5eX2/tcI3o0Yhe7cS0q/oDEwSoMCRJHebVArvAU6K3/lXez
         GZU0WSwvop80tQKrPSJqG+XB4YmxbMR8bFD/ylfiTIqIBEhWuq2rIyv8keMNvH+ZQKVT
         lxpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jIgmFQMlSXrbL40hHacrFregXs+98ir72cHIVcEo6p0=;
        b=jyeXCM7sDRvIiM7J9ttLRiFDAejXi51Y7hqVlSliqsIXVtljn+JrThB6XDcoonjhRV
         W6i8ELeF77O+FZfw15RRW2b6dKqR0F4Ecgpw2CBV7scg5daU8n/HHLCHmgOGUqp6+6Km
         dpGb1NxIkukPAyL/Ttd8dcrMaMSEITMULl3VYZ6jYAVcT5EsyGxjBY8iO/CiutWacQ6r
         ZCTnBaAEVofJk6rmAFs6sVKjTXvKobEETRNP5kHSMaaoDCMv8u7yf883/ZXyngd+dITa
         4dJ/fkDBEpk4GIoTqhr6oyMHoyfISjDOXc1INiKHXTSWmkrsrn4gXejWdQkSrco0v4x7
         iGgw==
X-Gm-Message-State: AHQUAuasFi1y5HCUdtbPagQGvksdMWdUyFTZ+nMSPSEXo8eykaQ8Wh85
	pptoNVUY4ul6reLdul5OeT5qYby8dSA=
X-Received: by 2002:a62:834c:: with SMTP id h73mr15093493pfe.252.1551607321368;
        Sun, 03 Mar 2019 02:02:01 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([114.29.227.194])
        by smtp.googlemail.com with ESMTPSA id i4sm4216224pfo.158.2019.03.03.02.01.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 03 Mar 2019 02:02:00 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH v4] Staging: pi433: Fix line over 80 characters issue
Date: Sun,  3 Mar 2019 02:01:36 -0800
Message-Id: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

Break the line and match the indentation to remove the
checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/pi433/rf69.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index e19b9ce..0c189a7 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
 {
 	switch (flag) {
 	case mode_switch_completed:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_MODE_READY);
 	case ready_to_receive:
 		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
 	case ready_to_send:
-- 
2.7.4


