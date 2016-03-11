X-GM-THRID: 6260738819949068288
X-Received: by 10.107.157.10 with SMTP id g10mr6530005ioe.28.1457691860473;
        Fri, 11 Mar 2016 02:24:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.10 with SMTP id b10ls1249866iod.101.gmail; Fri, 11 Mar
 2016 02:24:19 -0800 (PST)
X-Received: by 10.107.165.213 with SMTP id o204mr6464202ioe.10.1457691859955;
        Fri, 11 Mar 2016 02:24:19 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id tu5si966527pab.2.2016.03.11.02.24.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 02:24:19 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so7877348pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 02:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=OIWrdXPt2FEor635T22zSYNfnn0GZFSJJZS331KNbok=;
        b=Dp5XaxAh8pawBHUtor7c3O8/Q+/9YPltAfSrd79mpEv1anQ9C0GgpsLUZu3H3sCXcS
         SAkvKZuq+zpSbC7eKdgPCp19/fqp4RMrXz4jR8Cfp+2UTZSOMSC2XyS4xOSe867ZLgvH
         P4e1yQ9f67meUoSZ3FlnxsV49JpP7juvRWzucJkgoZAkjb5STwcI005UW0m4bXU/5nfb
         KjGrkJ7UUB1KXw4wxwYa1fPLs3EM8cwkr4lNt1IjZCi9keXN1Q6WQrrd1ZMZcywmhc7S
         RjOvDMuOKC6kfunzPZswYjcK2IygzLQRaCU8+BabLG3+IpUy27x0OqRB1ZBzGug01SOU
         jHcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=OIWrdXPt2FEor635T22zSYNfnn0GZFSJJZS331KNbok=;
        b=Ubk2ssqZ7uOa7cPu/RMR30VTeCHgwaGfFhyB4hbzRK6oaxyYXEzw+0xc2U+NSgFD8S
         4FSyUTVCoEC13xK575Lr4BAJo84kYEL7KVih0WhtkH10srsG8bJkrl5ZiMOCtEQYGwfV
         nmclF24Avj5W2umf9qdzIIaM5vf8WCW9krdUaK8nQrtOu2wTVDhpC/JpRKfZI1ThOTLR
         MmPPuUJfSp/I0zoeaedcrsWwMcgjhnRJLuNnni47Q2Akz9NSg4DTEg4mvthz9t5+dOGm
         Y8onEJ84IhamDtDoAne82wrkiB2gJfIcTj0HE9KFDgTBSn8PROoptxDwywfLcuUsVOFQ
         UZVA==
X-Gm-Message-State: AD7BkJIoeoNRkOZPGcVTxgbphLGS/24wNI2/AQc52FqrEzczSvmGTUKbmoiANsvq+cCRCw==
X-Received: by 10.66.221.167 with SMTP id qf7mr13649150pac.94.1457691859785;
        Fri, 11 Mar 2016 02:24:19 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.156.82])
        by smtp.gmail.com with ESMTPSA id v3sm11799113par.17.2016.03.11.02.24.13
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 02:24:19 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 15:54:09 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/3] Staging: rtl8712: Remove function r8712_SetTxAGCOffset and mp_start_joinbss
Date: Fri, 11 Mar 2016 15:53:55 +0530
Message-Id: <3dbfbde8ccce78a127d6c71bce9918de2b481aff.1457691346.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1457691345.git.bhumirks@gmail.com>
References: <cover.1457691345.git.bhumirks@gmail.com>
In-Reply-To: <cover.1457691345.git.bhumirks@gmail.com>
References: <cover.1457691345.git.bhumirks@gmail.com>

The functions r8712_SetTxAGCOffset and mp_start_joinbss are not used
anywhere in the kernel so remove their definitions and prototypes.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp.c       | 12 ------------
 drivers/staging/rtl8712/rtl871x_mp.h       |  1 -
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 16 ----------------
 drivers/staging/rtl8712/rtl871x_mp_ioctl.h |  2 --
 4 files changed, 31 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 9b5a4e7..12e140b 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -323,18 +323,6 @@ void r8712_SetTxPower(struct _adapter *pAdapter)
 	SetOFDMTxPower(pAdapter, TxPower);
 }
 
-void r8712_SetTxAGCOffset(struct _adapter *pAdapter, u32 ulTxAGCOffset)
-{
-	u32 TxAGCOffset_B, TxAGCOffset_C, TxAGCOffset_D, tmpAGC;
-
-	TxAGCOffset_B = (ulTxAGCOffset & 0x000000ff);
-	TxAGCOffset_C = (ulTxAGCOffset & 0x0000ff00) >> 8;
-	TxAGCOffset_D = (ulTxAGCOffset & 0x00ff0000) >> 16;
-	tmpAGC = (TxAGCOffset_D << 8 | TxAGCOffset_C << 4 | TxAGCOffset_B);
-	set_bb_reg(pAdapter, rFPGA0_TxGainStage,
-			(bXBTxAGC | bXCTxAGC | bXDTxAGC), tmpAGC);
-}
-
 void r8712_SetDataRate(struct _adapter *pAdapter)
 {
 	u8 path = RF_PATH_A;
diff --git a/drivers/staging/rtl8712/rtl871x_mp.h b/drivers/staging/rtl8712/rtl871x_mp.h
index 3f3b2e7..24be08b 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.h
+++ b/drivers/staging/rtl8712/rtl871x_mp.h
@@ -268,7 +268,6 @@ u8 r8712_set_rf_reg(struct _adapter *Adapter, u8 path, u8 offset,
 
 void r8712_SetChannel(struct _adapter *pAdapter);
 void r8712_SetTxPower(struct _adapter *pAdapte);
-void r8712_SetTxAGCOffset(struct _adapter *pAdapter, u32 ulTxAGCOffset);
 void r8712_SetDataRate(struct _adapter *pAdapter);
 void r8712_SwitchBandwidth(struct _adapter *pAdapter);
 void r8712_SwitchAntenna(struct _adapter *pAdapter);
diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index b98a596..315cb0b 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -243,22 +243,6 @@ end_of_mp_stop_test:
 	return _SUCCESS;
 }
 
-int mp_start_joinbss(struct _adapter *padapter, struct ndis_802_11_ssid *pssid)
-{
-	struct mp_priv *pmppriv = &padapter->mppriv;
-	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	unsigned char res = _SUCCESS;
-
-	if (!check_fwstate(pmlmepriv, WIFI_MP_STATE))
-		return _FAIL;
-	if (!check_fwstate(pmlmepriv, _FW_LINKED))
-		return _FAIL;
-	_clr_fwstate_(pmlmepriv, _FW_LINKED);
-	res = r8712_setassocsta_cmd(padapter, pmppriv->network_macaddr);
-	set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
-	return res;
-}
-
 uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv
 					 *poid_par_priv)
 {
diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
index 8e7c7f8..5dacf82 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
@@ -83,8 +83,6 @@ struct DR_VARIABLE_STRUCT {
 	u32 variable;
 };
 
-int mp_start_joinbss(struct _adapter *padapter, struct ndis_802_11_ssid *pssid);
-
 /* oid_rtl_seg_87_11_00 */
 uint oid_rt_pro_read_register_hdl(struct oid_par_priv *poid_par_priv);
 uint oid_rt_pro_write_register_hdl(struct oid_par_priv *poid_par_priv);
-- 
1.9.1


