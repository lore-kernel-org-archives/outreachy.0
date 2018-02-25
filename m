X-GM-THRID: 6526589277471506432
X-Received: by 10.28.13.139 with SMTP id 133mr28098wmn.32.1519589982030;
        Sun, 25 Feb 2018 12:19:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.3 with SMTP id c3ls785392wmh.9.gmail; Sun, 25 Feb 2018
 12:19:39 -0800 (PST)
X-Google-Smtp-Source: AG47ELvEnQoUzKjNUxzLefiAh0lZA19Ve6DMOcp0zIeKaAHhMl6dkklq9AEnxQ3Fv82WX2EfBXP5
X-Received: by 10.28.69.76 with SMTP id s73mr879452wma.15.1519589979862;
        Sun, 25 Feb 2018 12:19:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519589979; cv=none;
        d=google.com; s=arc-20160816;
        b=A8BxWvK1s3n3l4+8qu2Ao9sDzsf6uGGdVDo0CvRpOAwEi6WcmgcaXAscJCxwGYP6Th
         6UwFsGiQ2IUiys0jpkLWxkayzhIVxNnB5l38vKMgbTcTtGMu+erIZ7O3Xy8igcIAr3Ch
         h1UWss0uQHAddi/dq82YEtBB17uY6G8DWHOGmoimeF7orrJryNTHyu7NQkXlphgMPo7i
         +FQAy2IQxkyRtiyM25z3PY40JIm6muxYphJ2FVtFHGlPOGINhFIdM+9Z2eKNJM1WMjz8
         8HpLHC3AOZd2Ov+7ujnWX54SeMAiuo+5m3PmIu0dOMlptv7bkwBeCZxeH+4GSOnFIMnU
         mDbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=vgv/DgEygE2yv3SN41ATuEc+8nk14o3giMwIUrd0zfM=;
        b=Xc6TgBX+twQItsppOECCYa0hC6fJGwvLwhq6XTRBUvPcBrPfKkiv/M/ifnWu1CJsV4
         YzCMOYGiDMKvogE/Go7D0N358c5VAQuJ6i4wehjWMW6wtJLYFXjF30HeKTdwMytzf6Aq
         OlzpCDpfdGMg9pExHTasLU9UmH1dkizYKK6808hT+Nkg+lbb4ojrpfmVpxcICWxpriw+
         w1bOEAt/mbu20Ximok4gjLaEGCfF13KRuWnY2exIRFkufjsR1NpjHM5hub9ktoz6YLBy
         vO910jsGQyNuZwD1rkd0RCtsR3PKyPmJAraRDPh/zOK/p/fF0QTEpkFRh9IJyUZJz1QV
         sMRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqrtM3Gb;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id 200si380985wml.2.2018.02.25.12.19.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2018 12:19:39 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqrtM3Gb;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id s206so14221790wme.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Feb 2018 12:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vgv/DgEygE2yv3SN41ATuEc+8nk14o3giMwIUrd0zfM=;
        b=tqrtM3GbL4jD3fFkBnQj60xaSf9JyherTmVImv3/l2bZeHektU4lokVP9oj4CB69Hz
         Upsl+MpUyJu4UqgjdY6xnY/Qs/6AnkCOefRMfwmIDw7HxD4LsfgjQBgi4THi/pDVbjel
         0agxqdvGzyXK2MgfDDaQLCXAIsKlJ57aj7z1omwxTvky1z9oR5OrAyqMVxFsxNatIB5n
         iufL+n+4l2d187hSHsMhl27dHHIRcPkPLwPMBYMFkrRvLnnGbTSMpr4nRasF/nlt3oM+
         a/y8oo6+1fmo8JQ1eK9blNJXUmGRhfTmd8vdWtvcuo+DMY7fjEJZLgF1JcJDiahLWFs9
         77PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vgv/DgEygE2yv3SN41ATuEc+8nk14o3giMwIUrd0zfM=;
        b=EBv+HjXhbejBKIScHbXYHVZSwfpYKlnSa6x0FmrofWt/Ko0Btsj4u2rpuZ30itDfDH
         xncGvIZEV4eCKgxxptGnySiOs8uQuvxgiulb2G4bV8jiUOvBqhInUcgVAaUXj/uyF1wW
         0thoOAoEJJJJmv+WOnDBn4CansL5eT8mLHzaa3gk0f0FXrm9sF02yy+rF6kLh8+dTApS
         GRrWq75RXzPWOjqz+zmWnTR8DB3glnyRNQsGpw2A/Qds4NXpHu4F1/Kul8b0YkcGBjoV
         D3RpnFktZy2alsbt9Uj+da6qhAjQXMvOjOhSGNl0qL7mPaLUWTbW8Jzc+SMGxaXJLPBs
         noHg==
X-Gm-Message-State: APf1xPA90RKzZPGnPykluPSjxe85QBxsmajoyKXgHE48eXTV90UGxO/w
	sRyFya/slcjDrDxk2qPd2EkDhYQw
X-Received: by 10.28.234.8 with SMTP id i8mr7235566wmh.44.1519589979588;
        Sun, 25 Feb 2018 12:19:39 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com (bzq-82-80-133-46.red.bezeqint.net. [82.80.133.46])
        by smtp.gmail.com with ESMTPSA id 53sm7619242wrv.95.2018.02.25.12.19.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2018 12:19:39 -0800 (PST)
Date: Sun, 25 Feb 2018 22:19:36 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192u: Fix alignments in 'if' statements
Message-ID: <20180225201927.GA16154@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix alignments in two 'if' statements and break lines
to avoid over 80 characters lines.
Issues found with coccicheck.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---

Changes in v2:

- spelling corrections

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


