X-GM-THRID: 6261616748172148736
X-Received: by 10.66.146.231 with SMTP id tf7mr15435026pab.6.1457896257994;
        Sun, 13 Mar 2016 12:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.42 with SMTP id g39ls3676730qgd.50.gmail; Sun, 13 Mar
 2016 12:10:57 -0700 (PDT)
X-Received: by 10.140.27.180 with SMTP id 49mr15715833qgx.19.1457896257309;
        Sun, 13 Mar 2016 12:10:57 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h69si1479346pfj.0.2016.03.13.12.10.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 12:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id u190so8037171pfb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 12:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5OTQmjvz1nLxyeGY3Orw5dHNya7xK8djND92GtiqwpU=;
        b=qVxvAgOL9LPdDW8pZW1DU34ngPWYU5nDFY6Xv5B774u+J4xuP+ZeAuD6hFuJ5znE3p
         mxgG2qhAPl24bJuzFoYSZVltdw9Tp0lwEwQI8CYsFGJwYudHaP+QP5ccrLRwkXg/um86
         Pf8MgtPunCD/sHzzeDL/Psc1061/yMknh6bbOyNvrYwi2g3e4cCao+mFVU2p00uQFF8Z
         VfnMm7fWgo5PMY+wpqoz2flt8h08dgVaz8MLFGj/oSfYU1O2UgqgsrAkCyPBf6RdR7iv
         U/afHdyUI7s7ELAgE+OkyvUY4LuiXAD6Pqjrk5TJjtAILcrXHo9eU+arahrS9V3F3OYs
         etfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5OTQmjvz1nLxyeGY3Orw5dHNya7xK8djND92GtiqwpU=;
        b=kodCcFAWKCnj4yjj8K5IHr2IAIefW9P045wTL+C0QfZJ0QkKO7UuekjSvC7Dmfq583
         GfT9j/rWh1uB0dZVnHV38jEMyKwY7JXMRZqXHv880mrpIJzWUbKduGa2Jx9u+lJDV1f2
         745x+bz9Rb+dtRcDihgwSK4plLmo6nWVQyg+OYEmOULx41r5FkKUmYx/LJeEIjnqgJfS
         jJHbNVkPhHzJxGB9+zKNcAADnX7J0gebQjq44jyoPGoMjks8Si79qCWUWK1dtKTB9coE
         3AtgJkH383P6Hd8vH3CTeWd3+7t/4LfFDw1aQG3Qt97fHXNTZMK9aE/PzhbvIm4lw8+k
         8awg==
X-Gm-Message-State: AD7BkJJLT0Ri9D9bbFq0K1RuFmUOAvQcTTM0DkDqmOsAPPQ6mKwJrMSj2jgnKcYYOYMOKw==
X-Received: by 10.98.11.205 with SMTP id 74mr24223687pfl.98.1457896257136;
        Sun, 13 Mar 2016 12:10:57 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.34])
        by smtp.gmail.com with ESMTPSA id qy7sm26701013pab.34.2016.03.13.12.10.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 12:10:56 -0700 (PDT)
Date: Sun, 13 Mar 2016 16:41:23 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: gs_fpgaboot: Replace 'int32_t' with 'int'.
Message-ID: <20160313111123.GA7622@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Replace 'int32_t' with 'int'.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
index f41f4cc..8cc3255 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.h
@@ -51,6 +51,6 @@ struct fpgaimage {
 	char	part[MAX_STR];
 	char	date[MAX_STR];
 	char	time[MAX_STR];
-	int32_t	lendata;
+	int	lendata;
 	char	*fpgadata;
 };
-- 
1.8.3.4


