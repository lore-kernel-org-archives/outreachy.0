X-GM-THRID: 6395900241087823872
X-Received: by 10.46.71.19 with SMTP id u19mr2793260lja.7.1489862109145;
        Sat, 18 Mar 2017 11:35:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.151.139 with SMTP id z133ls343955lfd.6.gmail; Sat, 18 Mar
 2017 11:35:08 -0700 (PDT)
X-Received: by 10.25.26.80 with SMTP id a77mr2533803lfa.18.1489862108482;
        Sat, 18 Mar 2017 11:35:08 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id i76si457286wmh.1.2017.03.18.11.35.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 11:35:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so8122225wma.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 11:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=onnhx6QMbtyyilrNA6Un6GZfpQqijzBy9uPNZRFHMpU=;
        b=K3N9GfFrY66X7szH+wzkOH+77If2tQ6RjJUTWhGdSD/OItjasyKeFm1rIBeQcpQmgN
         QstxmqOB2iHXgCLc+0FSnMko+H66B6/TaHqTg666MViovvNjSTG8Rv+24MoZ19MkdgiO
         uL+c0wO2MoFLKPGcbi1jyvanQjVBgE/FVxA6MdzWnkPM3rqecgOHPhMgrUFQOGgrNXIn
         sCqiANoAwkmNBpdFLg8zhF98NHVqAisiACXyhFzcGV0QZ6aos4fBR2D7Ym9bKWpnqZvR
         IT91fm1IMZhFIr0e7x7PQb5/BCZGAupwFxSsk9IyKeud5apGFBXOaEK/7F8W9RFKHSPS
         91DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=onnhx6QMbtyyilrNA6Un6GZfpQqijzBy9uPNZRFHMpU=;
        b=bsLi3ofuqO196AuchCtn2a+ZKq5Qti/gLymicxMi1inqRl8n1UkjVlqjKvRn3uwXKK
         S8LBfSGYakKh87pC8BN56xvntPhehwoJv+ofi7l6mLh4wIS+XU3Q8wxYcYPfBUOq/bIb
         rCa3fopN14byr/JdYc25x8QbtFiPC4Pizra7BUV/lVKJw5XJD2yAULvttFEFMqTQe+8q
         jx3f4+FppLfXK8Kpg9QvgzUzg3MFKhpTnyAWGJNpNy8GScOgy84bvcb7PFEhcIYS0b25
         kTLfOcTakB8D+h0uKxJwWXpoCh/ezTAU5ySngC97UaBXv8mcMnQHvNbfhBsltWNE+4NU
         LjVA==
X-Gm-Message-State: AFeK/H0oeyhMoxY9TxJDLuDX4zLVpHEpcntYHVSWYojpZ4nv3QY0rrtq+ZGtV0taSYmAwA==
X-Received: by 10.28.194.7 with SMTP id s7mr3400245wmf.34.1489862108241;
        Sat, 18 Mar 2017 11:35:08 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 11sm14231807wrb.10.2017.03.18.11.35.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 11:35:07 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 2/4] staging: rtl8712: Invert if statement reduce indentation level
Date: Sat, 18 Mar 2017 20:35:01 +0200
Message-Id: <21597b5e31bc6776879ce47e05c50b28e6011a72.1489861352.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489861352.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <cover.1489861352.git.narcisaanamaria12@gmail.com>

Invert if statement to be able to return immediately in case of error,
and to avoid additional else branch, and then continue with the rest
of the function without excessive indentation.

This was found using the following Coccinelle script:

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
    identifier
    l;
    @@

    *if
(e)
    S
    else
{ rc = -E; goto l; }

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 60c97f7..38c1703 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -695,14 +695,14 @@ static int r8711_wx_get_freq(struct net_device *dev,
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


