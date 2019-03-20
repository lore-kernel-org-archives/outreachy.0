X-GM-THRID: 6670256423573651456
X-Received: by 2002:ac8:19f0:: with SMTP id s45mr196670qtk.15.1553122636052;
        Wed, 20 Mar 2019 15:57:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:6984:: with SMTP id o4ls1757660qtq.9.gmail; Wed, 20 Mar
 2019 15:57:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzp+/igeVUX4JGz44CASOD46iIcshFWQNilu28ZRL9IAgOWxI3awg78sNeUpfFf6bEf/Ukn
X-Received: by 2002:ac8:2ce8:: with SMTP id 37mr188087qtx.59.1553122635413;
        Wed, 20 Mar 2019 15:57:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553122635; cv=none;
        d=google.com; s=arc-20160816;
        b=qlb7bzjYzzb16gndYHqmPKIGdxkfz9TqljY/YtTfFpnhZwqQvRYmqb77vdOlbpXQqI
         OXcfY+TdL+NaezQYpCYRKr4W/QzONuIOwp+Huyt1oR26tC8y42A/2F+q1a8GP+deJskR
         FoAMSMEoRmBDOqest2lBMS2MFjNZCPLLIPNeWz2TcYvQLN5U2CrNlp7fpEOcyQzzTUTl
         sQZmbzeDeWhbvqZAug4NoNgzDD3FXZ9Tp+xJd4RvG2lmV1hUKDppt/FHlCaffU5LOxxq
         kAyP42BRa0WGAxUPJ+RctH+SU9fCrP+16q9C05lu4JSgAhJZw8z6I2113dq0wmDs7QA/
         HyoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=mtSPnj0FiiNkGiBL1xng9rSdwY1d8LjhxUmW6MZDrL8=;
        b=SUB5X+AZmipKvWKSrtQkGgjM6Vo8BTCZNFRI1wRVfBdGYls3oI7LB8FoyHH+BCjXvt
         hiOnpQEEJ9P8OgwyheNo49PwDroVvxnosKNDmafGinWJ3oBdsLqfVj0PgDw+BUfHjWsN
         xz6mxsgByV6cT4X6a1ZomDkGxj0L5hS73uaeot9F+9t9xcxb7npofTPwGeKwYoz+j6qW
         mmO+NgR8xtOGlG0YfgfNpJY729m7Y7PQWwTEikeAB21NKB2Dl7hSypio+VTr3Qr5We5s
         oD+3bU4nnLgrH2a/n7uwGiCVL0CZjWkjX9eZ8qJiqC3BErlZZGEIP8I19ZgL64k2F9LR
         DARQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OFEQ4t2V;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id h186si316381qkc.1.2019.03.20.15.57.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 15:57:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OFEQ4t2V;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id 3so2587486oir.7
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 15:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mtSPnj0FiiNkGiBL1xng9rSdwY1d8LjhxUmW6MZDrL8=;
        b=OFEQ4t2V1wCy90Y78s4rnT1VJej9U3w96f0DBZvxN4poCtUyrL0Cw9hrmc7nbW6MTa
         F5OtnTcpzzgH/2hfqbxcWXjeiYGvu4mglkTbG63eG3y2VmEQ1fL82e+ytCsTeydN2w8e
         I1iPMmjg3n0UwVXvJ5tbx5tZCbVEy6vTdLySr4RewjGoSBeb0RoSy429NTgzenfhaJhP
         ZAnu5eSiD/z4kcesv2+zF1co1gsTevAqIRMbDvf9SEUmjbisYxYpfovkIVwFrmSzq1ma
         NJTzPzamuLp/HK9FVLCf8f5iLpD7xRmdhu0LSvn2TXc3pGDt3yewkgkT97gPBkzwIDi4
         xaaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mtSPnj0FiiNkGiBL1xng9rSdwY1d8LjhxUmW6MZDrL8=;
        b=sf5LwBl3rOv4CeX1f/OluqRBSxwhlRq/hYB3PcaPlPXVEbPHrXf3RA46zjwVo/ZFoe
         7+RF1prNBtGG+KXi+F+DHoHbyFoVtJVMYI/M9oOenksTj9yfUI1gWN/Gvq6ciM3IjcJT
         HI26xVAal13VUEQ6A/sy1gconlstSOI6uFR7lEr4C59CdvD27w7G6rGZgzxsV7GQD6QP
         NoOKH13ngHpgwXP7senxRUqwvPyAeyfeUspMSBBzy7IDEVcDDc+6H4eI0tIPsXltAQxK
         V+s4E9Wy4I2m41G+Qmdw0LWI2uUnC3qP0K5A4yuPitqHoI04vvnDsY2DJvkE8UdAnKP+
         PEEw==
