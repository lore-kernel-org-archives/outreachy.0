X-GM-THRID: 6671224625234444288
X-Received: by 2002:a9d:77da:: with SMTP id w26mr6915830otl.17.1553265528194;
        Fri, 22 Mar 2019 07:38:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4541:: with SMTP id s62ls1085248oia.7.gmail; Fri, 22 Mar
 2019 07:38:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqystPBXVDBpwvHNORJqcnsnul2R3ymAAtIdA2AOV9bGsPrE3bGjhMncZ+1LPOvd+NN6WcTa
X-Received: by 2002:aca:a94c:: with SMTP id s73mr2126045oie.156.1553265527328;
        Fri, 22 Mar 2019 07:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553265527; cv=none;
        d=google.com; s=arc-20160816;
        b=iUZe6iHMaNai911T8MY3q0nX8HeFbaoXph8Y4UVBOqk79wqDssD849qUcVIsDtBP9Q
         oKfpJwRhKNlPKao+YqaeRCelwusByI7rcj/XcAqr2BF5b/o4RZsGsruRAo0eE6PRSSiq
         EOYv1qe6ePKbnMse7nDrBA4tWXWvk5wIau+YM0t4nmh8J4mRHBGnSSW+ogT+Xnm5NkuZ
         O2g7hIAvekCix3pOdnxqj81wbfLZ6OQvJtq+ZJWK++goMAuqhyNNgNp7eYtMXMyvM1bi
         sFykTgyzLeumpzcbTVAJfeaW4hGSuyI+9vIFhxvTevMwUOQPwfBMfeIzcw6JmQ6P8rGi
         psIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T9PDXGqzHbyo65LHjDUmN9mVAYyucbuwsVtsQizCNZw=;
        b=ipQkTMND8vmt3KcODDK4QqDoVJ2dDZfIjXcq0VpKAvSrgGdqFKe0wRQeLCEj55JNrO
         s6GP15SklStorcEBZnuiDbLdrkuC1cnIAkHz5sn7BZeOia94C9U3V70ELezLkfz3XTCx
         fIyKrybKx+ZeWyDgnMyZ9CSS8W7M9fpDKNphjbFrUZ4+ofi6tagbHq/MZrQwAqqT3fv4
         y+y4v/uh+2ECgbXkUznMViVWRR0U4gikuTXSAOweDk0gW8Dp1dqaGBXVftOFttkC7z8/
         udwyULTSy1m7+gQdxro6bU22DsPW7HGxKHj+qN6fam0tK/k7VzbdpRnR+WCCO5qbx9hB
         QWBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="Md/8A6zR";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.209 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic312-19.consmr.mail.sg3.yahoo.com (sonic312-19.consmr.mail.sg3.yahoo.com. [106.10.244.209])
        by gmr-mx.google.com with ESMTPS id p8si465190oig.5.2019.03.22.07.38.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.209 as permitted sender) client-ip=106.10.244.209;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="Md/8A6zR";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.209 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553265524; bh=T9PDXGqzHbyo65LHjDUmN9mVAYyucbuwsVtsQizCNZw=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=Md/8A6zR9tVGLXLOAla/Ia55ae2/GSL3fe+PjwLDRVhRuJeF3xzvGb2jDpFvvdWnTudh+SWVPTfHuYlduri56jTX/VjSvfG7kxp4dmmPE4Jk2HlS9cqGTmHySl58ickmKLHAEbTSiKFvGOI/gl5m/vxbfLHOSY6Sb3Jei5dOPQEN6xuKeNyUmiCGHj4qpsXdxNMXPpHXF1ne+r6EOVrechpSud2Sx6C/CyqSqkjHtaiuC4SmYb2xM73oS4MQLfRUJd+kBSCtGxCFmHIfAei9/gyImH6xgxfCWynajp5aQMec+gGV4Ymb6lBhdhAIbKr/Vaxemrqs+/OlIR4AQPhnPw==
