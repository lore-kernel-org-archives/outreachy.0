X-GM-THRID: 6263736497393893376
X-Received: by 10.182.245.138 with SMTP id xo10mr14969622obc.50.1458389800615;
        Sat, 19 Mar 2016 05:16:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.80 with SMTP id y74ls2530854qgy.44.gmail; Sat, 19 Mar
 2016 05:16:40 -0700 (PDT)
X-Received: by 10.140.194.149 with SMTP id p143mr15565071qha.17.1458389800064;
        Sat, 19 Mar 2016 05:16:40 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y20si2788227pfa.2.2016.03.19.05.16.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 05:16:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n5so21216314pfn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 05:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7lEyNbxQK1QIXjB4XNiETBqcKOCFZVlf2O4NrvqfB2I=;
        b=gkGgp5J9OMQIivhYple7qsUcybRCHG3G4yqAfSylYmHqjY73BnVkhNefuveDw3wYPW
         LZTM5EttND/yVZKdw9sOYJFMXBmlI98Q0+pIXtZ70HD3Q7tROn7Zs7w14HVF8qa5+QIK
         Da0rkQcsR460y3E7NkXEjqNliNrG0DrT0OKNZcGFcZN2EETB0qDzDx29WVvT90N4KTLS
         guzeVKyGBM1Av+Y00Hq8gz5woXiScqTEzwVqoOOsWXwoHcUhouxA7Zg+MNPDQ1LR6I3W
         SvktAwLzXlchXq7eXfP8+yWXLN9BgKvG/coyH56n0b3euqfyWsZ5bygYEq981CgqUNPS
         dFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7lEyNbxQK1QIXjB4XNiETBqcKOCFZVlf2O4NrvqfB2I=;
        b=ZWZOYHz2s2u1x6oq2xD55KmuclDPf8ooZ6TGCAZrhyaymvUAr6lvS356tnPUZbaGBZ
         ZbuiNo4mlxmVPOQFhe/BKy4P/ondOh0854Y0csFeDTAVsa47k9djb+jXidt5Ni6XqBFJ
         H+1pklCuOsAOvkaEaQMgD81sSALYJWuhllSSYXm+zBZ94mEx8V1fN3XSB3/Jsim7ol2t
         Yq31HmOocyr69KWoAeDPlWjmZ3icJD/ctUcbw+RpB23tm2Hezq9ox9ucd54Zhroqv8oO
         kJfEPa0T3I1Vsj/ifUbqVSuzI/Th8g19sDMJzeDRiL+CCax3gnrN7tBYY1t52j3tQO1W
         rDUw==
X-Gm-Message-State: AD7BkJL0zQr6gCeuLjAsilCVHqsr4sR1fueNnlegYl6SPa0qSVQLtbK1gtR4iTCDdYAktw==
X-Received: by 10.66.244.15 with SMTP id xc15mr30628841pac.97.1458389799883;
        Sat, 19 Mar 2016 05:16:39 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id dg1sm27862079pad.18.2016.03.19.05.16.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 05:16:39 -0700 (PDT)
Date: Sat, 19 Mar 2016 10:47:47 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8723au: Remove unnecessary return statement.
Message-ID: <20160319051747.GA3379@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary return statement. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
index e81301f..1ea0af4 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
@@ -1175,8 +1175,6 @@ int InitLLTTable23a(struct rtw_adapter *padapter, u32 boundary)
 
 	/*  Let last entry point to the start entry of ring buffer */
 	status = _LLTWrite(padapter, Last_Entry_Of_TxPktBuf, txpktbuf_bndy);
-	if (status != _SUCCESS)
-		return status;
 
 	return status;
 }
-- 
1.8.3.4


