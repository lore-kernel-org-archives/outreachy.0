X-GM-THRID: 6251391648571326464
X-Received: by 10.31.152.208 with SMTP id a199mr14419263vke.4.1455515541947;
        Sun, 14 Feb 2016 21:52:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.213 with SMTP id z204ls1355402iod.46.gmail; Sun, 14
 Feb 2016 21:52:21 -0800 (PST)
X-Received: by 10.107.12.99 with SMTP id w96mr15409325ioi.5.1455515541643;
        Sun, 14 Feb 2016 21:52:21 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id ff2si2727580pad.2.2016.02.14.21.52.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 21:52:21 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id e127so81757880pfe.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 21:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=J3LW6vRaaVpavLNjlH56D3ixnGH3CNfJH9P+VS/0CTg=;
        b=Ifv0Esw4ApG6dAJV3cW69CwABNCQC6KDCMXxe1Z3I6GP4Zuyh50uTY4wGiXFX9UgPx
         vAM6BDZKeh15zQLCeQnhRFHT6Scomz4FAMquPcHKu6IVxoEXk4zEPt9Vd2IOeykBHuId
         m2Q7afZ3H9HeZ4JO1PD7D5WXTlV7z2aE3BPRpB1Y++D8lH92eUwP/YFPNv6yl6KtJG5O
         UjnioS4f/oYlpfXoRl5tvR0RV2U4Roy4QF7wfy/8MPK2vJOGQdBR4KNC5wCQ7m2mZr2T
         iMfOtryQheZ5C+F/ooNUOPjDdRtWUrIU/u8aVYK1htLzi+luMHl5S55rlGnjJ4NNVu2e
         40/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=J3LW6vRaaVpavLNjlH56D3ixnGH3CNfJH9P+VS/0CTg=;
        b=Fob2KRWAVYPjEIubhQA9Cx/eaCcvKD/h7mGIqVNVutejRGB/pRl9ZNJDXMi+Pc1C0g
         3FVi0oDW/qkWkHeh/WCxiU/T2gsN/WsbgCdGTJ70lxID85l0ViaLGWPmf55RBI/nsCmt
         r4WYWUFZR3ynOKcHHXi5lfraqW1iroPx7JNF36XeDXrc5p0AvgBsWL/2CCLDa5QtjcXk
         YuWAk6R5lULqOMQafzCB+TXyn5eHuKDapHS7oZM+HjoSzqNfrMWB+dDQEtxatGuOjNkB
         T7k6DJTG3qp+Ad1f6T92XZNa1MrsVS1cHLU/i0dOd4kalV0TSIluOlv/aEX/QWEwyDgb
         +9MA==
X-Gm-Message-State: AG10YORfvqN/S+BylE4VIgGvxBFOG25C55OfRqwzyQhkcmdfa2G2FJ9AU9tfMSW59a1ZGQ==
X-Received: by 10.98.75.22 with SMTP id y22mr21114514pfa.147.1455515541519;
        Sun, 14 Feb 2016 21:52:21 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.36])
        by smtp.gmail.com with ESMTPSA id tn5sm34213278pac.32.2016.02.14.21.52.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 21:52:21 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: wilc1000: declare 'fops' as const
Date: Mon, 15 Feb 2016 13:52:15 +0800
Message-Id: <1455515535-16027-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Change the declaration of the file_operations structure 'fops' into
const as suggested by checkpatch.

WARNING: struct file_operations should normally be const

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/wilc1000/wilc_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_debugfs.c b/drivers/staging/wilc1000/wilc_debugfs.c
index da7ec8b..a27b077 100644
--- a/drivers/staging/wilc1000/wilc_debugfs.c
+++ b/drivers/staging/wilc1000/wilc_debugfs.c
@@ -130,7 +130,7 @@ struct wilc_debugfs_info_t {
 	const char *name;
 	int perm;
 	unsigned int data;
-	struct file_operations fops;
+	const struct file_operations fops;
 };
 
 static struct wilc_debugfs_info_t debugfs_info[] = {
-- 
1.9.1


