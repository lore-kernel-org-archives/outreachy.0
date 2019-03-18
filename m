X-GM-THRID: 6668974051336126464
X-Received: by 2002:ac8:3144:: with SMTP id h4mr11715153qtb.20.1552950768491;
        Mon, 18 Mar 2019 16:12:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:25cc:: with SMTP id y12ls6056629qtc.10.gmail; Mon, 18
 Mar 2019 16:12:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWqzExVCv178RHvi1dVv3fbpwSn9eanLB0g72kttKPz3eZDday+6Z2fGFOFCAUqT0Trbh6
X-Received: by 2002:ac8:1b46:: with SMTP id p6mr12014075qtk.33.1552950767832;
        Mon, 18 Mar 2019 16:12:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552950767; cv=none;
        d=google.com; s=arc-20160816;
        b=AA5PegGLSMP71G1cza+bc00fhpVvJkdYMwsO/H1we1bdhjaJ35SvZfSz9DSj7vb29q
         KNzIJdkhTlUoFV+9dFRSAm0XvubrZbt0wBLJ0p1slWIkUiKI/xhuH1FhKL79CxdVHhVF
         vYQN3G2o+KWym2nVzHLysGog9O53i8I6i/rEip85ESk9w44W625kGI1i4WgAp1kdod0N
         izOAi37pI0eMIv9pXrLkkkaTA2eQU8e+6XjLLt2BZmVFqUGLW6xGMg+yREjxE998ZoYS
         2gqimKt2VDpT9TtUO10YKBBwIkq0UBpCAbKiDTgHPocujFz8f9GOunj7q37ZLku7huxK
         uvvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=2vDzMfZNHgJ79DJ8bzBUW6nZqGswAn+yCtq6P1Um1J4=;
        b=LX2Xbx/9j0klN8FxUuepWowhNbWV7zt/Tc04m4rgQytiVGzYlOgA3tahWlNa/IX8KQ
         J2KZC9nyJL8iBBUbfvpFXU9q/aiIFixJsQtDLu8Ox5OgeGBRUuw8KqbOE0XJ6liwiSyi
         vtinMavmLK3jLSelpdfen5KnQTvZ5dbwnrbqCXkG+/pPH051PPQBIdIjJrhVDdgpe03N
         pJq5/dbPK6j2Wyi6fleNxfCh3yz8/VfNL/gn+WmH+/eP361YGXNYObnxcdKGTXGXFZ+h
         yArR1isW+K3ujP0eVk4J9aXNFzVrLjIVYckoKep6d2qnzpENtNIiWL0h24oYbs+jXWnY
         0F4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mrcSLbAE;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id m1si641643qtc.2.2019.03.18.16.12.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 16:12:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mrcSLbAE;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id d24so2234617otl.11
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 16:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=2vDzMfZNHgJ79DJ8bzBUW6nZqGswAn+yCtq6P1Um1J4=;
        b=mrcSLbAEK1hu6s7GhYHctcMP4n/oHN1DuzU3gstqWf6lo+NyZHo2d8dLxSH+dpoGnt
         VHAJWlLiUDrpWyTxZ7p7IXGCU+ujdYcxEGq/uVmpIEvMpAsipYlYvLLlZrUPM/4hrXlq
         SHXQTqecoPGDBJBg8vlFhXiHHFo7pjF+IfmxkvtcFJc4gnkkSmCezWmInsWVsz0E+QvN
         ZPqRchbT0FCFSd8K9DB6UvZdN7qBgQgW41G+ge6HncR9TyUhnFovGtC0VMAZArHqg1Q1
         UROUwzwujSE8LkP3snZrmCL4wEnwG7YOfpVMi9c2hgucYITfhxXCAv3RFkS2BIfdyHlv
         Fw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=2vDzMfZNHgJ79DJ8bzBUW6nZqGswAn+yCtq6P1Um1J4=;
        b=SB/ui1fSpAtXRM15QwsUBSQxrDVd5hE/Jsl2i2hTNV9CTYqBrdIU9sPhYhZ2rjbq3r
         eyd9X7rs7G9MbL6/fsM6sPhtqoMD5+Q+TmP5Ae8ylaFVIi2BsQ0TNANDjGgCXx4F2RHg
         IU8EWBtm/e0KVLJtvwb7PwGYthJG3zKxwRgMqLZUlmtNIAO460yOag+C1bpgtb0+oHBE
         XzjA08HG2JeGvHH2VydFSZYdbJ2dw/pmrbS/+V29uqseSIn2AXgiscNtAhe7fnqQTIPr
         rZCHVUV4P1ggJCLtFqv+3G5asEzNUIQfIGpl2EIaFlOpNDm4Jt9VCU0b9pPYsNPhsi84
         nVwA==
X-Gm-Message-State: APjAAAXZ7tFbXx55rQezFEv0JnZ/4fmB9iWQmxbtoLddelhXFR89TF5T
	ZO5c3fltxrxnnXgZoj/mbdw=
X-Received: by 2002:a9d:5c05:: with SMTP id o5mr11302017otk.240.1552950767323;
        Mon, 18 Mar 2019 16:12:47 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:34ed:fd05:e76:6c04])
        by smtp.gmail.com with ESMTPSA id h26sm4304836otm.48.2019.03.18.16.12.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Mar 2019 16:12:46 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3 1/4] Staging: rtl8723bs: Remove unnecessary local variable in function
Date: Mon, 18 Mar 2019 18:12:33 -0500
Message-Id: <7d04ff06a6dd1a6173abec0bb19f378be73135ad.1552950374.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552950374.git.madhumithabiw@gmail.com>
References: <cover.1552950374.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552950374.git.madhumithabiw@gmail.com>
References: <cover.1552950374.git.madhumithabiw@gmail.com>

Remove unnecessary local variable 'res' in function and
replace the value directly in the return of the function.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 9edd9a24756a..b67a5f9c27fa 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -203,8 +203,6 @@ int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 static void c2h_wk_callback(_workitem *work);
 int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 {
-	int res = _SUCCESS;
-
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	atomic_set(&pevtpriv->event_seq, 0);
 	pevtpriv->evt_done_cnt = 0;
@@ -213,7 +211,7 @@ int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 	pevtpriv->c2h_wk_alive = false;
 	pevtpriv->c2h_queue = rtw_cbuf_alloc(C2H_QUEUE_MAX_LEN+1);
 
-	return res;
+	return 0;
 }
 
 void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
-- 
2.17.1


