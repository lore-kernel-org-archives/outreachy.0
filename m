X-GM-THRID: 6256792083376373760
X-Received: by 10.50.36.68 with SMTP id o4mr7767004igj.7.1457298644125;
        Sun, 06 Mar 2016 13:10:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.149 with SMTP id 21ls312032qgh.42.gmail; Sun, 06 Mar
 2016 13:10:43 -0800 (PST)
X-Received: by 10.140.19.4 with SMTP id 4mr14307693qgg.29.1457298643662;
        Sun, 06 Mar 2016 13:10:43 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si2585954pab.0.2016.03.06.13.10.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 13:10:43 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 63so6784928pfe.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 13:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nVcC5h024TEs6lu8KVRERFOuHckZjgmDCVOyCR9IG6E=;
        b=RV2W2dnoaAeTys8uDN6NUiBFSE1QZRRfN6KOVl/FiIT5eAsYcWeV25wK/VrLLVcGqd
         c6td1T07v8fHdXkuL7o2RvA/AgJyFCcOlYdojJhLKCD5uhlG0+9KoAUgcjsIAvCMyuJ6
         evWFCbIKLEqW9ot6NeH8SLXMPEc0Ye1EssRThyu9GstaeBJVQLW0dSlttQrT5Q+HrzSB
         VD67a2OwU4XOs5xaFvTmh8T0xgGLhM95Ju9i0uTCm5FzjB/V0VNqHdZTTRBnQ1gRDRVe
         T2Szo4Ho9BvdV9S7Hht6Aw68cAzg4tLCxjrK1wXCX6KABkXxLAtPpGn50uIVO0aDs15N
         Afag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nVcC5h024TEs6lu8KVRERFOuHckZjgmDCVOyCR9IG6E=;
        b=WdocW2RF4sNlI71WtLZns3hGrP5rY3SBG+u2BB0Vu7nwmuDoxG7OaTeFdRdWCfxxwz
         rgbLpQq9tVGc9u9XzfzznbHYpMGUXw5litLcEI9RXL3fdOg8Tl0tjQo6V3LupBAwitzc
         HmWYPnUa/IDIdpHjyeoqD+8J9Wl9DS+Shg1cG4Xrb5Lfo34QVgDeFtFchp+82KwXgiEJ
         A2HA0YiCQDw50iiqysjWWSE0y3UVKu9dqmgXvi+q1t9g+SQ9hbtTJesEuYRzkrzEi+YH
         Kx6+zogW9cW1KUF5N3VbNYdvEEMsH881lgty6OkJ0WFo6ekIL+kLR3mbv6P3q2Q7pAkh
         v/sA==
X-Gm-Message-State: AD7BkJKpsTu3SXkdaIjWtSryygXvzQF7S+Ye8Yt70KY5yoC6+AgSKjgPhRJjpbKPCZHb6g==
X-Received: by 10.98.16.210 with SMTP id 79mr28457592pfq.69.1457298643504;
        Sun, 06 Mar 2016 13:10:43 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id tn5sm19478391pac.32.2016.03.06.13.10.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 13:10:42 -0800 (PST)
Date: Sun, 6 Mar 2016 18:41:07 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/5] Staging: gdm72xx: Remove unnecessary goto.
Message-ID: <97bfd9b96f8f4a9c01a0a5257b90d10a0d9beea7.1457269114.git.bankarsandhya512@gmail.com>
References: <cover.1457269114.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457269114.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gdm72xx/usb_boot.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/gdm72xx/usb_boot.c b/drivers/staging/gdm72xx/usb_boot.c
index b91eea6..384bf30 100644
--- a/drivers/staging/gdm72xx/usb_boot.c
+++ b/drivers/staging/gdm72xx/usb_boot.c
@@ -252,14 +252,12 @@ static int em_wait_ack(struct usb_device *usbdev, int send_zlp)
 		/*Send ZLP*/
 		ret = gdm_wibro_send(usbdev, NULL, 0);
 		if (ret < 0)
-			goto out;
+			return ret;
 	}
 
 	/*Wait for ACK*/
 	ret = gdm_wibro_recv(usbdev, &ack, sizeof(ack));
-	if (ret < 0)
-		goto out;
-out:
+
 	return ret;
 }
 
-- 
1.8.3.4


