X-GM-THRID: 6753896393761357824
X-Received: by 2002:a05:6830:602:: with SMTP id w2mr9304888oti.312.1572915352499;
        Mon, 04 Nov 2019 16:55:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5717:: with SMTP id l23ls376282oib.1.gmail; Mon, 04 Nov
 2019 16:55:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqzY0dxUum4n9PbzeIsLG1YV6RyJjkWPPViR/gdcspS3wD8jU95lzwi3IvtpZ97pMIOqxXlr
X-Received: by 2002:a54:4499:: with SMTP id v25mr1656235oiv.17.1572915351410;
        Mon, 04 Nov 2019 16:55:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915351; cv=none;
        d=google.com; s=arc-20160816;
        b=cBLg9cwkMXDtYm7Wiz49/7jzFzczVJpu/WRDgoEgb6amr16Fn21CCN5gdC9mii+suJ
         z9XCVoZJ0xPBu9Z1o3X65Be23H7t+i36Ly7nAyGSeStWD955utEw1Ig3ThTUtwtiCZ/z
         QpvSmIGFKwxf4l0Vb6wNWEkGAh7RyUCA4ZwxHhogTDa3gkUTAja75ev9no5ppHZwaHaz
         EDlq7VyEnzH4ZR7lwOA8F8a1HikBQ/Gto5aky67XCfSjIGvqV4gkqLU0kD0mSQYYHSgY
         UIZ9V38ppbH+GPM+fLYconL0eUbnbHiGJhEgKMADvPx7XY9Qkx5EihlnhPFT0f9h9jl8
         pYMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=nLRxs3VyZMTJaJ+9TMquhzXyDruMfFwL2J8uf1e5Nks=;
        b=ovN+ssq9yYTGf3x1N/M+tsvaSP/+4NC9VUfEdDE4bSvrWP16IwZbsZloAlqbFrMVPC
         /Eur2cjuouHzXwT0FOTPMRvYMD/v0o+v9516RfHb91YUfk17/MXflGHIgRM7xyNnKveL
         z4cSzzdts5D1t50p9qPXjEE/Fx/eBsDCZ0eQeA4FgbZ9lWXoEpwTU02a0TMX2ue3IFO1
         cwa+xZfi0gu3xeXBZQ5LxIZu+y0pILmJnIddMWQhmt8buQDsOTh55GxkM51+RDvl9gbG
         YoAlzbfC3PLeNpxFiiXrxavrblCIl1FvG3uD9UgzxVk4TqK3YbQAWwUTmR7jXNwrKHRe
         gT4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TkdrPeIu;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id n18si115879otr.3.2019.11.04.16.55.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TkdrPeIu;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id w8so8518032plq.5
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nLRxs3VyZMTJaJ+9TMquhzXyDruMfFwL2J8uf1e5Nks=;
        b=TkdrPeIuHgpwc9hNqyIsUunDLymQyCozu3g56xW0qcI0KxM8vdGhXKEe+nFzBW9Ml7
         r67pS7jLNQtxn26TY4lbO26EwUTaH65/upUFC8Lpc+zWbzhDkQLT5w3VV9KFComLQa6k
         iBSGgErSVp/HsAK5GMknjW4G+fsuuvzeYTOsIfQ35mzEVwqdYLfj+vSJd7363q5QXehG
         ID+2HHrpcd0plKJZ5zQ33mheYGVi6PmkgBw2GglFL1nKgrDNddqmrV5oQ9c3PjIjhCiM
         y1bl5fc0kstvXxLAwh4eVVlSZYn8NPkK8EGVHs/xbdmC4syUq7VxTzIV/gM4HxC4xHPZ
         geCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nLRxs3VyZMTJaJ+9TMquhzXyDruMfFwL2J8uf1e5Nks=;
        b=qqfjeFWgpo9b9T+oWYMh6Z5jlyzs3YzJLUxKOAFhY5Ax/By6aTWiH3QsfHtY2mt8TV
         Phmf+UPL7VNjffV2wXmtDqqhe1+rpgHxOgSGO24GxEGsHvLDv5I4430UefOZ67rklXXx
         vFfAz3demmBlooT7PjETndawO4cUSBSG9FpUvS/IYPRsX+5LcVu0Kb6PcrS1SM5yU+bJ
         76dz6ko8yOsxr1EVS1KrRq9XQ2bDbtdmngagNO43bfvvVF9l+Rp+mxMJkJhNpWkeO3t2
         VBOKPx/NPrcVg4D/N/Fz+cgpZ0mC3Gz57ylzL2GcA6c5Te1EGBouEvJT0vhilnKhGWeL
         /3+Q==
X-Gm-Message-State: APjAAAXK6AIExmVjQzKzP9U/b61UAnTFCSQVFlETtskawoRRcIdLUy36
	KV56K5Xkn8tRSC+YMTqUFIs=
X-Received: by 2002:a17:902:8f93:: with SMTP id z19mr2912250plo.217.1572915350668;
        Mon, 04 Nov 2019 16:55:50 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id g7sm17398213pgr.52.2019.11.04.16.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:50 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 11/14] staging: vc04_services: Rename remote use callback
Date: Mon,  4 Nov 2019 16:55:21 -0800
Message-Id: <bcbdae014fa3e34842d1f4d7fd910208faaba035.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Renames remote use callback function pointer to match kernel style.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index a6f17b91ff78..d9b23af25671 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -93,7 +93,7 @@ struct vchiq_config {
 };
 
 typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
-typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
+typedef void (*vchiq_remote_callback)(void *cb_arg);
 
 extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
 extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
@@ -136,7 +136,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
 	enum vchiq_service_option option, int value);
 
 extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
-	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
+	vchiq_remote_callback callback, void *cb_arg);
 extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
 extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
-- 
2.17.1


