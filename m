X-GM-THRID: 6387840311027040256
X-Received: by 10.99.251.83 with SMTP id w19mr1712652pgj.24.1487284971176;
        Thu, 16 Feb 2017 14:42:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.68 with SMTP id x65ls843347ioi.33.gmail; Thu, 16 Feb
 2017 14:42:50 -0800 (PST)
X-Received: by 10.107.164.216 with SMTP id d85mr1595223ioj.10.1487284970533;
        Thu, 16 Feb 2017 14:42:50 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z73si381078pfa.2.2017.02.16.14.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 14:42:50 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o64so2533552pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 14:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pxIAFYUADKHdt4I9tZ85IfDrC1bgJHstazalmKxpRd4=;
        b=hgVDy026nsVlJBU1rjmtQeG6YwpcXfQJrF/mwrEkMkLe8qVZwqAR8D8UqqEKobw4o4
         gEQwly91uPPxdmfDRdlNfDJ6FM89r+5Ka4hmB/dI6sGVH+KtlUKsIdiJXlN5yexeeYjv
         WzUQnwqPFl3mEnb1ekw2c385eD4UlhNy/NnAB5ZdNcoVgTVEIiKHhxQ7rih8cq9qbo8l
         yrcVp2HBPOsviIEaEp5RRa/f67V7xos9xr0s3wnYXp+/flt22eVr3AWc1yj07tBgPo9d
         toXcS1uGg7clrb8zNAydNGavUBkjsJ6qWmVmxEROt9+Ifn22VckWOrQP2L5LnRBex9lT
         ojlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pxIAFYUADKHdt4I9tZ85IfDrC1bgJHstazalmKxpRd4=;
        b=E76vlWAod25tsJZxfscFsRwBq4aG86t7JMAQ0DI0v3864GhFeOLAoC+T6y+LnRViep
         bxU4IV5XY2WVp5d27towS3WnQop6zL62X+Ey+IIBI1W7xgrcnV7fL2nwnhrkZQ1pxafq
         cyFLimjCwtNe4OvfB1igmZlYIpoyHNql3zw/uhwfgdxcdW6xYbVtrQM1yL92GhDsh0vk
         4Y5OYtRE8I3jvrKnspaafQdUSFF5FkNSv7yJpZzGllqCsnkWkARHPcUf9unxtDhliG19
         ad/7LU6xa14uhcVv2mCHWjQrOJ7Yh8wItnc6Z7M3kgZTiGTet5LKgUX956MUwSO2p27Y
         ir8A==
X-Gm-Message-State: AMke39mtKI++buiII/e3LF9TUEXy4MC7j08YpTkHhyPjeBmJ3k5kJGNd04UngtVUdBp4Lg==
X-Received: by 10.84.192.107 with SMTP id b98mr6557517pld.160.1487284970319;
        Thu, 16 Feb 2017 14:42:50 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5206:c79d:5773:ab8a:9cfc:4b88])
        by smtp.gmail.com with ESMTPSA id e90sm15485977pfl.32.2017.02.16.14.42.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 14:42:49 -0800 (PST)
Date: Fri, 17 Feb 2017 04:12:34 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Moved logical OR operator to previous line.
Message-ID: <20170216224234.GA25084@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Logical OR operator is moved to previous line to fix the following checkpatch issue:

CHECK: Logical continuations should be on the previous line.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/rtl8712/ieee80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index d84da2b..bce78b6 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -288,8 +288,8 @@ int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
 		/* No WPA IE - fail silently */
 		return _FAIL;
 	}
-	if ((*wpa_ie != _WPA_IE_ID_) || (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2))
-	     || (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
+	if ((*wpa_ie != _WPA_IE_ID_) || (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2)) ||
+	    (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
 		return _FAIL;
 	pos = wpa_ie;
 	pos += 8;
-- 
2.9.3


