X-GM-THRID: 6755960127598100480
X-Received: by 2002:aca:da02:: with SMTP id r2mr1300103oig.172.1572994550044;
        Tue, 05 Nov 2019 14:55:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls125795otf.14.gmail; Tue, 05 Nov
 2019 14:55:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqxeHi23sLxxKElnYqpJ2FKUSLgSfY6m4pkvl3p3A1hMhmeg+5Jvh1/0CQ4laezXw06Z7goX
X-Received: by 2002:a05:6830:2363:: with SMTP id r3mr21527768oth.39.1572994548711;
        Tue, 05 Nov 2019 14:55:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994548; cv=none;
        d=google.com; s=arc-20160816;
        b=W/Ck4AQxnruDdW+RAd7kqGbM6RE+yYABWT/Get3Nb3yY6pSPc4835yiMYNkkcOrmyQ
         8LFPpbhqGwwtT4guwpDnOkLCBIFeCr/QBj2MwMLhUukU3iUxwDnERS/OLCFQBaJjXvad
         hUE/8Lx74SWlt8ap8IRpBij/PYWHdrRKj82Q9T0Mbxn7/NQBbP/Apd0Q8bUGHw88np2H
         +9lO30sTEewmeLPPXhIkuaB5b4PHD55+dCjdPnBHAtoSBCaGqwCFhp4IzwPD+tO5miKz
         vj2NgjzJYbQ/5c4P7XMJWYw/rEwdoN2WgESxx/IX14GndxVPmJKzHz+gbrCFvOhxmcAL
         aKAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=WbGV44uVBEJLZLCNHQh4kj9BCXkv5kJyMK3s3QvLR8U=;
        b=VdRnEwQ9rvdW/H6yWbcm/TBnIvilnFvYSIRKACvAtUGkF67tKNcCgzf1qrGOSFhG/w
         AkkPxfL1CshmfRXeTlLweeU/hLfMerrjNpQ55/TSn0zv8GQiemlT11tyJclarj8mAVCY
         3ZKnIdOiUiHiRpIP2KRRxgT3W5vydUTbpiTd7YlQtUWWKoZiZUjsLZPthocN+D0xkaVH
         gE8uqW8+VGM6H+R/n106LAveZGGZuh746hSdLBRKJ+dTkBpuDXlZQa2BqsJ8fFNS/b69
         bYvgZsFM/nzxGmLrIx1CQiUYsZk0hPc9ApNuDDD68h5rN+AfEJSyGc+ZGPEJOZMcBaAw
         NSyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ih3c8dTS;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id n63si1227548oib.3.2019.11.05.14.55.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:48 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ih3c8dTS;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id v19so17195988pfm.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=WbGV44uVBEJLZLCNHQh4kj9BCXkv5kJyMK3s3QvLR8U=;
        b=Ih3c8dTSjt2IZPhYULhJKtinn8mrHSZ/pvv+jp/DuMFKxBV/j6Mg1vztG7IlogVBnY
         dv3laky4b5oCuLWVjV5SQfW80Fc6g9DbAmU4GhQOx5P7NnBXBKXgpXL4IOisWF7JHZZS
         HV6thTFaR5+j86PMr5nb+M7Qi5/h6lKrBp2SvPZVYL65fmQCwMFiLsqBnWPhRa0qOCtP
         +hcEFL+kQHqReAdnDoPZlT/0jLVUwat9v7O/UZwaKocIshEXGd4XZAiUQDQX/srBwMIM
         lkKin3gQKwNhazSIYslP4OYmjOK7rUGaBtcz/M156ktLexSdhHCqnAyi0lIVr74XDAwa
         8Q1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=WbGV44uVBEJLZLCNHQh4kj9BCXkv5kJyMK3s3QvLR8U=;
        b=DTHj3imdeRUnJiWg18HTnskPdTQaZoM2ZgNGEk0C9b1yB2u9GWuYeK3HEpPbqlkGsa
         BhON8TFn3XEXH7iQxSPDmTOAnswt8uOcpjRhAXY77zFl9ZAYuFmhuYOaYc14e4y1UoNH
         IKfGOAF37NqX8DrkbBVhXU4J4SFu9jrj5BkbYOcYus83gEHb/Gz8EI7aIiKx5h9cHeJO
         WTD4LpgOeM0abbl9CLOjehX8H998YBRWn8um5e1Wc25ApokHt5LsBX9V5zKgJI/EEYHM
         iwNvW10GQ9HyMil7q2Bz2AFNiQCF0DNboUoOgOh7Esjb4X5j9nJqf7oiXdiRhX84URNN
         qjZQ==
X-Gm-Message-State: APjAAAUF0BKfkvqMdTm/1O4Yt2P63RGCWuEzU3XeY/vjQqfp40k602Vj
	MwDrwDCc07qd0/Mo+7eCbVFjbvcQCYkMDA==
X-Received: by 2002:a17:90a:ca0e:: with SMTP id x14mr1896019pjt.95.1572994548069;
        Tue, 05 Nov 2019 14:55:48 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id l11sm25419632pgr.77.2019.11.05.14.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:47 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 03/14] staging: vc04_services: Rename callback VCHI_CALLBACK_T to vchi_callback
Date: Tue,  5 Nov 2019 14:55:20 -0800
Message-Id: <0b0f85060b38e6195fe2d58989621e7b09eafe51.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Renames callback function pointer typedef VCHI_CALLBACK_T to
vchi_callback to better match kernel code style.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h         | 2 +-
 drivers/staging/vc04_services/interface/vchi/vchi_common.h  | 6 +++---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c  | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 05fb5c3e8ba0..56b1037d8e25 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -45,7 +45,7 @@ struct vchi_held_msg {
 struct service_creation {
 	struct vchi_version version;
 	int32_t service_id;
-	VCHI_CALLBACK_T callback;
+	vchi_callback callback;
 	void *callback_param;
 };
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index c99735fc0308..141af16ce031 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -86,9 +86,9 @@ enum vchi_service_option {
 };
 
 //Callback used by all services / bulk transfers
-typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
-				enum vchi_callback_reason reason,
-				void *handle); //for transmitting msg's only
+typedef void (*vchi_callback)(void *callback_param, //my service local param
+			      enum vchi_callback_reason reason,
+			      void *handle); //for transmitting msg's only
 
 /*
  * Define vector struct for scatter-gather (vector) operations
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index fe2bb49815ae..dd35147df3ac 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -16,7 +16,7 @@ struct shim_service {
 
 	struct vchiu_queue queue;
 
-	VCHI_CALLBACK_T callback;
+	vchi_callback callback;
 	void *callback_param;
 };
 
-- 
2.17.1


