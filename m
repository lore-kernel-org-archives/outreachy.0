X-GM-THRID: 6210715493943214080
X-Received: by 10.68.194.202 with SMTP id hy10mr25734239pbc.13.1446044886248;
        Wed, 28 Oct 2015 08:08:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.8 with SMTP id qm8ls386729igb.36.gmail; Wed, 28 Oct
 2015 08:08:05 -0700 (PDT)
X-Received: by 10.66.142.138 with SMTP id rw10mr22460123pab.0.1446044885674;
        Wed, 28 Oct 2015 08:08:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id iz5si39059pbc.2.2015.10.28.08.08.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 08:08:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy1so3643052pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 08:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=T3214Bxfx/BbUMVnEvFwF/4N+gvWCRBrHoRJ9G3mfx8=;
        b=mhAm/X0eptV4g01lu3xjchp/SNih2Ms72LCXshMcorlMNsHtq16fQPsxtXQH66dZQz
         Af41URDlSc+DbyGp2fVJNY4r5hXtVDVuo/sZxXm2Yppc6mz6g5LbTbHTPdf/LT3XOQn0
         2TTRJHuWtaXZAiQHjpmOCYBzHlyIl4bsPa6VR4uzZG8CiK3yYD17Dqy2Oy+4UhaEaI0S
         hVUPJPhSMeDtjXWbY2uCUiCHYrWX6Q9M00iHrE58m4B6JuUhK6etT5oplQIQMEVcmTgL
         VNZ2mCQw+GwIKtzg6zrImH71xiwLNE0p6oT13XlyNRo8J0LV8iv2ha+3C0M/xB1c9uCT
         6gng==
X-Received: by 10.66.235.39 with SMTP id uj7mr34742917pac.34.1446044885454;
        Wed, 28 Oct 2015 08:08:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.185.168])
        by smtp.gmail.com with ESMTPSA id yk5sm11025873pac.5.2015.10.28.08.08.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 08:08:04 -0700 (PDT)
Date: Wed, 28 Oct 2015 20:38:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: rtl871x_mp_ioctl: Remove unnecessary
 variables
Message-ID: <20151028150800.GA17624@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the status variable from multiple functions since
it is not required and can be replaced by single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 38 +++++++++++-------------------
 1 file changed, 14 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index b76b7c4..6ac9659 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -365,58 +365,49 @@ uint oid_rt_pro_set_tx_power_control_hdl(
 uint oid_rt_pro_query_tx_packet_sent_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
-	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
-	}
+	if (poid_par_priv->type_of_oid != QUERY_OID)
+		return RNDIS_STATUS_NOT_ACCEPTED;
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
 					Adapter->mppriv.tx_pktcount;
 		*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	} else
-		status = RNDIS_STATUS_INVALID_LENGTH;
-	return status;
+		return RNDIS_STATUS_INVALID_LENGTH;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_query_rx_packet_received_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
-	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
-	}
+	if (poid_par_priv->type_of_oid != QUERY_OID)
+		return RNDIS_STATUS_NOT_ACCEPTED;
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
 					Adapter->mppriv.rx_pktcount;
 		*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	} else
-		status = RNDIS_STATUS_INVALID_LENGTH;
-	return status;
+		return RNDIS_STATUS_INVALID_LENGTH;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
-	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
-	}
+	if (poid_par_priv->type_of_oid != QUERY_OID)
+		return RNDIS_STATUS_NOT_ACCEPTED;
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
 					Adapter->mppriv.rx_crcerrpktcount;
 		*poid_par_priv->bytes_rw = poid_par_priv->information_buf_len;
 	} else
-		status = RNDIS_STATUS_INVALID_LENGTH;
-	return status;
+		return RNDIS_STATUS_INVALID_LENGTH;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
@@ -433,7 +424,6 @@ uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
 uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 						    *poid_par_priv)
 {
-	uint status = RNDIS_STATUS_SUCCESS;
 	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -442,8 +432,8 @@ uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 		Adapter->mppriv.rx_pktcount = 0;
 		Adapter->mppriv.rx_crcerrpktcount = 0;
 	} else
-		status = RNDIS_STATUS_INVALID_LENGTH;
-	return status;
+		return RNDIS_STATUS_INVALID_LENGTH;
+	return RNDIS_STATUS_SUCCESS;
 }
 
 uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
-- 
1.9.1


