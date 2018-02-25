X-GM-THRID: 6526584081044471808
X-Received: by 10.28.247.5 with SMTP id v5mr809290wmh.12.1519588772838;
        Sun, 25 Feb 2018 11:59:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls1225224wmv.4.canary-gmail; Sun,
 25 Feb 2018 11:59:30 -0800 (PST)
X-Google-Smtp-Source: AH8x2241L6u60Kpb6tUN0wecYgnEczozBYnpb6dIw7ltO+M4x3HWkamCQSMTzSFUZI33J03wSAtN
X-Received: by 10.28.124.23 with SMTP id x23mr772365wmc.16.1519588770804;
        Sun, 25 Feb 2018 11:59:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519588770; cv=none;
        d=google.com; s=arc-20160816;
        b=g6KrOoXXl66SM+vKbbQtyy4IUFacaUi/Znw0obPHkrPCSeXkxj+Y0qmbEslb/RoiJ1
         Afk0kSlq1LnEWBXr1sa2v7OFLePHXYNhZPcZXc1qIG4Im00X3lJD18n3v040NSpn/Chl
         qVmcUitTQvEDq7mkazoZtvrZwB0oqOrniN3pV8g8E5mYOMh+rBW1k1a13cyeanLtAhPp
         yl4MQWnj1UDODKIzrf9J5FPdxjLm4Dce+9xYFAjexNy37i4uybAaPE5YSRDOYzAvfZJj
         EA0MIs4KqjRfJhTQXQlRvjqOUWxgY3aTtgwaoMy7HE2sb6YGc7HTk4Ug2K0e/rHQiujt
         XkJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=0yCTap5yxjbh8TWBgn9VA5LH5atKcQtGNz9qKsXvsCY=;
        b=stjUADdZBqmielD3GzNF4e///VWV+BKSEANB4phmHfcrtCH0zsroCZvOjapoELiV5q
         b2pCkp0UzwsTVExkOOntBdKOULowYJitl7eFRT16ISyum3z+f6DKcGgDUBrMpzKpPvs6
         qmo9K+2UB1e3zC90ajcUgGUUPg4Hw/d75tlNmp2aQMrb3pp7Cc6rVGaP5NNbwA3swpLK
         7erO7YeoEotfRX2o0MBmurhG0+1zO4b4bFZhRvE65wSVqEcpKOwdJW01Le9I/Rx61sdE
         fNf7rnO/GAGl2kMuAh5ZQWfHLggrmCv+PnOeeLRaElC/Oynbleat+7usnja1+tMMK2aD
         u/3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uhWC9TuJ;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id a72si330790wme.1.2018.02.25.11.59.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2018 11:59:30 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uhWC9TuJ;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id q83so13698426wme.5
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Feb 2018 11:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0yCTap5yxjbh8TWBgn9VA5LH5atKcQtGNz9qKsXvsCY=;
        b=uhWC9TuJE4wiKXi3L0x1XR2C96FIK6wtYavIdN7JH7HSuZAUVIta/YoEEKubofJEFO
         inN0qi7NqkPQE2q5TwlHAMOGIPwLa+E0Fz+bCpOC1SOLooYAy28qvc9PNs/gDhcBkBub
         5xtURlUW8yU6UOEeetuwA6yA9ixTvSF5YMnAcoTvBS37NQslmQ4z/4zl/LlEXoRcIYCI
         gIN48nytaPYCcxZYh7ZfdZcjawc8tCNEL8EqPRhpBYRRL5LfdaUvV9u0OtchUWMcbMZG
         kSn8XW1P7tUZgfx9RpIAs2tQZz1EofwUjeAZb9niOGumuNZv4js1iQEiMwhF92EUP59s
         o34A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0yCTap5yxjbh8TWBgn9VA5LH5atKcQtGNz9qKsXvsCY=;
        b=oVCamjxShkWCLY0uR9XWXmRDuefuPJtCGKQ/+UKln64RTuBCcowV0O13rLY8Uf6ddK
         EBIkD8zImnhbWnmYkAlgrVXE3SyIidSVeSFsXnv1Fswxp/gEw8REWbOMiNtn4Siq7JDl
         +StmImy2hY0VEkD2Uu7jzL11iou1IX2doweNul+YAmQkkA0P/Ponm7QzNdR12vNWrBey
         aOEnOHMAOSPPsKvESz5JsmMIgapvV+hX3xqtF79QTaz1LPEWGgnBFmG8XRjwOCt2P1rJ
         ise5uyKXmzvKwno49uZNI+bc25b48xVw5UrKGvWmjN5l3ovCcG2bY7N5rqhqVg+wvhgr
         Rfxg==
X-Gm-Message-State: APf1xPCh98RigK4I15toBRTCWDY9+SHbszivYSUrudCDcY8ANY0RQjk0
	N5l83fU/bP8NY4p4CBpxpJ+bgByo
X-Received: by 10.28.142.142 with SMTP id q136mr6969817wmd.131.1519588770484;
        Sun, 25 Feb 2018 11:59:30 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com (bzq-82-80-133-46.red.bezeqint.net. [82.80.133.46])
        by smtp.gmail.com with ESMTPSA id j126sm4957614wmb.33.2018.02.25.11.59.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2018 11:59:29 -0800 (PST)
Date: Sun, 25 Feb 2018 21:59:27 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: Fix alignements in 'if' statements
Message-ID: <20180225195922.GA15403@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix aligement in two 'if' statements and break lines
to avoid over 80 characters lines.
Issues found with coccicheck.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 21b55fd..86c7357 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -195,7 +195,9 @@ static struct sk_buff *ieee80211_DELBA(
 	u16 len = 6 + ieee->tx_headroom;
 
 	if (net_ratelimit())
-	IEEE80211_DEBUG(IEEE80211_DL_TRACE | IEEE80211_DL_BA, "========>%s(), ReasonCode(%d) sentd to:%pM\n", __func__, ReasonCode, dst);
+		IEEE80211_DEBUG(IEEE80211_DL_TRACE | IEEE80211_DL_BA,
+				"========>%s(), ReasonCode(%d) sentd to:%pM\n",
+				__func__, ReasonCode, dst);
 
 	memset(&DelbaParamSet, 0, 2);
 
@@ -233,7 +235,8 @@ static struct sk_buff *ieee80211_DELBA(
 
 	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
 	if (net_ratelimit())
-	IEEE80211_DEBUG(IEEE80211_DL_TRACE | IEEE80211_DL_BA, "<=====%s()\n", __func__);
+		IEEE80211_DEBUG(IEEE80211_DL_TRACE | IEEE80211_DL_BA,
+				"<=====%s()\n", __func__);
 	return skb;
 }
 
-- 
2.7.4


