X-GM-THRID: 6747044768827572224
X-Received: by 2002:a0c:c392:: with SMTP id o18mr23292585qvi.75.1570918783515;
        Sat, 12 Oct 2019 15:19:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:83c4:: with SMTP id f187ls2946017qkd.11.gmail; Sat, 12
 Oct 2019 15:19:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyrLYO17D7ichmmAnhmdToBJOIo6yBPZU2OLeeeYWdQjjts6HNUgjoAbaM69E6EFoIi8F6o
X-Received: by 2002:a05:620a:743:: with SMTP id i3mr23270974qki.268.1570918782404;
        Sat, 12 Oct 2019 15:19:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570918782; cv=none;
        d=google.com; s=arc-20160816;
        b=l3yQyhfJHoSsRL7d7heJ+n6nF9lpZ9MiyuvEAou+Ho9E+YSwivLvy74QvtZRH8f5x+
         7obg/9AQcWoO18yYeYBFXsttqYsQD4l60TDEhlkfSQA2iui5ja2lef3/3sFP2QUtpwi+
         q0UFtAeVEmQSixm/JeVHsL2UVD/g+qpVxj20kf2AMv5MrM+Q5I/3VEl62X0OACkfjSRJ
         2dAhGXYLxIuN6UbfJAzyclTShDdRp7n/HKfQL4R1uzU9HNrfREXo5UIv8GJOgOMJOy+N
         rYQlP2yPGa2yaLS8p+pK94XYTrwsVjUSA4K0b4LD1x9HQcFG9NYW1GxUU3BdJuPuByix
         jfFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PzS89TZ3VQzwgK8P2bX5KvfvcY4VtRFHY42+gxItdKw=;
        b=mMCYd11LUKjnEk4ELL1/ghkZoAc19o0lPW8EvBFxVAkC9ClTrqnHbF5cZGhw/k41Kp
         atdmjNSKcfRR9HBSJxi/b5E9NSYp+rQKOpzali6FFUZAarwEUDwkRro6OBc+3eQbiMeg
         9LcO7PIymAqxNWtzLSOdmHypn9tkdp8V3pqQpg1BKtFca6buahiKgU32ris9YA0oDtH9
         AHtRMPGMZtev4KIXqZjfE38rSsxKPT38wTwrWqNb1IIqB41QagPT0talFjcPCZWNAzhb
         LDmVGO/kv1oXOEnoOLdYfEOrkz1hTW3R/nwH4VG86qUeXgEVClVbIF24BoQU10iCHRtg
         fH7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IE4IDH7o;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u44si1473002qtb.5.2019.10.12.15.19.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 15:19:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IE4IDH7o;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id y72so8159077pfb.12
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 15:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PzS89TZ3VQzwgK8P2bX5KvfvcY4VtRFHY42+gxItdKw=;
        b=IE4IDH7oqoloAZw7fMo5e7uwMwSAX2CsWN+v2d4jjtnsFkjTR0MD99vCxWiW/dMN0y
         X5a6wf8g1RczC2C/2NIoeNpGbfQEPzoa3QA03j5vcrv+XyBqdr80oAz0tt5XAwta/kKF
         IcoAc1ehw+hqdCpuLfJ3LKKCKWQ6hqXrc8DVsTpw5JMcKSU0zlFzVvYnZgRsvQ58RRZr
         o3YxgtElcW1xzU0em9LI8+O9rUctzgllhTKdOUhRHQz8RfVka30/WKfxe9dy0YT9NsKM
         XGERtlG9VJzpoDr2mhNSx4fefe1MXzXkpsiHlMBZzv1ZGcPP9BfWB2owjvmtx0stG+j0
         I4kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PzS89TZ3VQzwgK8P2bX5KvfvcY4VtRFHY42+gxItdKw=;
        b=hk82pHgca5TqgYKrkRY7eI4o4pxuY2D4zlz7GbTzSfXBB0Opg2zjOmr0bCT6H122YC
         ziOVHcJnGk025K1JUd5TOe207HS5mcSik/6z9+t5cLFci3kJg2D8tQzJ+bbiejvayoa1
         ees6qTL1p3rjqgsPIH6xVb48h2b0mFV5ojL/nrr+f19Pxf0qbtB10rHt9V9ZH+PD/iX9
         8dqmtNP/dXYj7wvv+mbZTOutqPTyQAAvZs98yh4DoqmrxeQE+/S/kLc4bc6OudSk1tE8
         log2EUirgkMxZl8DlxX26H0WGQI92HJLpQWcMCsCWleL5WSytjL6ziY3MQSqIvFyIXAM
         YW0g==
