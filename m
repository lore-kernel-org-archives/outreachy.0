X-GM-THRID: 6674267883353145344
X-Received: by 2002:a25:9187:: with SMTP id w7mr2885055ybl.95.1553974108121;
        Sat, 30 Mar 2019 12:28:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1384:: with SMTP id 126ls1720929ybt.1.gmail; Sat, 30 Mar
 2019 12:28:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvJ6C5eTTbaeq/2k8xTYWFyBDKaCXU3fWOKa0XmCrBEj0PfytJNppl3aV1f/lbXJQ+WASx
X-Received: by 2002:a5b:4c9:: with SMTP id u9mr4847607ybp.93.1553974107394;
        Sat, 30 Mar 2019 12:28:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974107; cv=none;
        d=google.com; s=arc-20160816;
        b=EGDBcJuva+l1BMi+T6N4Fo0juNmT9xzBawdnMKVv8lZtjayx4pm1RpK/G9ZxL/Ppow
         9Q9NFd30Fay0mqcXVWSegauF7CUtzlTtilTyUKzDn9FzWFD55NNjFxTTit+UZvtGZVKK
         UyZdK/9FKP6C0Lo/tVTiYqa+aLO1HGLcs4qoYVqR6HopsZnHsVAU5LBNDWlwJY4Sf8Pm
         rTnVxbYLz3NUJpPajrsHMTys5fI17y42FGToJ4bwYo1ZWFxhmDd2r71ovIhGAtcRrp86
         CulPfDNFdrQHI6Dv4+JaoyyG79eW2yq/1xnbXGPaxBURNOTFfN9+535EPXXKu61I44Fl
         kn6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Dv/ZtUV5wJrhr/2QIcOa27eDpHqhnEOAVvSlpjzN1SI=;
        b=hZsTutNlxmJ+SfBG52SnbTqHLzMo6y8Iv+rUm7flzQv2a1wr9YwoP+YVc7yr5oXv67
         KJAG/vYuMkp/Rcc4c5r4YRIePSxWbiQU9Ti5JGKyRAXb6x4w1MsrysUpIocc+TjHLU+I
         plJxw5FE7b0/v7q701uGJKOd2FVsSeXhr77QdxGNCXF2hGUdaFtpu3ZXpXusuIOTomYJ
         Jb4IsqIPd4B/Zi9rG37F5yblH2t+bIS2C/iG704+2+2lUwfJtuHGbK9Y2VU2F3saufHT
         ogAFAlWG6nCPRSUD1Q4labuwCpVKlum7Z1BUpx10/e99Ic17sbEvivx77LqMlmgXrlCN
         zSPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B/vOaUvX";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id s11si320494ywg.3.2019.03.30.12.28.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B/vOaUvX";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id g12so2541516pll.11
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 12:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Dv/ZtUV5wJrhr/2QIcOa27eDpHqhnEOAVvSlpjzN1SI=;
        b=B/vOaUvXtP3pLXAsZlZqYNxREXmVy8bHLQ/zRyP+j56JKGbQwB1dPfbhfVPRJbIBaD
         GlUjolk6r/gaeyh5vY1wYZ3Aos2Wqua8Sw5suUQDCxWvWeYXOKdLVjP9vEM/A4xZVsSS
         AzJ7+IWo7tUXEhqTQyg4eZqgVioSGigXggB2h7qVSejjCamFhGXrvTMAJA/W6XQJvJBN
         FwcxDRfKjbRbPVVd7zEuT1zXPP+8h27U5Si21ZDp1Y5rha7IvyrmgKdGI5RIGvXxTyOI
         9PkShLcFsO2u59sPElH4mIs8C+K+d/O5tcHyAuyoMFo+6XHKNfavc1Rcy8we/gAZYsKi
         lRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Dv/ZtUV5wJrhr/2QIcOa27eDpHqhnEOAVvSlpjzN1SI=;
        b=EP5lbBIADLXzvYynSTmsF0pvM8qOM9jahS+tY8rJN+vSe7hwJLO4kSt+NpK7dB//7U
         aW7abay7QaIrxqp89MIV/gP4lYwNAPk+3gKyKMoZ06pnzZw0ZORoZmniv0UBlQendmN7
         I6bX4Z11gU3IwbNd/zr7f+LIzCoGXM/VhL1ApYbf1Tdba4xkYbvfJbYVigZA/KAKW+KR
         x3jmvdCsMpGD7zviTbRuY7f68/bRs6afPJRlIvwGXSNejtlUVu4zuXOOyF03sDwOzHf9
         Eo3iW3AEYA6Q5QK1YPpKm+ziwcFAEK9pCUEmtqRZUpmpnGhpKKsBwb+gNKSQNDOqDnax
         zdkQ==
X-Gm-Message-State: APjAAAUuDZAnZVas/qNHyKO4Xam0vGOopMjyO39v2mtVP2rAeOjI+cT6
	H19wOKziiGp6xBesDanb71s=
X-Received: by 2002:a17:902:b597:: with SMTP id a23mr3428951pls.284.1553974107011;
        Sat, 30 Mar 2019 12:28:27 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id m2sm7984189pgr.74.2019.03.30.12.28.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:28:26 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 7/7] staging: rtl8712: use list_entry in function r8712_select_and_join_from_scan
Date: Sun, 31 Mar 2019 00:57:42 +0530
Message-Id: <20190330192742.65250-8-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330192742.65250-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to
wlan_network in function r8712_select_and_join_from_scan().

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index be44c6b2819b..504c96993adb 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1117,8 +1117,8 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 			}
 			return _FAIL;
 		}
-		pnetwork = container_of(pmlmepriv->pscanned,
-					struct wlan_network, list);
+		pnetwork = list_entry(pmlmepriv->pscanned,
+				      struct wlan_network, list);
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
 		if (pmlmepriv->assoc_by_bssid) {
 			dst_ssid = pnetwork->network.MacAddress;
-- 
2.17.1


