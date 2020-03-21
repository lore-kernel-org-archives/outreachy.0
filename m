X-GM-THRID: 6806564909415923712
X-Received: by 2002:a92:d6d1:: with SMTP id z17mr12063868ilp.203.1584776888092;
        Sat, 21 Mar 2020 00:48:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:cc93:: with SMTP id s19ls1170277jap.8.gmail; Sat, 21 Mar
 2020 00:48:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv6AL7iXW7RsaKFwh/vTElt0PSMPuwnCkUasgQf2SVD/oL8KicynivOiPuudVgZCbW9owV/
X-Received: by 2002:a05:6638:347:: with SMTP id x7mr11981615jap.38.1584776887040;
        Sat, 21 Mar 2020 00:48:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584776887; cv=none;
        d=google.com; s=arc-20160816;
        b=tXoFIMVciCmjkgqsLLXo9WNp8UjlSgHLqKRVzs8uh6krNfoeuLDrlh5qPIoqeOlag3
         a4fGLqVS8vHJAMYX4uQ4yF4ovFBuTxX6u6xRiLdjSlgU80zxRzzUbvIalAVyvhYHsMRx
         4+cf6RAVBv4F7R3rnA/wyTBVC+AFrPYT/OBSWyIiuc9JNdVXScb4RtpUnTig9VMQjhaY
         EmdbZZnfYDThQsIN/ZjCJJovxQC/ARBHuES4/ITCSu37ys/3QZK13Nn4QETlJN/WPmhr
         Rcn32kk85QgxRIbTijQJc/SCRcax2rWpbd8ctYoE26zyOFjrDs/R5UtCvkPRZK2r5+VB
         SdAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MfZa6kG9Q0Vyx91HjHk/m5bMa+EkOURNw1n9Rnu/Xvk=;
        b=bU/lRy0bc4lLsR5oEDmciwJFRf52an1cF4pfo5jg0lVDNiPvaf42DzekWh56AIGm5X
         tHGfkoGsd1ps4tJqyDyHzQrP+sVIBhiMPGS0sawfehV/BwMOsapLtTfpy+U/XYTr8Tr0
         wsox55sD5TlTCkSAeciztHG1SZFSq7GGZ/CfXgOa7qnIVBrbAHgMc1jz1Mv6lYJ0ZACK
         uaYU+f2DHatKmWDIQDGga9FHUwlKBMeQHdVAAZmYeDTJLzdc6BrobFvkdS+nafJ5BpP8
         mUUya3e1QnRRTPc6WsI4FeBTwhYSTowefb8uK/CpdnckKOjXRXWW5sfGJM9OxFoWITzx
         sxkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WYO6/hkI";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s201si532573ilc.0.2020.03.21.00.48.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:48:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WYO6/hkI";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id md6so546776pjb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 00:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MfZa6kG9Q0Vyx91HjHk/m5bMa+EkOURNw1n9Rnu/Xvk=;
        b=WYO6/hkIXr+JbSe4+yHYVW91Uya3xU2OLbOAfuFta68B1Tp3dX3ufQZifU2w2WYTtb
         a5/wLN6b18MbNY9nuk/kPC8+gAS4P5iKexY2H0u8ZYmJG5otHjQouiIi/bZseccViiD7
         YZu1HSHiLfihRNtRiiQJVXwA3K82N5UFgxN2Pin5UPSgwsaPj/Rs+NRkBP0POtQSQcRW
         njp7ci/EnQO+sIytl22ZrVLWBEq0gN8sC6Aku1Fz/b7WdC0vZ4V7RaseTbKykmxFGicw
         Pgpk40h26VpUQTj8MZJjeq/7FVw2dr5sIiczqjMupPr/9AzJruggNWCZObta+hgRf/uZ
         b+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MfZa6kG9Q0Vyx91HjHk/m5bMa+EkOURNw1n9Rnu/Xvk=;
        b=OY5tDXWet1scJ0ZAME64jwcMa5V0P8qhBQmAT4bFWiU+0O0Hb2jeCaJirBdPTiDip2
         Xobv2FuZExk3NaG68p3ubhTNo0mE78/9FhlTGrUk/yJnyuC2cL52Ap/DtBtYuz0M85P8
         UmGKrt0D8itfS6n6dsAgxvhvyOjn8DMyXgyXm93PelSDAxqLaHt6GaWvHJ2T8//M8nmo
         PuCLc9nSLuJpkPiN5WZX5OiFUizF0DG8zg7gSTMmLivEzOzhWM3ljHe1dNB4SKVuFuEj
         9rXJdBG3UABvdMNb6LgMf6uduHV4OLFs46N1Z5Bgov0gFZnJtQVQKwov5N6SY2X7Jnmd
         z2Og==
