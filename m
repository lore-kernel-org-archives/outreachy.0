X-GM-THRID: 6671224625234444288
X-Received: by 2002:a9d:582:: with SMTP id 2mr7139390otd.50.1553265526793;
        Fri, 22 Mar 2019 07:38:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ac8c:: with SMTP id v134ls1096817oie.6.gmail; Fri, 22
 Mar 2019 07:38:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw1FdY6sItusF+m8rZ/en7TQmePHxg430P/M6G6ZfGyMLdI7J+RhGFHSd7cvqLSENH22kIY
X-Received: by 2002:aca:47d2:: with SMTP id u201mr2099794oia.130.1553265525876;
        Fri, 22 Mar 2019 07:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553265525; cv=none;
        d=google.com; s=arc-20160816;
        b=h0v2mOhDFQQoksQ7nnS2hxoOCAHKHrrfa/sk1wpRsgSAZseiMPwtfQTRU6HdnCSgkM
         4VJo0++z6fGrBOe1Fz+7qqbnQClQO45aA/Rsj+SQe0mcgC/9UFJYz2KBE4vHy2LNEJG/
         /whmINq1PXhONC4bdcDIzUMdG1/29Ns1fbi8kCJDwuRjoTfK3BcMuWn+wnz5ApC4V9Lh
         nOJCK5hZOQrQ2596TKNJx0kN2nSOtB1wSx7pDD5muIPiVX3GrvizNCEAK+yV/7wLeIiO
         jK7X88RMpOeTjMv6b26auCWUMM5UGjQoeq6+ln9ssiNTcO52KQiGRPjvRSKBzaMyMJNQ
         ajLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HU1bitFjdNQqmTMJZ6tHS+6AbpYoqOCq54MEbKEP/T4=;
        b=ePoEWw/XVh5gswaJVSpdk0LxOOvO9AnFmWrz2EPEo4ScTuHaOkV6cVdOzdkdQxX9pA
         Iji7V+Qldd1wott1YKwNc3tD/FAQ2Fmd86Yeo9eyd/dvqJ5TPfdW2BG7/JsB6L2454zR
         qAlg+PH0it7i+6k6oOS2ahLhOQvMW6tJ0MFE88JfrRFET54pYlz6bf/Nr2EwrjO96+Z2
         4HcPprqbUXx4IFYA6o/B3d3qaJuFkpudVCNmPwy1b4eWGgOBRVgOjYVG5PNiXiDNQr6X
         f58fPXs4tEY86ShtJr5hce0pgyB6+CKleoq2DGBs/78rV4dRFbRXsYTtjC8H7E9aCpDr
         /Tng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=QdwWo419;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic303-21.consmr.mail.sg3.yahoo.com (sonic303-21.consmr.mail.sg3.yahoo.com. [106.10.242.38])
        by gmr-mx.google.com with ESMTPS id p8si465181oig.5.2019.03.22.07.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) client-ip=106.10.242.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=QdwWo419;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553265523; bh=HU1bitFjdNQqmTMJZ6tHS+6AbpYoqOCq54MEbKEP/T4=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=QdwWo419X9Ry+ykWUWRoQbVVNZuVIA4Xo8ottrjxN4HpNgQ0p7hAtl7Hco3lx4dJnhZeE1XNYq6KzxtQ95z4BxvFSSxHNvbnrn3ag8ukuH673Kliv1YDjzZxYNuJb6ao4L1Yd5uFkS4O34YabKzU7oQpNR7k6XeT71Go8aV4hpArIrbVpJym/riA6X+Q9odzItVk3VkqmsyBYKTRgQlvgoqnXZ+nGb/atu4SLi3F/Td6K3EaiJ9mdR1gnfEt59qTDFSbiL/OmwAfiUOAYy4/MJLf+u1zNgGg2kZaYeADS9ws/b3WbmRUBAythzrI3wzTcn3TpBoxqsFFi9QkaxWuYg==
