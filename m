X-GM-THRID: 6252733249788837888
X-Received: by 10.182.29.41 with SMTP id g9mr9099857obh.27.1455827907879;
        Thu, 18 Feb 2016 12:38:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.163 with SMTP id h32ls5208687qgf.70.gmail; Thu, 18 Feb
 2016 12:38:27 -0800 (PST)
X-Received: by 10.129.131.206 with SMTP id t197mr8618428ywf.50.1455827907371;
        Thu, 18 Feb 2016 12:38:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id yd9si1190338pab.1.2016.02.18.12.38.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 12:38:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id ho8so37747817pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 12:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Ps5z+4Hw9rJmkPEQkpUVcbogqr3ooK1iuojO3AMdwx4=;
        b=iSyBcANVYhhELDN3iTLkynM2KLk5SuCJT4/kju4gP/u2qVG5jfgDn3sm5m+1n2YOZM
         jRjHNzyLN/1nd67Qchmg/Pr6iQvzY3p9DCslbn/rXbAiPG0KRLIuIEQ6ZX4zMX7VDbgg
         /Mg5CX1oXg6ldEaxXa3HOtJXpG/BBc3TUI0ty/GnHnqffJ0IatLOBRm977T9RBVYAmcU
         9LSizbdxFjnsOInE8OqZPtHeiX7cXg/qh8qmcOhsqEjKo1ISSgCfJ7+Du27uUA/A7jUP
         PxdHjADxbSbKOMkraQDxdD1QssI0j+s/GkLVbQd5OmUDiuEF3UFYSnUz9b5l/hVGpnoh
         WmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Ps5z+4Hw9rJmkPEQkpUVcbogqr3ooK1iuojO3AMdwx4=;
        b=N9DugQMmkOYYSC9PBW4S4uUOZuozVtLT45uigJXMKMWpkQv0+Ralx0eUeW1ZLuVFwd
         bVwFv+41/Aoyrl1WD/mGDLVvG5pW+MkFcLbSTfc9r0DQGkrhXO7PBKBxjYw8Nh/p6+nu
         mOhfMTm2HRsRCNGT58ssiQh5+5aRqV6RhURay1s8ks1mhp2L+P8N49rA5pIGYuUj3KNP
         y8spj0E4DrfRwMji8XYa9GpFfgVlJe6PG/AyfGiN0Os3O6ibyNffScJu0U2IUEd80Hph
         nk/TlAt7+TZC4GWQkaEpShpJqsQxT59evYv+x1BIdDemuEMbuDcsRSBE89r3Lmz0gkF6
         otPw==
X-Gm-Message-State: AG10YOSDSHn/4J+mp0YpsT87U2cyADSzK7eJvlDBzsU8eri7Fs9mmQ1XukJB22ugi3M28Q==
X-Received: by 10.66.102.8 with SMTP id fk8mr13241037pab.12.1455827907191;
        Thu, 18 Feb 2016 12:38:27 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id wh9sm12364098pab.8.2016.02.18.12.38.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 12:38:26 -0800 (PST)
Date: Fri, 19 Feb 2016 02:08:52 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Compress return logic into one line
Message-ID: <20160218203852.GA6542@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Simplified function return by merging assignment and return into
one line.

Found with Coccinelle.

@@ expression ex, r; @@
-r =
+return
	ex;
-return r;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 +---
 drivers/staging/rtl8712/rtl871x_ioctl_set.c   | 3 +--
 drivers/staging/rtl8712/rtl871x_mp.c          | 3 +--
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c    | 9 +++------
 4 files changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index db2e31bc..3e6ff23 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -329,9 +329,7 @@ static inline char *translate_scan(struct _adapter *padapter,
 	iwe.u.qual.level = rssi;  /* signal strength */
 	iwe.u.qual.qual = 0; /* signal quality */
 	iwe.u.qual.noise = 0; /* noise level */
-	start = iwe_stream_add_event(info, start, stop, &iwe, IW_EV_QUAL_LEN);
-	/* how to translate rssi to ?% */
-	return start;
+	return iwe_stream_add_event(info, start, stop, &iwe, IW_EV_QUAL_LEN);
 }

 static int wpa_set_auth_algs(struct net_device *dev, u32 value)
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index f772675..c32dec9 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -131,8 +131,7 @@ u8 r8712_set_802_11_bssid(struct _adapter *padapter, u8 *bssid)
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 	if (is_zero_ether_addr(bssid) || is_broadcast_ether_addr(bssid)) {
-		status = false;
-		return status;
+		return false;
 	}
 	spin_lock_irqsave(&pmlmepriv->lock, irqL);
 	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 44da4fe..c2cd412 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -715,8 +715,7 @@ static u32 GetPhyRxPktCounts(struct _adapter *pAdapter, u32 selbit)
 	phyrx_set |= (SelectBit & 0xF0000000);
 	r8712_write32(pAdapter, RXERR_RPT, phyrx_set);
 	/*Read packet count*/
-	count = r8712_read32(pAdapter, RXERR_RPT) & RPTMaxCount;
-	return count;
+	return r8712_read32(pAdapter, RXERR_RPT) & RPTMaxCount;
 }

 u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter)
diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index b98a596..edf2661 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -383,8 +383,7 @@ uint oid_rt_pro_query_tx_packet_sent_hdl(
 				   (poid_par_priv->adapter_context);

 	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
+		return RNDIS_STATUS_NOT_ACCEPTED;
 	}
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
@@ -404,8 +403,7 @@ uint oid_rt_pro_query_rx_packet_received_hdl(
 				   (poid_par_priv->adapter_context);

 	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
+		return RNDIS_STATUS_NOT_ACCEPTED;
 	}
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
@@ -425,8 +423,7 @@ uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
 				   (poid_par_priv->adapter_context);

 	if (poid_par_priv->type_of_oid != QUERY_OID) {
-		status = RNDIS_STATUS_NOT_ACCEPTED;
-		return status;
+		return RNDIS_STATUS_NOT_ACCEPTED;
 	}
 	if (poid_par_priv->information_buf_len == sizeof(u32)) {
 		*(u32 *)poid_par_priv->information_buf =
--
2.1.4


