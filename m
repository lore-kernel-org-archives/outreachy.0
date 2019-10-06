X-GM-THRID: 6744782038482550784
X-Received: by 2002:aca:4c84:: with SMTP id z126mr15984620oia.86.1570391943258;
        Sun, 06 Oct 2019 12:59:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1383:: with SMTP id d3ls2532875otq.0.gmail; Sun, 06
 Oct 2019 12:59:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwZnH9N9MBdnqAE/YiiDQAy1WsLTRP2UWMGFC5ZiZSRLnzxkR2NIsNz9oK8i9ZE66MjcM8l
X-Received: by 2002:a9d:19a8:: with SMTP id k37mr18580231otk.172.1570391942395;
        Sun, 06 Oct 2019 12:59:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570391942; cv=none;
        d=google.com; s=arc-20160816;
        b=iW00kyZv/8YnykhVWEmD6FNCtVxQmq1gQXlm7X1DtpHdglThVW15MfKfMe7vON2oTg
         yg7GbGrAzZ6T6gW3a+Yzt0o5004VKZIKaiNMmSD68JTUi8LuesDrN5yXXucP3X4gLMMb
         84pn9kRCsU2O4yi0xXAyjBT4qlcSWdF8IpgfKdlKFklU3q2bC5oGH4vu86L3ZEDWG7q9
         kDvqNenEuWxrSzNf+a9JPngoTLHR2VAdiLEmnKlIekXU8u1Si7Fv7+fdiM6ZQpICZ5Ok
         bYr7tBcG04QJFq+k4mlb4X4ekxnGaG1UxIXLVaoe9iLtQkySNjZlBwuOG2hiAhFxj77E
         8MLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VIkpy/BTy4mETTGYhXyFaeQ00CMXQeC2LlAguquFlNU=;
        b=xuVwMmzflEFI+hn+4dgcG0ipcPXwP/naDqWVyHpE/4GSjYcOpXyuPFQB4YpdD4FbYZ
         hRizOMAWvsCzmH98hWqTroKrhBRjIRy5CE85WLwJ0OVeOfwUpwDm9t/7rm5btumIgVQj
         YLHwx47bCNC0FdxSXMuLdf1fxL/owSsHVUMPxjG2sccLu1L49QM824UgZWNPfj/EItKx
         TXt60MW3eCl8tc2sWLXOmtLopQ0quoZsOxQtBqJx/RMi++TkwuYQVVPfFmkACz+prlZ0
         pg/Y5n1iPoeh5GQ0xWdxX6LGsn5JFMDCbleKSGYhC8raQOAKjM2xg0zee5aUzCUzRjAJ
         9FbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pDwKgK4Y;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id k61si248101otc.1.2019.10.06.12.59.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 12:59:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pDwKgK4Y;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id n7so16279922qtb.6
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 12:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VIkpy/BTy4mETTGYhXyFaeQ00CMXQeC2LlAguquFlNU=;
        b=pDwKgK4YdK/MSdTSfrC/TmAWkbMFvvFSShd8fVkQMfx3aAXzSj8hex2s7n1x7COIIt
         h4KQdh2r+KpzkQ0A3CKgE7jJEsLD2LTpKHEBf4z70qBU16XRy5AySI6bgtzj6q+T0v7n
         LCGTtoVf28CCk2wij8bzGt4CX0DQS4Uh/GI7/UEqg3wEjj8NAlti8YamJ9Mt3bHxzU8P
         Q4VrFiuo7EoO9Yw68JbP7n7MEVO5UhsID7REX6KWnCk/DwDApBMGvzxLybTTauqcTJDi
         QPjIRW2HwX04ziBiFo4jNELLUkWuOZ4KOrkNBxfvYYcuAUYprjEPLlI6xrlkd0IvZz3a
         +AEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VIkpy/BTy4mETTGYhXyFaeQ00CMXQeC2LlAguquFlNU=;
        b=DX9yyRFQ1mevoHALxUBOfi8IXT1QHDASqkOC+VTqVsnnQc+elD2ITpkrGtHVtaQ2Yk
         YOD7xse5Cfc68QF2lEAkfbL8uXkMqMgn0n6REpkhWRjuo47s8ERRZBrtPwv8AN2Qacl6
         eVkDKKRYbXGvL3YTDpg8fTWvNA8FOZ2QFXlMU/JPKqVkCH4UHzT7AZGT6BbrDG5wSmC7
         PVjElDryI+wTjYAjnoH+lS4JHeyRT+YQgqAzbVbv0zeKJh/qAQm24uSc6ponFutSu/QG
         Nz49HLjaNiSPRnk5jR3bu0cNztkR32YO0PG/JVxwV4Y1hhnBeVtBfEmP8IN7BzoobQbf
         IUKg==
X-Gm-Message-State: APjAAAXvVLwgWyzWjM9uAgXU3RJ7YiLZrkBFnuK6QiZp0aVrnrx3Yruj
	uF4Mup/ybd6xCmFDaiWXxA6znB7OMmBMzQ==
X-Received: by 2002:a0c:db94:: with SMTP id m20mr24595199qvk.142.1570391941678;
        Sun, 06 Oct 2019 12:59:01 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.terracota.local ([177.103.155.130])
        by smtp.gmail.com with ESMTPSA id k54sm9623911qtf.28.2019.10.06.12.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 12:59:01 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	quentin.deslandes@itdev.co.uk,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] staging: vt6656: remove duplicated blank line
Date: Sun,  6 Oct 2019 16:58:54 -0300
Message-Id: <20191006195854.9843-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "don't use multiple blank line"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 856ba97aec4f..a1884b5cc915 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -362,7 +362,6 @@ static int vnt_init_registers(struct vnt_private *priv)
 			goto end;
 	}
 
-
 	ret = vnt_mac_set_led(priv, LEDSTS_TMLEN, 0x38);
 	if (ret)
 		goto end;
-- 
2.20.1


