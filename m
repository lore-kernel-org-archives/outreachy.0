X-GM-THRID: 6208580285046456320
X-Received: by 10.180.88.36 with SMTP id bd4mr94139wib.2.1445547743382;
        Thu, 22 Oct 2015 14:02:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.209 with SMTP id y78ls706wmh.27.gmail; Thu, 22 Oct 2015
 14:02:23 -0700 (PDT)
X-Received: by 10.180.89.41 with SMTP id bl9mr100249wib.3.1445547742990;
        Thu, 22 Oct 2015 14:02:22 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id hc2si15394wib.3.2015.10.22.14.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 14:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id ll6so5757346wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 14:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=IVD3JHGvISs+HLthlUrsri0yGama3/3Kb2qVczPCkFc=;
        b=rDZho+bXrl81m6TEbKyjrYvyNEcV0xXbvNSiFI4piFT7LXSEjyDCsG7NkLAU+2Yqvp
         gSKtfwXJl9Tii/tDlw6a4M6XjqBytLRj9nT+fGve2xi9pktwljLqbCO9X1ysvJZo3AaO
         Fdw6L7xKUg4Mttso3Rg2krzuAHC2YjIbOTVdQhO/XFC796uAFJO2lbqztIgB7P55689J
         T2dzDfpf5kc3tao7fcSID5Gkdg5XPu3rTZ/Tr2iaA5tQMNdWuqc87s32NUsCw8/Lv5Kw
         2GS9Ktdc7MPxRRddy0yBMczA/XFg2yRI/NrdCHh93Jg4N2a6986ZwJwCjax7wWaxfzu/
         Laww==
X-Received: by 10.180.12.206 with SMTP id a14mr501924wic.25.1445547742894;
        Thu, 22 Oct 2015 14:02:22 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([95.13.215.164])
        by smtp.gmail.com with ESMTPSA id cr5sm17521847wjb.16.2015.10.22.14.02.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 14:02:22 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: octeon: Do not use multiple blank lines.
Date: Fri, 23 Oct 2015 00:01:35 +0300
Message-Id: <1445547695-18060-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines".

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/octeon/ethernet-defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
index f92e0c4..ac5d71d 100644
--- a/drivers/staging/octeon/ethernet-defines.h
+++ b/drivers/staging/octeon/ethernet-defines.h
@@ -42,5 +42,4 @@
 
 #define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS+1)
 
-
 #endif /* __ETHERNET_DEFINES_H__ */
-- 
1.9.1


