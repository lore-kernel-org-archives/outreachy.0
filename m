X-GM-THRID: 8122735263744
X-Received: by 10.112.148.10 with SMTP id to10mr2471692lbb.18.1426274405177;
        Fri, 13 Mar 2015 12:20:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.8 with SMTP id j8ls466250lae.7.gmail; Fri, 13 Mar 2015
 12:20:04 -0700 (PDT)
X-Received: by 10.112.142.1 with SMTP id rs1mr5542871lbb.19.1426274404720;
        Fri, 13 Mar 2015 12:20:04 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id l8si206183wia.0.2015.03.13.12.20.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:20:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx13 with SMTP id x13so25284729wgg.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RgHlGhRDGmNYq5ogKojVrJ7SOP7p8bg879qMdp8UJss=;
        b=sEScI09hC15aKl/GsMS1gq0ylF9RrmNtdzC6GWavfrinKrbtq/Kl9gKuc0Hir9K0Pt
         V1gaCr7ky2dekvHTDOVrqtfVhe34sC8tmWJN5hzwBuy1aYNg8FbgByrIjS1TNk+b1jqd
         s7ts72K+V44e6lufPt9Ft0e4iOSH/KO8jjupmwqxfYq1qN95EulxWNVq9+n3ujVZfV+r
         1YMce22mqSbKm1DkUzYrqO0WXolno8cc8Lahadqd0lRMMq/4oHQaDw+veX6ASXGZYsTk
         6FGW0szSp6jzqGk53Qm5Vq7UznFJOE5GT6lpqmfdd0W7sKmo5gcHe8Bob66a0zkxjT1+
         6QIg==
X-Received: by 10.180.91.112 with SMTP id cd16mr99808058wib.14.1426274404619;
        Fri, 13 Mar 2015 12:20:04 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id bd1sm4024021wib.13.2015.03.13.12.20.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 12:20:03 -0700 (PDT)
Date: Fri, 13 Mar 2015 21:19:24 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: rtl8192e: Bool tests don't need comparisons
Message-ID: <0b95bd2fba788a4bb9d9cdbb942bebc6e388aa18.1426273386.git.cristina.opriceana@gmail.com>
References: <cover.1426273386.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426273386.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes comparisons to true/false values on bool variables.
Warning found by coccinelle:
"WARNING: Comparison to bool".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 40 +++++++++++++++---------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
index c233a1c..9e65c32 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
@@ -67,7 +67,7 @@ static int r8192_wx_set_rate(struct net_device *dev,
 	int ret;
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -87,7 +87,7 @@ static int r8192_wx_set_rts(struct net_device *dev,
 	int ret;
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -115,7 +115,7 @@ static int r8192_wx_set_power(struct net_device *dev,
 	int ret;
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if (priv->bHwRadioOff == true) {
+	if (priv->bHwRadioOff) {
 		RT_TRACE(COMP_ERR, "%s():Hw is Radio Off, we can't set "
 			 "Power,return\n", __func__);
 		return 0;
@@ -145,7 +145,7 @@ static int r8192_wx_set_rawtx(struct net_device *dev,
 	struct r8192_priv *priv = rtllib_priv(dev);
 	int ret;
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -308,7 +308,7 @@ static int r8192_wx_set_debugflag(struct net_device *dev,
 	struct r8192_priv *priv = rtllib_priv(dev);
 	u8 c = *extra;
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	printk(KERN_INFO "=====>%s(), *extra:%x, debugflag:%x\n", __func__,
@@ -329,7 +329,7 @@ static int r8192_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 	enum rt_rf_power_state rtState;
 	int ret;
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 	rtState = priv->rtllib->eRFPowerState;
 	down(&priv->wx_sem);
@@ -470,7 +470,7 @@ static int r8192_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 			return 0;
 	}
 
-	if (priv->bHwRadioOff == true) {
+	if (priv->bHwRadioOff) {
 		printk(KERN_INFO "================>%s(): hwradio off\n",
 		       __func__);
 		return 0;
@@ -552,7 +552,7 @@ static int r8192_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 	if (!priv->up)
 		return -ENETDOWN;
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 
@@ -572,7 +572,7 @@ static int r8192_wx_set_essid(struct net_device *dev,
 	struct r8192_priv *priv = rtllib_priv(dev);
 	int ret;
 
-	if (priv->bHwRadioOff == true) {
+	if (priv->bHwRadioOff) {
 		printk(KERN_INFO "=========>%s():hw radio off,or Rf state is "
 		       "eRfOff, return\n", __func__);
 		return 0;
@@ -638,7 +638,7 @@ static int r8192_wx_set_freq(struct net_device *dev, struct iw_request_info *a,
 	int ret;
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -665,7 +665,7 @@ static int r8192_wx_set_frag(struct net_device *dev,
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	if (wrqu->frag.disabled)
@@ -704,7 +704,7 @@ static int r8192_wx_set_wap(struct net_device *dev,
 	int ret;
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -754,7 +754,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
 			     {0x00, 0x00, 0x00, 0x00, 0x00, 0x03} };
 	int i;
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	if (!priv->up)
@@ -843,7 +843,7 @@ static int r8192_wx_set_scan_type(struct net_device *dev,
 	int *parms = (int *)p;
 	int mode = parms[0];
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	priv->rtllib->active_scan = mode;
@@ -861,7 +861,7 @@ static int r8192_wx_set_retry(struct net_device *dev,
 	struct r8192_priv *priv = rtllib_priv(dev);
 	int err = 0;
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -944,7 +944,7 @@ static int r8192_wx_set_sens(struct net_device *dev,
 
 	short err = 0;
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -971,7 +971,7 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
 	struct r8192_priv *priv = rtllib_priv(dev);
 	struct rtllib_device *ieee = priv->rtllib;
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -1052,7 +1052,7 @@ static int r8192_wx_set_auth(struct net_device *dev,
 
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -1070,7 +1070,7 @@ static int r8192_wx_set_mlme(struct net_device *dev,
 
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
@@ -1087,7 +1087,7 @@ static int r8192_wx_set_gen_ie(struct net_device *dev,
 
 	struct r8192_priv *priv = rtllib_priv(dev);
 
-	if (priv->bHwRadioOff == true)
+	if (priv->bHwRadioOff)
 		return 0;
 
 	down(&priv->wx_sem);
-- 
1.9.1


