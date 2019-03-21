X-GM-THRID: 6670940020392591360
X-Received: by 2002:a25:400d:: with SMTP id n13mr4813968yba.418.1553199277720;
        Thu, 21 Mar 2019 13:14:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1582:: with SMTP id 124ls2200952ybv.5.gmail; Thu, 21 Mar
 2019 13:14:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzTw8d+tTrI6IMQtG/YRDRq1dMvK0loUhQKdpJh7CnLwMAZ0b7uA838oMRDf2NpYCVy4S9N
X-Received: by 2002:a25:16d7:: with SMTP id 206mr4823847ybw.335.1553199276711;
        Thu, 21 Mar 2019 13:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553199276; cv=none;
        d=google.com; s=arc-20160816;
        b=bVZr/yTpFF2IDhLN5GJETq7giluXjnpAtVzmZH05TBnQsoqEq9bW2ur2nW9AseGcJs
         bWGVf0wPWK0NSyp0j5sVjeVOGOtRjZndHpaYHRSovQ80B/7hxb4fyD3d7L+cCB2WKBkC
         GM5EZBgwlKbkA+NGcc9Nl1mVyYrk2As+70AB9K8TA2eq+MQGvH+COmn3E50h+lwDTSb3
         s16sz9f6OXfVv1cZDhipFLnWFdkl2c1Z9MEdRwwHGL0L2Aky/JMC73mShsLWM1798kpU
         CyspjVbQeQAFRVKGTymoTu7jP5/B2kiXwAytK3HRDB2ZAFEoNOKipZtdZNtZMpPwKeXY
         uoQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+kZ5ZBtHNb/N5v4E/cgbZpT2Q0uPFnEvbg+UElShxLI=;
        b=xfZ6zB5G+vBlpSXdh7vov/VkhjuNZDCtQ7ZoC/alBU9PUJto4robXE296+mCbYBc30
         BbKL2Y/ouheEJ3Pv0cVW54/j9hKFVKI+4Q89JwFzYUIVOilYoI71A+gqc7vrfqOL4V1U
         iALOR8DhOQyMJ7E5ls2Wop7lg5KpVh4dlktbEDDSMq1dg+HeXPqyJomDQ9SEsXlwlo7v
         SymdHY9wD7mIRkM6fMWTYuH7mudf6je4uGlHI+XooZJp9eLGA7G6gTMoc48smaAd0oWZ
         8iJmErGK/JsGYE2TAdMEyjuoOyyqjFbVVNXCcK10LMZdKw2pm9fveWqdMMRT8UIA2Lry
         c8og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RwZODq3E;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic311-21.consmr.mail.sg3.yahoo.com (sonic311-21.consmr.mail.sg3.yahoo.com. [106.10.244.38])
        by gmr-mx.google.com with ESMTPS id r128si564749ywd.0.2019.03.21.13.14.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 13:14:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.38 as permitted sender) client-ip=106.10.244.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=RwZODq3E;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553199273; bh=+kZ5ZBtHNb/N5v4E/cgbZpT2Q0uPFnEvbg+UElShxLI=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=RwZODq3Ei+v5hKZ+yBwsdZgfaC6IfyUKXWtpPylBFWpLgzH/ZHX0uzgM9hJz0pdU3XtvM70ZijDsY9ti8zdKxYHA6+VowMKULWMiEx7nc1EsU94EZ5nLkxHnwYLgtLi0wOFbmSq2E2vlBgXMwzW2GHSwj91UDAS5Opb5XWxVuMsOi3I6tgNO6Xo4C+HoxmNMgd0skb1WHg6TZJb8DF+ZBFbKPHb21hF9mG4W2tzoygp49sToI9DBqAJYDh1u+zcj1mkROxZIvub4Zx0vAiJM88apX8EVgLQo3AfbwucoNJtnF1e9F2Wn8KdQ9BIx9EH27okkSqrXh8v20RaymKzTIw==
