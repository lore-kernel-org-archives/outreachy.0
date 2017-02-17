X-GM-THRID: 6387840311027040256
X-Received: by 10.99.67.197 with SMTP id q188mr2084344pga.31.1487308368158;
        Thu, 16 Feb 2017 21:12:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.34 with SMTP id h34ls1019172iod.30.gmail; Thu, 16 Feb
 2017 21:12:47 -0800 (PST)
X-Received: by 10.107.15.161 with SMTP id 33mr2098057iop.46.1487308367348;
        Thu, 16 Feb 2017 21:12:47 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id z3si538949pfj.0.2017.02.16.21.12.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 21:12:47 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id y6so2794811pgy.2
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 21:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RWDQFM+M+SbBUbyrGmkFvzQsvteiPf44y3kfpKaCRYs=;
        b=E1DEi7QnTi1NJqE5QSbCpqVKm89NAXj27i2WPAfF+XmUNk5Pg2XcRpGvl94vA7YMdB
         suWOm7NKThL2WFxlqun4m/OSTU5bWuYhcJqU4kaCi/oGVZ3/igZprRnskwAj6edakf+b
         mMJznuqZjz+atY8weJcAKPpJJ6wYBnGNxjHAU6RrPmwKv0qAFURuYWcYQgZn+fbNog7X
         snJDhLnWiEusBWiFjvUfb1kkvE1ItKtKs1zlo8raFS6C+TBgempQlf/+ieYvFgm2wsSa
         3OEo9/eXNWW/YznSfD1HfRAgRlLpaVLd0wXDNDbddj9nWe1KmkFYvh3wpSGcxTauuFtW
         Chuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RWDQFM+M+SbBUbyrGmkFvzQsvteiPf44y3kfpKaCRYs=;
        b=hyCNE7WYPt9xTdkxm42Ouw/UZgWt/vo0jjo3kIPy5SzIumWH+wKi4R8aXTl0R/Yz4S
         pLEcjGM05JAm9PVFIQlKxFVojgpXzvlMsS+tXBi+7hKiasETzPdo1llHINbhEmUgExn4
         HllqPk1rq3W23sC8XioWtNpTkLsijM7ztZAcNU3aZNwF/aBogL0jETe/hcOUNbdU8Mu5
         H7ZCQxVtLqQNk1sB0A6WBXM4Zi8T/XNzciIbfDzADb+ARymHorIKiGeyyOK2yU/Jm+ja
         OzXmB2xGGrQQDmM1uJ4yuc6MOAAoEZrTX/AiaNaebbKaYRHgyXtOdPL6tYuUheo7HGwR
         digg==
X-Gm-Message-State: AMke39m3legEtULnStvxyR8qwKLCzrD+glsfo42QLDTsSqpvLct1Z5gfsac22oKw0sRspw==
X-Received: by 10.98.7.11 with SMTP id b11mr7080252pfd.154.1487308367015;
        Thu, 16 Feb 2017 21:12:47 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.70])
        by smtp.gmail.com with ESMTPSA id y5sm540307pgy.28.2017.02.16.21.12.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 21:12:46 -0800 (PST)
Date: Fri, 17 Feb 2017 10:42:38 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: Moved logical OR operator to previous
 line.
Message-ID: <20170217051238.GA3213@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Moved logical OR operator to previous line to fix the following
checkpatch issue:

CHECK: Logical continuations should be on the previous line.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 v2:

 -Edited commit message.
 -Fixed the warning of line over 80 characters.

 drivers/staging/rtl8712/ieee80211.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index d84da2b..f35121e 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -288,8 +288,9 @@ int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
 		/* No WPA IE - fail silently */
 		return _FAIL;
 	}
-	if ((*wpa_ie != _WPA_IE_ID_) || (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2))
-	     || (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
+	if ((*wpa_ie != _WPA_IE_ID_) ||
+	    (*(wpa_ie + 1) != (u8)(wpa_ie_len - 2)) ||
+	    (memcmp(wpa_ie + 2, (void *)WPA_OUI_TYPE, WPA_SELECTOR_LEN)))
 		return _FAIL;
 	pos = wpa_ie;
 	pos += 8;
-- 
2.9.3


