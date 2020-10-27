X-GM-THRID: 6888359188938883072
X-Received: by 2002:aca:b4d7:: with SMTP id d206mr2442460oif.39.1603821113719;
        Tue, 27 Oct 2020 10:51:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls577350oth.1.gmail; Tue, 27
 Oct 2020 10:51:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJweO0qQi9+H2ZGKuyRFsMu6g4wPmc6XijTqjwZ4ysOgPODZt7yRGHQmUjjXYNaeqm4TQSRf
X-Received: by 2002:a9d:7308:: with SMTP id e8mr2400547otk.238.1603821112710;
        Tue, 27 Oct 2020 10:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603821112; cv=none;
        d=google.com; s=arc-20160816;
        b=0CDD58LUBaYDb/kox9VtJlTyzzRK+qBWZkJxUG/6cqEC3wzQTVOT6kDRYqoA/sCdyz
         Cn24PyJcN7fsakwCYxf4NMuNcwU/QHJ94TKg1Qm41N5IGtdXvmc+1ofo5rGSQxW/7Per
         2lxB/IIF44sYhIRxPx2RekE+qu3hzixacwdF7/Hu71TfrsOiljF0NzDmhKkypjuOhcPU
         rbUVDNsAr7g4hWC6uusoqvVAd91RG4Rpdda7b7UQR+VOqBpiDhGql4WttH1NZlERsLVB
         Tgb79KOoJbhfBylNPMQmpDtKe4V9TyAOu6iOUNY+mc60LYMtOn4FPmtD3bQ6QHku3CZn
         /Ggg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DF2sU+SDMRDILXFrYY4MZUqeLJ9AmvO2S1LDGf05kYg=;
        b=k169cMCkGUi/ySLgBp5kriRcDTgJFRTlr55LS4CnohNbdnv9U2KiTtWzruYJ4zurGc
         f6E7Xt0qJ7Ju7bGCZt02GNN59qmaNR8/LvtGjBDsjJgDi5MhRPeEb+p8WaIm35apfcVS
         x3OLk6rOWAiUnyocW9y+mqipzgLoC2Luzl5SoD8REeUvBE76UCcnszcOW3G11dPiXWEp
         5ugjgLWPnbsCDmoBvXW0ihH6maWaPSstCCnKMYP8xvxFSmSqz6UE10VZSwQayKgMb54F
         1U5AJSU0RBVKFtTNaVRKu3rEgdW0DO1tYB9Z5xCP6lDKqU7ZjyNcxGRcv3qZwZN+JX4M
         yDLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WWnkT+c1;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r6si356013oth.4.2020.10.27.10.51.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 10:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WWnkT+c1;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id z24so1227083pgk.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2020 10:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DF2sU+SDMRDILXFrYY4MZUqeLJ9AmvO2S1LDGf05kYg=;
        b=WWnkT+c1h4KJ+e0+KuNW+drbLafUhJ69Q0li1l2WeEpBldAnhwwobu9irMsHyCPdL1
         T+wOdUxW1yf3jC3Iw8//Hm8M8Mb73HrANbvNkTyXupEiBCkyvVSroWIZf70a1zOuucne
         uytJIKZnmhEOQ7RDJqtH47N19JmlYNUM5BQqeOkAzTbtKNJ2MZJ8Kcat0Knkh8qTW+GJ
         jTpDfO1ENXhX1FzvXFlQvBtyXqi8JChfSJ3pLUPgo/Oyl5ygzi1Cdy1siPhNRTIJfELv
         Ue3hDuaGVkHtoFExOyTsGqiXwB92gBXkLL55JA9QXt1Xzd40Ro2JkQxYN3fZU0A3Aeft
         cy6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DF2sU+SDMRDILXFrYY4MZUqeLJ9AmvO2S1LDGf05kYg=;
        b=GM7oQC6m8zeKHfq6ziAZWjhvMJVIrvPbQwzyK4kG3/UxE6uL1BJhAJoWRuHkpaDEo5
         08QbW3tpb79OVkxYuZ+9fDZnROJ+v/6VzpqOJLPM7Ne35/nZJkvCHz/tn5k2lX+uxm4V
         WgXrFn0i2yLeF5no9eqHoz3ojMPZLBBJa+MBz/95AOfQvp+wfQy4l0gPHks2IzMsB6DX
         mdwvvuqi6bYCyr3OeDkEUKYao+99ZaXo7LLGTyCEv5nsk9rZqq5SoDtKXQqa0kw1k6mk
         nDytXuR848LfC825j8JZATMOPwsKKdZtSngnXCpUb8tTM+kYF9vwlxmQ6QXYdHC4bnCQ
         g3/g==
X-Gm-Message-State: AOAM531pZu73TA77Z9ctsK7yB4ZFKyaQwLuUgCDmTzW+MIZs/PVPBpLL
	E+HDwqXFL6FamtlMwil5O9L1HS62ZonbtXGR
X-Received: by 2002:aa7:8c44:0:b029:160:19fd:a509 with SMTP id e4-20020aa78c440000b029016019fda509mr3181818pfd.6.1603821112131;
        Tue, 27 Oct 2020 10:51:52 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from localhost.localdomain ([66.181.189.144])
        by smtp.googlemail.com with ESMTPSA id ge6sm2643906pjb.29.2020.10.27.10.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 10:51:51 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: nsaenzjulienne@suse.de,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Amarjargal Gundjalam <amarjargal16@gmail.com>
Subject: [PATCH 3/3] staging: vc04_services: fix missing a blank line after declarations
Date: Wed, 28 Oct 2020 01:51:17 +0800
Message-Id: <20201027175117.32826-4-amarjargal16@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027175117.32826-1-amarjargal16@gmail.com>
References: <20201027175117.32826-1-amarjargal16@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix checkpatch warning "missing a blank line after declarations".

Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c  | 3 +++
 .../staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h    | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index f500a7043805..e7b2263c47be 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1056,10 +1056,12 @@ static inline int vchiq_get_user_ptr(void __user **buf, void __user *ubuf, int i
 	if (in_compat_syscall()) {
 		compat_uptr_t ptr32;
 		compat_uptr_t __user *uptr = ubuf;
+
 		ret = get_user(ptr32, uptr + index);
 		*buf = compat_ptr(ptr32);
 	} else {
 		uintptr_t ptr, __user *uptr = ubuf;
+
 		ret = get_user(ptr, uptr + index);
 		*buf = (void __user *)ptr;
 	}
@@ -1832,6 +1834,7 @@ static long
 vchiq_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 {
 	void __user *argp = compat_ptr(arg);
+
 	switch (cmd) {
 	case VCHIQ_IOC_CREATE_SERVICE32:
 		return vchiq_compat_ioctl_create_service(file, cmd, argp);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index 86d77f2eeea5..4d0df4ff022e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -54,6 +54,7 @@ struct vchiq_await_completion {
 	struct vchiq_completion_data __user *buf;
 	unsigned int msgbufsize;
 	unsigned int msgbufcount; /* IN/OUT */
+
 	void * __user *msgbufs;
 };
 
-- 
2.25.1


