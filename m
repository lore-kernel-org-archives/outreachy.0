X-GM-THRID: 6333851090177490944
X-Received: by 10.66.165.6 with SMTP id yu6mr2857235pab.81.1474714626259;
        Sat, 24 Sep 2016 03:57:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.70 with SMTP id 64ls67447ott.0.gmail; Sat, 24 Sep 2016
 03:57:05 -0700 (PDT)
X-Received: by 10.129.178.129 with SMTP id q123mr2632225ywh.103.1474714625891;
        Sat, 24 Sep 2016 03:57:05 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si3061590pfw.1.2016.09.24.03.57.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 03:57:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so6448868pfl.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 03:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dgDf39YT/K7P1oZ0lIOq3j5+zFZoiRYdcq6NllFA5C0=;
        b=i2bBy1xtJygEdrnYEJK0qesYbaoP5JcErzB3b5Nf6CK1yKYc1eR93TnXfg4a+COkzD
         mKm6KiYmN6ORjml+fAAzIJxy801pF4T2AUuqldjlZVypkvbUF4D5WL2RTagH5smVPfWE
         nzMFkMj0TlWBFR48EPFWrfWyHp7ryaQYZBSjZHDP7OuncciZZtQV7SWukS8+r5oULOUs
         yWPISy0ghzRM/U8/RH1WQeqrlxkI2RXQOKmbmRCgSrSwwAWYL0D0ZHXHgRNZtPSmVfF6
         yuvT6YN6f1Y5vGykWs2wpRpMi8m0mgF3TVqLam5TbSGN4aAJ/e8olEf/y0cHjLSEzoXB
         r/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dgDf39YT/K7P1oZ0lIOq3j5+zFZoiRYdcq6NllFA5C0=;
        b=hwGd04rKNE2iurzugtbhdzf6UAm629DFBRhwnXTX97xDoCnBEvY5RbTCdCUmArXj+z
         mqdvpwDpzo5/6r9GhJgo3khc6qKTc+vUzOjEVFGE8ADXTDEbtUnV134V6v/rxvjbYYc3
         zimGxAVBkqNLH99lY/MVesKNKoNkLVtaS27REThwNEFBVqTkiMT5gfsGpntcBmCLogb1
         4KEa0K2zBxBwpcfiAjky7+oQTCYpMN5RUbADU+lvXdx03pdCwZj2wI8HFVOIJYVfWnKn
         dPKXLUu6miNB/q6e3lODHvrRQcXZCj9e+HH/aKOomYW7EE7MgT5fmjNQAJvD1AMEhwu7
         fMYg==
X-Gm-Message-State: AE9vXwMmVjkMOglDxZ3pYNuW9gu+GaLKwMz09da3TcWWLbozjJjEsV+1xyey/uskTZwyGw==
X-Received: by 10.98.75.4 with SMTP id y4mr20770356pfa.25.1474714625697;
        Sat, 24 Sep 2016 03:57:05 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id sl9sm17799434pab.22.2016.09.24.03.57.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 03:57:05 -0700 (PDT)
Date: Sat, 24 Sep 2016 16:27:00 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: wilc1000: Remove 'else' after 'break'
Message-ID: <20160924105656.GA8001@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove 'else' after 'break' to resolve checkpatch issue.
The statements after the 'if' condition body are executed only if
condition not true due to the 'break'.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 2c2e8ac..1212f75 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -695,8 +695,7 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 			   sme->ssid_len) == 0) {
 			if (!sme->bssid)
 				break;
-			else
-				if (memcmp(last_scanned_shadow[i].bssid,
+		    if (memcmp(last_scanned_shadow[i].bssid,
 					   sme->bssid,
 					   ETH_ALEN) == 0)
 					break;
-- 
2.7.4


