X-GM-THRID: 6745167024590159872
X-Received: by 2002:a1c:444:: with SMTP id 65mr862682wme.73.1570481579919;
        Mon, 07 Oct 2019 13:52:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9d8c:: with SMTP id p12ls329192wre.1.gmail; Mon, 07 Oct
 2019 13:52:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4Y1TPubZwLGfoQ951/zvOpPNn7o1qmy0c9nCICES8IQ15iGrT+QHkSCSXPeUswHTTJoXZ
X-Received: by 2002:a5d:6b8b:: with SMTP id n11mr15575386wrx.17.1570481578715;
        Mon, 07 Oct 2019 13:52:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570481578; cv=none;
        d=google.com; s=arc-20160816;
        b=PQReBzZKa1fW3v72R1CPVslgwmWTGgK6n9K3090qsiONkJhV7YSE4vviRGy2rZ/X0+
         ut4Roh6AV8TMp7yZF34L3PhBiSZq2GDadsV+DnF1qRpbJEs5auA7LE+hgJky7MtpbWXy
         s78bW5lOdBCBEP2lrhkUPmKWxHp/Om8i71PEJgynDm1OYQQ7YK7VBANnSbu/tqL+cLk+
         jXNZ9rfjb4avKHdOvEyp3XX0f4gPOD4pyrVzuYOIjt6OR4q2M5yF3R0j01yKtpvYHfgb
         zO/ha2CqC4Jw1t6q9ffrMs84LLpvzjqPd5Mf3S61HRNiyaIA3vLksfaRy8LfE9gQP7hq
         WJmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yGegubLDgRiHrQ9zNZeb9rG5UTn4EJm1O9mdTVGELtA=;
        b=QcP3+sdUe8OtuJ2n1kt+9J+9tXkslQou0nKK9v+C6JrY03EmOjAhxUummRJQNm1Qi+
         TAUT3/HtlLcebj8tg8I1flRNqZtKh1LdESqfsMv7byuDb/Xwk0zlHqeuDB0OylG1gvo2
         zP7yB0P/h6SXawYU7FZRdvniRpPKmOgkHxAxKNAhkR/Q6nfJKDq0iviNMmLwzUOy2Qtg
         1JnO+W4GpyD3Wiyikgfw+h9WvFo83PVrN1IVm1IUsL4zRaXtC9YYok1TvqrwrCA1HdVo
         zwZAKXmcGe6Xc8u6fxherPsh5uRLIw9d1skmxCHxJzQgBGXKHu0Pu7x2e8ZFsNfdRpN5
         WG2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="o3TB8/x9";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id i7si867306wrs.1.2019.10.07.13.52.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 13:52:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="o3TB8/x9";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id v17so871615wml.4
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Oct 2019 13:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yGegubLDgRiHrQ9zNZeb9rG5UTn4EJm1O9mdTVGELtA=;
        b=o3TB8/x9LdCW2ttzTgWs1cgKCyWgZZ63WidwsCumjLdEXwnyo32PE0M53V8e5qz8ja
         cdiW/YmEW1QTPJTrJKK/AXCXz1sO4SJASGxG+ZRcvZnaLEVp/xPOMJL7YmjP0iPbBkjx
         L0Bpt/efowGvzV+TciIYTqOhQDBtLgdsIpYJfkckpTB45E67kz+t7Ta1KOOM+0rhiJcd
         fZy7hkZyRcwEE2BVXppOT1tPGk2w2KUf97b6IoaYCEdApLsMZipo18JKHQAfgyNLorol
         JycYwndVNqkkL9Hgem2dgVAfOVylD89MffWBqrpKtwvJVf2muSjQPD7HDm678mB7m5p/
         LNiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yGegubLDgRiHrQ9zNZeb9rG5UTn4EJm1O9mdTVGELtA=;
        b=mEkY+vwpsXyY2fmRAMWrbVXXkl8v1BdRDFTzgWfF8GTePROU4b1H0l7f1NklpdG4tY
         yHiuFW3KqCPDGI5+iKGjKio/2yGl+hjCqw96NlY/3xzjl1kSeDnDGZsS3ehTcjkkv2Kb
         ehwCZe+L1GQy2JNkEKjmXmnNN4sAaOgGWiyc0ghpm3zw4SjhQ19cn9Hrw/QleMwLvzGH
         2ULzHs1jyT4ZwfwJuovCl17TSX9rfCrWfLpvskNVg34SoXy6X9H335UqluHDyC2UD58F
         Ig9aQGtlf79Hm16kUCeyuitH0kmXeeMOjLp1pMoABUQKLsuJm9+NsdlUcmVaVBvZ5u3j
         KbsA==
X-Gm-Message-State: APjAAAUTU94FfKN4wqNaCdMlW2+OxOTNgFqAnEKbTGQ7flzH00z1PG3o
	GX1nCbGNAlHf7jSUplpQ2stzg7PiGA==
X-Received: by 2002:a7b:c10b:: with SMTP id w11mr854529wmi.108.1570481578097;
        Mon, 07 Oct 2019 13:52:58 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-15-175-166.as43234.net. [92.15.175.166])
        by smtp.googlemail.com with ESMTPSA id a2sm22961867wrt.45.2019.10.07.13.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2019 13:52:57 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Larry.Finger@lwfinger.net,
	devel@driverdev.osuosl.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: rtl8712: Add comment to lock declaration
Date: Mon,  7 Oct 2019 21:52:48 +0100
Message-Id: <20191007205248.24466-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add comment to spinlock declaration to fix warning issued by checkpatch.pl
"CHECK: spinlock_t definition without comment".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtl8712/drv_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
index 0c4325073c63..960d8709aada 100644
--- a/drivers/staging/rtl8712/drv_types.h
+++ b/drivers/staging/rtl8712/drv_types.h
@@ -160,7 +160,7 @@ struct _adapter {
 	int pid; /*process id from UI*/
 	struct work_struct wk_filter_rx_ff0;
 	u8 blnEnableRxFF0Filter;
-	spinlock_t lock_rx_ff0_filter;
+	spinlock_t lock_rx_ff0_filter; /*spinlock to protect interrupt request*/
 	const struct firmware *fw;
 	struct usb_interface *pusb_intf;
 	struct mutex mutex_start;
-- 
2.21.0


