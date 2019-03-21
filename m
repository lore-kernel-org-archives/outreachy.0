X-GM-THRID: 6670779979143315456
X-Received: by 2002:a17:902:d710:: with SMTP id w16mr217074ply.134.1553161996113;
        Thu, 21 Mar 2019 02:53:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7b89:: with SMTP id w9ls2795125pll.5.gmail; Thu, 21
 Mar 2019 02:53:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyBJEK4cME10igx69diSdRqDYwXHUB3njRx8B2cQhsQjWigIzmkcO2KdGyVATVi5oIIW9ef
X-Received: by 2002:a17:902:4a0c:: with SMTP id w12mr204426pld.59.1553161995350;
        Thu, 21 Mar 2019 02:53:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553161995; cv=none;
        d=google.com; s=arc-20160816;
        b=AiTj8XWMuVqU1+mjvsP80hVN5DECFs7aKp6WaNrYfa5Kpo9MOzut//GjqeBqfQD3qo
         /tOuE8A/4L/UMzV4Gfi94a3vwkXAU1wLhihiFyRuzunQbaiWsVKFhJWEQIIi1qw2RuhJ
         3IYT9JqnMLIAOfgEoaVtUE/WwO7teppRzSt1thYLw1QbO4+lSzGlnRJZspY34NUtMLcP
         KLJ8Y4Po5oUOA333g1n/HEAuRQcMbLufZCmj6cnkLXDHur1sHxiu00dfvY4Wh94glDYb
         dR5ogjNDdsdo1wNLykL2C0THoQaJHEalwoGfZYxkPGymnHdFGfXqgEkj+18yZNXQsiJo
         XaeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=4/UGdTCkxZJghGtdwgPRqhM7c3+af1dhozIeOe7mdlU=;
        b=xzcdrLaDmasmPClHx1e5PZ+fecw76Lw1xMNs9SL8szONnlC+FFU+7QNQVco5/aC6qa
         CuOS6WrD6Dnx9fstUqo1c8HW0XBnISagqHp4BIXOJFUn454rYTyFmgmMvl9qA4bMoKc+
         CGl+qAOvtUN/ElPnLAJVmBnew5z4oAuJe0F//cEgXIn0C1vzNPAxEp5US27YxLQ4476M
         MEg6PFCXycS6GlokzjCaYX0Z1BZta9pGwjo5QRJUbKc0NXAPA802P4JgA0xeYCIw0xlz
         Mob++ri7mf2jSykQ+W23RsCY9C2XDNpaVE0V852NvCEypGRpAFr//rq1AHbZkU/APL/E
         Vc3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EN+gkdQV;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t24si167635plo.2.2019.03.21.02.53.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:53:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EN+gkdQV;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id a3so3937403pff.11
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 02:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4/UGdTCkxZJghGtdwgPRqhM7c3+af1dhozIeOe7mdlU=;
        b=EN+gkdQV7cusURZ8tL9RHJmYvVbfn/fW5NvDP8INp0eXaMurrpTqWcSn1LVFQotATf
         rWpY06FOENhdo1HjAhj37KKEmC/lQVcTQerV1MgEWqzy67u0pL2VAMCXegai0GLqxYlg
         ByIc5mWrDB/DIKbglzqivhjuAF58eaQzTktgXJUZdQ53LG83oddGERHfm2yje88o2ccK
         zSPNtNUnWyJcdci3PJNXbeUU+UUxBhWZWZDPsaLHVkRjtbYwUYlnURK4pQf9MJIfjBnx
         dlU/qez0FH+Uc91ixS0heT7AmTFjUPMI0znNoXKXZxYa7SDyaLQEDLVXbYKpixU9ovmf
         mjKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4/UGdTCkxZJghGtdwgPRqhM7c3+af1dhozIeOe7mdlU=;
        b=DtNHJNOhbwyL2ZPCVH/AwCslW4G0LL4VdABH1Y7CvCQX6+GWJXQ03CJA4RHgX8IFXm
         fstEORqbQN1eTIlzf1dvdceOqhNfYLyNMGvuTQ0pm842nYwHqJpiaj555NUWv8e79W/N
         CIlIetF2j/iGdfmLMrh2uEcDAR61G1uz/hYw+wi7ejKOvsc7sNxxUTcL68iIUzT2MCiu
         KJuV5ZcZxSbPZvs47/UkOJM5xiTaJwikMBd3Cw0ez4jLtR5lRajVWFj+O+zY6t6nN16M
         HOl2Vesr6UnV6MtFJhuQvZJsHmRa1OPp+aKDxXa8RxdRKodzAmW6k5CgFJ61ZYmuoMxY
         tzyw==
X-Gm-Message-State: APjAAAXilUMv2yqyW7mqmIIVdwSLfdO+rX8+V6W3+JP7JCYLlYxJY9rK
	lmqfhixbIdJkt4E1fDsOp2QtlULV
X-Received: by 2002:a17:902:6a89:: with SMTP id n9mr2537010plk.223.1553161994845;
        Thu, 21 Mar 2019 02:53:14 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id x23sm3374209pfa.36.2019.03.21.02.53.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 02:53:14 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: vt6655: correction in spelling
Date: Thu, 21 Mar 2019 15:22:56 +0530
Message-Id: <1553161976-8598-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Correct misspelled word.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/vt6655/rf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 444751a..4cb7030 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -171,7 +171,7 @@ static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
 	0x221BB900 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0xE0000A00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: E0600A */
 	0x08031B00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */
-	/* RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
+	/* RoberYu:20050113, Rev0.47 Register Setting Guide */
 	0x000A3C00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 00143C */
 	0xFFFFFD00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x00000E00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
-- 
2.7.4