X-YMail-OSG: THNJK0kVM1m2nLL8DTSxixKjE6KZ1PnG9frJ.0wH2hT8FyRfZYvTiV.oBhNblwY
 a5tGXKKIr5apkcd78xwIijkr9MtZ0taBBm7iqqlyVtmszsDgSCBJ0Jbuz2C6EyVos3NWZwcn9c_P
 ENHz4O91iYVvmq58UzvM6BzN1VMbv70OQTLFUl4cje6Lvg35R8856AIgF3Z0hWeK.VBqx00ZHLnN
 1Z_c9IT2FAkaoKp0SOAHODC40pVHgWKviQyOuq22UKOD6xGHh1Ldi2Juv_DGGI_s_5oTfLVVGDtU
 3XBUD60AjO6GMEYqSblz_bfm.NuFdfUujw99s5UB8QA97F1jOOs_Q9ejwGkTRzFqA4a1Y4IQNrff
 z9PdvoJgQuFfDDS9ZmFEskIdcjdfBa770gDvx1ZduP83rADwkrKqSXKlFnaIk0O.oW_mhILlBGw5
 IyV562lo1..PRuvWWPYxhrWX5ZXiFwF1dWHfwZtJjzm7llW387FzriPTSy05UFHEtxTXS9zpSfCc
 UJB2fXYAJD.N22jXfU3aktnYIMJNcOVkiyPTxYgS5WRBnZxDOUSGZ.jyPTBAZtCboUS5p138QIsL
 K6.ddQaID44NyqGk_gjZOfoGfIcbdlbVULzTdFH.3eSESIbLOFFAb8g4FOI3HUddwQQ5g22ixIBq
 YaUAVsXfpvBDIT5CZIbcTP_qxAuAGGkG6mr0bDdMSMB0S7xcBlwnaSAVT.NcMfbyl.Hs.ceil2Oh
 IBTxMf2DaJKo8zhFVIa8Z4Ik5Tyqx9akEF_F3KBJUlBjPxCb1Z6fsS0iTjNJXoAePA3SGZ3.mBND
 zYpE70sXShl9EAamWaPxRzQYI41yL4FONg0h7vZPW2PTRb3twed43cXCvvcrnl9gAYHGze7.iMNT
 luY3sOpruptNtNukZUgBDuie9RZzxcuLCRdHjsNTlwh3EhX4Ypncb55HZMWbPi8y3d_pAc99YbPA
 FcifllFE1AWiev2ffMElqVmUrxixc7MCfLeGNxW5rFBEzKHaknPpomFe8mlLYJbfvihGm9iemcdD
 GkBkrptAMvRz0atultoKGBl7GJd9KHzu6I0Sd4KEWVjKJiB95H1inRpsfZMWuNzHQRXAxAyHR0Qs
 0PyjeBdSFiw8qKS5_4LwGkpjcazKAFOnfc5ebjP4-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 20:14:33 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp408.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID f52b3467335251bdb2b643b08dda1312;
          Thu, 21 Mar 2019 20:14:31 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 3/4] staging: rtl8723bs: core: Remove return variables in rtw_mlme.c
Date: Fri, 22 Mar 2019 01:43:58 +0530
Message-Id: <20190321201359.5948-6-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
References: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary local return variables in rtw_mlme.c. Issue found
with Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 79adc6f1e53a..68c2b2f198d8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -353,10 +353,7 @@ u8 *rtw_get_beacon_interval_from_ie(u8 *ie)
 
 int	rtw_init_mlme_priv(struct adapter *padapter)/* struct	mlme_priv *pmlmepriv) */
 {
-	int	res;
-
-	res = _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
-	return res;
+	return _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
 }
 
 void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
@@ -378,10 +375,7 @@ static struct	wlan_network *rtw_dequeue_network(struct __queue *queue)
 struct	wlan_network *rtw_alloc_network(struct	mlme_priv *pmlmepriv);
 struct	wlan_network *rtw_alloc_network(struct	mlme_priv *pmlmepriv)/* _queue	*free_queue) */
 {
-	struct	wlan_network	*pnetwork;
-
-	pnetwork = _rtw_alloc_network(pmlmepriv);
-	return pnetwork;
+	return _rtw_alloc_network(pmlmepriv);
 }
 
 void rtw_free_network_nolock(struct adapter *padapter, struct wlan_network *pnetwork);
-- 
2.19.1