X-Gm-Message-State: APjAAAUskpWIRwL14LqO7Dm5kLtym6dgPelGnbRSpw5ZpHxO9zzRqxpI
	OsKh1IymwBdtI6HUwiPO+G1ZLjeYSuV8yg==
X-Received: by 2002:a17:90a:c405:: with SMTP id i5mr27349084pjt.9.1570918781357;
        Sat, 12 Oct 2019 15:19:41 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id 30sm13839562pjk.25.2019.10.12.15.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 15:19:41 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com
Subject: [PATCH 1/2] staging: rtl8712: remove unnecessary return variables
Date: Sun, 13 Oct 2019 01:19:15 +0300
Message-Id: <f61a0f036af24228c682c6b12c3a8e6cf6736185.1570918228.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570918228.git.wambui.karugax@gmail.com>
References: <cover.1570918228.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove variables that are only used to hold and return constants and
have the functions directly return the constants.

Issue found by coccinelle:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 46 +++++++++-------------
 1 file changed, 19 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index aa8f8500cbb2..8af7892809ca 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -283,13 +283,12 @@ uint oid_rt_pro_stop_test_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
-	uint status = RNDIS_STATUS_SUCCESS;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
 	if (mp_stop_test(Adapter) == _FAIL)
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-	return status;
+		return RNDIS_STATUS_NOT_ACCEPTED;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv
@@ -350,64 +349,58 @@ uint oid_rt_pro_set_tx_power_control_hdl(
 uint oid_rt_pro_query_tx_packet_sent_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
 
-	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
-	}
+	if (poid_par_priv->type_of_oid != QUERY_OID)
+		return RNDIS_STATUS_NOT_ACCEPTED;
+
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
 					Adapter->mppriv.tx_pktcount;
 		*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	} else {
-		status = RNDIS_STATUS_INVALID_LENGTH;
+		return RNDIS_STATUS_INVALID_LENGTH;
 	}
-	return status;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_query_rx_packet_received_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
 
-	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
-	}
+	if (poid_par_priv->type_of_oid != QUERY_OID)
+		return RNDIS_STATUS_NOT_ACCEPTED;
+
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
 					Adapter->mppriv.rx_pktcount;
 		*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	} else {
-		status = RNDIS_STATUS_INVALID_LENGTH;
+		return RNDIS_STATUS_INVALID_LENGTH;
 	}
-	return status;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
 
-	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
-	}
+	if (poid_par_priv->type_of_oid != QUERY_OID)
+		return RNDIS_STATUS_NOT_ACCEPTED;
+
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
 					Adapter->mppriv.rx_crcerrpktcount;
 		*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	} else {
-		status = RNDIS_STATUS_INVALID_LENGTH;
+		return RNDIS_STATUS_INVALID_LENGTH;
 	}
-	return status;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
@@ -425,7 +418,6 @@ uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
 uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 						    *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
 
@@ -435,9 +427,9 @@ uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 		Adapter->mppriv.rx_pktcount = 0;
 		Adapter->mppriv.rx_crcerrpktcount = 0;
 	} else {
-		status = RNDIS_STATUS_INVALID_LENGTH;
+		return RNDIS_STATUS_INVALID_LENGTH;
 	}
-	return status;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
-- 
2.23.0


