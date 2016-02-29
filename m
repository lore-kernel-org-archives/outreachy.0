X-GM-THRID: 6256670345142468608
X-Received: by 10.112.189.104 with SMTP id gh8mr1479138lbc.12.1456744583886;
        Mon, 29 Feb 2016 03:16:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.182.66 with SMTP id g63ls337923wmf.29.canary; Mon, 29 Feb
 2016 03:16:23 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr1516775wje.1.1456744583355;
        Mon, 29 Feb 2016 03:16:23 -0800 (PST)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id h126si401512wme.0.2016.02.29.03.16.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 03:16:23 -0800 (PST)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x229.google.com with SMTP id l68so31241049wml.0
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 03:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MdE/sz3cx6zdjvvRId4aipqGYEFAGLEwC30XxU7J2Ro=;
        b=FPZLaIcCipMThvNDv3ElS5Jbxtzne/yVtto1gykb85fO219IDWFrjy9UhHF+D+dXFk
         h4NchiJ5T3jcX/m3886G1l1mcxnyh7O8eNb2/UhVd9nhh/TNU1XW14aYkYBbHlrFWnIc
         8rp8NoPdawfOgdTvTeLglpleYfbfSpk8DCdvrjGgwyqZ+qNyaJKL21eijMNPMBzcjn9h
         aHeHdkpN8vqd+DdcE/rtcg0OTYl1uaoYAvaPi5Baq6ULh3GykWoVtEh2ZD4mRNq3Hakg
         rnMh62SdxTFXPfcsUj58IIsCbLxYtDHBL6f8jJ8kBguGqS9fssMUDq9B8CWf4+F0BmBm
         5dtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MdE/sz3cx6zdjvvRId4aipqGYEFAGLEwC30XxU7J2Ro=;
        b=dvRq5sTkxsgloqItSlYLXo2silJJ31nXp1AeTiGQKZ+y1T56J+St02d4SqrTSW9MHk
         /CLjcWd7bkrsj3e8MyaHjMt0y9WECj2ZFXq7CCsuBgSt/QyyXe3+sjrd/sSlkX464tTP
         dJHKY56iCmcZ7vl7s5i7NaEhs7M/qWP4ISsuFAQZdM/jz3tR3Jmc++sTW7U0NTH5/T5P
         kdegTx8XP6A9UUPqGNlT4r0ir3Ha3Iln+Xk7Y/z45dJpjuJYOCkyUTQdmWnlVCd7GQyC
         Ga80ayytkoGJn4odcO4ah6eboIM+91JciwHkvtjkePjMbX2P6elZBDRnaB4o4T93VX23
         bxJg==
X-Gm-Message-State: AD7BkJJ8qVi5qKSvOl0K+Dvl/+0UXeyF1fhXv/jg/i+es2pcsN/7MupE/bKo1YSc7TmfMg==
X-Received: by 10.28.23.75 with SMTP id 72mr620469wmx.50.1456744583148;
        Mon, 29 Feb 2016 03:16:23 -0800 (PST)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([141.85.227.229])
        by smtp.gmail.com with ESMTPSA id k124sm15794992wmb.11.2016.02.29.03.16.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 03:16:22 -0800 (PST)
Date: Mon, 29 Feb 2016 13:16:20 +0200
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging:wilc1000:coreconfigurator.h Remove an unnecessary
 typedef keyword
Message-ID: <20160229111620.GA9474@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes these warning messages found by checkpatch.pl:
WARNING: do not add new typedefs

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 63eca24..1e1892f 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -50,7 +50,7 @@
 #define MAKE_WORD16(lsb, msb) ((((u16)(msb) << 8) & 0xFF00) | (lsb))
 #define MAKE_WORD32(lsw, msw) ((((u32)(msw) << 16) & 0xFFFF0000) | (lsw))
 
-typedef enum {
+enum {
 	SUCCESSFUL_STATUSCODE    = 0,
 	UNSPEC_FAIL              = 1,
 	UNSUP_CAP                = 10,
@@ -70,7 +70,7 @@ typedef enum {
 	CONNECT_STS_FORCE_16_BIT = 0xFFFF
 } tenuConnectSts;
 
-typedef struct {
+struct {
 	u8 u8Full;
 	u8 u8Index;
 	s8 as8RSSI[NUM_RSSI];
-- 
1.9.1


