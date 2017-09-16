X-GM-THRID: 6466416490649223168
X-Received: by 10.99.105.196 with SMTP id e187mr17365371pgc.119.1505579940985;
        Sat, 16 Sep 2017 09:39:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.73 with SMTP id u70ls1583821ioi.17.gmail; Sat, 16 Sep
 2017 09:39:00 -0700 (PDT)
X-Received: by 10.129.43.68 with SMTP id r65mr18622804ywr.210.1505579940337;
        Sat, 16 Sep 2017 09:39:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505579940; cv=none;
        d=google.com; s=arc-20160816;
        b=02np6VXcIA7/irO1Q1/EJ4cdlUJz+3JjhzDEQo2CxdhPQyor7iJbYk4ge3jGgg3vZc
         Z6ZBVL5Ohm9yiScjllNKubZnjK1fr1Pv1yeM+ixrn6527RQxt7s5ZBvftIbHWP/ZrRbB
         821Mm5ybmW0p/vAP8x4aiPhfiTX9yh8+h9KFC/Rcc10YBZ74sPvqnAmuslESlbLNW3oZ
         SunteZBDXFYtwR0qslX5lNgd7Kn8hGVpq9dzRcZCrbs9cG7wK4gEhSO+y9e7DM4vyWYC
         hb+xgC0tKqKO2XVgMl9IHZIhrZyDlMevrluKvMoq+fODWtdRZAhfJLp/OZxHy5C2aGmR
         5mWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=H+Of5imxYByxIxoWKM5wWGEDMwmJgJWLmIy7mZwgA0I=;
        b=klp0rEUhoG9DaC4MiyAYV8gxk7Llj2xogRIyo/tYVAVzjv73IBnvYiJ3YKAbUlQAH7
         d3EAGlbSEfbcvr8YC9RxUsDp85VbTa7NiS9G/a0NL+fSoazKtkxe2/7JuQYFKcKqxwNG
         fM+jWj3DWbzztefPGyftCfMol2FKCmEnDVFn3ERFjtCTE3loEiNyxf4MxFbKGtCQ6tmZ
         2rzanJcIGRlKGd1tr/YEwJSSILoh+FgVB4HzuEZ70Gm2iCF3dwnDQvuSgJgHNe9C2dCS
         F7n6n+YnbeTykl7Oz1Etl3Sa4B+84zAiyqg3vSo1YG6u03jY27PBVV98J4Uq/7tyaxcx
         kooA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBT5NVtM;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e63si315782pfm.12.2017.09.16.09.39.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 09:39:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBT5NVtM;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id h4so2680423pfk.0
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 09:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=H+Of5imxYByxIxoWKM5wWGEDMwmJgJWLmIy7mZwgA0I=;
        b=PBT5NVtMDs5dpOF+msxy2Mb7CsoaDWuXw1jXcS2AL/gEEuE06ofgp5Y25PA0JvS4aJ
         HYMaLeDp0OXAc+Q6erzwoy6ulOpfi2lw5teYcwK21z1r6k0TWUYurZsrTekT3DCwXATe
         o2a3jkscw47Sg9deQGboJ6T3sZG4bvlVP3TQW+4rgFDZ71mIrOwQ2UOKM138bQnRnQSf
         kTgQY5FF1XFH4DKA8Q6nuOGmnfQfF8AbNQcXMfNPOxhaIFqMb7+11G1Mn6L6h1fj4357
         2IHgMoluHxUoyxb7TSd3xnQ8cB5mpYtqRbd1BCYYKeRK7QWMpxsgVTF289Ns8cjN3pjz
         KtSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=H+Of5imxYByxIxoWKM5wWGEDMwmJgJWLmIy7mZwgA0I=;
        b=h+f1lQ+LffT8lNWdw6YScnkXWH2Bkaoq9vgAh9GqIeq6kgCHDNvK88LS5UoBWrJf5b
         B5AtirsCZRvDA7z+Q6qOcZhJfKejkk2EqL1FN8BM0dvTGRV25ALef52c+7LxuyFXJcdB
         leHhxxHSSfjKeh1P2jFn+1D9Rh53jyur8Cw1lMpQAjmmfs7wRL75YqkmwpBhkM/C7Rtx
         5xCWxm+V4JCmdaRMpUkyzaDEA3TRXS6h+T01BKx5YiPgyS2kCILGgrNETKBVJgeI5t9Y
         AfucQ3jtTTfSBf5qIkC3G3N4cY501+ds1kCpLOp4fp+XJB+Oz3Pbh7e/KNY83hqa6BHS
         BG8Q==
X-Gm-Message-State: AHPjjUjvZj+Yi1lObg8hkcnfWipsUOY8JerTCIdIIvGNMfjMZay++chJ
	mfO0um8a8hi7pA==
X-Google-Smtp-Source: ADKCNb6PTjxzIt7+X1GPoGWYRhonpL8WUHp+7d6chjZAVJZi/KT79E8ZRLguhj8E2ZKu8J/op2yVdg==
X-Received: by 10.98.166.136 with SMTP id r8mr28200558pfl.228.1505579940037;
        Sat, 16 Sep 2017 09:39:00 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.15.200])
        by smtp.gmail.com with ESMTPSA id t19sm6622761pfa.73.2017.09.16.09.38.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 09:38:59 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: lidza.louina@gmail.com
Cc: markh@compro.net,
	gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2 1/2] Staging: dgnc: Remove unused fields in struct dgnc_board
Date: Sat, 16 Sep 2017 22:08:54 +0530
Message-Id: <dd9a08aabab9cfc60a5c7c7c0d5191d72e68c2d2.1505579408.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505579408.git.srishtishar@gmail.com>
References: <cover.1505579408.git.srishtishar@gmail.com>

Remove unused fields and comments associated with them in
the structure definition.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2:
 - Use the word field instead of variable.

 drivers/staging/dgnc/dgnc_driver.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 764d6fe..5d2566e 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -104,7 +104,6 @@ struct board_ops {
  * struct dgnc_board - Per board information.
  * @boardnum: Board number (0 - 32).
  *
- * @type: Type of board.
  * @name: Product name.
  * @pdev: Pointer to the pci_dev structure.
  * @bd_flags: Board flags.
@@ -140,13 +139,9 @@ struct board_ops {
  * @dpastatus: Board status as defined by DPA.
  * @bd_dividend: Board/UART's specific dividend.
  * @bd_ops: Pointer to board operations structure.
- * @proc_entry_pointer: Proc/<board> entry
- * @dgnc_board_table: Proc/<board> entry
  */
 struct dgnc_board {
 	int		boardnum;
-
-	int		type;
 	char		*name;
 	struct pci_dev	*pdev;
 	unsigned long	bd_flags;
@@ -200,10 +195,6 @@ struct dgnc_board {
 	uint		bd_dividend;
 
 	struct board_ops *bd_ops;
-
-	struct proc_dir_entry *proc_entry_pointer;
-	struct dgnc_proc_entry *dgnc_board_table;
-
 };
 
 /* Unit flag definitions for un_flags. */
-- 
2.7.4


