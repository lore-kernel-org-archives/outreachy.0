X-GM-THRID: 6947408169247178752
X-Received: by 2002:a17:906:6882:: with SMTP id n2mr25025814ejr.50.1617569517476;
        Sun, 04 Apr 2021 13:51:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c653:: with SMTP id z19ls5350818edr.2.gmail; Sun, 04 Apr
 2021 13:51:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBONID9HwpnhaaBfWjfhMYUnmsYJTgPLH11HEaj6AakGhsMb75h+R92J4GTLtbypLou0th
X-Received: by 2002:aa7:da46:: with SMTP id w6mr28314787eds.40.1617569516015;
        Sun, 04 Apr 2021 13:51:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617569516; cv=none;
        d=google.com; s=arc-20160816;
        b=wIeNXjUfXjbBk4fX3HM+tD269tMhr3tJPEGUmwFSxQ6uXdVF/8+BTb4TsyDjkLj9+S
         5wuOILu1+sz+ZEzbehQVOpoaIcr8J4ecx1BW7SjsyKgO+gjzoSjTzO6m+trUirGfOG4W
         OioEWYhW/yCbEfsYR7oOOEDQG87cA6JAgC0gUY0uEMJRy8J8/yk1+kgV80kfYi0z05/I
         ZMCBMdDUzvdxaIXVgwArlP/TJMdH6Ic8Qvk40IeEblKHZXbouWzd1QvaK7CHcx16/Cgt
         NhEFg+tGXV0pz4a2zfUjLTLztCzceMGLX6CpwkIuK4TUn7pO6EwemgmllV1ZJSBBkQNO
         +Hnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QzV++jhT27uc2t1qnJFUNLJDodKEuAS8LLzpt9xx8wo=;
        b=b2CTUpdBW+V0+jJjeBY2JFDbcy/1oHVSr5qAK6f8dVlxP/XhkqjJABZi7CwupwjViH
         11hByu+Ri/XrCul/FG1/b3s7L6ShKaMK7lJu3FRCSjPvNyhQKkx3kpV2w3mgn8uVX+dy
         ZNLvKh/G273DCbYwDY0HrOOV4NrA9Kf0B5qB2HU9oljd6po0jW85U4KJCA4q5RLZLzvF
         vqwL2Osp7o5bCJWNxB4acYfsizxEDyiDBDXBL9OFy4/UDc93Y0a5LKc94vV3mJtA2JiX
         mvHgPai6Wg43p5L2AkXNudNok9+3JRC4tf6FI0bJ3x6fyn+6YCjGEQ4d/Ncsurjg4oKW
         CG7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6VyeHCo;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id f25si2025221edx.4.2021.04.04.13.51.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 13:51:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6VyeHCo;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x131.google.com with SMTP id i26so14756081lfl.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Apr 2021 13:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=QzV++jhT27uc2t1qnJFUNLJDodKEuAS8LLzpt9xx8wo=;
        b=K6VyeHCogGvRhUaBohFgBjE1xxM8DQJuwnJ23Z2pijJO/xgS37x+tTOGtC3Z9xV7T/
         cOpn9Ov3F7KQG5/+OCGXCn2DZrOJ0EReKDuF3JSaB31CwGDT+sLhVy21/wvK202leU8m
         qOdQNWyNi1GaCb3Otgmy2a48vcKqBdmaJ2iCX0gygSx2LC6qpwD1YPVrR2FQym0+WLz2
         uTkkEcJU+wdTHu4xs65+dG/dNIbujWo/sVUzEpcr/9YuL9Qze+2N9CkMk3BfdkvDncxS
         am1C8UEXo+/6X1+lWYSVqfXTEeOvYDXsxYG9pg3lncbRTdJZyEiF/+4uFRnyIKCLbc/g
         ZJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QzV++jhT27uc2t1qnJFUNLJDodKEuAS8LLzpt9xx8wo=;
        b=Cm89tGI9ji12+ZapKmW8745nqz+5bBI2+0uLIHjez+6MzHNgZnx97QnmrrYpv/tzkF
         HO+Bk1zZcYeeEdezRbFyaIicS5lv6RqUZpetiyJNCd3VDfayf6g2DiUwGYGLabyelxFp
         Av39HxhZ6fjaxYH3yK1S6Fi4S7skdXIGS+vd6KrkQwpSTaZIzWjROx/8V8MJP4KFr36e
         WpdboUxTY8/5R+gta+RffteqfTf11HuycUZIiatXXApYrqXXYi2BAPqQTNwHhhMRbwFk
         0Wx1WMcD9cjB0XV1Vmv2R6XYqnq6jljgYJ7I6kvH/wAK5D7E3hkb8+cjBNubNp5ktTBI
         XpkA==
