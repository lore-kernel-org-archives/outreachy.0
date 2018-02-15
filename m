X-GM-THRID: 6522852497616273408
X-Received: by 10.46.89.156 with SMTP id g28mr226746ljf.32.1518719945214;
        Thu, 15 Feb 2018 10:39:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.0.207 with SMTP id 198ls47598lfa.16.gmail; Thu, 15 Feb 2018
 10:39:02 -0800 (PST)
X-Google-Smtp-Source: AH8x224GoBm3XmXxUWduSUWybSYmdzGyJuiyLRyOWQbzXOs19Yy6wJkDmEgl35RZQv0dKa51xWKv
X-Received: by 10.25.141.211 with SMTP id p202mr205079lfd.23.1518719942888;
        Thu, 15 Feb 2018 10:39:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518719942; cv=none;
        d=google.com; s=arc-20160816;
        b=diLhMdANyySwXbrxwndLt9SQN+wGjjvNvxVd/aYh5ylML6o1p3K3/Csc61WkmRa5uq
         9hYi6NDSuAjUxGVd6VgiIgQoAkjKM+DIdGry1wyAmXTwUO/giKGSPYJwFTpKLAC3s51N
         8cURmM/shf71KST54m/vC5+E0PPo79q77ZrG4gV8bS5nmk0uewp2iDb87tUzNelKs5Cq
         RP+s4SuxBaz9mhjnxnQEmE44m2FCZOx3XP1jrSSwfCXO8nYCrc+goRFetGlCBCzOVRxf
         7P6ovILrTY2nK0zqgRYgSdfwNnBNYD6emSH8CEFbJFpR/tV5gTbZxbVrTO8OWbr8Eo4d
         ED8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=kT05a1bV/Z8Yurm3Po/ILb+DzHo3+iRMg3WUM4zIWvs=;
        b=KWL9sIDcUEMu+APV1yvYIa2Aochy/gk1Qtq30Q6AK5kv99oQ5Q8isWe5XMOWHV0WU8
         1zkTdWyK7K0ddNWjekptWsAW6gc/FAjAEwwKfdXaBhQUWK1v70swyIeep2U/JOplhBVD
         u/K6QWxGUpTD66fMZhw7EXZ/ZN80j1rwL/SisaO9ZC7+Cw+JJ03lK7yN5G34OqWoSDQ+
         8cOlijvHz/hM1CUsQTiCTCXk28QGBKIpAISYuuL7lNRw3knOf0NnElioxYT7AHwlb9tu
         n+BaBDNLOFx+/8P+MZJE8AfVyNk9ds4DMBxH0GwXibWELlx6zjc4TfDCi2FojoGBmTwV
         vLFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DKfyXNou;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id w29si1113688lfc.5.2018.02.15.10.39.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 10:39:02 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DKfyXNou;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id k87so2654006wmi.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Feb 2018 10:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kT05a1bV/Z8Yurm3Po/ILb+DzHo3+iRMg3WUM4zIWvs=;
        b=DKfyXNou+s72G0GC35i6nJKRAcYYyPBS1hNxTwhiuSkbC9CcZfY0MYwt1OgxmrrGhx
         ke5oMDcTuAYMJkBLjn4Cwp1uO+CVmMeQFBQzcnj5ASkX3IoGdMHYDWO0fyAK88KEGBxy
         JxQqs4SGxDPs1Ox+0KH3SI88O4/E2O9UyESprw3Ri5BaXMdHb4qjNqv4OrTEfZS18lsW
         bJfa6Nhc8ipl95KDqnaeicVMqUgMQcjhQYopoHNSx1m1ZyMTI8HlLsreibEyBKDTQ2Yv
         I5Vg4/u+79EtaNieucKYopXYJQG/EDtgqn+Yir8dqs57LNRRjj1/z9dw4v7sS//rxUaz
         7abA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kT05a1bV/Z8Yurm3Po/ILb+DzHo3+iRMg3WUM4zIWvs=;
        b=neewV7syoBkGf4/HhNDbUtjJd7Mg8RURoHDRGkw+RRs1tehCy6FeT/QjGmNIadso68
         j5+/Liq7NxcKQDznDkVtFcybALiMeIY1o/1VlWhy99Dzzw1Q6CAKDuSaIo1SnaQCZN9o
         2kCWQBru00CjIAoauCKscgh0K5RrkUM+OJWYJDBtK79AdyMS8ti3VcRDP+7SgcB9T59B
         zcmkYSl3JtIYRBIbaKAmgnsknkPRrS2zgbsDnGArY3yOyHjISjm0HptZNgG0pzjWVTBh
         eu/a0DUHJ3Bz+tU08st/oqXNvgu6fj9VxcTQawZlW5G7BNNGh1aaKsSyfj59F8cNxwqJ
         srfw==
X-Gm-Message-State: APf1xPAj/ElD9dMZGvCxrGFKPHS1wR2eytMHXv8P4BSfEMwFcLwRnuvv
	+ZdCKmGDB3VvhRqywYseShsXcg==
X-Received: by 10.28.22.201 with SMTP id 192mr2752441wmw.45.1518719942571;
        Thu, 15 Feb 2018 10:39:02 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri ([31.154.102.92])
        by smtp.gmail.com with ESMTPSA id g96sm4845968wrd.73.2018.02.15.10.39.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Feb 2018 10:39:01 -0800 (PST)
Date: Thu, 15 Feb 2018 20:39:00 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: Fix "Missing a blank line after
 declaration".
Message-ID: <20180215183900.GA12122@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch.pl "missing a blank line after declaration" warning message from rtl8188eu module.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---

text here is ignored by git tools.

 drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 17967c9..c3bb183 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1516,8 +1516,8 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 	case HW_VAR_CAM_WRITE:
 		{
 			u32 cmd;
-
 			u32 *cam_val = (u32 *)val;
+
 			usb_write32(Adapter, WCAMI, cam_val[0]);
 
 			cmd = CAM_POLLINIG | CAM_WRITE | cam_val[1];
-- 
2.7.4


