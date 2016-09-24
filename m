X-GM-THRID: 6333851090177490944
X-Received: by 10.98.8.17 with SMTP id c17mr2892514pfd.36.1474718306872;
        Sat, 24 Sep 2016 04:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.84.16 with SMTP id t16ls1307542ita.22.canary; Sat, 24 Sep
 2016 04:58:25 -0700 (PDT)
X-Received: by 10.36.43.204 with SMTP id h195mr2039949ita.9.1474718305879;
        Sat, 24 Sep 2016 04:58:25 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si3238456pab.1.2016.09.24.04.58.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 04:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so6498553pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 04:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7ICCKEuTb9laxgP0Zx1Vs5lUttS9AKpnCJKw5INmy64=;
        b=qDSSwkfI9suMNfvy5X/IT56qFqKowMLEbIX5QDHngHO9QE4zIXB9IfFFBVtr+VM/vU
         pQCaQLnQpd6xyM8GlZYZJw8uOXe7mpUEu8OD/o/GMkRozA4KnR+Eew/VVjahbYDvynUx
         7jz9AWNR/g9mOZZu3J0PnAna/OuaHQKY7hQsM0w2i2EciPhVBWCaavSW+YijV/Xq+UPG
         TnPpS9oWi4ofiVE8HXmybdrDYK5JcM5flM0HIqF6ztEI8p50PjW0vkdilH0flquwmKVg
         e5eVbXWbSwkVU3c/v6P1ZRGU1Lp+atcfO8Xtn+qeI3XCtzUg65kqQHx9Efqjj+FJxYzY
         x+Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7ICCKEuTb9laxgP0Zx1Vs5lUttS9AKpnCJKw5INmy64=;
        b=K0yUiWGlwNR5gErV4UDHMHdvnaA63J74gG8JhZHV6+F9MK0o7Yzh+tLnbSQ+GMRy5+
         jIUsf38fDo+udZfFZg2L2cXd6f1T+p11/hoUOMljfmlL7Hi6UEoJ9GCFqWRIzM+5Ym6M
         DIVcsFs54NKJlat9VyGnEtW2H/WF6BwDuiEqfP/AndKuUTQT6uaatQxp8dSWSH5XiVkQ
         dvTo9mXYeYPrn0HFjJS/774JjQpYMK+/LnosC9rSD3voP509/kzfYkX38bI4fkkrrmQB
         M85hWXUbe+pylrzrJmmxezchh7TGXmcyMhNAzZNFnorsR7AUIUJIjMQCb9yKav94vKJk
         3Www==
X-Gm-Message-State: AE9vXwMNPq7PWlvWdRr2gwdoZgSVZRkSnj9HT315Dx6v70qRqckZ8yfcTs3uESB80lxijQ==
X-Received: by 10.98.100.1 with SMTP id y1mr20721138pfb.169.1474718305701;
        Sat, 24 Sep 2016 04:58:25 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id mz4sm18245541pab.21.2016.09.24.04.58.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 04:58:25 -0700 (PDT)
Date: Sat, 24 Sep 2016 17:28:16 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2] staging: wilc1000: Remove 'else' after 'break'
Message-ID: <20160924115810.GA9412@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove 'else' after 'break' to resolve checkpatch issue.
The statements after the 'if' condition body are executed only if
condition not true due to the 'break'.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 Changes in v2:
 - Code indentation

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 05e4501..042185d 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -695,11 +695,8 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
 			   sme->ssid_len) == 0) {
 			if (!sme->bssid)
 				break;
-			else
-			        if (memcmp(last_scanned_shadow[i].bssid,
-							sme->bssid,
-						       	ETH_ALEN) == 0)
-			                              break;
+			if (memcmp(last_scanned_shadow[i].bssid,sme->bssid,ETH_ALEN) == 0)
+			        break;
 		}
 	}
 
-- 
2.7.4


