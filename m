X-GM-THRID: 6251650339458514944
X-Received: by 10.112.125.99 with SMTP id mp3mr2124258lbb.3.1455576034910;
        Mon, 15 Feb 2016 14:40:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.37.208 with SMTP id l199ls690658lfl.8.gmail; Mon, 15 Feb
 2016 14:40:34 -0800 (PST)
X-Received: by 10.25.170.7 with SMTP id t7mr2142639lfe.2.1455576034411;
        Mon, 15 Feb 2016 14:40:34 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id w128si642364wmd.0.2016.02.15.14.40.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 14:40:34 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id a4so12782643wme.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 14:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SBV1tNmwx7hwhtzZsh+KgaAGQtLUonGsWFLWwmnh37E=;
        b=NjEEHjwmV3c5DJV3OALuzVsw5emelttDBjT6psK64gC1jOjYarSwUvHaWHhVlVisS0
         05IgOkumKaF88uuid8eQ0Oht7s4wHMcZPNRagP2usoXHlYYercD32hDMifvR5J4ZzfuH
         uYugFfZmY35gwGsVRSxRewAsAOwesOIk4wccv875VgOJQHjU7fd2kXdEoBKZlRLeFBkz
         jB9+S5rVaN+k5R8UIigVgiFipo8S2/U/fSs/P+jz2z+jDW6pCRD8DYvVmXsZheMdcal2
         EBQqoxzM83XkOO02p7/T5DAv55YLB0ks/XG5cyOUafXwYM4XvePszHo8F0Ri4psUWh4c
         IykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=SBV1tNmwx7hwhtzZsh+KgaAGQtLUonGsWFLWwmnh37E=;
        b=iAQRc0J+GJR6b7QKAU1WfZ+nAkZXexuIv+hdhOoEN6k02W/0UGAxQXNpPmp2YBqSIx
         JzcTVXUo/vJJdFa9A3w1MO83MO4bw0PMDXOdtjrxrZbo86zHcIO0To7aZ5xopHcJ/jxG
         AFKR+Jqtz9ZXLmjIk5wHicPfskcifkDuvE9+UIMKCYmVdyB69n1FKA/u5sEXzSk5wSRQ
         fgshwNQ8GhPbiCgW9FigEhtZZVzcrTU1pEHhdGx50lXSBuBVW2yTWC0AOBT/OnBu3uzI
         hrq3O0XCp4BuD7JAMwYc3KZ9jUZtINMirckZqqL7wmyKe+gjAC8BtfiQt94BTm8vOxZj
         fEZA==
X-Gm-Message-State: AG10YORa8zWW7rK0VqgL3lawtWpax/fyA07K0r4fxNp+9rNgC95NjTo8azkwAPbUom5Ijw==
X-Received: by 10.28.195.87 with SMTP id t84mr15795345wmf.41.1455576034311;
        Mon, 15 Feb 2016 14:40:34 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id t205sm17660689wmt.23.2016.02.15.14.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 14:40:33 -0800 (PST)
Date: Mon, 15 Feb 2016 23:40:31 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 7/7] staging: netlogic: Fix indent for conditional statement
Message-ID: <4643b604ee1c46df8115e9014d26ad284bed771a.1455575263.git.nevola@gmail.com>
References: <cover.1455575263.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455575263.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Insert code indent for conditional statements. Checkpatch detected this
issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 58f7863..b9ecea0 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -326,7 +326,7 @@ static void xlr_hw_set_mac_addr(struct net_device *ndev)
 
 	if (priv->nd->phy_interface == PHY_INTERFACE_MODE_RGMII ||
 	    priv->nd->phy_interface == PHY_INTERFACE_MODE_SGMII)
-	    xlr_reg_update(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
+		xlr_reg_update(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
 }
 
 static int xlr_net_set_mac_addr(struct net_device *ndev, void *data)
-- 
2.7.0


