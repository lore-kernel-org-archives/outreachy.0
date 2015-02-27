X-GM-THRID: 4475579269120
X-Received: by 10.112.214.234 with SMTP id od10mr2012653lbc.3.1425041375804;
        Fri, 27 Feb 2015 04:49:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.135 with SMTP id t7ls148272lag.45.gmail; Fri, 27 Feb
 2015 04:49:35 -0800 (PST)
X-Received: by 10.112.181.198 with SMTP id dy6mr2069227lbc.22.1425041375346;
        Fri, 27 Feb 2015 04:49:35 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id l8si146926wia.0.2015.02.27.04.49.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:49:35 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id x3so20172532wes.6
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=MPcgn/mQ7PQfKAAVFYYnJqLmtw/hncEQfJIMNu5Q2pY=;
        b=jDVbi8jm8jlyzZPXuIW07U9hG4aWG4GCWPij+nXztUuMJ8dCWjpQxGDOmT4fQfR514
         dK566mAKOVznbCKeLhxvacBmbm+gIBwg0cSkvhv66obDgSBGsi+PFRYgyEAbbSirD7lW
         29DprL78Y1lvZQ3Yw6t2xmazXAVw8lwuy4xoudfYXwojviCrivBDaGg5xSdf4FN2cPbW
         pWlxU3RpfuNp7s9khiiI55nGIGXsjaKecxfJTdvn72TOZfpdVQ5VPoTd3FropEjKyL3M
         GJq6AwobZSmsiCb09rV0siP8O7RkWsv2Z2F1r+bExFUxtpoMDlCTnTvIDcniCKWQ6rnE
         3mzQ==
X-Received: by 10.180.105.131 with SMTP id gm3mr6215920wib.11.1425041375255;
        Fri, 27 Feb 2015 04:49:35 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id fu1sm2719340wic.2.2015.02.27.04.49.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:49:34 -0800 (PST)
Date: Fri, 27 Feb 2015 14:49:27 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 01/24] staging: wlan-ng: remove unused variable
Message-ID: <c5e72f70a459152c6f05c32428989b503e8606f3.1425035003.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 10ad24a..77e0f89 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -243,7 +243,6 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 			     struct p80211_metawep *p80211_wep)
 {
 	hfa384x_t *hw = (hfa384x_t *) wlandev->priv;
-	int result;
 
 	/* If necessary, set the 802.11 WEP bit */
 	if ((wlandev->hostwep & (HOSTWEP_PRIVACYINVOKED | HOSTWEP_ENCRYPT)) ==
@@ -251,9 +250,7 @@ static int prism2sta_txframe(wlandevice_t *wlandev, struct sk_buff *skb,
 		p80211_hdr->a3.fc |= cpu_to_le16(WLAN_SET_FC_ISWEP(1));
 	}
 
-	result = hfa384x_drvr_txframe(hw, skb, p80211_hdr, p80211_wep);
-
-	return result;
+	return hfa384x_drvr_txframe(hw, skb, p80211_hdr, p80211_wep);
 }
 
 /*----------------------------------------------------------------
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

