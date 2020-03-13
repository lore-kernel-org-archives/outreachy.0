X-GM-THRID: 6803716874412490752
X-Received: by 2002:a1f:8cce:: with SMTP id o197mr9463105vkd.66.1584113800686;
        Fri, 13 Mar 2020 08:36:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls1289543vsf.1.gmail; Fri, 13 Mar
 2020 08:36:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsFpvSFvKr+KCjGwCUiG5BVVyfeC+K0aLdc+1Y4AvubipIn04/tPtwMGk2WN1B2XAmmVbSq
X-Received: by 2002:a67:7c55:: with SMTP id x82mr10203160vsc.187.1584113799004;
        Fri, 13 Mar 2020 08:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584113799; cv=none;
        d=google.com; s=arc-20160816;
        b=hsFkUUaUAWSgLFjfmmwesyfQ/o03LRuk/bwIs0yJExMVa7EIACelUqa2Hd9vebULsc
         fgo/N+CJW4ib7m5KLM0CMjNQoa54ovimwWA4TsQ4GfIY3nU18vRakhgo7+6aX5mk0yTS
         pWN33hxRZCqNyO1Ld/57UakvV/Z5TsSB8QBY7cO48RcxBGhTykdwuWlVRQdXf/8KLdiO
         29bunVlVX0KNGQ4KPrAtAUF/Sg3HT6lAIG5OlcoTB60y958bgT1znAws+xmNHmkUPGR6
         BFY74f40jGHXkppKRAvJjMDAtCRAIBDSyklAtd/7Z4ZX52tfqUP97tk0Av9TCUB84edg
         aIPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=WPa6J9MlEprhcQJBfSpS0ke+bw3YxbR3+SJHcQW53LE=;
        b=PphRovHi9H0IxiGrDf11yZdpGB4s2DzDG/U4ETEjQ5t0Bld9a7spjbO8C2HJUnnd3/
         XCXuCx6cAZzTBrATR+lS+oyEAQUnLKipgTvmcc7gp1LB3AjL7N8eh9L0gwwyy7zybBL2
         VgcWW3rUsWICih+RMjW4F/z37OX7wk7aOILitB3s5HfF0BCvOzHYxJgyQOVdImcDIFxf
         XgJiLNFx+eFJToEihX3k6O7cIgrt9uKgzK2uf+Tcss65xGQNRtcZjWC79woJMO5fCmiy
         2hY6fyDa8TZ3ypJHW6tSxWYWXMrUYbPjZmcp/K4OafsIU5s/WB7AyM9F6qhf+COXe/it
         I56Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j4iODnHD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id r7si391964vsl.1.2020.03.13.08.36.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 08:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j4iODnHD;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id h8so5176557pgs.9
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 08:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=WPa6J9MlEprhcQJBfSpS0ke+bw3YxbR3+SJHcQW53LE=;
        b=j4iODnHDctlAYdO2l6m/LTX2EN9wF3Jw4c3cySrb/OLeSprRM1g5ssNi1/+yZGCpNZ
         7D0+j2BibwmXIp/nkgc+SWgnMpODDshg7gD5LmOprrlEIsCzjU4jZVffPQhSaAp9id+q
         S5HpEqvg/+HvwiqTDMUJfD1T5hlRihDi+d6CAnHvVoCaLIqBU9rbhYrVH/QVT7WAatqO
         scbi/pwZcbMdsPH6Zx0Hjbh1oaEUITUSpqENGWrFAtJYTV5N/n1JGrhSZq/UMNjfAM1o
         biCBdQFXSQRz72uKnglGEMppt7g2dAg2Rnb8HGSoUKHBEu5/Ij7R20IYauHuCnqKld1D
         5UhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=WPa6J9MlEprhcQJBfSpS0ke+bw3YxbR3+SJHcQW53LE=;
        b=dJcK0z1DoouPHjsZoIKh+jAsKgODzDrxf/XJBYJb4Ql2zY7ZU4RuQ4n72Q4l3V4WSV
         O4DQT2equwqMvjjQ+mJPESWNpCk04Ud/MdoJ0IhVvRjm6nK3PQHe+kf+KGf5e/B7gPfH
         59C8SGsbN4J0j5ewvyTcWuj4Xb+d933ZvZGt+Vbbixaz518+z6pz4KpKqEhz9YXgv7gc
         ApKcjAwMCZOL6AXs8UZ2ToKSNYrDRg2bL6Hu5EyjMyzv729WP7Wm6fd6wQB+YiGgpc7r
         MF8H9N6FS27ObJ44TBAq2T/JGoJqitX2dioyRSRl1qlJaDov73y4S+32tj2LqmzXWma5
         rHPA==
X-Gm-Message-State: ANhLgQ08M5cKdZiieWB0W7RPrATNM52Vhjti7eh3GlzMPapDHRS65X9w
	fVSLqxZTvZl8bIFtihAti88=
X-Received: by 2002:aa7:9433:: with SMTP id y19mr2637812pfo.233.1584113798528;
        Fri, 13 Mar 2020 08:36:38 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.225.150])
        by smtp.gmail.com with ESMTPSA id x18sm47698945pfo.148.2020.03.13.08.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 08:36:37 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH 2/3] staging: rtl8723bs: core: rtw_io.c: remove unneeded variables
Date: Fri, 13 Mar 2020 21:06:09 +0530
Message-Id: <0a4eeae5466ae913c5b77161019cf7e7877884b8.1584113084.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
In-Reply-To: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>

Remove unneeded local variables, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_io.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

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
-- 
2.17.1