X-YMail-OSG: 16i1oHgVM1k1jno9Iv.jmBeO4kk8bZg4mfcQAYlml0F.MhWpyY2vkpxvTzTc6Wr
 jErD535E_yjfKh_qkxBjP7Ecn_noau540owfdRI9hZGzV4yu_.CsOQIuzw3zwmgHWm96q4o1Pr20
 YifZav6.UHn_0O9u9KZdHjc7djLKd748NE2Lp_IQkr6RdvLKQSC2jaYNLbJx_NiAOUpVLHX4aCub
 V1jchiX2UWZuxgcLTD0MTrlA6yH0MQ6yFjx0hW2o5B_YStokxOLSiOtN_5FgW2ifyKgmBxZNjMJN
 rmuvOBahdxzADa810PZJ1ETjfPWrBE08yXPUPz9MVN.wlyvZ_pb9ek6QAUwgimpkY2xN5clTAuSp
 b62e5BwVFwzabocSCkE30CIVL9FgGsmtsRXGzujbCAxy6E9IZMF_F3A51dhp2NkFOyZpX4EMFVXh
 ja5TxFwjGqUSeFLc6gFmMWkaW5h0FhCIrcT24k0HABY0LXbTip2EuMWXLamh5aODSadfFu.GSWHi
 To2ljDuZighcafYqtCUvEjkZxvsqXu95Z0fXHrdNmBIYg8eso1Fca34QJAUIz7TRO0DNJYk0LJzG
 gBQ.YcCPjA7C6uASCL2xr2Z6235pwjpRekuUjaaK0wBE7PkzX9hn7QZZGP6Y4A4t.wy0POEY6iTG
 x9J2Wt.HgqFiETcKWw36jJmGRTQ_SxjmVI_ZjnSc7a2ER6AiZviVxJUknHQlLATuy0D.mKtM2EnB
 hC6OXdXnbO9zTXN7p5.DKbIiandcAzpgOZ6MYmU6QdmKJdlW6CYKvRcfJ_FQhBoRn0w6_IJUgnQI
 NDfAe.AAXdVo5DsMJ5yTex7nmgBoefvumV2kmWDAbt.oK9gvd3nQZVUQ52qSxkm2KFTiyS2hWdll
 hR_EpnsYRhY5ItD0DZHsBfl.l6Dwr4oLSRwfOSb6rn8XHR1UzfipYlsbB3UkLOUgnr7mZ5YvoIA4
 tPWsjTOJOKGTEoZewGMt08EYGzsINmvG5uXnLVPqx8RbiQRs8uHyGDwCeiynOJR7xHaugBlGr.vq
 3Q4e6s6ljfdlTVxfTqWVztd0VY6fhv0to5dvSxHT_j5nwq1s9KF7DYm8CsETUQAvNG.dQzWLeXRy
 amBisfoSOustrumTv4jAV6fE6IYyNHVd7B_hePQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.sg3.yahoo.com with HTTP; Fri, 22 Mar 2019 14:38:44 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp412.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID d1d8be53419bbc2dc6b4659a7081bd03;
          Fri, 22 Mar 2019 14:38:43 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 4/5] staging: rtl8723bs: Remove function rtw_alloc_network()
Date: Fri, 22 Mar 2019 20:08:26 +0530
Message-Id: <20190322143827.24480-5-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
References: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove function rtw_alloc_network() as all it does is call
_rtw_alloc_network().
Rename _rtw_alloc_network() to rtw_alloc_network().
Change references to _rtw_alloc_network() to refer to
rtw_alloc_network().
Issue first noticed while using Coccinelle and ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v2:
- Delete rtw_alloc_network() entirely, now that it was only a return
  statement.
- Make changes listed above. 

 drivers/staging/rtl8723bs/core/rtw_cmd.c     |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c    | 14 +++-----------
 drivers/staging/rtl8723bs/include/rtw_mlme.h |  2 +-
 3 files changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 04c6927dab8b..ecaa769f12e6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -2100,7 +2100,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 
 		rtw_indicate_connect(padapter);
 	} else {
-		pwlan = _rtw_alloc_network(pmlmepriv);
+		pwlan = rtw_alloc_network(pmlmepriv);
 		spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
 		if (pwlan == NULL) {
 			pwlan = rtw_get_oldest_wlan_network(&pmlmepriv->scanned_queue);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 8b3a095f0c4c..552df9e3cd14 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -143,7 +143,7 @@ struct	wlan_network *_rtw_dequeue_network(struct __queue *queue)
 }
 */
 
-struct	wlan_network *_rtw_alloc_network(struct	mlme_priv *pmlmepriv)/* _queue *free_queue) */
+struct	wlan_network *rtw_alloc_network(struct	mlme_priv *pmlmepriv)
 {
 	struct	wlan_network	*pnetwork;
 	struct __queue *free_queue = &pmlmepriv->free_bss_pool;
@@ -161,7 +161,8 @@ struct	wlan_network *_rtw_alloc_network(struct	mlme_priv *pmlmepriv)/* _queue *f
 
 	list_del_init(&pnetwork->list);
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("_rtw_alloc_network: ptr =%p\n", plist));
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
+		 ("rtw_alloc_network: ptr =%p\n", plist));
 	pnetwork->network_type = 0;
 	pnetwork->fixed = false;
 	pnetwork->last_scanned = jiffies;
@@ -366,15 +367,6 @@ static struct	wlan_network *rtw_dequeue_network(struct __queue *queue)
 }
 */
 
-struct	wlan_network *rtw_alloc_network(struct	mlme_priv *pmlmepriv);
-struct	wlan_network *rtw_alloc_network(struct	mlme_priv *pmlmepriv)/* _queue	*free_queue) */
-{
-	struct	wlan_network	*pnetwork;
-
-	pnetwork = _rtw_alloc_network(pmlmepriv);
-	return pnetwork;
-}
-
 void rtw_free_network_nolock(struct adapter *padapter, struct wlan_network *pnetwork);
 void rtw_free_network_nolock(struct adapter *padapter, struct wlan_network *pnetwork)
 {
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index 82f378c6789e..2693b554f414 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -598,7 +598,7 @@ extern void _rtw_free_mlme_priv(struct mlme_priv *pmlmepriv);
 
 /* extern struct wlan_network* _rtw_dequeue_network(struct __queue *queue); */
 
-extern struct wlan_network* _rtw_alloc_network(struct mlme_priv *pmlmepriv);
+extern struct wlan_network *rtw_alloc_network(struct mlme_priv *pmlmepriv);
 
 
 extern void _rtw_free_network(struct mlme_priv *pmlmepriv, struct wlan_network *pnetwork, u8 isfreeall);
-- 
2.19.1


