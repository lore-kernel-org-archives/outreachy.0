X-GM-THRID: 6387958804710948864
X-Received: by 10.99.97.199 with SMTP id v190mr1751543pgb.137.1487312565471;
        Thu, 16 Feb 2017 22:22:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.230 with SMTP id r35ls3497476otr.25.gmail; Thu, 16 Feb
 2017 22:22:45 -0800 (PST)
X-Received: by 10.157.36.198 with SMTP id z64mr2043108ota.115.1487312565169;
        Thu, 16 Feb 2017 22:22:45 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si557451pfd.3.2017.02.16.22.22.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:22:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id a123so1287807pgc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 22:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Cr9SgvyNLAGRDkvntbdUKtXsXfa9v0Q27rfQPt/zX1Y=;
        b=jZd4ThBf2wvs/aah5FJ4A3AJ+uUsjNcBnHU+vD8bT0YxhwsuEoely/d2Jz/cLNa3Ru
         hWn97uVDlOq+h2p7WauKGZHUq/MfOJ60kOwji0ygdrjvnhN4+lu3tYz3pFD41yN52abh
         dY8WGXNSIRBwtHnmrX4oEX1I2TZVk4I9w92/btDaxb2su0Ro59sf/OkI+HAEf0MYDHmN
         DLTDNuIGYkt+WVqN0vK2m1j0hkV1XbbPXW3m22pSM6dutKcbAgJkH7/l472kchdLJSMY
         2pvP39qBBbruxl1Uw+3Gbp2KzM2hYbmggtmmZzgqBw791hvQoWwynrdbrYyCqz9KB6QR
         u1cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Cr9SgvyNLAGRDkvntbdUKtXsXfa9v0Q27rfQPt/zX1Y=;
        b=gQxeLnd3Pg7R4xMgfJLayOOKANCraKc3HI8azLgweSpkzc/VnQlld5QTX0bOHuArpy
         +JWBPCsxF6gX/9pmaIeBw11kny7mBqwZv4AW5cr/H40LBLxomce73QAyX38nPsN4Wxis
         c2XNYgYeoSxYoC3DKU/j3PDQRgiUKa/Yhh7OJlYNjJGzFu/qO9R/89Dh9YHKKqgDvwrP
         7djE/WQ4+j21cA0QhXEB5utWoO30EZB7qPsOZ/80UKTdcw/mo38Uf8PJIhv+k1dVL9M+
         7193+FIvYUN0i7Z/Z2Q+mH1jduWMUbMmoEGJ65T6m/vFMgmVRaJjD/tsDd+fbS5Qgl9O
         MkUw==
X-Gm-Message-State: AMke39moiUWH2m60Jm4zvsP8jf/kI/ijn9waygNL/aG1HZ7V2DIk7J+DEC12N41Q/QdzgQ==
X-Received: by 10.84.234.1 with SMTP id m1mr8837491plk.92.1487312564788;
        Thu, 16 Feb 2017 22:22:44 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l3sm17141628pgn.10.2017.02.16.22.22.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 22:22:44 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 2/6] staging: rtl8188eu: Fix block comments warning
Date: Fri, 17 Feb 2017 11:50:26 +0530
Message-Id: <14a9e39afeca192713f279577e381c908f98e5ba.1487312015.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>

