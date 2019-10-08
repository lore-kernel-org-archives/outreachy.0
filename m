X-GM-THRID: 6745294989426688000
X-Received: by 2002:a67:d508:: with SMTP id l8mr17764722vsj.176.1570511374688;
        Mon, 07 Oct 2019 22:09:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f491:: with SMTP id o17ls207745vsn.16.gmail; Mon, 07 Oct
 2019 22:09:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzl9H/kVStG8y3dfrIzdGDVx+nqbsaB/DQkCdcn7AslB9FUikW1LmMTOCBdAHS21YBrU7SF
X-Received: by 2002:a67:6545:: with SMTP id z66mr17212464vsb.2.1570511373733;
        Mon, 07 Oct 2019 22:09:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570511373; cv=none;
        d=google.com; s=arc-20160816;
        b=aeHnsJr25Npx89x25gy97LjY3NTFBlF3E/lFUbp4CaHmT++R+M9vbsxAimlURVgwkb
         2g7ztrHEIUrl775t3a/B15yPJnO5aIW4BKa1sceJjZgPhloHxgJaNytRZnjjAiC8X0Ry
         ilwJAlIrPh0vacAvR2BaX0IOSp0FKeqEcEVk/RBICquwbm9Eb7Gwo2X9CnouL1nfPxxk
         NbEj2D8khRxpIY+yJTl2kYe12QwMlPWY7IyN5LHmwBXvyz92/u22V7Xpsileb475hpzM
         5aNjxaX6hH168vhoyX5BLSnR2jr+p4srHPS0SShaTcCERV9q3OYGNu1frL35XEQnhcPy
         wGYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jLu8EtIsMH91D+KtbzZ8RSJGdkHIjGDHqHYfFdP2W4U=;
        b=S7LjwN0pVEByPCW18F5ebOeeGnTjmbWN9BH9ZSOsEcCp/WrMusPUg2fBBT1X6+ZHy0
         VjHG95dx55Y0QA/hESsN0DaI5HcLA4B1S2C7geLHbQCUe49zJ+hAZCGzSqOkK1Qih9EC
         052z2npMpbUZlu6gY+u03podho8euPSzscREjJ2hG+2XGDcZxpRgz3uBbldAp10xGkCD
         Q2MOn1/oLHdEbrjEigQFLJKLmKDcbBkRTwQwNSkAV7+i1/+Nhsv5nOD5b1WpHhmw1e+P
         upeQMOjJdC2HeuSzyWt5+WrMOEmRGkg7lx56OikvmMi8gJ8o2sCZfHSQiwEeqLfuoFVR
         bFWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PXsnjBSX;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id 136si67528vkx.4.2019.10.07.22.09.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 22:09:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PXsnjBSX;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb43.google.com with SMTP id 4so1824715ybq.9
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Oct 2019 22:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jLu8EtIsMH91D+KtbzZ8RSJGdkHIjGDHqHYfFdP2W4U=;
        b=PXsnjBSX+1afVZBpNt1FVZ4FHaQ0LpodEEOzQaWj5GJKMhbu6BrmllR8gHlEVBWVh2
         HYJvOdh2wFNniSB/ObAd1qrYYZ3+e+Nso5PtBlCc5WiLSvkYDvY1TAFwp8+7RkHyd0hM
         g11YYeHsd/2K5AjU36hqv4XWe0VCop/jAXrLJ/o/A/LEAtKHgJ3dp1V7M/y9oUMq5Ezy
         KFrFvL3K3rNEr/XCp557AGQkBuZcvH1uBfRjcalLCSEmCAfUHQn1g5Gzk9AVwugVqpYx
         y8dAwn6ID9Fz55dHj5ADDAclP9Kp85XcwkRJCAe8Zb1jdUhnNiSWQN/k2SSbpVG7bYV2
         CG+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jLu8EtIsMH91D+KtbzZ8RSJGdkHIjGDHqHYfFdP2W4U=;
        b=i6uZzcRZ5vmC5KSfeaaTJmzRzq2Uxn2SyEWWLIVIAoueS8pUHLQzoBmuiC+iDyD86g
         E8lFvd/RPgWZUnB6cBC/YZQYS5bVBmlbgFG2PCNZ06rfXzHRKCrB12GtUKs5ujEWY1dQ
         nm/9RAzLt44mBvftOrRQXP+DLGfuoui1XN9ic8hV09/hkmjpId9992qI7C8kC20Sh+iu
         c37l4qLJCRWqyN0iDzf3Nrjvkdjf5QD3yVCFZIn2eYI3L+l0/GnJFCQiflWkoWu9eaTs
         8Wu+N3oGpjiRsvbbFvcR8NAmZaQ9ihpoqPJxCCnAStrzSU0M3/WgYc8CD2u3Da2HpqdE
         GFvw==
