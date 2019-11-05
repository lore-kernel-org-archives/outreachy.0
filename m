X-GM-THRID: 6755680722127683584
X-Received: by 2002:a81:9216:: with SMTP id j22mr22420027ywg.223.1572929490308;
        Mon, 04 Nov 2019 20:51:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3182:: with SMTP id x124ls1144425ybx.12.gmail; Mon, 04
 Nov 2019 20:51:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqzYCU9RbZbpmcJtMZFgi0WJB6sJCivA4iEngfVWn1+I1SWiXwV5JPdVgnnYqHYkB2vq/B07
X-Received: by 2002:a05:6902:52f:: with SMTP id y15mr12985157ybs.402.1572929488596;
        Mon, 04 Nov 2019 20:51:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572929488; cv=none;
        d=google.com; s=arc-20160816;
        b=y9waBlTtc+sl+TqMZy3k5PMrN5qZhdeqj/DilyLpaZ6evHB/4PZvx6IVtZRLr4ATOw
         q+27LduWKXR1W8E1e7dwF8Pjc2UMVqtQJl2kB3aKFF1pxclZjPDfIsECA+3uNMevxcoa
         vEDxb9WNS4pmfbtJ/MTQSRPs8GyRxsCtTa9Dxff3Gecd6bDtjkYs4EdyBTw2rIkhAf7J
         zZt4o4D+1No2XwhxHMJ8/8WW+y5smV/ENRM45ON1g6Hs9DjNuofkhQTeUH5tnwWciNjC
         zOoAn3OPq1cvkdGgOm89b1Zv1l1cYqqdiXqRgUoa/KMfLe045LgPfPczMTyGwJF2s60a
         TPNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7K49hipKgjptKQVjHmsTNO/2GpmVnCNI3uGvzfceGO8=;
        b=ksUnhseGDTS07e3OeHM5lHDHVQAfkZ9IdCcI6sw+LxZf8Rno2FePZC88rU9dbEswUY
         ek66wBU8RC2mpFgDoxzr7oLhMBNCuYD6mfUY+UfUn2UGUhOFUuBU9BJEZqkcVFiYOJ5P
         tM+0xTxdK2p6A1vBf9R5lUjT3+TYXe3gRAIVEkfFotwpIWKZRpCc5kcMe9r6uEj3Nbmb
         rQH7j2mZDRC51SMA0Eivn4g3wq2PTQgtnmjmg05C94vMIEYJc3El3Ydn+HGKccZK63iJ
         3POY3r7w/NebogfNxAfpI/llzF7tX41tcXuZcCc60Rw+y02owZGIq9PTZZTJb50qaqrb
         Ds9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCgH5vPU;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id d192si1185859ywb.1.2019.11.04.20.51.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 20:51:28 -0800 (PST)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SCgH5vPU;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id o11so22530724qtr.11
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 20:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7K49hipKgjptKQVjHmsTNO/2GpmVnCNI3uGvzfceGO8=;
        b=SCgH5vPU6ACDVM6HXiY1LJMXTqvhVcBlVJX9jDhGg7O7zzsqj6ohuD0aZ1M2M8aG0r
         mllblxw0lZ6XQvSS78CS+SFqvt+DOZNa++fzIpFEchIxFjtrnFUE2jIYhTazx6IIr+P5
         AdFDJLAAdJ6q6XTYdtyi/qaeHI70TijUG5FGJgVnSmwEYFP1W6VhZCIeWSb4TSZwbeK7
         lCzIyrD8Vd5cnZ5ZO59B7c2TxtVGcrT02kCD/Rd4vu2Vp5iRLkjyRFZChWa1pymajxAV
         MR6vza8cnuvTZTJ4W8aTC8Bm9Y6hqgGPj/6aBsWq3bRim0qcyYPg/Nf08AnfJayxdyXT
         DbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7K49hipKgjptKQVjHmsTNO/2GpmVnCNI3uGvzfceGO8=;
        b=NEXrdQJl1+AWBbz9Emh2n/uBuWdDw/Ukh52QnvMvabbhM5oYxyupbyduReY0buexG9
         SrnMZXdDsViKKhd7EzrrNu19MLFp7kpiz6oDCkjxJ6eXzWg70NXAc+WIQOOnt5WsTik0
         VVLVvKaI/PCvy0EfjMnaZwph/LF7qAc3rOY3t2unLDWclk7wsWo3zD1ZBAwUqHE1aovD
         QF94lg7x0XuBFnWgZI0/zNvv0s86PfUeXOXqjP0CxgmKAdKYw8JzcKRATmqsLMUrq+wi
         nrZ7xtJbge6nJazmUwbb0X7iZTTNm4SOO1w2YdC8VAc7YdcEaF7jh1oLplAd/HaD3QFG
         s+jA==
X-Gm-Message-State: APjAAAU0Vz7ulPhnUG1Jfpm9BH4ZZrQwzOs9n0ufkWajlS/g4WDJdwbr
	0Obz3daHlG67cA1PX6k4nn8=
X-Received: by 2002:ad4:53a7:: with SMTP id j7mr24777595qvv.77.1572929488094;
        Mon, 04 Nov 2019 20:51:28 -0800 (PST)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id i4sm7912739qtp.57.2019.11.04.20.51.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Nov 2019 20:51:27 -0800 (PST)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove unnecessary variable used in return statement
Date: Mon,  4 Nov 2019 20:51:23 -0800
Message-Id: <1572929483-78993-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove the variable that is used only in return statement and return the
expression itself. Issue found using coccinelle.

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index a25c535..52c1f66 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2440,7 +2440,6 @@ void rtw_cfg80211_indicate_sta_disassoc(struct adapter *padapter, unsigned char
 
 static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struct net_device *ndev)
 {
-	int ret = 0;
 	int rtap_len;
 	int qos_len = 0;
 	int dot11_hdr_len = 24;
@@ -2506,9 +2505,7 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 		DBG_8192C("should be eapol packet\n");
 
 		/* Use the real net device to transmit the packet */
-		ret = _rtw_xmit_entry(skb, padapter->pnetdev);
-
-		return ret;
+		return _rtw_xmit_entry(skb, padapter->pnetdev);
 
 	}
 	else if ((frame_control & (IEEE80211_FCTL_FTYPE|IEEE80211_FCTL_STYPE))
@@ -2815,14 +2812,11 @@ static int cfg80211_rtw_start_ap(struct wiphy *wiphy, struct net_device *ndev,
 static int cfg80211_rtw_change_beacon(struct wiphy *wiphy, struct net_device *ndev,
                                 struct cfg80211_beacon_data *info)
 {
-	int ret = 0;
 	struct adapter *adapter = (struct adapter *)rtw_netdev_priv(ndev);
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	ret = rtw_add_beacon(adapter, info->head, info->head_len, info->tail, info->tail_len);
-
-	return ret;
+	return rtw_add_beacon(adapter, info->head, info->head_len, info->tail, info->tail_len);
 }
 
 static int cfg80211_rtw_stop_ap(struct wiphy *wiphy, struct net_device *ndev)
-- 
2.7.4


