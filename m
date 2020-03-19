X-GM-THRID: 6805954026607214592
X-Received: by 2002:a1c:5a43:: with SMTP id o64mr3266281wmb.95.1584634664059;
        Thu, 19 Mar 2020 09:17:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls1410347wmf.2.gmail; Thu, 19
 Mar 2020 09:17:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvg9NGQA8F/GPE8Lb8WCYDpRg55AkC59k+BV7tjkfM0GMYULUPyO43llLdcDLBb0JcX5EuL
X-Received: by 2002:a1c:ba42:: with SMTP id k63mr4702793wmf.71.1584634662892;
        Thu, 19 Mar 2020 09:17:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584634662; cv=none;
        d=google.com; s=arc-20160816;
        b=urN1Mfm30u7JFixS3MfXXOE+D+95u9qhfLLki3rcIrc14cyEI9UAN/HwG5vblYwSIG
         3swrBGOiyjisbGZXOfIEsKJdHTFfM7eKqT7RRxVuEEjabjfj0+T7a7hYMFyeHAZ/DIZ3
         D8w5+iBvWR3RTITHr1CS6PkFObFkmBiwDoDADcYuUkflB+U36/4CyjLIhG2lWuf876OU
         bUEG9AjUm3/SRVRKowHPyC5isP5viTifetZgAap3JRUwONUOBvXaf52B54jpMuAW4U31
         7oaI5Ib7hMBtbjJ3uFVqW0Crq2SuJh8XwqIndK0Y4cuAQDnMlfwvmdlx9dXwr3pBn1z/
         oa5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=qR22eVlB+iT77+mj3SW0oNq1NHnDctCN6ODtMNy3s5g=;
        b=DwcbqkRmcjUO0UeN53BkwvwGJvIeDGOV5qxnGOBx8Hj65ZXvNXBZ+INrXJcm5lSwOx
         b3nhmN5VFDijrMUWwYhfUaKEL11OHXP5fThva4zYpL5vTjDy2FTJb1yJiujp8wToo5Hk
         g+ErGWddotWhwyagal9NXfAEwN3cvTRPMha9KeOdYKCuehX6v/eX6pVzBJRNIFo2P4rq
         gFxo3VQjmbH1OwdvCwjBTTtJCaPnNZbsumMLNsxICQRgthxk5HQlCiNkPMYgOFbBRDwD
         n4k3r132wVIzJJEPR6mj5Qza7ODpwKrC8Z+EsvXIVZHBwMog7smck6Ygdgmd2CivstUD
         1o9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id w17si161648wrn.3.2020.03.19.09.17.42
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 09:17:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 30429 invoked from network); 19 Mar 2020 16:17:41 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 16:17:41 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/2] staging: rtl8723bs: os_dep: Correct typo in comments
Date: Thu, 19 Mar 2020 21:47:12 +0530
Message-Id: <1ea4ff5dedf35b51afc53866c303b62a66caff7d.1584633953.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584633953.git.vkor@vkten.in>
References: <cover.1584633953.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typo in two comments.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/os_dep/osdep_service.c | 2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index f5614e56371e..4238209ec175 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -289,7 +289,7 @@ void *rtw_cbuf_pop(struct rtw_cbuf *cbuf)
 }
 
 /**
- * rtw_cbuf_alloc - allocte a rtw_cbuf with given size and do initialization
+ * rtw_cbuf_alloc - allocate a rtw_cbuf with given size and do initialization
  * @size: size of pointer
  *
  * Returns: pointer of srtuct rtw_cbuf, NULL for allocation failure
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 22059bbbed9d..a6491f163272 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -101,7 +101,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 	struct mlme_priv*pmlmepriv = &padapter->mlmepriv;
 	int ret;
 
-	/* Indicat the packets to upper layer */
+	/* Indicate the packets to upper layer */
 	if (pkt) {
 		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
 			_pkt *pskb2 = NULL;
-- 
2.20.1


