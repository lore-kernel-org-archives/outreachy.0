X-GM-THRID: 6666820090157072384
X-Received: by 2002:a62:f550:: with SMTP id n77mr12547081pfh.117.1552318925701;
        Mon, 11 Mar 2019 08:42:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:488b:: with SMTP id q11ls7854950pfi.5.gmail; Mon, 11 Mar
 2019 08:42:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzKGxHFwKe1d36TMItRUr9xqQd1JLNyVgmHAWClrOLIYWTJcNrWScC3HCMzg+ThkZ+fM3E
X-Received: by 2002:aa7:8188:: with SMTP id g8mr12172179pfi.69.1552318924894;
        Mon, 11 Mar 2019 08:42:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552318924; cv=none;
        d=google.com; s=arc-20160816;
        b=isnaOYeSKetumk/IFIaQzkIR5GHdomx3mLpxpIUg00E5UhKYbexPQnUY08IyxLPyV+
         uBP+5o0XeiJZg3xs4WffBAONWedmkhGi/939W3TDvRWRYNUtgQBgLUTZcMaw4EJLfeJy
         bFPKBjI5I0+wZgF52HbbZ2sWCjEwwW7bAVcHkFo8MsIUVuKsd66+ST45WV2PWe/4yw/k
         N25vzNg7/vYLVcNh9ebZuW5zSkQaCNAKk0VlzzI7PyV03VpoMcP9LMYnAKE7Y9T4JxOu
         36Lk3nHdfZUrQ+4jbWZf8L61aR/FB7j/y4+Gm3NCtUVNcr52miMAfZaUvQ7xgRA8giX3
         jOZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=hkw+uWT/PnaDPYTj0ZPNpr40VQubIAJHIHVollLftYQ=;
        b=gK2SpbfV3Rd7+OBB1bhFLvGk2jy3cG6wG4Sze/VgUon2GB1vQ0LXy7+qX9Vuh8jGv6
         biJ6192RWqWdsulgGvjM5SK4HOqmOpKjMNs/yDnl2ObOz918mQG1Xsns9VoOHad/ACiS
         QXXfUfRLTnHQyGf9hoI9fTdZI5GLq/QrVsC4/vujaNrmWr1qW44/GhweyVDavGxInBhI
         G4ZAP636QREIeCuOV0+e/QchRgQUQb3QNy9YxP8AxDqQ79OUMaz5ae1ZCGHMimaR7uSA
         1apZ2oKKFR0nqGxzD/falGNHv/qIBoJPm+klDrkMlvWqh+23y/wKKKtFV0zEX9CB9k7x
         xZCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+vbQPoy;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 3si263649pfs.4.2019.03.11.08.42.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i+vbQPoy;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id h1so3965259pfo.7
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hkw+uWT/PnaDPYTj0ZPNpr40VQubIAJHIHVollLftYQ=;
        b=i+vbQPoy9nvvYG9OEB3az42a11Md8piWGF07kP8zAJvo8Bc0eiMxzWKT1j+vViNiaS
         lAdbhma+Z8eUo3b1xk5Ps456oRYfCbjJjotHgpQMYWprVKoGFl3RRW1ybBC/pMgdhvV1
         ahwHUan9mmdb2qetYEI+LpFNvRiIXg46G9e28LOdFB/ere70qA95JtVJwQYW17K7jFR5
         Q54pl2TwaeiF1EccWYYWs5sSKHmGzBkrb5oEoo+7iIN3/Y+KVomzFEcCzlFyQH+IJ9se
         OP1q6HvG2Qj4hXsRy7MG3Ayfk2WON26UTrLKdU2M+Y7VxoivM+A9KzBvHEvWxKpzD+WO
         mDRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hkw+uWT/PnaDPYTj0ZPNpr40VQubIAJHIHVollLftYQ=;
        b=H4M4X2TToKCILeQsHQv7fk86lQhAzJ+/dv01f+jsB3iH3caOfyCTtu/3dwykWWgQNy
         +PEyKc/g78GacmBX7Rw0NAK6nmLHtvbWWNiWbUcOmFH+0zYKFUIYH5QLxQkMwt7gtRGe
         i+MbM314kMPbb1FqTJXl8wExSxG4Laq+zbaBPBZNPKdkW6T8pTChbdfa3cMg/vy7ndbe
         peRvGB/tc8YvWFUYVl45AQBXqiWmwf2FyC8JSKpUxrICt6VijSkcAUluxjW/QtN/qYiM
         eSvpvpVPG3UOm8zc2sqn3fsTpwb6t23YxD6IbY8wQT+i5kgTr9Y65WulRtKK2kP07EY1
         4Kcw==
X-Gm-Message-State: APjAAAU4z9BASXDMuXeVNz7m0zQiqNzehE01cNZof5jO/qPytwTBF7nQ
	NJhQhwKUGkOF4DuCDm3++xHvhm6FcvU=
X-Received: by 2002:a17:902:aa88:: with SMTP id d8mr34800357plr.61.1552318924419;
        Mon, 11 Mar 2019 08:42:04 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id u184sm8798080pgd.13.2019.03.11.08.42.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:03 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 4/7] Staging: rtl8192u: Remove typedef for struct _RT_LINK_DETECT_T
Date: Mon, 11 Mar 2019 21:11:38 +0530
Message-Id: <20190311154141.31401-5-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311154141.31401-1-bhanusreemahesh@gmail.com>
References: <20190311154141.31401-1-bhanusreemahesh@gmail.com>

-Avoid typedefs for structure types to maintain kernel coding style.
-Remove typedefs RT_LINK_DETECT_T and *PRT_LINK_DETECT_T of struct _RT_LINK_DETECT_T.
-Change Structure name _RT_LINK_DETECT_T to rt_link_detect to maintain Linux kernel Coding Style.
-Replace occurence of RT_LINK_DETECT_T to struct rt_link_detect.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index c8c0e4282fea..fc24df42ca8d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1586,7 +1586,7 @@ typedef enum {
 } country_code_type_t;
 
 #define RT_MAX_LD_SLOT_NUM	10
-typedef struct _RT_LINK_DETECT_T {
+struct rt_link_detect {
 
 	u32				NumRecvBcnInPeriod;
 	u32				NumRecvDataInPeriod;
@@ -1599,7 +1599,7 @@ typedef struct _RT_LINK_DETECT_T {
 	u32				NumTxOkInPeriod;
 	u32				NumRxOkInPeriod;
 	bool				bBusyTraffic;
-} RT_LINK_DETECT_T, *PRT_LINK_DETECT_T;
+};
 
 
 struct ieee80211_device {
@@ -1876,7 +1876,7 @@ struct ieee80211_device {
 	bool FwRWRF;
 
 	//added by amy for AP roaming
-	RT_LINK_DETECT_T       	LinkDetectInfo;
+	struct rt_link_detect LinkDetectInfo;
 	//added by amy for ps
 	struct rt_power_save_control PowerSaveControl;
 //}
-- 
2.17.1


