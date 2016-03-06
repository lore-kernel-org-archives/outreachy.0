X-GM-THRID: 6258995026896879616
X-Received: by 10.107.166.7 with SMTP id p7mr14475563ioe.0.1457285840786;
        Sun, 06 Mar 2016 09:37:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.34 with SMTP id f31ls1279948qge.76.gmail; Sun, 06 Mar
 2016 09:37:20 -0800 (PST)
X-Received: by 10.140.31.102 with SMTP id e93mr13715411qge.27.1457285840091;
        Sun, 06 Mar 2016 09:37:20 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ff2si2626808pad.2.2016.03.06.09.37.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 09:37:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hj7so6307880pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 09:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IBNRhlRuMGiMArqt9Guo+mNYBU6ShFI369No57DZvy8=;
        b=UpJCzpxHGa0LJW5EoLth0uojEWMeN+auSbC8vUhk/fJkRnuSdSSa0yNNFujkSll0OA
         NZzPTQuJBNHQErFFQcXhIBGYxRFw2gZtBXCChiA88K1lAUTyKbch90LZhPptaFh3BwlW
         rvyU+rgBrxmEf760utyIr/iorFYol0YLSo/4O1QV3+KPmE83KETFkeX6S8qrIGuMMSUc
         0SifZFPKdL22QZ33OBQQbVXPeL67A5Tbis1yBw2Aam1Q90ZhknBWh6CjaUz7iCJtGPg/
         Zzazdj00FwZA26BKYvvh4XimmaNYLoPgWRlJT97nhQGyjRU6t4dOcuWTS5fNUHwWKcHU
         w1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IBNRhlRuMGiMArqt9Guo+mNYBU6ShFI369No57DZvy8=;
        b=Dh5r7Yzctmf5zQ5lJMzMIOnlyqa0/ILIis/8sa7EazL8J94bJwqrVSxlPgbDT/fzZA
         7CSD/ue3C7tsKm5sETyDTHwxQfEqH9vAJQvU98mRqxmb3y7+ZdVSc4H+B0XeKSyw33a/
         em0KSBeVFizezwWDjIn3KNe4gpx2FbzniAhHH6c+qVtEof6NOe3jGbQ/bz9anV2bOkfi
         O9knBMwgRmZiyHDARoykbagzTcMREDh3VNt7D9jst/aW1bkM2ZOdtgZXupv39qJ2l/bU
         q3jqo1G7506YEzfTgdumKjKCwgXG0FV0Xz//P4AHn5BVWiJFzlUxk5FWkgDk1IEpo2CR
         ORlQ==
X-Gm-Message-State: AD7BkJLAQaO0XvoBIrlXy978ub/G9XoBMsNU5P5IyUq5YG0ussJBvKV8OpxazFQGw2uE4g==
X-Received: by 10.66.144.134 with SMTP id sm6mr27762868pab.158.1457285839919;
        Sun, 06 Mar 2016 09:37:19 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id ud8sm18914507pac.11.2016.03.06.09.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 09:37:19 -0800 (PST)
Date: Sun, 6 Mar 2016 15:07:44 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] Staging: sm750fb: Remove leading and trailing whitespace.
Message-ID: <20160306093744.GA3595@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove leading and trailing whitespace.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v4:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/sm750fb/ddk750_power.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_power.c b/drivers/staging/sm750fb/ddk750_power.c
index 33e092e..b3c3791 100644
--- a/drivers/staging/sm750fb/ddk750_power.c
+++ b/drivers/staging/sm750fb/ddk750_power.c
@@ -106,9 +106,9 @@ void enable2DEngine(unsigned int enable)
 	u32 gate;
 
 	gate = PEEK32(CURRENT_GATE);
-	if (enable) 
+	if (enable)
 		gate |= (CURRENT_GATE_DE | CURRENT_GATE_CSC);
-	 else 
+	else
 		gate &= ~(CURRENT_GATE_DE | CURRENT_GATE_CSC);
 
 	setCurrentGate(gate);
-- 
1.8.3.4


