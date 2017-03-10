X-GM-THRID: 6395900241087823872
X-Received: by 10.25.40.17 with SMTP id o17mr2702564lfo.25.1489161595122;
        Fri, 10 Mar 2017 07:59:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.20.25 with SMTP id u25ls684121ljd.35.gmail; Fri, 10 Mar
 2017 07:59:54 -0800 (PST)
X-Received: by 10.25.26.80 with SMTP id a77mr2673770lfa.18.1489161594530;
        Fri, 10 Mar 2017 07:59:54 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id f7si249194wmg.3.2017.03.10.07.59.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 07:59:54 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id l37so12076616wrc.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 07:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=04pBbLJ5XrREC4VjyvZmHGONZRfvRc/NfgoLGS11lIk=;
        b=Vmr/04eKobkZ/41aAaw8ZxVh73+BLUpudj64/aaLnQNluewWRk2iO+eFTIzxBhX6p/
         RtAHU46drvG/rP1RmU4uoQfO964l8Z+5nO0f6fuaNw9Do/SytUsIOYkXSJEL3v/9MAHe
         W5TgTSLmAk7NeH5zUrFgI8xw0o3CxtxNPDqMTrzBxMT8BjLGyWAmZeMS1/WvmBdsqI3n
         9uYAMQssWdgVxRK5jf/OpBUV1LES53GX3hzJRM5XEeEJuC1NRXIqK0i/2R/nzhWz357L
         JI4skdaRPf83ghQxU/NMwR8rI3l/0UlQi9ko5zMmuz7+1AA7sqbfhf/2LmKWZJft2zw3
         88lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=04pBbLJ5XrREC4VjyvZmHGONZRfvRc/NfgoLGS11lIk=;
        b=OjZPApuAkUaWQx2ZAs+glIDA7lb3Dx7k1ngceo1r4k5/JZHIiChxhnYeU5AO5uqToE
         +k8wJ1vWDq8aqikx54SgjCgCgU1uHgM0LbVyv1LLjJFUGZhrbVKY7hkMwNcEheq5f121
         wSmRYazH9nvmBs4vRkqKXq29yd2PX6fLvFUDQIDLa2J7k26eNZ3uOnJDtpVS8Q0P5IlC
         vmkEDqtgfcxgFaHwho2LoLejSJvnU6u9u7J8pO6eRYm2vWP6bAp9/WW+33CatVDjppHC
         o2TZoz3cmsszCQByl2NJOExXgao/0RyCmRHYqmYnMKteDjEDn0drdOnkiWTaqv+X4KaA
         1kZg==
X-Gm-Message-State: AMke39mZ7fFDGnuvPxlzaXX7aV3jlGS/00IQmCL7Tyg6wR7fGL9G46fXC6HhVBRUtfN7Qg==
X-Received: by 10.223.148.35 with SMTP id 32mr16449122wrq.82.1489161594331;
        Fri, 10 Mar 2017 07:59:54 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id t103sm13462479wrc.43.2017.03.10.07.59.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 07:59:53 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 2/4] staging: rtl8712: Refactor conditional in r8711_wx_get_freq
Date: Fri, 10 Mar 2017 17:59:47 +0200
Message-Id: <be3d4e4736100b797ab54a73cfbc568d0d389535.1489161001.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489161001.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com>

Reduce one level of indentation in r8711_wx_get_freq.
This was done using the following Coccinelle script:

@disable neg_if@
expression e,E;
statement S;
@@

*if (e)
S
else { return -E; }

@disable neg_if@
expression e,E;
statement S;
identifier l;
@@

*if (e)
S
else { rc = -E; goto l; }

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index aff3628..add46ff 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -698,14 +698,14 @@ static int r8711_wx_get_freq(struct net_device *dev,
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;
 
-	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
-		wrqu->freq.m = ieee80211_wlan_frequencies[
-			       pcur_bss->Configuration.DSConfig - 1] * 100000;
-		wrqu->freq.e = 1;
-		wrqu->freq.i = pcur_bss->Configuration.DSConfig;
-	} else {
+	if (!check_fwstate(pmlmepriv, _FW_LINKED))
 		return -ENOLINK;
-	}
+
+	wrqu->freq.m = ieee80211_wlan_frequencies[
+		       pcur_bss->Configuration.DSConfig - 1] * 100000;
+	wrqu->freq.e = 1;
+	wrqu->freq.i = pcur_bss->Configuration.DSConfig;
+
 	return 0;
 }
 
-- 
1.9.1


