X-GM-THRID: 6390398326038069248
X-Received: by 10.200.46.123 with SMTP id s56mr11669469qta.63.1487880555916;
        Thu, 23 Feb 2017 12:09:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.218 with SMTP id v87ls1390971iov.10.gmail; Thu, 23 Feb
 2017 12:09:15 -0800 (PST)
X-Received: by 10.99.160.103 with SMTP id u39mr12610247pgn.47.1487880555105;
        Thu, 23 Feb 2017 12:09:15 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si866427pfa.4.2017.02.23.12.09.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 12:09:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o64so42741pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 12:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yDuxVbAljNEWvqp22jWAkcTg0U2lsydLMJ0MCExl2sM=;
        b=kLRIgcyb5+EO6T1DWt9OtMQn/HHi4w3I4ntc0Jj1rzyp9OrHHx8+Sexbg5HtZbgMPk
         ljZYXHriDvnEVqAtkRH6LDYjLxPNZ4i0YokQPoP3yZ1ba8gBjSL/2cOl8uh379X+hjBx
         0ngrUvLU+FalWvaAWSakD8r/t0KXyTR8gTZi74LCfKBsfuwMkrCQQuPc6eYMgDqb1DKI
         DV5vOds9+blFDtJhN8mIDGet82veYcE9bKxWZ8+Az8fqNkmeuaQzCJxy5EFdLGxKhf3N
         so08roiamstuEtJVsysPFzQMJzM1+nstvy614n/hguIKyqFj+cENR6qexstqE6XnJIuZ
         2ySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yDuxVbAljNEWvqp22jWAkcTg0U2lsydLMJ0MCExl2sM=;
        b=IMgHJFohEyyvS/tRFk7nkn+h/MdTb4M0XaEh2pbS/WfaInimbqRSBTO1Bn8bIZBU51
         Jzs0P41X6/quhOafm3wh+1VZK1gSKkyRNMXZ2y83gMDJhdorgg5M23mokw38LgPtYV7E
         JB+7kDDTPPsNKTlGCjLobvrsBWkCu4Kvcj7azxEKQbHsEH0MbiOzjf1hiDR/TzE8HUjU
         H2jICr5UWMQPaL/pp8booAVA44uxWr0KuP29aq4jUdmfmZLFXXNoFAxIJNXvur8ODHVl
         4ejELP71T8pQ/Wuw6dxFsHltQV5Di2pd59ACVmviYLKE2B3eCljWAftv5Cp6L3GV4NsY
         bDnw==
X-Gm-Message-State: AMke39lYaCr1dKl038/vvrTDfFa8KKuityEITvzA890MpXIc3tLmMYuQE1/JzVzUyr3x4A==
X-Received: by 10.98.43.4 with SMTP id r4mr39857607pfr.96.1487880554881;
        Thu, 23 Feb 2017 12:09:14 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l3sm11396543pgn.10.2017.02.23.12.09.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Feb 2017 12:09:14 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: rtl8192e: replace explicit NULL comparison
Date: Fri, 24 Feb 2017 01:36:59 +0530
Message-Id: <1487880419-28962-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace explicit NULL comparison with ! operator to
simplify code.

Found with Coccinelle script:
@@
expression ptr;
position p;
statement s0, s1;
@@

ptr@p =
\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
alloc_netdev\|dev_alloc_skb\)(...)
... when != ptr

if (
(
+ !
ptr
- == NULL
)
) s0 else s1

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_BAProc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 20260af..1d39631 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -88,7 +88,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 		return NULL;
 	}
 	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
-	if (skb == NULL)
+	if (!skb)
 		return NULL;
 
 	memset(skb->data, 0, sizeof(struct rtllib_hdr_3addr));
@@ -154,7 +154,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 	DelbaParamSet.field.TID	= pBA->BaParamSet.field.TID;
 
 	skb = dev_alloc_skb(len + sizeof(struct rtllib_hdr_3addr));
-	if (skb == NULL)
+	if (!skb)
 		return NULL;
 
 	skb_reserve(skb, ieee->tx_headroom);
-- 
2.7.4


