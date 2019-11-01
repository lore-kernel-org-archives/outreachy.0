X-GM-THRID: 6753896393761357824
X-Received: by 2002:a62:3387:: with SMTP id z129mr11276404pfz.185.1572586144546;
        Thu, 31 Oct 2019 22:29:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b042:: with SMTP id z2ls1298652pgo.16.gmail; Thu, 31 Oct
 2019 22:29:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqycNv/TlaliLLD2LDB3xUSGPP6ceovGlDahFJmSAsTJThc3UpVMJUmBn93DNd6eTW2c3/Ib
X-Received: by 2002:a65:49ca:: with SMTP id t10mr11482733pgs.310.1572586143242;
        Thu, 31 Oct 2019 22:29:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572586143; cv=none;
        d=google.com; s=arc-20160816;
        b=KXFae6vtqdk3MBGqrM21uAbpsCptFo/db8Cc1oTcQJB+TExgenqkdYL0ONeSV8dCrM
         6L1gSsB5qLafaz4D8Cn8j86OFDi2G67zUDrqalnafwuBupH3b9SwV94dy9aMV7WGMUz6
         nxRKpNmJuXR32Si78P00LiPFdNpimEvHPZAonarLRKvJGSv+1zXENUv5ZA6T2uH/CpoT
         ZeTxd4qCAtkbGPZW8Gqgc+Ocr8cPD8mfGq/HUCeezoMSyv7zEzms1kiQXDoNmt6Pm/zm
         CrYdcQzlN/s6T0UYnRPIhh+ehX5MvfYk6PQNa5/Jfz8FzPk2RxMLg5OT60hNdqYZtqy3
         DaUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=xzznsHfHynyVkn2ULm2biWbAy/Nk1nnMyvGqQa+HmL4=;
        b=wT28NgX1ug5yIUeC5SNltlHmKx64DaHzU+EYJJ2NYYMuMMC0c9Q+Cdza+qWH50VC+B
         PIsSTUN2QMkHYekbbK0mYkB5jSCPr/CPx48DYiXSm6tubRFJKED1QpEKciLMSy7sIMlC
         DeO1Lwd8WFzC3cxVHJ1TYVqRhmYqCuHZxJ2I/G4ttG6a744nsSW14xOwCtz77ERe6RG3
         Oy6go6PnXfviKxMJRfXmLPojMewmDGre3BhYDv6UBzFG5OtRqXHY9T1PksMduDLhKn6r
         tyDbWpIfBKhbsjN9pM6kzAITGL3h1yVNSxIlu1plqn+61/iCGFrEATOh+CUb0/7WOyFf
         BsqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lml0sccy;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id h13si294992plr.2.2019.10.31.22.29.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:29:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lml0sccy;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id t10so3850970plr.8
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xzznsHfHynyVkn2ULm2biWbAy/Nk1nnMyvGqQa+HmL4=;
        b=Lml0sccy3+Bd245lxBNPnoNWuQ7b5HmiD+msrahZHyKSaaGv/XCsrjUGaIIVF0QnJf
         aWtPmL8kf8axoB74L91iK9gTpecCdsfaI7wfllxZ2KEXuPCmEZlOJAqLl2c7Ff0k3BEr
         RYxpn+9AuCKtRBWmwz9czrh4X9B9upojjNMTb3lmPt9CadPtdZEdLpmvT37xyq9sqfIj
         rWTGqfOnbyJVlJ0XHr9rfkeT3EEWoB+VVTta095dOy+dwmU8cfoN4Io66r6MH6aj/Tpy
         aEB8ilXn6eog3JP4t1pJtIv1tu+Rm3BwzG8UdN+x3gezhNVIeImNYcLWgtyJqc1AZ0+K
         +DAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xzznsHfHynyVkn2ULm2biWbAy/Nk1nnMyvGqQa+HmL4=;
        b=a1Gif2GowSzBId8M5nze3fxqtmAa9Num3tCSV34HOhKpwRZMjV0/M4lbU/3Zygol9b
         ka+d8Zn4mMi/zaJqvB7347a3FXCeizOZh7CZBI6+pw9hy/DgRfM76tj1J5fpXMpfP5vJ
         /zkJqpPCvIeIGhh836YjC3WDG29QhiNIcJ/eDVbnLg9w7803/PbTGckYhfE1JGkEO3YE
         iQvs7ZAizQPpvBrE5uRn9TpZwO7/Dwn6mxBFgraPultncXwDyq8UGPe+mZkg3bHjw6qt
         WI8mXYt6XiFVKRP8F+OgJpbptv+XdyVCG0WfeGhqQoEgZ16IYQ90PccDdpJ4pbuj8oZ/
         z7NA==
X-Gm-Message-State: APjAAAUCIgmINnmgCglncpDR8x71nuU3bPZagTXUUYUxQuSTKnZwYP2y
	l4qmdYiSy/7JdnVbKk27SsY=
X-Received: by 2002:a17:902:547:: with SMTP id 65mr10605796plf.239.1572586142870;
        Thu, 31 Oct 2019 22:29:02 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id l3sm4393750pgo.74.2019.10.31.22.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:29:02 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 5/7] staging: vc04_services: Remove callback typedef
Date: Thu, 31 Oct 2019 22:28:33 -0700
Message-Id: <688477dba5ad1ae2d51a02f4912d97bbe6ce6636.1572585566.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>

Removes callback typedefs. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_if.h | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index f506858987b7..4e84c8ad3e85 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -63,20 +63,19 @@ struct vchiq_element {
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
-typedef enum vchiq_status (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
-					      struct vchiq_header *,
-					      VCHIQ_SERVICE_HANDLE_T, void *);
-
-
 struct vchiq_service_base {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	enum vchiq_status (*callback)(enum vchiq_reason,
+                                      struct vchiq_header *,
+                                      unsigned int, void *);
 	void *userdata;
 };
 
 struct vchiq_service_params {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	enum vchiq_status (*callback)(enum vchiq_reason,
+				      struct vchiq_header *,
+				      unsigned int, void *);
 	void *userdata;
 	short version;       /* Increment for non-trivial changes */
 	short version_min;   /* Update for incompatible changes */
@@ -94,7 +93,6 @@ struct vchiq_config {
 };
 
 typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
-typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
 
 extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
 extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
@@ -137,7 +135,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
 	enum vchiq_service_option option, int value);
 
 extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
-					  VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
+					   void (*callback)(void *cb_arg), void *cb_arg);
 extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
 extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
-- 
2.17.1


