X-GM-THRID: 7760961863680
X-Received: by 10.112.224.12 with SMTP id qy12mr5816714lbc.10.1426126929177;
        Wed, 11 Mar 2015 19:22:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.75.197 with SMTP id e5ls84570wiw.49.canary; Wed, 11 Mar
 2015 19:22:08 -0700 (PDT)
X-Received: by 10.194.11.70 with SMTP id o6mr5934693wjb.6.1426126928894;
        Wed, 11 Mar 2015 19:22:08 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id ew13si429725wid.0.2015.03.11.19.22.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 19:22:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wiwl15 with SMTP id l15so43896858wiw.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 19:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=WAORXwOXAx5GuHYjOnHOIzWhazmOUvmoxyJqpC1FyaE=;
        b=fm78aaftV52cajthm6dWVff1vlwB8jNy7dIaDXPO7nw6GKNMVAhSROFRwEErvLnDcG
         jn37476tLuyWHZcFGUmxJizUaeRAsHLbw1KE0fRKnQNxRIo+AaLx2CekxpMViSGeEkgd
         9yPs1d//brBZwVVlf0kWhy3BqZTHLztsC/jHJqpuAAlsDSF8CJG+qeg4HwnzJpC3J+bE
         7PW/bXuv0gqt9djzSmCtXL6Nr+7pl2Al6dDlXgC75LK89uvHI37x7VPcG6nq6ysW4w3H
         9kGPOvtEY7I0ogvqj+RrR/XyZGmycPB05UKtQgWoXh0O/bXSqv6H370Huo2a7NRPSMGT
         NB5A==
X-Received: by 10.180.13.145 with SMTP id h17mr43580583wic.38.1426126928828;
        Wed, 11 Mar 2015 19:22:08 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id d9sm4670814wib.20.2015.03.11.19.22.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 19:22:08 -0700 (PDT)
Date: Thu, 12 Mar 2015 04:21:29 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: rtl8192u: Remove unnecessary variable
Message-ID: <8726dcd334dcb8427a18ff28f9d585e02d6103e9.1426126379.git.cristina.opriceana@gmail.com>
References: <cover.1426126379.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426126379.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch detects the cases in which a variable is not modified through
the code and it is used as a return value. The variable is detected and
removed by coccinelle using the following semantic patch:

@@ type T; expression expr; identifier r; constant c; @@

-T r = expr;
... when != r
    when strict
-return r;
+return expr;

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index c322881..69b0e30 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -471,12 +471,10 @@ static bool HTIOTActIsDisableMCS15(struct ieee80211_device *ieee)
 static bool HTIOTActIsDisableMCSTwoSpatialStream(struct ieee80211_device *ieee,
 						 u8 *PeerMacAddr)
 {
-	bool retValue = false;
-
 #ifdef TODO
 	// Apply for 819u only
 #endif
-	return retValue;
+	return false;
 }
 
 /********************************************************************************************************************
@@ -488,11 +486,8 @@ static bool HTIOTActIsDisableMCSTwoSpatialStream(struct ieee80211_device *ieee,
   * *****************************************************************************************************************/
 static u8 HTIOTActIsDisableEDCATurbo(struct ieee80211_device *ieee,
 				     u8 *PeerMacAddr)
-{
-	u8	retValue = false;	// default enable EDCA Turbo mode.
-	// Set specific EDCA parameter for different AP in DM handler.
-
-	return retValue;
+{	/* default enable EDCA Turbo mode. */
+	return false;
 }
 
 /********************************************************************************************************************
-- 
1.9.1


