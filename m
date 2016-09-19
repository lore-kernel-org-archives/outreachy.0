X-GM-THRID: 6332014923786223616
X-Received: by 10.98.29.7 with SMTP id d7mr4088752pfd.22.1474287405406;
        Mon, 19 Sep 2016 05:16:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.201 with SMTP id p70ls3297361ioi.2.gmail; Mon, 19 Sep
 2016 05:16:41 -0700 (PDT)
X-Received: by 10.36.135.11 with SMTP id f11mr3311855ite.14.1474287401030;
        Mon, 19 Sep 2016 05:16:41 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z4si4716441pam.0.2016.09.19.05.16.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 05:16:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so6945121pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 05:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=N1tQqgzRWCTxtCES8LlXM61NNB7OBYbBvB7fY3ORDvY=;
        b=JI1uVI7SOIPgp9zsiBnxNVhkbAQ0Cs5bRWgjgFWYd95axDHER37dPSZ7zKijCXS98U
         jcOXpJDmB3twxotCtY1JY9HNJlM0Msi5giR+313QX/sMc22SYshjSmKPaY7UfQ/rL+8i
         gNflr4gO22Vr9K/h0RpjHQ1kCAltl8X6WJMhOA/qXG/6wkaKOMEK6wQno+NXkcLitmiL
         /yxXaZGYANUFPvNwXM1TV3Efx31jJhVsAugRkrVXZFCB+/lAsIa1noUpGsKB5zDcFsyo
         TE09VhOjEI/JAXJLVdOEBLFBo9DMVUkyclI9g5K/gh0BvADb8r6zXK+0tShIs7uTJrCk
         0QCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=N1tQqgzRWCTxtCES8LlXM61NNB7OBYbBvB7fY3ORDvY=;
        b=NKnTWn2L4yWthR2wn3ljwdF/3lzSQsEgc7SYAkW6oJJV4HCiVl75/TC1hmw3LvBtQd
         QvSTR2xFsGrsQg+Xs16x+egte6W5DXRA5hfgyGJM7ewI85M8ddYAsigI7KK+CoDWiFg5
         kHlcBad/LN909/PQBorJtFvwDUE1U55nsiLyzFLvBgjhWBuvvIkPnPo1dGnGZ3arG/Oo
         TB/SbueHDShIvZAmvG4L2tWifO1yvD3vnRlbb3cAQ0KSIVYt10LzgLW400YzwoKHr0Gm
         ajrz/pvuAV7WjOEDKKZ++gJDIJAueHeZMmt68WYgVyvM2A9JO5wpXiM4HwgHtYtGZMXo
         G4Eg==
X-Gm-Message-State: AE9vXwNYsORfpZGpqs4bi2qOEd54eQfUVd8E/waiGDdlEDdbKCsieXX0/Ixtr+7C4Vfn5w==
X-Received: by 10.66.164.39 with SMTP id yn7mr32705901pab.163.1474287400846;
        Mon, 19 Sep 2016 05:16:40 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.188.202])
        by smtp.gmail.com with ESMTPSA id fm6sm28361094pab.37.2016.09.19.05.16.38
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 05:16:40 -0700 (PDT)
Date: Mon, 19 Sep 2016 17:47:21 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH 2/2] Staging: vt6655: card: Remove unnecessary space after a
 cast
Message-ID: <a6bf89ca4b8b5b1d62e812f6f5270a40e03874d7.1474286513.git.bankarsandhya512@gmail.com>
References: <cover.1474286513.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474286513.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

No space is necessary after a cast. This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/vt6655/card.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index afb1e8b..dbcea44 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -619,7 +619,7 @@ CARDvSafeResetRx(
 static unsigned short CARDwGetCCKControlRate(struct vnt_private *priv,
 					     unsigned short wRateIdx)
 {
-	unsigned int ui = (unsigned int) wRateIdx;
+	unsigned int ui = (unsigned int)wRateIdx;
 
 	while (ui > RATE_1M) {
 		if (priv->basic_rates & ((u32)0x1 << ui))
@@ -645,7 +645,7 @@ static unsigned short CARDwGetCCKControlRate(struct vnt_private *priv,
 static unsigned short CARDwGetOFDMControlRate(struct vnt_private *priv,
 					      unsigned short wRateIdx)
 {
-	unsigned int ui = (unsigned int) wRateIdx;
+	unsigned int ui = (unsigned int)wRateIdx;
 
 	pr_debug("BASIC RATE: %X\n", priv->basic_rates);
 
-- 
1.7.1


