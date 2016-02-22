X-GM-THRID: 6254209589595602944
X-Received: by 10.66.222.138 with SMTP id qm10mr8590504pac.41.1456171644480;
        Mon, 22 Feb 2016 12:07:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.48.232 with SMTP id p8ls900888obn.1.gmail; Mon, 22 Feb
 2016 12:07:24 -0800 (PST)
X-Received: by 10.182.240.137 with SMTP id wa9mr28914586obc.16.1456171644131;
        Mon, 22 Feb 2016 12:07:24 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id u66si3714478pfa.2.2016.02.22.12.07.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 12:07:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id c10so101211655pfc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 12:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2NriGlQu7oROvqSGkCvfwvK6T7idJF7ichpl0dWoOsI=;
        b=GJCoS8QzqY5ILhn7DDVcjYLHT+mgEMHQfyW1gM1A2Ww60CLBABcehQ2B/COVtkuBlM
         vEXINXN6vnXBqBKyvSjQU0TcLOQuGPSNcW70Ia41TmdhULK9KcINJbhmQCxLXwrPfzJr
         1tOa3bX89REa8pJ2PbhIsW/+1AnJL4LIqYjV7/Pwff2Cyc0KJpIUqR4C3XCyqrKZfZMf
         8E1QNMLC1Mno2t63yAQOUl8OPko6JpwKXvGg5IO8Za4z1J5oa9jnDZw3GI/jjGfn54K0
         eDmy4ZRAbejQqJnqMrrVDPeEvpbkMPcZdyhpf/DzQISKmYUsG4Ls0waEasltbzUdcpaT
         RA6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=2NriGlQu7oROvqSGkCvfwvK6T7idJF7ichpl0dWoOsI=;
        b=QEinnw9CL2qoVm0b2A50znG283sr+ADWF+GOtNbXKJR50M2R1mg0/k95d/e98iWm2/
         mQoal5aFvxSpEoEyUvHv3VkQpiryiCEQ6wT6t106YuMswmS6L5YQ9DUAAyOANot722Eh
         sGhNNpOyrUuB426VfwbwTl664moRBDIDroJ1nKebfKsAyDmuGzWyyQ8ZvO0iuft5ZTCx
         H1fkd2oh0H3P0rDET6e3G4nDE4MLuV5lEbuPiPEJRc+wbzGbC3fD/RnTNwIbmP1RvgRl
         dT4r5Rfrmb9brrF88aS+tZVHppotnxZgrJatGKZCiL4NARCk0lntv7mPezUPXM1uNu/V
         w7ww==
X-Gm-Message-State: AG10YORqeW0XAF6za7UMF8u5JN1uZt5yYktukewfAbMj1HEg4uFKQHWvqqiysdoOgq0JOQ==
X-Received: by 10.98.87.141 with SMTP id i13mr40256402pfj.72.1456171644000;
        Mon, 22 Feb 2016 12:07:24 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.75])
        by smtp.gmail.com with ESMTPSA id g25sm38815248pfg.35.2016.02.22.12.07.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 12:07:23 -0800 (PST)
Date: Mon, 22 Feb 2016 17:37:29 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vt6655: Remove unnecessary blank lines.
Message-ID: <20160222120729.GA5568@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary blank lines.this problem is captured by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/vt6655/card.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 6c1b973..3d33812 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -443,7 +443,6 @@ bool CARDbRadioPowerOff(struct vnt_private *priv)
 		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE2);
 		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 		break;
-
 	}
 
 	MACvRegBitsOff(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -499,7 +498,6 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
 		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPE2 |
 									    SOFTPWRCTL_SWPE3));
 		break;
-
 	}
 
 	priv->bRadioOff = false;
@@ -812,7 +810,6 @@ bool CARDbIsOFDMinBasicRate(struct vnt_private *priv)
 
 unsigned char CARDbyGetPktType(struct vnt_private *priv)
 {
-
 	if (priv->byBBType == BB_TYPE_11A || priv->byBBType == BB_TYPE_11B)
 		return (unsigned char)priv->byBBType;
 	else if (CARDbIsOFDMinBasicRate((void *)priv))
@@ -861,7 +858,6 @@ void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode
  */
 bool CARDbSoftwareReset(struct vnt_private *priv)
 {
-
 	/* reset MAC */
 	if (!MACbSafeSoftwareReset(priv))
 		return false;
-- 
1.8.3.4