X-Gm-Message-State: AOAM5331vSyzuICsm0CGX95uctGdjuW3+uS3LnUN9Xsc2aGQd8v8UdN4
	qMqSHGQPd/PGudfph4HhijkXISckQDXhLVM/
X-Received: by 2002:ac2:53a7:: with SMTP id j7mr16793134lfh.305.1617569515361;
        Sun, 04 Apr 2021 13:51:55 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id y23sm1657365ljm.53.2021.04.04.13.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 13:51:55 -0700 (PDT)
Date: Mon, 5 Apr 2021 02:51:54 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8712: remove extra blank lines
Message-ID: <d56183614a04590bdf3a6280b7f23664a5bb394c.1617568354.git.zhansayabagdaulet@gmail.com>
References: <cover.1617568354.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617568354.git.zhansayabagdaulet@gmail.com>

Remove extra blank lines to adhere to Linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.h    | 1 -
 drivers/staging/rtl8712/rtl871x_mlme.c    | 3 ---
 drivers/staging/rtl8712/rtl871x_pwrctrl.h | 3 ---
 drivers/staging/rtl8712/rtl871x_recv.h    | 1 -
 4 files changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.h b/drivers/staging/rtl8712/rtl8712_recv.h
index c70b37ff554e..f4d20b0efd4e 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.h
+++ b/drivers/staging/rtl8712/rtl8712_recv.h
@@ -85,7 +85,6 @@ union recvstat {
 	unsigned int value[RXDESC_SIZE>>2];
 };
 
-
 struct recv_buf {
 	struct list_head list;
 	spinlock_t recvbuf_lock;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index f5886b39b3b5..8a97307fbbd6 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -124,7 +124,6 @@ static void free_network_nolock(struct mlme_priv *pmlmepriv,
 	pmlmepriv->num_of_scanned--;
 }
 
-
 /* return the wlan_network with the matching addr
  * Shall be called under atomic context...
  * to avoid possible racing condition...
@@ -358,7 +357,6 @@ static void update_scanned_network(struct _adapter *adapter,
 		plist = plist->next;
 	}
 
-
 	/* If we didn't find a match, then get a new network slot to initialize
 	 * with this beacon's information
 	 */
@@ -621,7 +619,6 @@ void r8712_indicate_connect(struct _adapter *padapter)
 			  jiffies + msecs_to_jiffies(60000));
 }
 
-
 /*
  * r8712_ind_disconnect: the caller has to lock pmlmepriv->lock
  */
diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.h b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
index dd5a79f90b1a..bf6623cfaf27 100644
--- a/drivers/staging/rtl8712/rtl871x_pwrctrl.h
+++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
@@ -17,7 +17,6 @@
 #include "osdep_service.h"
 #include "drv_types.h"
 
-
 #define CMD_ALIVE	BIT(2)
 
 enum Power_Mgnt {
@@ -63,12 +62,10 @@ enum Power_Mgnt {
 #define		PS_STATE_S3		(PS_ALL_ON)
 #define	PS_STATE_S4		((PS_ST_ACTIVE) | (PS_ALL_ON))
 
-
 #define		PS_IS_RF_ON(x)		((x) & (PS_ALL_ON))
 #define		PS_IS_ACTIVE(x)		((x) & (PS_ST_ACTIVE))
 #define		CLR_PS_STATE(x)	((x) = ((x) & (0xF0)))
 
-
 struct reportpwrstate_parm {
 	unsigned char mode;
 	unsigned char state; /* the CPWM value */
diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index e83c256e1474..7c9995060a6f 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -29,7 +29,6 @@ struct	stainfo_rxcache	{
 #define		PHY_RSSI_SLID_WIN_MAX			100
 #define		PHY_LINKQUALITY_SLID_WIN_MAX		20
 
-
 struct smooth_rssi_data {
 	u32	elements[100];	/* array to store values */
 	u32	index;		/* index to current array to store */
-- 
2.25.1


