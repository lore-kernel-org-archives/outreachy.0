X-GM-THRID: 6251514840674729984
X-Received: by 10.13.238.130 with SMTP id x124mr7981426ywe.53.1455812026299;
        Thu, 18 Feb 2016 08:13:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.85 with SMTP id h82ls720134ioh.63.gmail; Thu, 18 Feb
 2016 08:13:45 -0800 (PST)
X-Received: by 10.98.0.132 with SMTP id 126mr7661714pfa.2.1455812025887;
        Thu, 18 Feb 2016 08:13:45 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id ui7si1054824pab.0.2016.02.18.08.13.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:13:45 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id q63so33771427pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 08:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=YYySTmE7niQqHxdbg83J4uPjRUU8dGKaIxH2h3YE0L8=;
        b=NbrkeoXU/siLkvQxarvMwk0dsqgJmGjxpMwNj34hwr0U/X2LuT16nG7s3CKjvZcAzJ
         hx3V7z9cGdwv86fqMjmpOS8ONOUy6YcyCnmD3+ns8INOC//IA/HkUz8iUopB5snnn4TO
         R/lQIUAsnURKvyxYiWsKURVhsW31CcQ6XovrZkDaSyqOz0PfHFbMGqZ1129VNFjwpMY6
         yTrHPCbW9TG7wWGw5c2UTcYJ8u4DfVozmO6KpSZCsSdEztMEaLBGHKigaEoTOToxgZ8d
         G0dxc4f3avLvUGy2wZTwLV6D/YuQiWUpq7LR3DtQSMOWOCIwa44bdGXmK0zOg4/1PH3O
         HmAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=YYySTmE7niQqHxdbg83J4uPjRUU8dGKaIxH2h3YE0L8=;
        b=Kho6Q4F24b5dD/lkhO6NSXNBSy2JQLsnkN0nG9Tk1njwxNF+0MAgx+m6Z4FIq/kqT7
         kroVHbSOxQnU0Tc22GcgLs2fKBignhrdxmlv4MT6AXVt+y3ynZ7FjqZ7i7RBTP7qB4/8
         6RTnerhWp75nphTvw8GnSWoGcS0MnauRH+f1eOS6VGZPYAWmHda8LoENyLPHCAaBERrD
         4FUvMBIEiZFF7eoe861tC96NOY8ppCF3SPfYcwp9Zo3qFZvws6MLB7ZIqR7j0sr1wCQZ
         txxGBJ8LAVE0ahW/jvdWiTFSSfFseTo1mL7dUZh5YyXW9XBoRJfplfXTnBL/xEHeH20u
         h1MQ==
X-Gm-Message-State: AG10YOTDhML0AkwKgZZQewCaIR26LvbWFWgVW2aCgEutRsig0QZmc9WISw7Uv6CoaZ+Q3Q==
X-Received: by 10.98.32.5 with SMTP id g5mr11232813pfg.74.1455812025791;
        Thu, 18 Feb 2016 08:13:45 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id p9sm11410235pfa.11.2016.02.18.08.13.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 08:13:45 -0800 (PST)
Date: Thu, 18 Feb 2016 21:44:10 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove an unnecessary else after break
Message-ID: <20160218161402.GA3219@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove else after a break. Because else is generally not useful after a break or return.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 27 ++++++++++++---------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 4f8474f..31dc138 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -658,8 +658,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 
 		if (i == 0)
 			break;
-		else
-			vmm_table[i] = 0x0;
+		vmm_table[i] = 0x0;
 
 		acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
 		counter = 0;
@@ -670,16 +669,14 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 			if (!ret)
 				break;
 
-			if ((reg & 0x1) == 0) {
+			if ((reg & 0x1) == 0)
+				break;
+			counter++;
+			if (counter > 200) {
+				counter = 0;
+				ret = wilc->hif_func->hif_write_reg(
+					wilc, WILC_HOST_TX_CTRL, 0);
 				break;
-			} else {
-				counter++;
-				if (counter > 200) {
-					counter = 0;
-					ret = wilc->hif_func->hif_write_reg(
-						wilc, WILC_HOST_TX_CTRL, 0);
-					break;
-				}
 			}
 		} while (!wilc->quit);
 
@@ -708,9 +705,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				if ((reg >> 2) & 0x1) {
 					entries = ((reg >> 3) & 0x3f);
 					break;
-				} else {
-					release_bus(wilc, RELEASE_ALLOW_SLEEP);
 				}
+				release_bus(wilc, RELEASE_ALLOW_SLEEP);
+
 			} while (--timeout);
 			if (timeout <= 0) {
 				ret = wilc->hif_func->hif_write_reg(wilc,
@@ -732,9 +729,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				if (!ret)
 					break;
 				break;
-			} else {
-				break;
 			}
+				break;
+
 		} while (1);
 
 		if (!ret)
-- 
1.9.1