Align * on each line and move final */ to a new line, to
conform to the kernel coding style for block comments.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 61 ++++++++++++++++---------------
 1 file changed, 31 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index a98a550..0215b65 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -181,10 +181,10 @@ void _rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *
 }
 
 /*
-	return the wlan_network with the matching addr
-
-	Shall be calle under atomic context... to avoid possible racing condition...
-*/
+ * return the wlan_network with the matching addr
+ *
+ * Shall be called under atomic context... to avoid possible racing condition...
+ */
 struct wlan_network *rtw_find_network(struct __queue *scanned_queue, u8 *addr)
 {
 	struct list_head *phead, *plist;
@@ -408,8 +408,8 @@ static void update_current_network(struct adapter *adapter, struct wlan_bssid_ex
 }
 
 /*
-Caller must hold pmlmepriv->lock first.
-*/
+ * Caller must hold pmlmepriv->lock first.
+ */
 void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *target)
 {
 	struct list_head *plist, *phead;
@@ -434,7 +434,8 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 		plist = plist->next;
 	}
 	/* If we didn't find a match, then get a new network slot to initialize
-	 * with this beacon's information */
+	 * with this beacon's information
+	 */
 	if (phead == plist) {
 		if (list_empty(&(pmlmepriv->free_bss_pool.queue))) {
 			/* If there are no more slots, expire the oldest */
@@ -726,8 +727,8 @@ static void free_scanqueue(struct	mlme_priv *pmlmepriv)
 }
 
 /*
-*rtw_free_assoc_resources: the caller has to lock pmlmepriv->lock
-*/
+ * rtw_free_assoc_resources: the caller has to lock pmlmepriv->lock
+ */
 void rtw_free_assoc_resources(struct adapter *adapter)
 {
 	struct	mlme_priv *pmlmepriv = &adapter->mlmepriv;
@@ -738,8 +739,8 @@ void rtw_free_assoc_resources(struct adapter *adapter)
 }
 
 /*
-*rtw_free_assoc_resources_locked: the caller has to lock pmlmepriv->lock
-*/
+ * rtw_free_assoc_resources_locked: the caller has to lock pmlmepriv->lock
+ */
 void rtw_free_assoc_resources_locked(struct adapter *adapter)
 {
 	struct wlan_network *pwlan = NULL;
@@ -789,8 +790,8 @@ void rtw_free_assoc_resources_locked(struct adapter *adapter)
 }
 
 /*
-*rtw_indicate_connect: the caller has to lock pmlmepriv->lock
-*/
+ * rtw_indicate_connect: the caller has to lock pmlmepriv->lock
+ */
 void rtw_indicate_connect(struct adapter *padapter)
 {
 	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
@@ -815,8 +816,8 @@ void rtw_indicate_connect(struct adapter *padapter)
 }
 
 /*
-*rtw_indicate_disconnect: the caller has to lock pmlmepriv->lock
-*/
+ * rtw_indicate_disconnect: the caller has to lock pmlmepriv->lock
+ */
 void rtw_indicate_disconnect(struct adapter *padapter)
 {
 	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -1338,9 +1339,9 @@ void rtw_cpwm_event_callback(struct adapter *padapter, u8 *pbuf)
 }
 
 /*
-* _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
-* @adapter: pointer to struct adapter structure
-*/
+ * _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
+ * @adapter: pointer to struct adapter structure
+ */
 void _rtw_join_timeout_handler (unsigned long data)
 {
 	struct adapter *adapter = (struct adapter *)data;
@@ -1380,9 +1381,9 @@ void _rtw_join_timeout_handler (unsigned long data)
 }
 
 /*
-* rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
-* @adapter: pointer to struct adapter structure
-*/
+ * rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
+ * @adapter: pointer to struct adapter structure
+ */
 void rtw_scan_timeout_handler (unsigned long data)
 {
 	struct adapter *adapter = (struct adapter *)data;
@@ -1437,10 +1438,10 @@ void rtw_dynamic_check_timer_handlder(unsigned long data)
 #define RTW_SCAN_RESULT_EXPIRE 2000
 
 /*
-* Select a new join candidate from the original @param candidate and @param competitor
-* @return true: candidate is updated
-* @return false: candidate is not updated
-*/
+ * Select a new join candidate from the original @param candidate and @param competitor
+ * @return true: candidate is updated
+ * @return false: candidate is not updated
+ */
 static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
 	, struct wlan_network **candidate, struct wlan_network *competitor)
 {
@@ -1491,11 +1492,11 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
 }
 
 /*
-Calling context:
-The caller of the sub-routine will be in critical section...
-The caller must hold the following spinlock
-pmlmepriv->lock
-*/
+ * Calling context:
+ * The caller of the sub-routine will be in critical section...
+ * The caller must hold the following spinlock
+ * pmlmepriv->lock
+ */
 
 int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 {
-- 
2.7.4