X-Gm-Message-State: APjAAAXj33tMtO/TunzjG3P9eJCX4VNOa+ynDiVBp6TKBsS3Vw5ANQbj
	lXKV9vmectPLxRxE9QnHO4A=
X-Received: by 2002:a25:d06:: with SMTP id 6mr13137687ybn.474.1570511373195;
        Mon, 07 Oct 2019 22:09:33 -0700 (PDT)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id u196sm4975130ywu.72.2019.10.07.22.09.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 07 Oct 2019 22:09:32 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove typecast in kfree
Date: Mon,  7 Oct 2019 22:09:13 -0700
Message-Id: <1570511353-64646-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove typecast in the call to kfree as it is not needed.
Issue found using the below coccinelle script,

@@
type t1;
expression e;
@@

-kfree((t1 *)e);
+kfree(e);

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 10 +++++-----
 drivers/staging/rtl8723bs/os_dep/os_intfs.c       |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 67d56f3..8555f52 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -165,7 +165,7 @@ static void rtw_spt_band_free(struct ieee80211_supported_band *spt_band)
 			+ sizeof(struct ieee80211_channel)*RTW_2G_CHANNELS_NUM
 			+ sizeof(struct ieee80211_rate)*RTW_G_RATES_NUM;
 	}
-	kfree((u8 *)spt_band);
+	kfree(spt_band);
 }
 
 static const struct ieee80211_txrx_stypes
@@ -1156,7 +1156,7 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
 	}
 
 addkey_end:
-	kfree((u8 *)param);
+	kfree(param);
 
 	return ret;
 
@@ -2193,7 +2193,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 			ret = -EOPNOTSUPP ;
 		}
 
-		kfree((u8 *)pwep);
+		kfree(pwep);
 
 		if (ret < 0)
 			goto exit;
@@ -2646,7 +2646,7 @@ static int rtw_cfg80211_add_monitor_if (struct adapter *padapter, char *name, st
 
 out:
 	if (ret && mon_wdev) {
-		kfree((u8 *)mon_wdev);
+		kfree(mon_wdev);
 		mon_wdev = NULL;
 	}
 
@@ -3502,7 +3502,7 @@ void rtw_wdev_free(struct wireless_dev *wdev)
 
 	wiphy_free(wdev->wiphy);
 
-	kfree((u8 *)wdev);
+	kfree(wdev);
 }
 
 void rtw_wdev_unregister(struct wireless_dev *wdev)
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index ec3a754..5044f73 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1142,7 +1142,7 @@ void rtw_ndev_destructor(struct net_device *ndev)
 	DBG_871X(FUNC_NDEV_FMT "\n", FUNC_NDEV_ARG(ndev));
 
 	if (ndev->ieee80211_ptr)
-		kfree((u8 *)ndev->ieee80211_ptr);
+		kfree(ndev->ieee80211_ptr);
 }
 
 void rtw_dev_unload(struct adapter *padapter)
-- 
2.7.4


