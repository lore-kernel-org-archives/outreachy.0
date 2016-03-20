X-GM-THRID: 6263088426063495168
X-Received: by 10.66.181.7 with SMTP id ds7mr20287864pac.35.1458497872011;
        Sun, 20 Mar 2016 11:17:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.10 with SMTP id 10ls3367942qgm.23.gmail; Sun, 20 Mar
 2016 11:17:51 -0700 (PDT)
X-Received: by 10.129.76.201 with SMTP id z192mr15159448ywa.58.1458497871441;
        Sun, 20 Mar 2016 11:17:51 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id sf5si3409469pac.1.2016.03.20.11.17.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 11:17:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n5so26242388pfn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 11:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dVvLneVRnoZt9DAuvpgLz1iVhrs5eiclWMmXn7/Sw+I=;
        b=HBtjVPZb0oCGk6rpDziFwqTG6LzGUcgAvqLskvAUA0BI+eu5Utxqji43TRbz5+V3P9
         /8MqKPQb6AIoGZFid/XzhlAaSSPsvA0Xgw6xR/L/Cxq71Q+l9LV4qYNI8h8Tg4epP+I4
         Kv++HZFzEX5n9NrqlXe//TkqPoShrNVi8orW1VyAGnf8RDiYBz6csH9TY22AaMvR0ngU
         cnM2Ttej9e9Rpy2fE5Wv043NdGAxrOjJ7hBPwv3HsjigByF72y6d+Cg58apVKrKyyJBT
         OCulrhwGLdHhHF0zDcOLnZh/ctazxYsW3rkEsCYkv0o/+ZwbKAwRZrP1jgAoaSlhFu0O
         TGew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dVvLneVRnoZt9DAuvpgLz1iVhrs5eiclWMmXn7/Sw+I=;
        b=BedZ17jaWq+kEl0CEipP0jNepXoyX9uM057u300mE66e5a5XM9Wg10zSYHmU1aPfHS
         p+c1K4xkukuQHPBBGoEqaMGAXp/4KTkjzsSqVMeQpfERRq6LBdlqw/Aw64Yx0bwNDLOb
         D5vPP1qYGwFiJt7xqy0nZsi83kO2jpWhy6dCsxWdBLd7jRqWs5bLU3KUNHS0xxta4+dY
         NSQCMMMP5XM6KO3KgMgJq6XLP8AvoxsyKd+1BrFYTx+NE+UjtCViXHeJUdYu197s+pf7
         HmFDAclNTT/wEaO9kty0QGUIy4nQ4OgQ7g7URuT82DcECw5xGMu6VsCcanmCt3LJFsWe
         dCzA==
X-Gm-Message-State: AD7BkJLtXrRMEOrtQ8QBy7GwLmOmJiv+dfCkiLPytAOWquAOltvGPbYIT1eSdVXDgox2ww==
X-Received: by 10.66.160.7 with SMTP id xg7mr38951465pab.10.1458497871188;
        Sun, 20 Mar 2016 11:17:51 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id 19sm34860329pfp.66.2016.03.20.11.17.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 11:17:50 -0700 (PDT)
Date: Sun, 20 Mar 2016 16:49:02 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] Staging: i4l: pcbit: edss1: Use !x instead of x ==
 NULL.
Message-ID: <c24859a45083909ee11d40e8dadffc323c238b3a.1458471224.git.bankarsandhya512@gmail.com>
References: <cover.1458471223.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458471223.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/pcbit/edss1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/i4l/pcbit/edss1.c b/drivers/staging/i4l/pcbit/edss1.c
index b2262ba..e72c164 100644
--- a/drivers/staging/i4l/pcbit/edss1.c
+++ b/drivers/staging/i4l/pcbit/edss1.c
@@ -254,7 +254,7 @@ static void pcbit_fsm_timer(unsigned long data)
 
 	dev = chan2dev(chan);
 
-	if (dev == NULL) {
+	if (!dev) {
 		printk(KERN_WARNING "pcbit: timer for unknown device\n");
 		return;
 	}
-- 
1.8.3.4