X-YMail-OSG: BJk3VEMVM1nI5PI4x84MyDDxMXT88AQVMIMEoFNndehji5br5rcS9d8v4X7b9M5
 55p9TrvPh4PRy77gry6GECLXO7Zy6aFYNZcVco6jkriFclr2jhL4k6Ql7yPHd0N2o4FcPeYBej8s
 h1Z5ug6_GaVglILjPcm5vhJrel9T0xfPalNmUKmRVookp8tY1kj8KVSs5MLXFPPJh_XHII9uU.Tn
 miWuu6RwEds.i4oHz20tTmo3yzqqyFingqGxg93hC2PJMAgwAQMLH0q8Q6OZQNx4kTqwTUB_qQd_
 BZ9fkXUU5JcG8JLEZVoOi3FtWqQRawT..AvlZzcsTCy_7FRuozSWVdd3eYZ5NOUUiLxoVnnOaMPm
 eRaDVk0GshHv1KA2g8pc06bJG45o5TErRSCbYALEAxlRjY.JHA_AQqZVyAtJB2KiNK24XEa35NAl
 etEsCR2mk4jMdTKSdih8sHeVQsL605l7kCH_iOmqtPDqKCXt.6aRyKm29rlGTaCcFBubYfIlvNNt
 T5.zsTjmD2q.14MGO7NsJB2cYvIsYuUK4NuAYht9d7Bg1mgAmpLyIHClXgAjNrQjEMuIjVC0drM3
 RkE7CALrMjEKT0YHIGlKIuAGwADA0J94Tkkf4OA2_06cFNRlO1vzBqGuejqDophtRUcUO1STD3bG
 8Mh_PqeAW6MYvC1tU9GXDRhgmjY3_BZ.5Ye4jK7RtiDfNW9R5p9mA5q.app2_oKEE.9908PdIsef
 ZudGbVjX915NI69ms2FPS4x6roh_HErfMdBBV_MdtTVnIAGVLZ_1Te_KMJsAiKiOqsMHQnszZimr
 ITVVpqGaC4bvv.aVYW6PBoh5Skbdmdh_x2WC7auZ9UrcnGbwCqtuUhQZTj0NzMeWorKoRChW4r6r
 ownoY8XhvQVOy.0yIAHWUJP4iqeFHhAHSI9NpDAJ_XKfHFSL77G3QKhAtQjHFOXbTrgrJzTC6fCB
 xuPmaCl6uZiCaan9Fpcu7X5KyXD9L1CPtpbFd0lhG1UbWh6vu67U3mWKJ.iL9itN1SbTgVAyPmbF
 gvdPpZjqHat8AzcjnM1LA.gpfPWwvhW_QJa_xWQyU9uVOuBhllv5FqsydYGGpz8uqmfxN2.t3iv3
 m0rou9grOJEyLqEUABk9wFkHQ0b4yHiyc
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.sg3.yahoo.com with HTTP; Fri, 22 Mar 2019 14:38:43 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp412.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID d1d8be53419bbc2dc6b4659a7081bd03;
          Fri, 22 Mar 2019 14:38:39 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 1/5] staging; rtl8723bs: Remove unnecessary function rtw_init_mlme_priv()
Date: Fri, 22 Mar 2019 20:08:23 +0530
Message-Id: <20190322143827.24480-2-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
References: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function rtw_init_mlme_priv() as all it does is call
_rtw_init_mlme_priv().
Change the name of _rtw_init_mlme_priv() to rtw_init_mlme_priv() and its
return type to int.
Remove references to _rtw_init_mlme_priv() from the corresponding header
file.
Suggestion to delete return variable from rtw_init_mlme_priv() put forward
by Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v2:
- Remove rtw_init_mlme_priv entirely, now that it has been whittled down
  to a single return statement.
- Make the other changes listed above.

 drivers/staging/rtl8723bs/core/rtw_mlme.c    | 13 ++-----------
 drivers/staging/rtl8723bs/include/rtw_mlme.h |  2 --
 2 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 79adc6f1e53a..8f1defdd47f0 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -13,13 +13,13 @@
 
 extern u8 rtw_do_join(struct adapter *padapter);
 
-sint	_rtw_init_mlme_priv(struct adapter *padapter)
+int	rtw_init_mlme_priv(struct adapter *padapter)
 {
 	sint	i;
 	u8 *pbuf;
 	struct wlan_network	*pnetwork;
 	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
-	sint	res = _SUCCESS;
+	int	res = _SUCCESS;
 
 	pmlmepriv->nic_hdl = (u8 *)padapter;
 
@@ -350,15 +350,6 @@ u8 *rtw_get_beacon_interval_from_ie(u8 *ie)
 	return (ie + 8);
 }
 
-
-int	rtw_init_mlme_priv(struct adapter *padapter)/* struct	mlme_priv *pmlmepriv) */
-{
-	int	res;
-
-	res = _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
-	return res;
-}
-
 void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
 {
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_free_mlme_priv\n"));
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index ed59f16c26c4..82f378c6789e 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -592,8 +592,6 @@ void rtw_clear_scan_deny(struct adapter *adapter);
 void rtw_set_scan_deny_timer_hdl(struct adapter *adapter);
 void rtw_set_scan_deny(struct adapter *adapter, u32 ms);
 
-extern int _rtw_init_mlme_priv(struct adapter *padapter);
-
 void rtw_free_mlme_priv_ie_data(struct mlme_priv *pmlmepriv);
 
 extern void _rtw_free_mlme_priv(struct mlme_priv *pmlmepriv);
-- 
2.19.1


