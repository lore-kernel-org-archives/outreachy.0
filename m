X-GM-THRID: 6668378512224681984
X-Received: by 2002:a5e:8f0d:: with SMTP id c13mr5740747iok.37.1552749379769;
        Sat, 16 Mar 2019 08:16:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:dd1a:: with SMTP id f26ls4706277ioc.1.gmail; Sat, 16 Mar
 2019 08:16:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8XC4s19wF6EfAgqen6GL5lyX6H2On/pmOjS/QHVCNIHFGbYzMcJyYcxpZUUEXherFSLm9
X-Received: by 2002:a5e:a904:: with SMTP id c4mr5730272iod.19.1552749378877;
        Sat, 16 Mar 2019 08:16:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552749378; cv=none;
        d=google.com; s=arc-20160816;
        b=Xw2Zqk5suyN0S7ZaiW6KDiRnJ/WKztvzCPO35DWKZGeCHbHcva+F0FZpMO5ckwpHOK
         NC83xR5gHYQK9i0yqZk09hU9NA2b+7A1ku1yrwkuEnRTn1lS0QZHwPn3og0Sf95LceI/
         whDomO4HhQfsnmVN9RtDSfNfZhZK6VucIrAQrLVNdaDWDZEO59MvgCy7LhixYrlu4mZP
         rz01FtnG3TDHpT5ZZls5sBxLUXVW5nOFKfWGr4jA6vyUqlxOtnXT5oYnluLq5gESV0KP
         ZG8WkuWW1zOxulnOAXG4Ko6jNmtujUuPZvvXTOoNMHU1KXy7ffoNOD1ZJNjVHXvLoWUZ
         9NVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=PNGokvPzyYQTbTAQ85FsZ5cHf0cV49py1iXaBaeS3Tk=;
        b=yvrFTjUsqIbelocGZZBFeUl+9LYlxLWAqSnnP3xfp1KCqiGkrA9BdPnOUsIc6GL6Z7
         0dXGi7VesPPlEpvKSp3pP2fwZUtTyFhCtJcThHTr0hkggnTxOhtLrc3hy2eYg1CyE4DZ
         F6A16TIx48mdYbhDeEgpP1g5BfF/8nj8ly/reZw8e4o+Q5HnP9XKOUT5tJD8G9ZOXPcq
         M59XygXMS397nTmbWDWegCpiXF4FcCqO1dhdRDIqSkaioyhNNzEnqRxrEjmP9Z5Fab2t
         qCTFO4dTqyaUrPGAIrQ2pSZVL+OPI68kn0VMjEd2dyd9CJbuyA6Ax3WrbWs3EYRtFIGX
         tiqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LtG4tQhO;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id f13si276513iok.3.2019.03.16.08.16.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 08:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LtG4tQhO;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id a15so9736073oid.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 08:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=PNGokvPzyYQTbTAQ85FsZ5cHf0cV49py1iXaBaeS3Tk=;
        b=LtG4tQhOYPoJFX14hPlyvIGJIqIPRSZnLLwdbKLjVgvV3yZg1v7mfcuqAi5VVEseDB
         D11sErVEnaZb3DZukvx2Qu4XUTTGcrxEO1wQFpu8Uo1rH51++I8tU+ctNADDkGtfVfT2
         jpjJmUvl+uTDWH7iAMwjJk68Blaw936vK2kSrhXfgOpFKwFooPaSwMw9yoRE8y2kkzwc
         bUh29pOkmlcK7XBDt4YIB6kXFvtrL3oDaZ/evtbmWE86Cb4jOLyiGolp0u74oQYFj0+f
         8L/5QdDxhcPWE/PJ2Uj+RKS51Rx4FNGhoyzgh37YyrjmMbJXcDMZk6SjW0vSukCxSoNB
         AzlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PNGokvPzyYQTbTAQ85FsZ5cHf0cV49py1iXaBaeS3Tk=;
        b=G6yZt4Amax571ZHDKEmdNkQqbKzpNKINuBS2ApI7N95gVCdkOk+ipDACcoZIJ/PbJu
         RkUyPid+QzRtKRmLk3w/ICWe1nab7jgI8aKHSs3Uv5jN958ze6NOySs7vGhdY/gWoqib
         pPDhbIYxeFhXyYFDc4jIDn+KaQHx2bzyR6Oksv8tziOW6sZB3JUwKcFKka0oIrBpXz4q
         sYthUjx9rHUgCefUPHarzpFmC42PLgsLN1KHVw66LG5ctDYotm2ftekYdcBnQNzhbWln
         1NPGWpV0d0mkj3foCc+B+JKtcRBx71lpX23DPcU6avXB1Ns2xznUXRbsH0WpkVwx3nlQ
         fFwg==
