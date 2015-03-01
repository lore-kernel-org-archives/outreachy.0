X-GM-THRID: 5447739244544
X-Received: by 10.182.66.40 with SMTP id c8mr21360181obt.36.1425224209167;
        Sun, 01 Mar 2015 07:36:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.77 with SMTP id o74ls1044072ioe.89.gmail; Sun, 01 Mar
 2015 07:36:49 -0800 (PST)
X-Received: by 10.42.107.208 with SMTP id e16mr23155524icp.10.1425224209031;
        Sun, 01 Mar 2015 07:36:49 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id hs7si1194364pad.1.2015.03.01.07.36.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 07:36:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbnh10 with SMTP id nh10so7326554pdb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 07:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=zeI9RpSclXYpgN/LeY1i1x6klUhHw6u962GG7gq1lpU=;
        b=VXyj4vnRqgCZ+IBJIPsDYa96gJzXUr65iFetoOrJgWiv/iBBucHkMJoijQc7E7tnhz
         qtq6er00tda4UWVGmXEGNx5BTQcagePDFXuPdT8OyVE7ayMFm1SD9q8/wsZi3MGPshGa
         lTpCCow07b6oX4fgiQrOy2Gx2k171dhbfkPC3LBODz3U83VTzI/14YC+Ip6f9vzYdmZH
         cCy9HIQZjYVelfa17aZ44OlEVVxyyFfkfOVUFezfTOZ5n+8VBXoP49FPIMs6fb8gl2wg
         z1HU9DE1SEU5p5aiHhNlpQkg9yJayVvgRHv/0igDz+5Q2V10ZzFgJGzTnk4SwTNSsSYq
         D3CQ==
X-Received: by 10.68.239.69 with SMTP id vq5mr39777111pbc.96.1425224208933;
        Sun, 01 Mar 2015 07:36:48 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id tk4sm4913616pbc.11.2015.03.01.07.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 07:36:47 -0800 (PST)
Date: Sun, 1 Mar 2015 21:05:22 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: wlan-ng: Remove unused variable
Message-ID: <922d52e4f30f851b2c893faa720b87b57dc82812.1425223729.git.vatikaharlalka@gmail.com>
References: <cover.1425223729.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425223729.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The return value of the function need not be
assigned to a variable.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 10ad24a..2ebca7d 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -251,9 +251,7 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 		p80211_hdr->a3.fc |= cpu_to_le16(WLAN_SET_FC_ISWEP(1));
 	}
 
-	result = hfa384x_drvr_txframe(hw, skb, p80211_hdr, p80211_wep);
-
-	return result;
+	return hfa384x_drvr_txframe(hw, skb, p80211_hdr, p80211_wep);
 }
 
 /*----------------------------------------------------------------
-- 
1.9.1


