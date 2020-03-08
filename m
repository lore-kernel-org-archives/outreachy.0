X-GM-THRID: 6801918498465382400
X-Received: by 2002:a02:7141:: with SMTP id n1mr12420299jaf.96.1583695062301;
        Sun, 08 Mar 2020 12:17:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:c9cb:: with SMTP id k11ls1898372ilq.10.gmail; Sun, 08
 Mar 2020 12:17:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvx5uCZSix14o7hMvRsiMpJEJGga+/yo119PnIY32vA+8liQt9rl0ihngPzi4EFvu5oNZaR
X-Received: by 2002:a92:874b:: with SMTP id d11mr12257947ilm.30.1583695061040;
        Sun, 08 Mar 2020 12:17:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583695061; cv=none;
        d=google.com; s=arc-20160816;
        b=br/uAqvxpMTszAFpkDZj4TvpRHaEFPNE9Q0Sjh0YW63qih+zZ9ATEEHNlqbQRP9cfe
         DWa/o9RJMNe0yz+sgLK8wku7TKwMbRxTRIk1SDqjgqdSU8MZDEDJn+wrMvphd7dfH8cr
         /oDKhl7IGGhm90gh/WdAtXWABfrkfc25rOc6UND3mMiVdO6Ecvbcu2fBVuKOaBeqo4aG
         P9kAvod92hPf/Lxxuc8UJYnipQivOjLScmMBvSrkdcQqsJ9ViW10IL54qJ8hIivMfeBE
         5dOYDUWROUx5RCYA4AMJG69HdH82shj5XtVv8rh5nXsZNOZiHBvjvjyLXLV3hX3c4Uf0
         8sFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=b20y3YqhiKfZasSy7Fpf0jpYtt3Nvhq5F3gszhcgtsg=;
        b=zC7PzkH0GBwgCERWiyfhBNJboWn7447H9641kE6hO+VVuvr6qALiSyGmxacFeHBi7z
         Tz/sY2XmwoKrXIb0GZ51UMc5nouPU8HDiuNlFfQy9F1lROELRIB1ZGyyqRKEXQvh8EfH
         SEMOnS254cLUOjeEQXIVQlmJFvEqaLlEc/92iMK1+JxXpL46AGrSqHDS69+GXYjN+Mp/
         R9J1UIK86bAgZBprWa3kgPKi8URnrHsZ/ke2naUHA8PGRkixnm2jHkf6/H7ZCH8O5fwJ
         Irmrbq4mqU6HqXlmR/xOoAHWg9EnU7h/g7V4trY5ieimt0h2RCAgrE+9GWx7z/FWlBtO
         FJsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SE9TeVEZ;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id m6si466251ili.1.2020.03.08.12.17.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 12:17:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SE9TeVEZ;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id d8so3429546pje.4
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 12:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=b20y3YqhiKfZasSy7Fpf0jpYtt3Nvhq5F3gszhcgtsg=;
        b=SE9TeVEZ7gLAIrLr5vRphJZXEa+hdReOW90xwCIwWj7F7WMJjlN4noVdTMTh9Dx28k
         CpVus2JQKjnI0BRX39r/JfxjaaIgoLorTarqFohTbz5GjCwQdAs77hmQD0SPBvMtd2VA
         qFAkhYVtzQqlITb/UkZUu4vnYhCzSmHwk+8iNGgpyP9lt/GdTnUsvXokWWsgqQnq9Idn
         pCc/vlDNfn1VAw75cGVnQ0Iugbn1AE2cmlWXkANfgit0eRGc9WM0BqrRDFTwTgN7Ldas
         DE+BDB82i4MZMpsr3BIaeJ/fUIUOrfcON0npyuc1s1dox5RX23NyZD14t6yVek1h7492
         AWRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=b20y3YqhiKfZasSy7Fpf0jpYtt3Nvhq5F3gszhcgtsg=;
        b=Lj8Nb0n7DJs4PWnvV8X/h3WBeYoG9mAHWi/3zHTpePKccvMqNfwDS1ZtLw5kRMy5tH
         Yhzmadx9N3CNmD5xmonW1py28O8VpjrhFU/ek69Gplg4xdH6PzO5gAwcyYZhBR7F944M
         M7zmiSHLefuqAuTHr+QNaTM7kv6HtZGnCLNCt6n0L65J9Fdp1VH4VLqx1ZgLvk3Oc4v1
         HbKyyWK1ZUZMdi1WN1V/Mc/Pzr1JTIjydTCAS0Rqz8xWQ2AXoIq5/WyHdc1LVhYtb8iX
         NE+D9IxK/XAlODIwxt5JMM9C1ey03wSvgWL8fyMretz0NaWBPJs5+KZWM89hoz6PrMKc
         TKLw==
X-Gm-Message-State: ANhLgQ3zg74P7tErPOMHhM4Zqk7E8sMBvSkMXgzNmnj3w3P3nolcsAx5
	DbFq0pVb+Fowqd/bouxMEAo=
X-Received: by 2002:a17:90a:608:: with SMTP id j8mr14341278pjj.85.1583695060354;
        Sun, 08 Mar 2020 12:17:40 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id b12sm5106416pjz.46.2020.03.08.12.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 12:17:39 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: vt6655: remove line over 80 characters
Date: Mon,  9 Mar 2020 00:47:32 +0530
Message-Id: <20200308191732.6367-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix line over 80 characters.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/vt6655/mac.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index c7888c4e96f2..eb56e16637f6 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -884,9 +884,11 @@ bool MACbIsIntDisable(struct vnt_private *priv);
 void MACvSetShortRetryLimit(struct vnt_private *priv,
 			    unsigned char byRetryLimit);
 
-void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
+void MACvSetLongRetryLimit(struct vnt_private *priv,
+			   unsigned char byRetryLimit);
 
-void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
+void MACvSetLoopbackMode(struct vnt_private *priv,
+			 unsigned char byLoopbackMode);
 
 void MACvSaveContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
 void MACvRestoreContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
@@ -913,7 +915,8 @@ void MACvSetCurrSyncDescAddrEx(struct vnt_private *priv,
 void MACvSetCurrATIMDescAddrEx(struct vnt_private *priv,
 			       u32 curr_desc_addr);
 void MACvTimer0MicroSDelay(struct vnt_private *priv, unsigned int uDelay);
-void MACvOneShotTimer1MicroSec(struct vnt_private *priv, unsigned int uDelayTime);
+void MACvOneShotTimer1MicroSec(struct vnt_private *priv,
+			       unsigned int uDelayTime);
 
 void MACvSetMISCFifo(struct vnt_private *priv, unsigned short wOffset,
 		     u32 dwData);
-- 
2.17.1


