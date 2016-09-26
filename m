X-GM-THRID: 6334597152345423872
X-Received: by 10.200.49.244 with SMTP id i49mr5508843qte.35.1474888332199;
        Mon, 26 Sep 2016 04:12:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.203.7 with SMTP id u7ls2311020itg.16.canary; Mon, 26 Sep
 2016 04:12:08 -0700 (PDT)
X-Received: by 10.107.156.80 with SMTP id f77mr5555719ioe.94.1474888328297;
        Mon, 26 Sep 2016 04:12:08 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id f12si4143937pfk.0.2016.09.26.04.12.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 04:12:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id j3so646513paj.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 04:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dkheZAjM3oblATCbbEOy6YEZ+u2XDgpRjm5qYjt0N+w=;
        b=lVEo55lx87B1n6cVeshXQJKISuRipVf4aJ0goEYHplTkTmkuF7N/sfhuhkNw6QePqd
         gz0fJW7iMhdLemZM5cEZY83Gm5vCNTBUEnDBjiaS8qx3xi0BADaTMhz+bzukVj5RjP/d
         KvFgHcYMhkNu7/NdIcR005/fE365XSFs7wAkH8DWmGwv4qIZpvwBM5vUd6oWZ55VtfCk
         x6haulGGDgsXMa3Ve32HThj9uAaYzKN95cu2coqumvxBZ8PSd3DvVhR2gLZsUo/aT6Xd
         MMdxDejZJ/ouXxiBy1ssjz48/b8IbxuzuC5yRygs9BR+hRxRiZJx6XUIFn8fM1YwlvSJ
         NRhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dkheZAjM3oblATCbbEOy6YEZ+u2XDgpRjm5qYjt0N+w=;
        b=KRK69ByQkQOPWcHtKOSa4LhQ/KZLD7ZtJVap8Pib97INVxDyknqnkIkTAI5quSErh/
         U8AePo4mTQq41GRaDxuNcaJnD4nvYPv50v7EJiqWzXtvZgYppCl5eSbkkEFCvjS8wAIv
         3TvCqSoMML1oIwQpeIH1YsI+eJLum4X5zm/KnonwNtnqIQOURYcYlxIYPWs3LMPFo4NJ
         Hvhj/Thn2/JyXZTLLP909DHAqZ4z7GlB8l1WFaiuIlGIOOBKh53mJVSpb4LYdZfq2EqI
         P+2PovKTt6SkisqvIaltI4znfEVH3JZMUixs9kWy17F66Yq+a3PfCQkA8NcatBUkG+GD
         CUbQ==
X-Gm-Message-State: AE9vXwO19Ev9y5H9UTFPlOrMiisNXxIrvtfsbaZ+VO+OSl3Y43eHYDQoyiA9JoIkVGeJTQ==
X-Received: by 10.66.160.72 with SMTP id xi8mr37671188pab.78.1474888328096;
        Mon, 26 Sep 2016 04:12:08 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id b125sm30268323pfg.36.2016.09.26.04.12.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 04:12:07 -0700 (PDT)
Date: Mon, 26 Sep 2016 16:42:03 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: vt6656: Remove unneccesary return variable
Message-ID: <20160926111158.GA9984@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove uneccessary return variable 'ret'. Return value directly.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/card.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 53b469c..33de99a 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -708,8 +708,6 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
  */
 int vnt_radio_power_off(struct vnt_private *priv)
 {
-	int ret = true;
-
 	switch (priv->rf_type) {
 	case RF_AL2230:
 	case RF_AL2230S:
@@ -728,7 +726,7 @@ int vnt_radio_power_off(struct vnt_private *priv)
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
-	return ret;
+	return true;
 }
 
 /*
@@ -745,8 +743,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
  */
 int vnt_radio_power_on(struct vnt_private *priv)
 {
-	int ret = true;
-
 	vnt_exit_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -765,7 +761,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
-	return ret;
+	return true;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.7.4


