X-GM-THRID: 6467884154880
X-Received: by 10.152.29.97 with SMTP id j1mr357432lah.3.1425449996577;
        Tue, 03 Mar 2015 22:19:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.98 with SMTP id q2ls48233wia.7.canary; Tue, 03 Mar 2015
 22:19:56 -0800 (PST)
X-Received: by 10.194.95.67 with SMTP id di3mr370310wjb.0.1425449996317;
        Tue, 03 Mar 2015 22:19:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id cl5si236497wib.3.2015.03.03.22.19.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:19:56 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so44436914wgh.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 22:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SzsR4q85/dBHvCHX6cInLx7yqJKoo96KQOxNbS91684=;
        b=c1pZ6xozze+GGT1ReUaHO5KutqOOaBEukS2DUDdgxCh7A/4Eh2omQSDHqThFp/nScE
         WFI+9B+SwcRzEeASpf7yDGn1IZCAKTMBbYCJoBs7j2iF5QxXeICChzBw6OlaRQN281Bc
         vOB6IxZR+bFD1D9KfQ7FUgWaeXgYrHRzxAeNwExQ0pIgo0QTMF7HPHbrwGGlxxQWAh/j
         Tq9ZE3DAT1Om0VLb120Rl2ibNZJTA42MEnkVVa8UgExY4ZmI8a2S3Lnb+/kpnRz75Meh
         /QMZEqnVU3kC658Sir5dI26pvMQFhKzn3LmngcerrMVdUXAMSFZKijIzeOhrrs+44VZN
         xeLA==
X-Received: by 10.180.79.227 with SMTP id m3mr9552788wix.3.1425449996253;
        Tue, 03 Mar 2015 22:19:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id gt4sm5521737wib.21.2015.03.03.22.19.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 22:19:55 -0800 (PST)
Date: Wed, 4 Mar 2015 08:19:50 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: slicoss: remove extra parentheses around left
 bit shift operations
Message-ID: <08acdc7e43e36f5c9d28852c38bb79cbe2df4635.1425449681.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/slicoss/slicoss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index c84dd60..a3afb3e 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -1850,7 +1850,7 @@ static void slic_xmit_build_request(struct adapter *adapter,
 
 	ihcmd = &hcmd->cmd64;
 
-	ihcmd->flags = (adapter->port << IHFLG_IFSHFT);
+	ihcmd->flags = adapter->port << IHFLG_IFSHFT;
 	ihcmd->command = IHCMD_XMT_REQ;
 	ihcmd->u.slic_buffers.totlen = skb->len;
 	phys_addr = pci_map_single(adapter->pcidev, skb->data, skb->len,
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

