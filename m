X-GM-THRID: 6947643199215108096
X-Received: by 2002:a2e:a60a:: with SMTP id v10mr16612934ljp.267.1617624237198;
        Mon, 05 Apr 2021 05:03:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls510991lff.3.gmail; Mon, 05
 Apr 2021 05:03:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyydHRVTswMNnYJGbG/gazMX24HsDXSTC7ITo9Zn28+IwqTtu9jDBdFu3FI9QUTjWbkkU5g
X-Received: by 2002:a05:6512:1044:: with SMTP id c4mr17153520lfb.198.1617624235531;
        Mon, 05 Apr 2021 05:03:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617624235; cv=none;
        d=google.com; s=arc-20160816;
        b=dXU27YJfgkOTaPXqxshL1yWvIFrGalYC2pwwsuFuYiKV8jjMKSWWJ109VbIGkb06/Y
         zeXQuZ1PaiMacxJswHDqzagx1VWCls699ZDIqbG9GNrkqzPh/Fe5cO5a7Po+mi/Zq4ss
         WV/hf+lLQHoFk0nRlv9q6VOw++W0Jt126bw+iNtiZVPd/E9nPDbhEBmOIQqDJfqsHzhu
         8t3mOLEGPvXmCitmE2ky7qxX2AaAx9wiGksuIPJ6lE3oysg37PRloDJuYgJ23EGsysSm
         3QcJQElnJa2e6/KOH35bJqAKAmfRSzroI6QWFJdama61I+90WvfD5tDmd3yXuudB6WZ4
         D5YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=WjMvVRRNzu6Nt7eK9WrnHxo2G+oNVYCwPaYDqRj405E=;
        b=CK8bMEThxzArPDYeZI5UI5Rf/nd+RqyP/rf0ak1+FsQYHpWUD3DIi3e+qyoNvA6dBi
         +ewk7HGkVzQ72ulmNEYhWU/SrKYljiK02BG4OwARzcRVe40tyVTVdltLcdEU6b4/uYKG
         L09vIVx4Be7UWCrvELS1k0Tg2ntlsrUUlcXmxjBFJu5h54m/e7epoLKkrM4E3qZj6fQE
         7bs/AV/xzJaYzpH+4rtMz68PlkYfQ3s7+UOnCuapQo/BUNL70L+HtfVhIo51G+irDudd
         C/ZcDTQEInr0eYiH5wJjFG85t2DsxJsDG/Q8TBW2iUhTYTk85zl76bCtBKRK4bpE9Bk5
         DOeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UAZQla8h;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id v203si1415654lfa.10.2021.04.05.05.03.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 05:03:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UAZQla8h;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x634.google.com with SMTP id u21so16462905ejo.13
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 05:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WjMvVRRNzu6Nt7eK9WrnHxo2G+oNVYCwPaYDqRj405E=;
        b=UAZQla8hERWgH/VYJ2nuLnFUUl83CKQcIFlp9UBodSkuuMbLSr5Eh3wQ+xfJyWCTXD
         0cUcYkka+j8xvz2ApqLQdOL4xEQiTQbod3h0a5ZY0xn1CXnaZn2l1CTHJ4yhttHsdFvM
         rLHoyy+d1sfw+EDLw2pAI0LKWUT8sYfBIRyvQGcJX8SduPRAhyTEojvi7RE/2ZFIU1rh
         ZWhfOXZZ9xiOXAI/FG7VT35LEfL6YVHbXqs6XJ11KLdIO79UySJ4STTm+4HJ1ZuZFJZb
         w7nPKMpcatL9b0Bt9tgkqqF2JFf773ZJoFg+T0KnqCSyYFilNHJKDt1I7I8C1eWwI5YJ
         wzKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WjMvVRRNzu6Nt7eK9WrnHxo2G+oNVYCwPaYDqRj405E=;
        b=iX6KorcqQwLWgAsxgyW+lK7Zs8XNsCFuzynJ1wsUCPOBnM0ARFzUTa2g3YSVG+7CXc
         YzLuOoJcDBOGaR5ri/CcIfBzR8wHgBYQhqwjL34nCVFzhzqH2ZyRlSrzHBasGhGc3N9k
         EyOTUy5rGkbVm5yuLWKgAGLHp6RAHRtN7z5zDYu0u/ZQqIkZrP07Rer22GeKTeUoKRKI
         JvAkcLe+c7BebUq6DW+h9N+c8FMfjw8hf20zcfmGsMfeSN5cDNh5kyaOfU8zErC2V1h0
         gktNZx0f6A8djouWpqdkvPXHJSYPyBegArDeWgra8G55HO6pipExFNSg0Ty1mGyTdTC6
         n77w==
X-Gm-Message-State: AOAM532oOfqWbVJibAZmRsB4q1tr5pBZWM6W1pi3Jg4e8xuNhR2C3QXT
	q5+XOcb0AmfsFRvyMbWO3Ko=
X-Received: by 2002:a17:907:20e9:: with SMTP id rh9mr4876481ejb.523.1617624235321;
        Mon, 05 Apr 2021 05:03:55 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id v8sm10910774edx.38.2021.04.05.05.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 05:03:54 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: wlan-ng: correct formatting in cfg80211.c
Date: Mon,  5 Apr 2021 14:03:49 +0200
Message-Id: <20210405120349.12338-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to checkpatch message "CHECK: Lines should not end with a
'('", fix formatting in cfg80211.c

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 759e475e303c..eda5b5a4e089 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -324,8 +324,7 @@ static int prism2_scan(struct wiphy *wiphy,
 		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
 		i++)
 		msg1.channellist.data.data[i] =
-			ieee80211_frequency_to_channel(
-				request->channels[i]->center_freq);
+			ieee80211_frequency_to_channel(request->channels[i]->center_freq);
 	msg1.channellist.data.len = request->n_channels;
 
 	msg1.maxchanneltime.data = 250;
@@ -478,8 +477,7 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 				goto exit;
 
 			/* send key to driver */
-			did = didmib_dot11smt_wepdefaultkeystable_key(
-					sme->key_idx + 1);
+			did = didmib_dot11smt_wepdefaultkeystable_key(sme->key_idx + 1);
 			result = prism2_domibset_pstr32(wlandev,
 							did, sme->key_len,
 							(u8 *)sme->key);
-- 
2.30.2


