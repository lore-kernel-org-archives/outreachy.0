X-GM-THRID: 6528334297317769216
X-Received: by 10.28.150.216 with SMTP id y207mr166161wmd.21.1519996367337;
        Fri, 02 Mar 2018 05:12:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.56 with SMTP id n53ls2764655wrb.12.gmail; Fri, 02 Mar
 2018 05:12:46 -0800 (PST)
X-Google-Smtp-Source: AG47ELv6QnZDRkdhmoiBwm0DkqoHC1ad/yXe+fed52sbBsVycRIzsxoJ/1Vz7HNeXZxpCgDw0VKU
X-Received: by 10.223.141.150 with SMTP id o22mr572504wrb.24.1519996366351;
        Fri, 02 Mar 2018 05:12:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519996366; cv=none;
        d=google.com; s=arc-20160816;
        b=IUazPqkMdd3lHWMtViScUoRKVtXVwWK6yZ97fg5vBVx4SZxI+Go33UY4/VLFzVAxFK
         d3HROrnGRHiJ55kFyeh8+kRCKB92uPCLny3jZynj9LXqqLIKdMbcCMuZHOyCt3D41lS9
         n7LcuPj06PkuyP7QVJsUccK8eL5Dk9VLHkye5eR4YZO07KeF0MgIt+yCjTOfTDG/EL+d
         sn0Z1ga3PK865r4JZQkDiLQiLyosbSJevEX/0tBcO9YeGEgVXJ/g57nGojZuO2ix25Eb
         axQCURnMcQQd5q+VD6unbewVuVIXoS9f+CUH2SE/NgBbsr+04zpLsOeHkLvadnoW9IQR
         oZBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=EVFwIDbsc+rmbWoSHTaPxbZ2EvPPQCmVnkvfMNU7560=;
        b=ZF1yRkHZnk4rx7y6x/HJQgORU4CrauS9AyEIbqIVm01RoF6YcXSCBMkrcO+wOh3wek
         jZfA9l+l/HULN/Di1EynHIqVXPqlAwtO/g+psIGCFqybz4qrMwpqfOeh7ym2kejpgiJp
         GSWREKQursy55yCcE/exyuy1z15fa41+6Dtz5B+W330+DDhZ1Q/KE0UEb2webd5c5ZKS
         Vpu31o4iVW61dJEcwgBumyCY2lbJzNwDCGuvm7/uiidtYn+wp5mDR9Ca880S2eFsChw3
         hRRk80IZIe1OPCVIh7G6ZBZB1H5teJ2NDqXEY0NcTbmtimIqL7Q/cxjHHE/JU224EwgH
         yO0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LY3u3jlX;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::232 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x232.google.com (mail-wr0-x232.google.com. [2a00:1450:400c:c0c::232])
        by gmr-mx.google.com with ESMTPS id p25si49457wmi.3.2018.03.02.05.12.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 05:12:46 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::232 as permitted sender) client-ip=2a00:1450:400c:c0c::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LY3u3jlX;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::232 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x232.google.com with SMTP id p104so10033006wrc.12
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 05:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=EVFwIDbsc+rmbWoSHTaPxbZ2EvPPQCmVnkvfMNU7560=;
        b=LY3u3jlXWN4oFHrqpaHUvQ5XbUmJgRxWqG3x9h0eISauhFbL7pKrAQIVeFWge8tWTy
         bFHMXMAINFr+vk0lmNoULmvWST1hVgnnYylu3P91sT/mk6GqaYUrpOlFcldIQfK8q4l9
         mp06zBDMp7ha5ytRIzgjQebuMS0WVWxS6Lvt6FVQnv2zOJE5cdR4OTM4/e4b4JuxLDJb
         8b9GiVjX7hdvJNjwdSMQlE+POg3NM/kUZBQdmK3lM4X4Fer1rpFokcSSSjO+rFJcG1zp
         bAY6OUu8SURwDbYIHbiEiz/7HsH1pzK3l/x8/Iiew4YGDEhLoPbiOd51oa+jWnj9LEUT
         c8QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=EVFwIDbsc+rmbWoSHTaPxbZ2EvPPQCmVnkvfMNU7560=;
        b=m3OJadhYDuT4EWQTpJnVNLw4+rc/oDdKdZ548ctokAPFwXGUU2A3k2D121vFV1TOho
         CxuqhgOkiHUyAou0KxudWg2ux08xIwdTAfU2+qt+cruikNE15bVhKRXvHKWx5V8Bpc1o
         2mcIzft5meo7dz+jw2x4PGPirV2vpo55LHYdKVjkIYnRGsJasMuoDzRSJdpeEBuzXQZ9
         Db9Bp5cRNRbDEZlcjVPlkH4L0PSu0AQGaZxqUzSFPpdrOC3LURpixFhoYZSnFxFAeIH8
         nAsTDO5vw+vzP4ZNX9Tz65SBIlwWbViGSc8RvXqPZ+xxLrpWMddM8xNiL1zGtDx7lfVQ
         l5fA==
X-Gm-Message-State: APf1xPBCXVj2xitDe5rrkL0ySFnw7vB0YQh/e5KU1hG5JteiLRieEaKQ
	k3rc8bwqQ8lve+4i4gzfTlw=
X-Received: by 10.223.133.182 with SMTP id 51mr4549343wrt.226.1519996366114;
        Fri, 02 Mar 2018 05:12:46 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id 47sm5896815wrb.48.2018.03.02.05.12.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 05:12:45 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8192e: Remove unnecessary parentheses
Date: Fri,  2 Mar 2018 15:09:57 +0200
Message-Id: <716d19d81ee526c94f23ce469a96f4ad1a8e7516.1519995327.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1519995327.git.dafna3@gmail.com>
References: <cover.1519995327.git.dafna3@gmail.com>
In-Reply-To: <cover.1519995327.git.dafna3@gmail.com>
References: <cover.1519995327.git.dafna3@gmail.com>

Remove unnecessary parentheses between 'address-of' operators
and a struct members.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
index 1d9eb54..a9192e8 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
@@ -171,7 +171,7 @@ static int _rtl92e_wx_adapter_power_status(struct net_device *dev,
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
 	struct rt_pwr_save_ctrl *pPSC = (struct rt_pwr_save_ctrl *)
-					(&(priv->rtllib->PowerSaveControl));
+					(&priv->rtllib->PowerSaveControl);
 	struct rtllib_device *ieee = priv->rtllib;
 
 	mutex_lock(&priv->wx_mutex);
@@ -202,7 +202,7 @@ static int _rtl92e_wx_set_lps_awake_interval(struct net_device *dev,
 {
 	struct r8192_priv *priv = rtllib_priv(dev);
 	struct rt_pwr_save_ctrl *pPSC = (struct rt_pwr_save_ctrl *)
-					(&(priv->rtllib->PowerSaveControl));
+					(&priv->rtllib->PowerSaveControl);
 
 	mutex_lock(&priv->wx_mutex);
 
@@ -962,7 +962,7 @@ static int _rtl92e_wx_set_auth(struct net_device *dev,
 		return 0;
 
 	mutex_lock(&priv->wx_mutex);
-	ret = rtllib_wx_set_auth(priv->rtllib, info, &(data->param), extra);
+	ret = rtllib_wx_set_auth(priv->rtllib, info, &data->param, extra);
 	mutex_unlock(&priv->wx_mutex);
 	return ret;
 }
-- 
2.7.4


