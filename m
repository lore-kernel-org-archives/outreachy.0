X-GM-THRID: 6672416062585176064
X-Received: by 2002:adf:f286:: with SMTP id k6mr8346987wro.137.1553542926368;
        Mon, 25 Mar 2019 12:42:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dd4f:: with SMTP id u15ls89118wrm.9.gmail; Mon, 25 Mar
 2019 12:42:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrvQFEzQ897Gwl87JTAoyk35EWYkfc0gIbe7nyO9xM5Kalbm2CMBdu2s8QwKZgyg8zwoPC
X-Received: by 2002:adf:c704:: with SMTP id k4mr17929576wrg.142.1553542925097;
        Mon, 25 Mar 2019 12:42:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553542925; cv=none;
        d=google.com; s=arc-20160816;
        b=t0bM+mY1UzCJMr3/Hwj5L+yoKOHeerKVCDUjc6sE/bkZGrqg1dpM0nP7jHNUnMe5vg
         yeSB0ZnjCJSu6hSrzzYRuq5JRkloiCqbaPQGsl/LMMlsUUNsIonxhzMRejCbWZ9Zrd6i
         mRxZkzIGmQgYGli6TgWnIx6nUnq0AdTF8if+42b6vvT+5P5pAOCtsJXpQQJ/osJi3Af6
         nmEkemE69pznS1pSFjcddAoBZYYPnff/g9qVyAbMwc+G3p3cm6+xzNGFkyToc177QGVV
         dnJhmcJfWQ2pk4GZM+VjiTtX3X44UeqTeV5OCOWfh4OCwWjXBbSvdcHbZq4i7fAo7HTp
         dTEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Fc4idR0l3Lop69zR45CCaK8S/vmaucHYn6yV8Qo2V0E=;
        b=hqS5Lz8QUN82tQUNSz/3ipLZUm9nefHnoE8627B54PLMK0DNEFVgPfx0WI5/7ipCjj
         op55dpRouRolh1LyumetiBu9uXmZW+6S80XOfdCsxDRXqsk2bKSXYQ4kMmE1Qfa8lmCx
         1N5XkiR5OAkwJOvmxD3fceBdqNjO11Q+sVQT9GvMVwDkLUAlwvofr2IsbYcZ5HuAsGXA
         rHjRW/lOdRJhCErJ+OLd/Jnkxlf3MkJAM6+KCd6Q8CRRQYpgGVtowyL4fwBeYhAtc8PA
         U8ydCQ3TDB+a/Feoxn1Qjm0EqAsb8uEDTjl28uWR2MGKlcGl/94akEXsDV8yuApVykum
         kVzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l+vRAA1K;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id f74si822521wme.2.2019.03.25.12.42.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 12:42:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l+vRAA1K;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id g3so8114447wrx.9
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 12:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fc4idR0l3Lop69zR45CCaK8S/vmaucHYn6yV8Qo2V0E=;
        b=l+vRAA1KjRXEjg4l2kRjN3Iej7GVUNuqCJYkU4Ub/EBbA+3xC/NGm6TnmokXiL+iKC
         TDNx56drC6P/W5+/CgPgnZq9xrM0ty6H29jfvDNNPXNC99WlfZmwJbtFY2QSX6AZPgyd
         rMS9AzKUzmDAGTzmdad8auSe5s7IQGY1M2TBR5uy81o8L8Ea+vAaKfFR/+DoriGBRH4I
         I3Jwl3DU4DzO5nSesllvQ612A78PJxU0EJnCkP1Vx5L2XF8ofCLC7WaanAxAeeioKhKB
         Pu7rnI5ktSM12l91AUmItdfyam3xvSHISYrmTa1tALXWeEiUeZgZrRsai3Bop/gxAEZi
         7Umw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fc4idR0l3Lop69zR45CCaK8S/vmaucHYn6yV8Qo2V0E=;
        b=cLcg9VGvmXyIRcPM/CZoG658n/HvJL+r1X85zYt5xubnjQAyeGLSRWHJ3A+5tZSG1r
         Nt8FCqkjtz/gAvV4nzDmS3zy04mjCKzh8/5CSJW1CWjoOmQiA/CQTswUJnGlOlDGmhdr
         B1C64kop0ZlBqizo5SRideN3Nlwy22dmxS5z39FmAHqbY3fYOc752sLcukSsy2HZhxLX
         gjVGXmp6lmcpE637xbTfai/5v6LmC73DU6nEKELUABCY/ObM6wwLVa7cYWnAty9R0oEv
         HPVzbMnXiTPDr9ee76EafampRKgrIrx05S37KiKWXtb4lKZgdaGEzVh96lVWeItJR7n8
         IIew==
X-Gm-Message-State: APjAAAWylX0TGJNJXIu1xELWteL98TV1s1qdMdjkcYZzkPPftRx/lOyX
	lgEbbEEIHFsB0E4DcEo+DBwgkuU=
X-Received: by 2002:adf:ea88:: with SMTP id s8mr16984867wrm.300.1553542924693;
        Mon, 25 Mar 2019 12:42:04 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id a17sm29266719wmg.40.2019.03.25.12.42.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 12:42:04 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vboxvideo: realign code line to fix line should not end with open bracket checkpatch warning
Date: Mon, 25 Mar 2019 19:41:57 +0000
Message-Id: <20190325194157.22474-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Realign lines to fix line should not end with open bracket,
issue reported by checkpatch.pl.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/vboxvideo/vbox_mode.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vboxvideo/vbox_mode.c b/drivers/staging/vboxvideo/vbox_mode.c
index c43bec4628ae..989d96ec9823 100644
--- a/drivers/staging/vboxvideo/vbox_mode.c
+++ b/drivers/staging/vboxvideo/vbox_mode.c
@@ -54,9 +54,9 @@ static void vbox_do_modeset(struct drm_crtc *crtc)
 		vbox_write_ioport(VBE_DISPI_INDEX_VIRT_WIDTH, pitch * 8 / bpp);
 		vbox_write_ioport(VBE_DISPI_INDEX_BPP, bpp);
 		vbox_write_ioport(VBE_DISPI_INDEX_ENABLE, VBE_DISPI_ENABLED);
-		vbox_write_ioport(
-			VBE_DISPI_INDEX_X_OFFSET,
-			vbox_crtc->fb_offset % pitch / bpp * 8 + vbox_crtc->x);
+		vbox_write_ioport(VBE_DISPI_INDEX_X_OFFSET,
+				  vbox_crtc->fb_offset % pitch / bpp * 8 +
+				  vbox_crtc->x);
 		vbox_write_ioport(VBE_DISPI_INDEX_Y_OFFSET,
 				  vbox_crtc->fb_offset / pitch + vbox_crtc->y);
 	}
-- 
2.20.1


