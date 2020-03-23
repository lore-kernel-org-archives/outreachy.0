X-GM-THRID: 6807521221589073920
X-Received: by 2002:adf:ef08:: with SMTP id e8mr20993240wro.66.1585007464150;
        Mon, 23 Mar 2020 16:51:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4b4f:: with SMTP id w15ls2889589wrs.1.gmail; Mon, 23 Mar
 2020 16:51:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuJMahgNVTz4yytIOs5JlHTDezwBEbTiFsi5MwZm7LlP3KlUpHjJDAlDsId5lgNbMKhvx/E
X-Received: by 2002:adf:bb06:: with SMTP id r6mr33416502wrg.324.1585007461820;
        Mon, 23 Mar 2020 16:51:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585007461; cv=none;
        d=google.com; s=arc-20160816;
        b=IPTAykX5/blB+FgRmZQbWsRxqWsa7AWja3q1FNga0VEsKu0KuJpfgqlsnqrE9IzqJZ
         0+XswmHo2lLS5ZQmZIhv9Ab2Nu91t8y4K/CFrLMyvvImh6i5OSdhHVfeJGBPZkjUZuTA
         BmNfGjD4jENgCxLaUsHswTcVknWhzRFBChp/UOWBSYe875FyzfHwOJWyJzcD1B51rpn8
         tDVc3R7ZLvZSH+JyU+YX20zOHqFEU2rbC3ybAGlicaTDK4fWO5NGMLoRPmVSQkFV94zi
         wqnczgMU0VX5inzVzXNx7tX0OyIlF6cgt2181GVAZom0SoB3/A+6V8x766fYAItpKqy1
         47TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=O3tHlQx667qQwBxsaAl3JfSxqkMsaUOEzpffiJ+u2Wo=;
        b=bQ/Emp+LkWqprCKIemin5LFiWGcxJtpCzv9Yme0mUaBK1BwfG4s9SyZRHLdiacZMtY
         HWd/koyL2xPXkg/aZScCHRlYBfX2Xr6QQIjTMEdAsMbsRcjsQXwC4fVTt/InVh2OgN2i
         fPEgNTH/qhLetEKocqgXFPL0pdVxDuJUnb8xD/Q1Yn9pGYasJFmdRO+hPbPBnTaeZgVx
         eAQcKMzDStjb9mRiMfdP2EwjAl8fiuII7rW7ZQ/ieb2O1y2U8tixt6Als0hvQDqd/sy4
         nZrVU1r0zbVlEHLsOFJhGR904NDb/blBDrgWcLYgJI8b8T4i1ePMo1Mz2icCpE0ARTs4
         3hnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K+CX7Ew1;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v12si908714wrp.5.2020.03.23.16.51.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 16:51:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K+CX7Ew1;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id a25so19404067wrd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 16:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O3tHlQx667qQwBxsaAl3JfSxqkMsaUOEzpffiJ+u2Wo=;
        b=K+CX7Ew1QQD3GSz8SvCP4j0EGdDzJHPsikeEkT9aTrKpe/yaHOwHWqXU/MpudrIWq7
         L71hpmvfaQEh/R+PIun6s6RBi3P+ShqXreSCcZD12KFyjwkXRiTcRT4Lynp1A5PljoNy
         PDcSm+RVzCUf4h/vrkwP4x4aUOCSa/HB0vTBnWVHbV26lnoICHyRxBWAIWo4L1bU6nTn
         u1AurrLK7zteeykOAHiOfhggcgB8Z1nVZxtX3WsFzu9daoZAV87THQyGYmkR6W+4zvFd
         K365DcXEz2NyiOje9TudR9Miv9Y8Pgg8Bmkhbu6AOcuqTNqQ4vLKpO2BBnH5UehBGjlc
         eqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O3tHlQx667qQwBxsaAl3JfSxqkMsaUOEzpffiJ+u2Wo=;
        b=NVnXP2qT+7BuP2a7m+wp40VmxZK8o2BJRoZlG/jrDno8Ea99qknQlLZHk5fbsKozLm
         2mTIRFBhGWPqZRfcxrX5kC5F1rfGU1zx7y/fTzw3oE8HU3l2QB3K7SYc7MTGB8mwPla9
         /mPNGiLFogCxTvBL34kUQj42Ku8j7kWxDOSX77/QswmaNrSwi04FhImM3yXbLD1ceKLs
         ewk8Xm/aIl7pSN4PEnT7wLiJRAVyQFmOqhHF7gRTlHDB8nCBynC0jhrmECZyN0ieFA1+
         Bg3ln5+o2brPJZDayY0jadtAXTmEGo8siwnPEWocm1hlRqzkmfz9oZ1dBTcYcbI/a8jK
         nN0w==
X-Gm-Message-State: ANhLgQ0ZuV6hsmRSwxsMko6U0GMd90S8CI1bjma8PYRcAc2yClj55Du0
	AcLnSYac6Gb1XwsRhEUPcmo=
X-Received: by 2002:adf:8164:: with SMTP id 91mr32079853wrm.422.1585007461538;
        Mon, 23 Mar 2020 16:51:01 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.222])
        by smtp.gmail.com with ESMTPSA id y80sm1782399wmc.45.2020.03.23.16.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 16:51:01 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 1/2] Staging: speakup: Use sizeof(*var) in kmalloc().
Date: Mon, 23 Mar 2020 19:50:51 -0400
Message-Id: <19494bdab5709693126e0c0ee14b179a3b601207.1585006374.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585006374.git.jane.pnx9@gmail.com>
References: <cover.1585006374.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Modifying struct allocation in kmalloc() to match the
coding standards.

Checkpatch.pl CHECK: Prefer kmalloc(sizeof(*ldisc_data)...)
over kmalloc(sizeof(struct spk_ldisc_data)...)

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- None.

 drivers/staging/speakup/spk_ttyio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 5a9eff08cb96..9b95f77f9265 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -51,7 +51,7 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
 		return -EOPNOTSUPP;
 	speakup_tty = tty;

-	ldisc_data = kmalloc(sizeof(struct spk_ldisc_data), GFP_KERNEL);
+	ldisc_data = kmalloc(sizeof(*ldisc_data), GFP_KERNEL);
 	if (!ldisc_data)
 		return -ENOMEM;

---
2.20.1


