X-GM-THRID: 6670256423573651456
X-Received: by 2002:a25:4113:: with SMTP id o19mr110883yba.20.1553122927620;
        Wed, 20 Mar 2019 16:02:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls1306259ybb.12.gmail; Wed, 20
 Mar 2019 16:02:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfvTdcVKsoNV6E1dfVd0BEI2VCXEg+d6ZaqPLDzq4pDsNQD+36/9xWxv4xkzAaKSmcU2An
X-Received: by 2002:a25:bb8c:: with SMTP id y12mr96803ybg.89.1553122926764;
        Wed, 20 Mar 2019 16:02:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553122926; cv=none;
        d=google.com; s=arc-20160816;
        b=vGE7I+Cfy+AnVDy9l1ui8yhZsGBvw8We8DJhV16ZkcExiNjVKtbcvgN1yIL+ZpuJI2
         TMs1xhlGW0e0lGs08y0fSloU4z91XdEi8kvLuEo3Y3e3oDEmoMx9OTslcXyG/hm24rKO
         5MtmKRQcduM9cfo2RyZ12VeM/JCLgdowbuTdNaV6L1APai9W77+Geb6EyPb4Qx6RarcU
         0Knp4Zt9VC0tI+KPlwgUHNYi+4aOZrn5EX4PF62pIT11+HWDkq5wn+u5pZ2xjJGXQHg5
         gUri20BdVFuxhu5mG/7T+mVggi5+dOf9yXYfh8CjSga3i+SKcA4wS69PI/cL34aJWhmv
         9Fvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=TrB6hQzM2SkMUDb/nCUpHH9vm/Qz6wMHXfH1DwDot+M=;
        b=VljNZ6uv1jBfGnf6t6vP4I4xifAsFusRx7VLddI7it4I8QZn2H9IjHSYk2ylHdQhXV
         XOTn6LLJwoO08EpGlTvq57QfjSVQaspRF2A7e9EWcb9ohWHomQBeNhY8SGQut6GKgwte
         n3ANgkZikNfFKR7lxp6JH7sSlCk8HI9h1yrD8QU7r1i8Ht7WUoiwTqkktJE+76Q0TK4F
         KdKjIGeDlXrBOC2oLmvcjKSpC9dTdSrK3/rNU21S6QJE/k5T47bz8YGCFD6A985QoKfo
         tFys4mjyq6ex9FJS37YkRN4z86j690YyESrr6Rcpd0/Fr4hNbYYBHCG2mKWjJ9ZmJH3C
         gm7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kmJpRKBc;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com. [2607:f8b0:4864:20::235])
        by gmr-mx.google.com with ESMTPS id k15si236146ybk.0.2019.03.20.16.02.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 16:02:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) client-ip=2607:f8b0:4864:20::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kmJpRKBc;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x235.google.com with SMTP id e22so3253905oiy.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 16:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TrB6hQzM2SkMUDb/nCUpHH9vm/Qz6wMHXfH1DwDot+M=;
        b=kmJpRKBcdOh80giQlqcZFEJhYJoCeDcbys5wnU7ga2wfYUYQ0oczERJtpjjp+nL0/9
         hglounBy7PAoVipgQ5Hr4vIyLu8bzWW9FQg3aytmN+BFFWZFrB8ZZmXAMH24VUQjAH3m
         SKlSwL8jqzNpXdiv8cJwwNkdtxPiOJr2b4+k0aDtc+/fp6sVncNbAUwLrqlDFZQKeEAT
         8Vuu0Sg1VXgOY/7dZgTMhBqB45opnK4xjINM5qAJWwMyzt4s75mL1ECvl/VX58s3KQ/y
         w+RuOZe0xTWn4AmPaEFtrYAVsoQfSnzW0VebaA4uw8vjOyPxmfbcl/cF9Tnu9pmm5bz+
         lkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TrB6hQzM2SkMUDb/nCUpHH9vm/Qz6wMHXfH1DwDot+M=;
        b=oxNJUp/4ydg3fQ1xA9uXRZ07gyFJK+AmVvLj8+Zhei40I0wPWz1IjPXnUlYOSu/XIA
         ubXn81hi6mKp18letAVzXrhRLfj6XhYUuwBnEFA+xjrkLZEe/wbOOCA1monOLpDuxhCr
         1DTpv3iuWSbmrHilhpHdhCIiCcHQwNnDgDx7CD+CVQGFllgDjCBDBTbGl5DRPLGJTDuI
         55xotBh2O0PKJw1rD9iu3QG0uHQElUALYzdIEG+aEY+ygTq8jCci8z6eBLwST4dH7vek
         UWr/IK01NhQWVU4vVrmT0c2Maq5uOYs/Kib2dwzKBXe1b+YB8jtyxk1YyM0wqaO4PHb0
         3Nxw==
X-Gm-Message-State: APjAAAU0LV+J/0JJqSwcP0mEXUB1rAuGTZQGNWfy/+xjy1RdxBCLy7B+
	IhycVRc546HpucawhUBL4rg=
X-Received: by 2002:aca:b703:: with SMTP id h3mr326656oif.14.1553122926456;
        Wed, 20 Mar 2019 16:02:06 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d9de:87bf:a05a:c332])
        by smtp.gmail.com with ESMTPSA id p7sm1258378otl.64.2019.03.20.16.02.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 16:02:05 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3] Staging: rtl8723bs: Change return type and type of local variable
Date: Wed, 20 Mar 2019 18:02:02 -0500
Message-Id: <20190320230202.4112-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

rtw_startbss_cmd can return the result of calling rtw_enqueue_cmd, which
can return the result of calling _rtw_enqueue_cmd, but they all have
different return types (u8, u32, and sint, respectively).

As all of these functions return error codes, change all the return types
to int, in preparation for converting these functions to use standard
kernel error codes.

Also, remove extern from the function declaration to maintain Linux kernel
coding style.

Issue suggested by Coccinelle.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v3 -
1) Missed change log in v2
2) Changed commit log
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