X-Gm-Message-State: APjAAAW0ckqjLIR4h3NqaMq3zi1e61/RVn40YTqpr0TJzOFo8nosVHTr
	ApKYM7rd4PEand8lg8Ex5OgBoyLM6lA=
X-Received: by 2002:aca:b354:: with SMTP id c81mr4957575oif.26.1552749378501;
        Sat, 16 Mar 2019 08:16:18 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:603f:14f8:e32e:7b1b])
        by smtp.gmail.com with ESMTPSA id k25sm1861076otl.58.2019.03.16.08.16.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 08:16:17 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: rtl8723bs: Remove functions and replace return types
Date: Sat, 16 Mar 2019 10:16:15 -0500
Message-Id: <20190316151615.25314-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

- Remove functions rtw_init_cmd_priv and rtw_init_evt_priv, as its only
purpose is to call the other functions _rtw_init_cmd_priv and
_rtw_init_evt_priv, respectively.
- Rename functions from _rtw_init_cmd_priv and _rtw_init_evt_priv, to
 rtw_init_cmd_priv and rtw_init_evt_priv.
- Replace return types from sint to int
- Replace _SUCCESS with 0 and _FAIL with -ENOMEM (as it is memory
allocating functions), to maintain compatibility with rest of the kernel,
wherein the driver returns 1 for  _SUCCESS and 0 for _FAIL.
- Replace local variable 'res' data type from sint to int in both the
functions.
- Include missing NULL check for kmalloc
- Replace NULL comparison with ! in function rtw_init_cmd_priv.
Issue suggested by Coccinelle using ret.cocci.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 34 +++++++-----------------
 1 file changed, 10 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 91520ca3bbad..6db7fe82be7d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
 No irqsave is necessary.
 */
 
-sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
+int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
-	sint res = _SUCCESS;
+	int res = 0;
 
 	init_completion(&pcmdpriv->cmd_queue_comp);
 	init_completion(&pcmdpriv->terminate_cmdthread_comp);
@@ -177,8 +177,8 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 
 	pcmdpriv->cmd_allocated_buf = rtw_zmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);
 
-	if (pcmdpriv->cmd_allocated_buf == NULL) {
-		res = _FAIL;
+	if (!pcmdpriv->cmd_allocated_buf) {
+		res = -ENOMEM;
 		goto exit;
 	}
 
@@ -186,8 +186,8 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 
 	pcmdpriv->rsp_allocated_buf = rtw_zmalloc(MAX_RSPSZ + 4);
 
-	if (pcmdpriv->rsp_allocated_buf == NULL) {
-		res = _FAIL;
+	if (!pcmdpriv->rsp_allocated_buf) {
+		res = -ENOMEM;
 		goto exit;
 	}
 
@@ -201,9 +201,9 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 }
 
 static void c2h_wk_callback(_workitem *work);
-sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
+int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
-	sint res = _SUCCESS;
+	int res = 0;
 
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	atomic_set(&pevtpriv->event_seq, 0);
@@ -213,6 +213,8 @@ sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
 	pevtpriv->c2h_wk_alive = false;
 	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
 
+	if (!pevtpriv->c2h_queue)
+		return -ENOMEM;
 	return res;
 }
 
@@ -295,22 +297,6 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
 	return obj;
 }
 
-u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
-{
-	u32 res;
-
-	res = _rtw_init_cmd_priv(pcmdpriv);
-	return res;
-}
-
-u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
-{
-	int	res;
-
-	res = _rtw_init_evt_priv(pevtpriv);
-	return res;
-}
-
 void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
 {
 	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
-- 
2.17.1


