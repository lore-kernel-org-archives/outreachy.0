X-GM-THRID: 6747044768827572224
X-Received: by 2002:a62:1889:: with SMTP id 131mr24416050pfy.21.1570918789891;
        Sat, 12 Oct 2019 15:19:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8f8e:: with SMTP id z14ls2893226plo.5.gmail; Sat, 12
 Oct 2019 15:19:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwg8+iT0a/oZIWxaw/B4cX4Fk/DGlSLtPHAo/XplVXFLOTf1fv36/bUTIc2XTUPysWrBJAC
X-Received: by 2002:a17:902:700b:: with SMTP id y11mr22980337plk.29.1570918788949;
        Sat, 12 Oct 2019 15:19:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570918788; cv=none;
        d=google.com; s=arc-20160816;
        b=vuSHMiJJGgFLX/KjQ3CDN+AVhRuFrVEQMLO3H5yanBwouvuMbAg+1b3ykBRaAoJqsj
         V6CoFNZdkji3PlWUUBWE091cGGM5JWr2OU2+sbwkaR8B+tJQ3Tniyccs5gGbSRUolYRA
         pc4FAmozbosZKJwaTgoxlQ0kGkWCFoqWnQWYnDL9p8DRcQ9PmN3s17cRrYCkEJ74NodQ
         xmZNh9E8ku0j52U5tNMhqrP6+v6fPIaL6M0S2EhWrN9w/ulM8gYVdHHwrgIK2Wn3BbOw
         qIafsmxO7tDe50T0rNVt+HFkzV2NpEGyVw/cvXx53c9o704VWwH+M8wPaXMq6AoZ7PMV
         HeqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cj3J1pEroaTR/ZsfEveu1P6fPFD8w3rJ9/qudwdU1EM=;
        b=eG2XFn0Z2TdIJab126EXYK+wDF2pU89MaIQkOZDkXNR9nvxbFjh3XqVT/xnHvYTc+p
         czB96ZJzzsBb+Rfb+vRzPMAl3ld/kU3iiXx3MjhDKh2pOjAnUKTLC8Fnl2RUzquCqvT0
         N3pR+Zfzji+axinsKLweNDeioDl0tzc/XUU1Z4dBxiF6AG+6iSazt7mklOk4GhS8UXwn
         FfuJ3XuIRLTG2dHwO6h+1H2b511hOycVrSKKzwsL6489e8QHKV4tJmBZZ9KLQk54jX1w
         XApTZHFADL5CLyZ5UW30YRCh4xrocDqom+ZvigT8grx9fFsv3S+Alo1QchVnlJ5WComV
         VC5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QEiTiwJM;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id h1si636649pju.1.2019.10.12.15.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 15:19:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QEiTiwJM;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id t10so6180477plr.8
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 15:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cj3J1pEroaTR/ZsfEveu1P6fPFD8w3rJ9/qudwdU1EM=;
        b=QEiTiwJMzTqhEDJXM11vucrej9zVDOr2z4w0FDZVcWjqiEY6eV7X5w+QIyjC5VwwTt
         Bl3xx260mtlD2LEf5Mtq86A/e1Ni+KHB0FXrU5tbJKOxKcNVGleD23k1iehbSFTs+iVb
         MOQrOddqFXCo/kyqJKK/fjIVIeZX0R1WaoaWYtuEHOZmDb5e30t/rLFHomWynGjwXDl0
         m04eajvFJpP3aoj5XqiP181Uln2dWb49EOTpJbBCPp0ClWF7O+NhVnvuQJ0K8rLjmBln
         JY8mINbyrG3Go8IzKJIYWaEm75ktxkqT4q6fEr7KcvacoFeyqrHPd1kCXej7aZe8ea56
         sTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cj3J1pEroaTR/ZsfEveu1P6fPFD8w3rJ9/qudwdU1EM=;
        b=kH+tRrJK2eE/TbUFuHRIp6tgJ3zVhRvHnhlK0d3EeCBXeNccyvTK9NsDbZ2jownVFI
         Br5qhxS+cgYrQJVU9WtJaPdeRamcBQF9kx14jOsGz+tQWWqPX+nhCmyn+WPr8SSC2WIS
         QNVFs28n52vFJ/xT4msuJjn/Sq6+XVzvAF2yG1RrxEXpZvbni8Mh7pZMoIHQeglDWi8P
         kqtDU/9VuhtuBJJVRABY8sk6LTe+dD6uLY+uksFLbOhXsqxCESvBKp4bcTjKxtjwB4y0
         NrJSOO98YcI5LibVmB01RqdbZUcbesajXKkpqKyuOmlIWEX1uEXb7W6jvr7x05OYP2wx
         ERpA==