X-Gm-Message-State: ANhLgQ1qBouSk0u63RfN9qihwNEizLOMCDCooYzYQr9d7u6iiuQa+Oac
	1/nPYi1dl98fFOP8ah+VBecXoAGg
X-Received: by 2002:a17:902:aa04:: with SMTP id be4mr12576496plb.41.1584776886195;
        Sat, 21 Mar 2020 00:48:06 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.14.249])
        by smtp.gmail.com with ESMTPSA id i4sm7481492pfq.82.2020.03.21.00.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 00:48:05 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] staging: rtl8723bs: remove unneeded variables
Date: Sat, 21 Mar 2020 13:17:57 +0530
Message-Id: <20200321074757.8321-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unneeded temporary local variables and their declarations.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_io.c      | 9 ++-------
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 7 +------
 drivers/staging/rtl8723bs/hal/hal_com.c      | 5 +----
 3 files changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_io.c b/drivers/staging/rtl8723bs/core/rtw_io.c
index 57168578663a..c3f63f903547 100644
--- a/drivers/staging/rtl8723bs/core/rtw_io.c
+++ b/drivers/staging/rtl8723bs/core/rtw_io.c
@@ -37,7 +37,6 @@ jackson@realtek.com.tw
 
 u8 _rtw_read8(struct adapter *adapter, u32 addr)
 {
-	u8 r_val;
 	/* struct	io_queue	*pio_queue = (struct io_queue *)adapter->pio_queue; */
 	struct io_priv *pio_priv = &adapter->iopriv;
 	struct	intf_hdl		*pintfhdl = &(pio_priv->intf);
@@ -45,8 +44,7 @@ u8 _rtw_read8(struct adapter *adapter, u32 addr)
 
 	_read8 = pintfhdl->io_ops._read8;
 
-	r_val = _read8(pintfhdl, addr);
-	return r_val;
+	return _read8(pintfhdl, addr);
 }
 
 u16 _rtw_read16(struct adapter *adapter, u32 addr)
@@ -142,13 +140,10 @@ u32 _rtw_write_port(struct adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 	u32 (*_write_port)(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pmem);
 	struct io_priv *pio_priv = &adapter->iopriv;
 	struct	intf_hdl		*pintfhdl = &(pio_priv->intf);
-	u32 ret;
 
 	_write_port = pintfhdl->io_ops._write_port;
 
-	ret = _write_port(pintfhdl, addr, cnt, pmem);
-
-	return ret;
+	return _write_port(pintfhdl, addr, cnt, pmem);
 }
 
 int rtw_init_io_priv(struct adapter *padapter, void (*set_intf_ops)(struct adapter *padapter, struct _io_ops *pops))
diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 30137f0bd984..9ff35a2da024 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -1390,10 +1390,5 @@ void rtw_ps_deny_cancel(struct adapter *padapter, enum PS_DENY_REASON reason)
  */
 u32 rtw_ps_deny_get(struct adapter *padapter)
 {
-	u32 deny;
-
-
-	deny = adapter_to_pwrctl(padapter)->ps_deny;
-
-	return deny;
+	return adapter_to_pwrctl(padapter)->ps_deny;
 }
diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 109bd85b0cd8..02676da5c166 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -961,10 +961,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf)
 
 u8 rtw_get_mgntframe_raid(struct adapter *adapter, unsigned char network_type)
 {
-
-	u8 raid;
-	raid = (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
-	return raid;
+	return (network_type & WIRELESS_11B) ? RATEID_IDX_B : RATEID_IDX_G;
 }
 
 void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *psta)
-- 
2.17.1


