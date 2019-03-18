X-GM-THRID: 6668974051336126464
X-Received: by 2002:a63:6c84:: with SMTP id h126mr7808041pgc.102.1552950771641;
        Mon, 18 Mar 2019 16:12:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6c81:: with SMTP id h123ls7007310pgc.5.gmail; Mon, 18
 Mar 2019 16:12:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyvKFjDq2fdo8tYoUwF4os94Cbc4oqz38Q7s6uxbEhhNwZR7D3S2VDDLnd4xyWy4D9059vf
X-Received: by 2002:aa7:83cd:: with SMTP id j13mr6169821pfn.133.1552950770895;
        Mon, 18 Mar 2019 16:12:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552950770; cv=none;
        d=google.com; s=arc-20160816;
        b=A6XnbbllIxW6hcEB+VMV3rNMUkdWUl+hnk75ka/mnQd6+WUekhNTc/uMGPp7U4L22L
         i5z9nuIw89f+XmZN9aJidPaKx/k/Eiz7fMvGnGKsCqczIs+ENkzR3r71vQ1iEuonz4Jz
         wpfCaKkr756NEFxIjpuR3AwAi6DqHUp50pAqumemMq8DQOS/GaSEa1cJfUa6PyUDRtK7
         Y0X+0xC0DYZVyhQD+qGW+hAyP3Hh3x+WSNaRbICr/GYiiBSYPgXiyjOTtczZLoq+NAUK
         0tN0YTzwBAPCqG1Y5IBtSUoAeU3jMrmmIhfl96/xllCIusAQe+pZxytNLqZl2N967Buw
         qIyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=k+0roazE4PEisdfoTgQ3aVvof+Arp6Ab8YiqaQDRV+w=;
        b=p8cihtj5ujGE1Kvw9WJ2Evh4Y9+b8n6wcHFRzwV9PPhttqXOfeNAv5W5NqlULsMXlB
         B02RMIknjWI4IiggkhaLYGjVk/VawNQUTG8fkKbmObfNXcLaqBzdTbybAG3OOClb/tmX
         v8OFaqcVLw7Q5LE1bGUojciGgMsFcceVg5PP4BlmxiUkL98ybH6OhAX5ASDZJ3YYWmIK
         6KUaeKfnwWTFgyKPwae228oinPILdv8lI5HSOUpK+fdeY0N+CWVOjSyoeR719aKI4Rdg
         R5tGZxQTWx15Fw774wZ/ElBenRIbydtdbj08aVgapKE0+gSExOL6D67V179G9MHYPPpH
         4Y5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEuElrgI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id k13si235037pll.0.2019.03.18.16.12.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 16:12:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEuElrgI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id h7so8066541otm.2
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 16:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=k+0roazE4PEisdfoTgQ3aVvof+Arp6Ab8YiqaQDRV+w=;
        b=rEuElrgIJMwEeAsTeUB6IHU5FC8MEBBhF2Ca3h8fV6PBb3p3fTDgzZuxCsztfe8hFl
         FhEzZocfm8+4x8WhWoJhg8s3k5JoI6blOEa+s/eiBxHHgKHQG7kRVX8tLewUQq0oU58z
         O871jglvtrEcf1qCeBio4s+pvT7lyfhYsy/SlbTSavu1ZfGkuPEz0wNy4UBu3xRqPyuS
         fSsLIIqa48yKBngBmLUAu0WdJOLaW7loS0FnPejaJ02aG8kdI45eUOvIJvnU+MEEi9/+
         YLDd09tbekMQm0D3DPhXKFUxF+7yrcSVfttFR16b969aqlnwKkW/lCrvncKoONGQOS4j
         iOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=k+0roazE4PEisdfoTgQ3aVvof+Arp6Ab8YiqaQDRV+w=;
        b=pWZ8pXhWAQIvbwM37F+Us/yz+2yHgOA1Uc6L9usj5Q4YEFM3XQKup0h6ne8lYl2ZVp
         Ppm6jP+IZi8DF5zy5fhBWVZAyi8Va0uprs4jBX26ljbk/TpWMxriRGO6RgdVaAIoDD2U
         5jKjwKeMKaYDIpG2t+qcAnEW1iBBbdlP3BM/01FdYkxykYN0kK0O4MlEkKndweuyYYB2
         TsfqGMNiuo6ivgbn+IeUEAvrhEEXn3+3thidoSQJaiMrDxjw45t4ek7q9RiWn2txkprT
         E3lP2FvmqPj+XyRlKpA2v1q1RIdGrgTwtl2H4Q2JTFkiiV8xt6UucMWw8qoqRP+6E3VQ
         vEjA==
X-Gm-Message-State: APjAAAW/Akvx4lN0VVu2auEPHCsYQPDk0ouOrj3EMCOYxBsgaxSBTqPr
	BKlOmU/Tpl5Wy7kUEhxiFxs=
X-Received: by 2002:a9d:561a:: with SMTP id e26mr12651426oti.332.1552950770222;
        Mon, 18 Mar 2019 16:12:50 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:34ed:fd05:e76:6c04])
        by smtp.gmail.com with ESMTPSA id n3sm390663ota.81.2019.03.18.16.12.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Mar 2019 16:12:49 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3 2/4] Staging: rtl8723bs: Change values to standard error codes in functions
Date: Mon, 18 Mar 2019 18:12:34 -0500
Message-Id: <20b4509f30e64a7a04247192c29a8c7b77260fac.1552950374.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552950374.git.madhumithabiw@gmail.com>
References: <cover.1552950374.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552950374.git.madhumithabiw@gmail.com>
References: <cover.1552950374.git.madhumithabiw@gmail.com>

Change values for standard error codes in functions rtw_init_cmd_priv and
rtw_init_evt_priv, as _SUCCESS should be 0 and _FAIL should be -ENOMEM.
Also, change the values in corresponding call sites of the functions.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v3:
Change the commit log and function callsites
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c    | 6 +++---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index b67a5f9c27fa..32d8ff9e41bd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -164,7 +164,7 @@ No irqsave is necessary.
 
 int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
-	int res = _SUCCESS;
+	int res = 0;
 
 	init_completion(&pcmdpriv->cmd_queue_comp);
 	init_completion(&pcmdpriv->terminate_cmdthread_comp);
@@ -178,7 +178,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 	pcmdpriv->cmd_allocated_buf = rtw_zmalloc(MAX_CMDSZ + CMDBUFF_ALIGN_SZ);
 
 	if (pcmdpriv->cmd_allocated_buf == NULL) {
-		res = _FAIL;
+		res = -ENOMEM;
 		goto exit;
 	}
 
@@ -187,7 +187,7 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 	pcmdpriv->rsp_allocated_buf = rtw_zmalloc(MAX_RSPSZ + 4);
 
 	if (pcmdpriv->rsp_allocated_buf == NULL) {
-		res = _FAIL;
+		res = -ENOMEM;
 		goto exit;
 	}
 
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 5c0fbf5170cc..9021bf519605 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -754,7 +754,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 
 	rtw_init_hal_com_default_value(padapter);
 
-	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == _FAIL) {
+	if (rtw_init_cmd_priv(&padapter->cmdpriv)) {
 		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
 		ret8 = _FAIL;
 		goto exit;
@@ -762,7 +762,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 
 	padapter->cmdpriv.padapter = padapter;
 
-	if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
+	if (rtw_init_evt_priv(&padapter->evtpriv)) {
 		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init evt_priv\n"));
 		ret8 = _FAIL;
 		goto exit;
-- 
2.17.1