X-Gm-Message-State: APjAAAWtmAl2uaFWs1e9Pq3vQjTS7y6lbBiliJPo4U9Jw2B0e6+zYd4o
	uNTuyywxWi6nKqPm51xt+zs=
X-Received: by 2002:aca:47d2:: with SMTP id u201mr318044oia.130.1553122634889;
        Wed, 20 Mar 2019 15:57:14 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d9de:87bf:a05a:c332])
        by smtp.gmail.com with ESMTPSA id k15sm1260773otp.17.2019.03.20.15.57.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 15:57:14 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: rtl8723bs: Change return type and type of local variable
Date: Wed, 20 Mar 2019 17:57:11 -0500
Message-Id: <20190320225711.3983-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

rtw_startbss_cmd can return the result of calling rtw_enqueue_cmd, which
can return the result of calling _rtw_enqueue_cmd, but they all have
different return types (u8, u32, and sint, respectively).

As all of these functions return error codes, change all the return types
to int, in preparation for converting these functions to use standard
kernel error codes.

Also, remove extern from the function declaration to maintain
Linux kernel coding style.

Issue suggested by Coccinelle.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
 drivers/staging/rtl8723bs/include/cmd_osdep.h | 2 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index bd3a5a23a418..04c6927dab8b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -256,7 +256,7 @@ ISR/Call-Back functions can't call this sub-function.
 
 */
 
-sint	_rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
+int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
 {
 	_irqL irqL;
 
@@ -331,7 +331,7 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 
 
 
-u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
+int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 {
 	int res = _FAIL;
 	struct adapter *padapter = pcmdpriv->padapter;
@@ -719,12 +719,12 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
 	return res;
 }
 
-u8 rtw_startbss_cmd(struct adapter  *padapter, int flags)
+int rtw_startbss_cmd(struct adapter  *padapter, int flags)
 {
 	struct cmd_obj *pcmd;
 	struct cmd_priv  *pcmdpriv = &padapter->cmdpriv;
 	struct submit_ctx sctx;
-	u8 res = _SUCCESS;
+	int res = _SUCCESS;
 
 	if (flags & RTW_CMDF_DIRECTLY) {
 		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
index 06ab48263757..d3af9f44ad59 100644
--- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
+++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
@@ -12,7 +12,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv);
 extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
 extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
-extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
+int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
 extern struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue);
 
 #endif
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index fa4ebc3d7539..b83824ca2e31 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -122,7 +122,7 @@ struct P2P_PS_CTWPeriod_t {
 	u8 CTWPeriod;	/* TU */
 };
 
-extern u32 rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
+int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
 extern struct cmd_obj *rtw_dequeue_cmd(struct cmd_priv *pcmdpriv);
 extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
 
@@ -827,7 +827,7 @@ struct RunInThread_param
 
 u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid, int ssid_num, struct rtw_ieee80211_channel *ch, int ch_num);
 extern u8 rtw_createbss_cmd(struct adapter  *padapter);
-u8 rtw_startbss_cmd(struct adapter  *padapter, int flags);
+int rtw_startbss_cmd(struct adapter  *padapter, int flags);
 
 struct sta_info;
 extern u8 rtw_setstakey_cmd(struct adapter  *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue);
-- 
2.17.1


