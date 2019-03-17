X-GM-THRID: 6668974051336126464
X-Received: by 2002:a5d:954c:: with SMTP id a12mr2548913ios.31.1552782752930;
        Sat, 16 Mar 2019 17:32:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7644:: with SMTP id z65ls2539348itb.4.gmail; Sat, 16 Mar
 2019 17:32:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy8pxf4LBhLoVFvGAy3q6UN49Ho+yF2YI7lQgb4cDvI0er1MVSeqSgE14AWcshUi0r1ppmb
X-Received: by 2002:a24:220a:: with SMTP id o10mr6516689ito.22.1552782752093;
        Sat, 16 Mar 2019 17:32:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552782752; cv=none;
        d=google.com; s=arc-20160816;
        b=tVqNzVlqb0Cv9e4r1yNxGbWKADk3Ba3qXiyjkHIewG8Wjs8/ip/CtCEv+r5SiCoIG+
         GT9qRg9TdKJdM0ShsVLLYnsJdZtzMsOjP802RkUOaW4NV9bQMyWg3oCtyoF0VvbsGYec
         g62PFWvZDwpzZ96yiTZmp4TBf8ehpqrniOC62VpEeCdgO1FfAhybaZQm4VcNaoEEZz41
         SrnW7eppGdLumM3qXArmxkcvh5gISO+oi4DS/Z9uN9BVf4phiqzs8Y/tknktRhvIKdTJ
         QNA07envKCe6xe3+rZcja+Nv6Rm75oqILkPqf5Sn/fLhhqW3ZpaJO8Nw+t/BUJ6aRBf2
         M5TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=xt2jlusFidDw1viZs4rsh5NORX2lhYfHkpipMjRuZKA=;
        b=lg/Z/vltMMafWCHr0kQCXwiTdF9XTT/ByFruY7rY/+r06hQDYQHW5X8uXdf5wlzcAN
         nAbb3gZBJq2l00TWexSxopgRVjZlMsLnGh0uBios9uZEteMDxP5FPa/Ya+sH279pOyNm
         EFHB4Q4wdFAqBiisnzvUPJxpyoIdUIXAy4skJZvtr9cAjBXL0DMMTPLuVf5QtCS1oWyE
         qrNR5sRVDjZ0dZoL1DJsezYy5H7rGxU39gOHoX181lwDBuFr5zHCM7VWliLA2PZQdy25
         /pwzDE5aW6tMHVOO9aNH85lKA4HNr0TWF8p5srlGC1d1J7Di46DcrT6eJY8RVysyPo4N
         tcAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AnI5QwLZ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 186si436166itz.2.2019.03.16.17.32.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 17:32:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AnI5QwLZ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id c16so137010otn.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 17:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xt2jlusFidDw1viZs4rsh5NORX2lhYfHkpipMjRuZKA=;
        b=AnI5QwLZj+2UWBQ6XAnbBKDb0ZcmdeYIpA+q6b14Uxd2Kuemy5FNbHk8YZwxrnnFhQ
         fq2Z399oSNa/Lndb0tLmN7IaMtFxUsogKx8FvtNyGUwW1UVm0HZRYe36SBwe5u1O5Rvg
         3vvWm6jr1Eiv+EfvyNvhUSCYiDhYZp5E4hPpXnu1KDG2M9K6yPMOfOW1RazuK5cXaVMf
         UwqAeZQ/BQ6YrP8dKJOlV5t+0FqFnxuSJHhyGR2DNiTADYTjInd7tzVdzt3jNSUcLWuM
         eCJJBW9hPnLuWnwVe7NA508TwrCpnMu9Zk3CrQo/0YAlCDuZqQ2hFj5YnA1UolmwUkQu
         XgUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xt2jlusFidDw1viZs4rsh5NORX2lhYfHkpipMjRuZKA=;
        b=cBsvSzBmuAL2BG9RVOiUcxkEUkLQJTpfVjXlHHeVFjxKN2Q05LkO2fdt97bQeMSO+z
         4+y4x5PjRYIHUWdsnZTTw0umuFYJzvyti/YuVbA8fSA/PnzT5hWcEQj00P7reHI7Hter
         rUAYN4D/xL5Fw+yB6QjkTHJWyLhkBzwsd2LRPFPn0AYxx9XAmIGEci8SIr1XlFo165ZX
         KNM/3du4InLNUhQq3Va3GcAOv/pTqnajt3nLVi7dHKP97oYg2B2TZXRkTJd0AfjvSIkC
         XtK7PNMbfTPMExpqobPJyz/gFm0NdvOs5Xfp2eQWTF3Dj5NYov04dcGShfDsI+lIaL6g
         G6GQ==
X-Gm-Message-State: APjAAAXPTZZLi5r0+dHEHX2gAWKzzGMDainfTS4HH855sOfiFTQ6EGqh
	GvX7S0jDfkBcoovjuZ9FbS+VMHeX
X-Received: by 2002:a9d:a67:: with SMTP id 94mr6219726otg.63.1552782751755;
        Sat, 16 Mar 2019 17:32:31 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id a6sm4168579otd.23.2019.03.16.17.32.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 17:32:31 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 1/7] Staging: rtl8723bs: Drop wrappers and change function names
Date: Sat, 16 Mar 2019 19:32:18 -0500
Message-Id: <2b464c5d0bc1e9308855a23db02c721e5cf6d3e8.1552782299.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>

- Drop wrappers rtw_init_cmd_priv and rtw_init_evt_priv,
as their only purpose is to call other functions
_rtw_init_cmd_priv and _rtw_init_evt_priv, respectively.
- Change function names

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 20 ++------------------
 1 file changed, 2 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 91520ca3bbad..793bc505fa9c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -162,7 +162,7 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
 No irqsave is necessary.
 */
 
-sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
+sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
 	sint res = _SUCCESS;
 
@@ -201,7 +201,7 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 }
 
 static void c2h_wk_callback(_workitem *work);
-sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
+sint rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
 	sint res = _SUCCESS;
 
@@ -295,22 +295,6 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
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