X-Gm-Message-State: APjAAAVUrv56gyoWZ78/ViPCbJQgtnmmPPWDuoyzlp9VApIbSMcNOZXk
	AtQUDtoXV9fv5iuNHGPD7VIqsShNprOlRA==
X-Received: by 2002:a17:902:a985:: with SMTP id bh5mr21912231plb.184.1570918788530;
        Sat, 12 Oct 2019 15:19:48 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id 30sm13839562pjk.25.2019.10.12.15.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 15:19:48 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com
Subject: [PATCH 2/2] staging: rtl8712: clean up function headers
Date: Sun, 13 Oct 2019 01:19:16 +0300
Message-Id: <c14b9e60b1e9bab635bc9527cbd2a2a07436ba44.1570918228.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570918228.git.wambui.karugax@gmail.com>
References: <cover.1570918228.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary line-breaks in function headers to
improve readability of function headers.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 57 ++++++++--------------
 1 file changed, 19 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index 8af7892809ca..29b85330815f 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -231,8 +231,7 @@ static int mp_stop_test(struct _adapter *padapter)
 	return _SUCCESS;
 }
 
-uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv
-					 *poid_par_priv)
+uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -291,8 +290,7 @@ uint oid_rt_pro_stop_test_hdl(struct oid_par_priv *poid_par_priv)
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv
-						   *poid_par_priv)
+uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -327,8 +325,7 @@ uint oid_rt_pro_set_antenna_bb_hdl(struct oid_par_priv *poid_par_priv)
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_tx_power_control_hdl(
-					struct oid_par_priv *poid_par_priv)
+uint oid_rt_pro_set_tx_power_control_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -346,8 +343,7 @@ uint oid_rt_pro_set_tx_power_control_hdl(
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_query_tx_packet_sent_hdl(
-					struct oid_par_priv *poid_par_priv)
+uint oid_rt_pro_query_tx_packet_sent_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -365,8 +361,7 @@ uint oid_rt_pro_query_tx_packet_sent_hdl(
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_query_rx_packet_received_hdl(
-					struct oid_par_priv *poid_par_priv)
+uint oid_rt_pro_query_rx_packet_received_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -384,8 +379,7 @@ uint oid_rt_pro_query_rx_packet_received_hdl(
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
-					struct oid_par_priv *poid_par_priv)
+uint oid_rt_pro_query_rx_packet_crc32_error_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -403,8 +397,7 @@ uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
-						*poid_par_priv)
+uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -415,8 +408,7 @@ uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
-						    *poid_par_priv)
+uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -432,8 +424,7 @@ uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
-						 *poid_par_priv)
+uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -444,8 +435,7 @@ uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv
-						  *poid_par_priv)
+uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -460,8 +450,7 @@ uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv
-						     *poid_par_priv)
+uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -476,8 +465,7 @@ uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv
-					  *poid_par_priv)
+uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -489,8 +477,7 @@ uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv
-					     *poid_par_priv)
+uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -503,8 +490,7 @@ uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv
-						 *poid_par_priv)
+uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -517,8 +503,7 @@ uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv
-						      *poid_par_priv)
+uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -531,8 +516,7 @@ uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv
-					      *poid_par_priv)
+uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -545,8 +529,7 @@ uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_pro_read_register_hdl(struct oid_par_priv
-					 *poid_par_priv)
+uint oid_rt_pro_read_register_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -727,8 +710,7 @@ uint oid_rt_pro_write_efuse_hdl(struct oid_par_priv *poid_par_priv)
 }
 /*----------------------------------------------------------------------*/
 
-uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv
-					      *poid_par_priv)
+uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
@@ -821,8 +803,7 @@ uint oid_rt_set_bandwidth_hdl(struct oid_par_priv *poid_par_priv)
 	return RNDIS_STATUS_SUCCESS;
 }
 
-uint oid_rt_set_rx_packet_type_hdl(struct oid_par_priv
-					   *poid_par_priv)
+uint oid_rt_set_rx_packet_type_hdl(struct oid_par_priv *poid_par_priv)
 {
 	struct _adapter *Adapter = (struct _adapter *)
 				   (poid_par_priv->adapter_context);
-- 
2.23.0


