X-GM-THRID: 3231867469824
X-Received: by 10.50.112.228 with SMTP id it4mr17080988igb.6.1424795200037;
        Tue, 24 Feb 2015 08:26:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.170 with SMTP id g39ls2823856qge.28.gmail; Tue, 24 Feb
 2015 08:26:39 -0800 (PST)
X-Received: by 10.236.29.133 with SMTP id i5mr17052641yha.3.1424795199837;
        Tue, 24 Feb 2015 08:26:39 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com. [209.85.192.181])
        by gmr-mx.google.com with ESMTPS id ri9si710806pdb.1.2015.02.24.08.26.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 08:26:39 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.192.181;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pdjy10 with SMTP id y10so34336438pdj.13
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 08:26:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=VV1HyZ0a5t/bxPAde9b87UdntLcwxjqMIaBMRbw+FU0=;
        b=ICpepD/1qlXhKrMTgE3oJJAjPVkUyxAnt5+c2pjyg38tIkw+FLItGj8anJMsMJ0wOL
         0dTNDvBSCzG8/0Oca3WToUnbXb/ml5uMnXmIi0l0qWBT08TBlVTiwFVJKiKROPxUAgjj
         3kyflrPvT3Eq+JuMJUui9xy1/Nx/hB0aMMfBzSI+yolGGX0gaL9SaVVD15VhwfC9wb0o
         J2eQudGaTVyUJYqKNbXtz7vP4WionJqqVDKAETsbdQZyjc658HRMFJ6w86xGYjXA525+
         iGzmE/N/nt9T2mcJ51Alp5U05OVLY2yImzJej5iEyuSSlQ9vG6sScFxhzuYwHASeC1qI
         vAxw==
X-Gm-Message-State: ALoCoQmdtmUh+tBMi24dkgxdYwoVLrRP0FlskbJRT0J64tjkzYTGcCDmNTAm2ugMb6GSuZp+lYU0
X-Received: by 10.70.47.131 with SMTP id d3mr30093876pdn.86.1424795199693;
        Tue, 24 Feb 2015 08:26:39 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:345b:fa47:4a5f:4d11])
        by mx.google.com with ESMTPSA id w16sm28086776pbs.35.2015.02.24.08.26.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 08:26:39 -0800 (PST)
Date: Tue, 24 Feb 2015 08:26:37 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: Remove unused Macro
Message-ID: <20150224162637.GA9677@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removes SetFrameType Macro because its not used elsewhere

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/rtl8712/wifi.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 5ba7e71..356059b 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -246,13 +246,6 @@ enum WIFI_REG_DOMAIN {
 #define GetFrameType(pbuf)	(le16_to_cpu(*(unsigned short *)(pbuf)) & \
 				(BIT(3) | BIT(2)))
 
-#define SetFrameType(pbuf, type)	\
-	do {	\
-		*(unsigned short *)(pbuf) &= cpu_to_le16(~(BIT(3) | \
-		BIT(2))); \
-		*(unsigned short *)(pbuf) |= cpu_to_le16(type); \
-	} while (0)
-
 #define GetFrameSubType(pbuf)	(cpu_to_le16(*(unsigned short *)(pbuf)) & \
 				(BIT(7) | BIT(6) | BIT(5) | BIT(4) | BIT(3) | \
 				BIT(2)))
-- 
1.9.1


