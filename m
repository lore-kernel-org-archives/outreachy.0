X-GM-THRID: 6467884154880
X-Received: by 10.112.138.202 with SMTP id qs10mr349833lbb.24.1425449970486;
        Tue, 03 Mar 2015 22:19:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.29.225 with SMTP id n1ls134289lah.52.gmail; Tue, 03 Mar
 2015 22:19:30 -0800 (PST)
X-Received: by 10.112.41.131 with SMTP id f3mr373490lbl.20.1425449970051;
        Tue, 03 Mar 2015 22:19:30 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id v5si533985wif.3.2015.03.03.22.19.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:19:30 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id n12so44512371wgh.1
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 22:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=W+kquLm8YNdcbYSAs5ylAgfc+r3l7sm24tlkbEnM9v8=;
        b=GXtERG4kG7Y4qPd96A3NaK5OLQcJf5KUnyv9ckZvcbDF2aURKpBWAaX2hDs8G2cuAt
         wOFK99OIPbNVvZO9/c1y6kfBzcFU6i/tgNYEp+PtT9v8wLRDaLQdnJKLMFYKl5H9DG96
         3YdZR/pqJHTMmDlgtsEGyXDN9x6zmSxt8Ycq9Foj0XTDCRZH86YJ+cqpo6QhywYLiY/Q
         ZfUNQhY3BKIyVzarDENsCrTLpDsWeUDTCmLRsN+MRxgyTbH6XshSRyMKLD5yo809tXn0
         WuhFtjI2yWrJJrK+mO1XE9vLXjFWnnGIWbxFVXoqKaVrMYhYs8s0bnY2GhCIe32S/Iw6
         PL3w==
X-Received: by 10.180.207.227 with SMTP id lz3mr51942276wic.47.1425449969974;
        Tue, 03 Mar 2015 22:19:29 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id u6sm5539052wix.12.2015.03.03.22.19.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 22:19:29 -0800 (PST)
Date: Wed, 4 Mar 2015 08:19:24 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: rts5208: remove extra parentheses around left
 bit shift operation
Message-ID: <25e504b6c8c21e5c4cb49a8c9b36deffdd2149e3.1425449681.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425449681.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425449681.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise left shift operations.
The case handled is when resultant value is assigned to a variable.
The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
<<
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
<<
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
<<
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index dab1995..03caa9b 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -642,7 +642,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 	dma_addr_t addr;
 	u8 dir;
 	int err = 0;
-	u32 val = (1 << 31);
+	u32 val = 1 << 31;
 	long timeleft;
 
 	if ((buf == NULL) || (len <= 0))
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

