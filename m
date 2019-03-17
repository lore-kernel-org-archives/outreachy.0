X-GM-THRID: 6668974051336126464
X-Received: by 2002:a02:5693:: with SMTP id u19mr8797872jad.5.1552858445800;
        Sun, 17 Mar 2019 14:34:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:911:: with SMTP id 17ls2846411itm.5.gmail; Sun, 17 Mar
 2019 14:34:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzg186NM9pE2iZVR/96m7Vl8iSEhCiBJa94Yfl4p5Ed7I+LP3wYz34RRYHNk7dKIhpwyhLo
X-Received: by 2002:a24:9fc4:: with SMTP id c187mr8606354ite.23.1552858445282;
        Sun, 17 Mar 2019 14:34:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552858445; cv=none;
        d=google.com; s=arc-20160816;
        b=xDUFnp6AJvaw62lq5JSjWXRVVk20M8zjdghV28bR2i3ic+ch+mNtokIpC3KjJfA8TH
         4nWPXwgOShj9rtTOg9EmupddUpLLuqOCyIY5GTqrGZJXxu63nEwo8k21wk9lLovqBnp9
         JigaBWqW17N9C9GhytWZIXmEc/lKZmHYRgny/XpfAPFeEbP8FFKQKkrC9d/plOFdCrqa
         LfLP2fWsR9rwyOSO3Zd7FialEcQ1PtlHd+MYPZhSQAamje5/saEuqDYoJv0pq2UFckPp
         4RCwT0A22jPDAaCZt5qw7J+IzZaBt2D9br8xIJZf0+x2TdtgHBJAaVizaX+890iJPQuz
         G2jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=D61qdeHrShnvmIUfglRd4lYiIoo9GFwZxtX9++zOlm0=;
        b=qNeztSmlG26U4JynP0+CfumSeMH+X63Hq2lU8KKoEG4oT23GeFsQ1oaXr0+60LrlQs
         CczC+wokUXagOeY5CICE4dawtgw8/j+4BugM9rS8uIAkX396PJQAj16Z+rl8G6XC9Uvm
         XFHhcVsin9xkd7DHsJyZfGeAHdO27yE7GRZ7nAWICe/MQF7L0GvT0AGeXpmAI/TF1n3C
         PR6jUQjrrV5JwFCtJZjAQGfY7LuCIhFkJRgBJZO5acfhOZkOaLweCXHKMeutvndgYOVP
         jJBgO5H4iSXBcmKdDcO0aHapkY+aIAop52nS/x5Njib5qygdxxgMbYAvowzO7ZJa7fFh
         4+2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pxx4hv6v;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id 71si430461ita.0.2019.03.17.14.34.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 14:34:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pxx4hv6v;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id e80so7649818ote.5
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 14:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=D61qdeHrShnvmIUfglRd4lYiIoo9GFwZxtX9++zOlm0=;
        b=pxx4hv6vntiUVnKdEO5SGHJCBc7Wr/aaXOCflOK0cSdpKJXFgZAdhX9bc9XwKz+lzv
         hGaiNypHN8aaSGwM8Mp+tSzh+nrqyCy4Yl4kB1NwEALj2dT3vT4mkhK6X6g/MzwoJb4B
         +nNuX/a69kumUObY6dXQxr3vp6lXlIoCsducq/J/kirE8gDeg3E9a7DdjySQiVd21xLD
         pnXBqLOErg4trCrIR2rsUqH9/61qUZPLkZ0UpNkxE5qjVphkybxxjo4qyo505jiiWD/E
         oKDNMdhArlSlFGMCNe3yF23s8OtajVthxGmJFWf7dGfyl8mITKnFSKw9K3TnyQ2PeWQw
         dR0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=D61qdeHrShnvmIUfglRd4lYiIoo9GFwZxtX9++zOlm0=;
        b=fkkVkHassR2Nocxquw/mDIO0FUxcAjkRqWMSVPz8CeTnN8i1bYJbrPzZD8Fc9F3KSJ
         ohh+xxYaIhw+zr9kiLo3pJm0YdKqeAZ9QqognI/p66cAIsazcLkbmfJk6rKv2bS3gTRN
         O79IA1vh92g2Vu93hQLyiZsQKI2xrsHL4ujo4o+m5Ii+8PANoszqGsXTlxlQuX745Hr/
         Dk3zXfXIPoX8E5EN91MU3i2yhNlzwjx1gMexTnFXPqaCLuBH7KHBIJiyx/dLZc1k0TCg
         zV8xYZXKr54ScDy4TZNLakZFrag1AXT4ushLFrYdvzRScUjT4WfMaIfTuHvTW8R8jdPW
         vpMg==
X-Gm-Message-State: APjAAAWn9UDg16f5llzY3TqakVuuOZdq5ThZ+nDoOab4T92nb6kHrmWy
	xKTGEbiTfkfeh4Mm50bcYDg=
X-Received: by 2002:a9d:4d07:: with SMTP id n7mr570433otf.162.1552858444976;
        Sun, 17 Mar 2019 14:34:04 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id f26sm3216377otl.20.2019.03.17.14.34.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 14:34:04 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 1/5] Staging: rtl8723bs: Remove wrapper functions and change function names
Date: Sun, 17 Mar 2019 16:33:54 -0500
Message-Id: <d5ecbff216134a1fe248789395ff5659cf6207e6.1552858206.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>

Drop wrappers rtw_init_cmd_priv and rtw_init_evt_priv and remove their
function declarations, as their only purpose is to call other functions.
Change function names from _rtw_init_cmd_priv to
rtw_init_cmd_priv, and _rtw_init_evt_priv to rtw_init_evt_priv in
function definitions and function declarations. Also, remove externs in
function declarations rtw_init_cmd_priv and rtw_init_evt_priv, to
maintain Linux kernel coding style.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      | 20 ++-----------------
 drivers/staging/rtl8723bs/include/cmd_osdep.h |  4 ++--
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  2 --
 3 files changed, 4 insertions(+), 22 deletions(-)

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
diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
index 0749936df032..8ed913726d5a 100644
--- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
+++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
@@ -8,8 +8,8 @@
 #define __CMD_OSDEP_H_
 
 
-extern sint _rtw_init_cmd_priv (struct	cmd_priv *pcmdpriv);
-extern sint _rtw_init_evt_priv(struct evt_priv *pevtpriv);
+sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
+sint rtw_init_evt_priv(struct evt_priv *pevtpriv);
 extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
 extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
 extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index 299b55538788..fa4ebc3d7539 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -129,10 +129,8 @@ extern void rtw_free_cmd_obj(struct cmd_obj *pcmd);
 void rtw_stop_cmd_thread(struct adapter *adapter);
 int rtw_cmd_thread(void *context);
 
-extern u32 rtw_init_cmd_priv (struct cmd_priv *pcmdpriv);
 extern void rtw_free_cmd_priv (struct cmd_priv *pcmdpriv);
 
-extern u32 rtw_init_evt_priv (struct evt_priv *pevtpriv);
 extern void rtw_free_evt_priv (struct evt_priv *pevtpriv);
 extern void rtw_evt_notify_isr(struct evt_priv *pevtpriv);
 
-- 
2.17.1


