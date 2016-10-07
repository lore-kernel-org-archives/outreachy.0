X-GM-THRID: 6338573162304765952
X-Received: by 10.157.15.171 with SMTP id d40mr167017otd.51.1475814069800;
        Thu, 06 Oct 2016 21:21:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.48 with SMTP id h45ls4509891ote.22.gmail; Thu, 06 Oct
 2016 21:21:09 -0700 (PDT)
X-Received: by 10.13.250.129 with SMTP id k123mr4675300ywf.1.1475814069453;
        Thu, 06 Oct 2016 21:21:09 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id o72si1682903vkc.0.2016.10.06.21.21.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:21:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id 2so1504420vkb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 21:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wGLN5Tw21cR4OmA6NTei9cszguU6wfeoGL6imiuGDpg=;
        b=SOERXR2aJebC3dG0tlt+92ZlbpblIGZ/yfce+J9w0IoE+sX4Omyrk85bN0/Z1kdrXI
         a6v7VzTa/mX0WA00d97YiAkxl0M4HvWi9k5XwwSI/XyftE/03nHLQYwFeMQN6HW9u/sp
         1qvXjA2nJNEU8CI3Wi/MrXYUSzZYA/lNZhVBZQ+B6n7ERma16hb+Ya8urr3BjiRx/RYR
         DnNJ6lnzsyUXuzIRVo8WW//NyzZBH8QWl3DmAfxpTNUFxFJJjJlzGH90zgNcj94rEc2r
         5jSNP5DsYySL4c9XDCbqqpEJBZv/EBVdDL90k/vkqD7u6u7fswE3TCv0vkRnovxbGpXs
         MAeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wGLN5Tw21cR4OmA6NTei9cszguU6wfeoGL6imiuGDpg=;
        b=DIWCHVdzfv7JIB7TQDQNqSAJTPp2x+4aKdEhNiRHW1gF2cWR1DfCP3vfR7/+ZXstFV
         bBreMa9q1foT5jKXwtPp1UnqaPtTygdvdfawmHOj26jRpSVVQc4sPceK78Zq5aqHfqhB
         c4OkGfO9n/2a3uVFGrlljHKyuGMcBom0Z+MIHLJnwIgSbGS/dLu9trIy6/CdAl15tJdd
         dRTePhHNwLx/u8/8gl/CkDPjWggLXeCDJeKpUArayAkg2N+sBgmCSJ0B+hBf9394NVJr
         OvslEPFw+LNf2Y8rmRGzOst89Gtam1brkp60p8SPN96j9AGpwIVClIlY8GqvaHQelzny
         uRTw==
X-Gm-Message-State: AA6/9Rn+J/KYTPkqTpyXII6R418kFo2jdiIO2I1/Nm+ZMYVpXKp6Jff4LgOeV7H18y+I/w==
X-Received: by 10.31.114.71 with SMTP id n68mr13937499vkc.129.1475814063938;
        Thu, 06 Oct 2016 21:21:03 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id 19sm5463871vkv.13.2016.10.06.21.21.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:21:03 -0700 (PDT)
Date: Fri, 7 Oct 2016 01:20:59 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: wilc1000: Add blank line after variable
 declarations.
Message-ID: <20161007042059.GA21429@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpath warning:

WARNING: Missing a blank line after declarations.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 60d8b05..fca96d3 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1193,6 +1193,7 @@ static int get_station(struct wiphy *wiphy, struct net_device *dev,
 	u32 i = 0;
 	u32 associatedsta = ~0;
 	u32 inactive_time = 0;
+
 	priv = wiphy_priv(wiphy);
 	vif = netdev_priv(dev);
 
-- 
2.7.4


