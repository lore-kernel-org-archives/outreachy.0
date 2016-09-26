X-GM-THRID: 6334708873542238208
X-Received: by 10.66.189.169 with SMTP id gj9mr5454905pac.59.1474914363225;
        Mon, 26 Sep 2016 11:26:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.80 with SMTP id f16ls4780279otd.28.gmail; Mon, 26 Sep
 2016 11:26:02 -0700 (PDT)
X-Received: by 10.200.51.76 with SMTP id u12mr5880732qta.63.1474914362725;
        Mon, 26 Sep 2016 11:26:02 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id e66si4645380pfk.2.2016.09.26.11.26.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 11:26:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so9461214pfl.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 11:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8VPhrlBhIH5E8PK7EQiM4Fp0P1Ih11D0iBUnV11w3BE=;
        b=b/P8I+KyrKG1D9Ra3XGH/OArHX9OEDy0mP/Y35NxvUkN8W0iSKdwrdeEI8SInJALZv
         auW2p1qo22oAhgsRPeqD6euKsbJwFu4L1aYTYLfEYzJslxZqEwSd1NZt84KczlHlP+Y0
         RZjuTLoIx9GEaId2YlQ5S7lJmBXvi9KP5BdGN5GhYhTCEq2Yx7e5UDco9m0zntNzY7Hi
         mUe/C6i2Rx8CAAkkwfaU2sp+HYvDBoZi8nSDh0UZrTzYl5R5KdsIBLqVvOk3gMmym9r+
         NPSM/efmOoLI03gz5L7z8Os7VtmKrH31u0y4aiwrC+WqWLjrQpqX4K+vcD3n8gflEZxk
         THjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8VPhrlBhIH5E8PK7EQiM4Fp0P1Ih11D0iBUnV11w3BE=;
        b=nE7pJRq2cYK9ZwB0QNRQ9/N0oti/QlrsLYrk94KnPk4312fx5EANAvya0Y5/R0iipN
         5p+R8FiSPo01LiqISsjnU3DxB3BKkEnYrcjd6bw7G2AJLTMAUXyX0iT0I6+drlA6ecX9
         DJm9u0iTjoqB6bSbOh4qOSp/9ft4C472RrfRX2tba72InEPvDrucn1Gitn33uR7BGTql
         yccjvo1iRZBil0a4YeBeOQRHCRfdQ8rgCHt+3BOplLDcINqpBhsO1YKA9wUdbY94besh
         sHpQ3beelTae/rcKyYoYSprHJAgW/BTyUPh1F8fGSBPV5FdkAoFi0QQo7jva58BBfZxV
         ZLDw==
X-Gm-Message-State: AE9vXwNt91FDAG43Wpc2h062h0QABQmEMIRRCwl8ZKRrCiI4gGx2SlkuFXBvjF415wle/A==
X-Received: by 10.98.220.145 with SMTP id c17mr41283461pfl.159.1474914362527;
        Mon, 26 Sep 2016 11:26:02 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id y190sm26566034pfg.39.2016.09.26.11.26.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 11:26:02 -0700 (PDT)
Date: Mon, 26 Sep 2016 23:55:53 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] staging: vt6656: Remove unnecessary return values
Message-ID: <041d6da5ba01210317be916c359c350b79fd382f.1474912143.git.namrataashettar@gmail.com>
References: <cover.1474912143.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474912143.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary return values. Change return type of functions and
comment accordingly.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/card.c | 23 ++++++-----------------
 1 file changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 53b469c..59bbfd1 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -559,14 +559,12 @@ void vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
  *  Out:
  *	current_tsf	- Current TSF counter
  *
- * Return Value: true if success; otherwise false
+ * Return Value: none
  *
  */
-bool vnt_get_current_tsf(struct vnt_private *priv, u64 *current_tsf)
+void vnt_get_current_tsf(struct vnt_private *priv, u64 *current_tsf)
 {
 	*current_tsf = priv->current_tsf;
-
-	return true;
 }
 
 /*
@@ -703,13 +701,11 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
+ * Return Value: none
  *
  */
-int vnt_radio_power_off(struct vnt_private *priv)
+void vnt_radio_power_off(struct vnt_private *priv)
 {
-	int ret = true;
-
 	switch (priv->rf_type) {
 	case RF_AL2230:
 	case RF_AL2230S:
@@ -727,8 +723,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
 	vnt_set_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
 }
 
 /*
@@ -740,13 +734,10 @@ int vnt_radio_power_off(struct vnt_private *priv)
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
- *
+ * Return Value: none
  */
-int vnt_radio_power_on(struct vnt_private *priv)
+void vnt_radio_power_on(struct vnt_private *priv)
 {
-	int ret = true;
-
 	vnt_exit_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -764,8 +755,6 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	}
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.7.4


