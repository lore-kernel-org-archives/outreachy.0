X-GM-THRID: 6332135193668747264
X-Received: by 10.31.195.6 with SMTP id t6mr315523vkf.8.1474514146562;
        Wed, 21 Sep 2016 20:15:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.133.70 with SMTP id r67ls153094itd.6.canary; Wed, 21 Sep
 2016 20:15:44 -0700 (PDT)
X-Received: by 10.98.93.4 with SMTP id r4mr8322028pfb.38.1474514144938;
        Wed, 21 Sep 2016 20:15:44 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id d206si2836965ywh.3.2016.09.21.20.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 20:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id t67so4182654ywg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 20:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SFN6bbHtPTYm+HVRP1/tHebpD6z9MhAL4SPMqFF/Dlk=;
        b=iIgeAMUpZSdHFBTb/n6MUBQFY+x/8NdghGmDsVmbjEWx35ZpVRfknfjUOnUMBwEqds
         z5SjOmPLSfORjWiFiwzkvdHVrRWlxsacTUwJgP2CMNoa9HQPXm/Rk/9+orLJ7m1Dg1GT
         89WMn1cMYkbUD2EVBn4ZhjCI+456+ejsEbAV5Bte+tkpP8Jq8WJA5hreTmKTOOzNKslL
         EEGrzt7ovh8pLsHmoWOuWbrBQKOEEwiE80d6iySWvMgIX5INafoQCAhPTkaF6mArYzQt
         L/vSl5YNAfg8TnlcvGoWqOT4wB4/3YsY0Vx+opSk3nKTUWV43gN8UaXzcj9iPZmH+O6m
         COCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SFN6bbHtPTYm+HVRP1/tHebpD6z9MhAL4SPMqFF/Dlk=;
        b=Z0pRERI01zRxDW/+tnSEXU2wGmbM4S+zIsPnlfMEaNnGjujQ0XB64U4nAz33slFw3X
         41+NUALLYJjNXOgN/xtqllPhg1xYlvRh90N4WwR5ZWgcjDL/tldLqAo/2sR5eQplOsRU
         rut5XN0Oxo4x0lLMSEq9PeXsocVn5VgbJgL+I+l3S51nZNavI8KDc/qxOV9s/DvVwqub
         kfUYFKdpKiZdtc4i9OMRi+7fIDIFmNAoSV8PqLVvbctdW9IHvYUkUmI7I1cXc4oJ+XRP
         yxhqnQbGbSP75sE91RXBU75GQ63MdHkl15brJq42EwbCl+1qsRsfnP+P5gF/gZO3mPuL
         R/TA==
X-Gm-Message-State: AE9vXwNIK9sxdjrEeSt8Oc0vT1yVCgUGdx6LYS2bGf/Lz10Fe2ODotZHewDgORPm9uhopA==
X-Received: by 10.129.102.7 with SMTP id a7mr31145653ywc.355.1474514144578;
        Wed, 21 Sep 2016 20:15:44 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id i184sm15036349ywe.42.2016.09.21.20.15.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 20:15:43 -0700 (PDT)
Date: Thu, 22 Sep 2016 00:15:41 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: wlan-ng: fixed parenthesis alignment
Message-ID: <20160922031541.GA9130@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes a checkpatch warning
by moving arguments to the right and
aligning them to the open parenthesis above.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
Changes in v3:
   - Fixed patch author's name

Changes in v2:
   - Make the commit message clearer.
---
 drivers/staging/wlan-ng/cfg80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index bed4672..f1d93b7 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -661,7 +661,7 @@ void prism2_connect_result(struct wlandevice *wlandev, u8 failed)
 void prism2_disconnected(struct wlandevice *wlandev)
 {
 	cfg80211_disconnected(wlandev->netdev, 0, NULL,
-		0, false, GFP_KERNEL);
+			      0, false, GFP_KERNEL);
 }
 
 void prism2_roamed(struct wlandevice *wlandev)
-- 
2.10.0


