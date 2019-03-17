X-GM-THRID: 6668974051336126464
X-Received: by 2002:a5e:8a07:: with SMTP id d7mr9833891iok.7.1552858448165;
        Sun, 17 Mar 2019 14:34:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls5584863ioc.3.gmail; Sun, 17 Mar
 2019 14:34:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz/UylTMXpeGCjpaie1A5Hpd5Lf8jTgIRxxizSGgWuPH8pQXMpUeBBwI9kHx4u4ifDJz9yT
X-Received: by 2002:a6b:b58c:: with SMTP id e134mr9733226iof.29.1552858447737;
        Sun, 17 Mar 2019 14:34:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552858447; cv=none;
        d=google.com; s=arc-20160816;
        b=TnC4xyoq4WRVpxdoBKz0TBN5oZsrFrjZl990If4MMmmIqgOYs5n3oLO4+G3owNo9R5
         FLkr2kz085fNE99dVhtuA9SF6lY9mp+jwUwwAWSn42LnL+7wcO2boaYm80NJ0cXdavUz
         FHL1Dcy10LUa+bZpfCdpni7cnXASMGQdW2MTYje8y0/HKyRdwXKAWfdeawAXoNI4F7ud
         IZypSs/qNUZN9vJPvDA2zRCveueJFi6GlxPFjkdNt/wYwFZfZbBG4WVlo+0r4ONxj6Ad
         6dtOnQA+72hSFMNdO5mmM4Z/lIrY0cYVZtZdg5aiyc521MosPA5Ro9T6QlLH7lY4Ozw3
         deKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=0YO85AQ7YCMTC7hiKWJJlQwA36ulWXOSTKwiOzTCx7U=;
        b=gSUhRcdapnIdEqGAAAkANj4l9SYGbOFrNRCUUqHsUm4+NtzNfIYeVjT/Oj0iqE3f0T
         wpy9GOnjVvTmBl/pSHpuQgPdKmGxcQu5baFPTRaWJCYxw3+DeNTvpTJ3dLA0G5ZBISx/
         Y0EyjPc3/+dn2r5MNCDjO5/N2jmhppx4W2UKxhCspFfJw1ygbuH/X83jPAMrdWR4PFWm
         JkkfyXXBadUTOB9W+jbLzKcz+2OUi2RtVQGiQ6+LWJkCOaKx8CXfUAA7t8PV6MiYLSDJ
         2LxfhuQ6HQ7zDBgbBe881X5dAGpe4Nx3QM+DjCeDN63V3JLIKMrnjl4mQ3/A7ah0IU+s
         eIag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u4puqeup;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id t17si217970itb.2.2019.03.17.14.34.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 14:34:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u4puqeup;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id i5so12758689oto.9
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 14:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=0YO85AQ7YCMTC7hiKWJJlQwA36ulWXOSTKwiOzTCx7U=;
        b=u4puqeup2UBkLc00IHE4uFl/f9SYSuShLvlEtpUNsiQuudK8iMJQ0+Bdzmj5Rn7T7T
         AcR4D/bTcyTlg6pQZKc0izQyKUjQynxtAk+vSzvdW2/yCyoXoDJAL+IcXmFei0QjAqq8
         Hwcq4i3jSgnsf7ZyE2turErT8INhM+ZGelEGIYvXYJSFZMwx5dfXn/LQMQgKHIFkF4xD
         aS+XQ+taRmJLvbJkdz3/KbPk9cC+y1KiTAjk5EWehW9tF/HSryTovjpjFotoyRakVF/m
         0y2jgCfkAnRWmqG11eMB3q/SXhisYpTu/tgH3rlIdthjbCTjaE13UEORIEzsArDXx4J2
         dBJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=0YO85AQ7YCMTC7hiKWJJlQwA36ulWXOSTKwiOzTCx7U=;
        b=sVc/3aJ9aQwD5Bki0zbeItPUCex995rfpRU2RgQNnR2s3dODsYMRFDtcjKCg7fly4x
         Pub+0AiQZP/LRHkD3opp/vP0YCAi0FIjhDQFi7UR6nXzCBALPSbULWtjQlh519F29UP7
         w8//ONgjB2rv1HBqxZu1wmJw2HjjHQ3lJeksDGpsNivcpVsBKbLvPxoVNO8H3lTTHcSq
         x3ZYO1hrPBEbUWZ1+9UNrTExsvc6JLNU3bjjM7C+DJgZES0LPhjZs95J85UDtdYFY1Z7
         vGJLlWOKncq2QfoU0JnoiYy7roZ8msVHJGJKpVo8/mOC7Y7joJFijTuI6Kc0E6DSSVmM
         NmHg==
X-Gm-Message-State: APjAAAVyw+X5ojso5MUQhYuYxaxs7/x2Pu8r5JFbvo6Rcn655T7weCGk
	7qkcykhmX71KxMMevrmveTY=
X-Received: by 2002:a9d:6854:: with SMTP id c20mr2479561oto.99.1552858447352;
        Sun, 17 Mar 2019 14:34:07 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id e138sm3844485oih.27.2019.03.17.14.34.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 14:34:06 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 2/5] Staging: rtl8723bs: Change type of variables and return type
Date: Sun, 17 Mar 2019 16:33:55 -0500
Message-Id: <cce081516153acd64194786cb1373150172d73cf.1552858206.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>

Change type of local variables 'res' and return type of functions
'rtw_init_cmd_pri' and 'rtw_init_evt_priv', as function's
return types are defined for standard error codes _SUCCESS and _FAIL.
Also, change return type of functions declarations corresponding to
change made in function definitions.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
 drivers/staging/rtl8723bs/include/cmd_osdep.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 793bc505fa9c..ab450f717f34 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
 No irqsave is necessary.
 */
 
-sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
+int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
-	sint res = _SUCCESS;
+	int res = _SUCCESS;
 
 	init_completion(&pcmdpriv->cmd_queue_comp);
 	init_completion(&pcmdpriv->terminate_cmdthread_comp);
@@ -201,9 +201,9 @@ sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 }
 
 static void c2h_wk_callback(_workitem *work);
-sint rtw_init_evt_priv(struct evt_priv *pevtpriv)
+int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
-	sint res = _SUCCESS;
+	int res = _SUCCESS;
 
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	atomic_set(&pevtpriv->event_seq, 0);
diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
index 8ed913726d5a..06ab48263757 100644
--- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
+++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
@@ -8,8 +8,8 @@
 #define __CMD_OSDEP_H_
 
 
-sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
-sint rtw_init_evt_priv(struct evt_priv *pevtpriv);
+int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
+int rtw_init_evt_priv(struct evt_priv *pevtpriv);
 extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
 extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
 extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
-- 
2.17.1


