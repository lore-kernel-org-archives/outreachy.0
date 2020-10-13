X-GM-THRID: 6883182191980838912
X-Received: by 2002:a92:84db:: with SMTP id y88mr1018831ilk.247.1602615740316;
        Tue, 13 Oct 2020 12:02:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:985a:: with SMTP id l87ls245044ili.8.gmail; Tue, 13 Oct
 2020 12:02:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxp9cxpI9SGrIbrT7n0f8/8+OJg1tZbsN4XQ6F2xjEeW2MXk9biNMzJR6Y//IAg3xSY3wID
X-Received: by 2002:a92:c5c2:: with SMTP id s2mr1184403ilt.177.1602615739003;
        Tue, 13 Oct 2020 12:02:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602615739; cv=none;
        d=google.com; s=arc-20160816;
        b=Ucdi/huGX8RhBqD+4bD5s262OsNwzKhfSh5w08aTmgRSfy2v21ddP7A40Khv1uwjct
         jOZN7lRpk+LSpiCkgGEHmODJviQuZHQDpDYY57FwtHCbtL0hNZl5Be/adjQE4ZXO0k/9
         YRl4MSX7KYLPopVXPjnyQnoAnHWQetELam8KsJAyJOOxX2QVvdTmN+B4WxvSz4voSJGo
         LnwPvg/a817WcnwJfBqewvVc+cMHwIlv7jT5Q6yR+v+dzLXIUHz1dRI71O5sQv+K8DG+
         Ydqv8wNOQsqQnyk18s7rVWnmBad+ISY81yXNglKBqpsShRh/6kI4ldYplIabxIm5L971
         UveQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=TsXG9fMZtAcg0OKCIa5Z8gDNAKJvgEll6RU/Upc7sYM=;
        b=uyP6qoWpsrWg6o/sIzjk0d7cksPlUukiHgBxPQqDGRVED656YEGI0xUVEP41FtVTDg
         KCe6PPIkNpykJYuX9n7tdEAncg3q4sVXAOOA6EDHmM3eLvli9T0p0rgPiCTDy0I+Mkw6
         qBbbiGp1QTxzVruCmL6/OY8QWLT9HmG7vJImn+nwhN5zVODi+GhQTkRrKOVwdso6ggQ3
         zQmQYHUjGmxcknrCqF2pFLiF0rxJNQuKsmydMsC26J12wXVmere3KA6EH6S1UT6slN6i
         6d0R1S29NB7dKxJ6c2LB5jMpu50oQdDVmDUHVV+oSdwkNg/A9EC8TP8PYeTGEGEpSJ7B
         tpHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D+li2RKn;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d25si48001ioz.2.2020.10.13.12.02.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 12:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D+li2RKn;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id p11so363486pld.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 12:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=TsXG9fMZtAcg0OKCIa5Z8gDNAKJvgEll6RU/Upc7sYM=;
        b=D+li2RKnt0Ukkn6QRJUtWYP4CMVzpoIhGHLvkp13K25Zl3IivcdNprGVauUfbEy+hX
         sM3o7tVf18SlMsaRwDpnGDbSqaZ5iA6YxFYRxtmeh16fN4BV6H014wd0RPLPdYre9y6P
         NizQDwJuMwYtQ/f+9aD3g7odyrikFU1i9jfB/TMJE2+GxEcuSflnwx+aNrKS0nL3YxxR
         ElbuSzLjhms6dfe29jnIGcXtSON3ixgwPKDoYRtHNLjpaQKifXa/8ML3rAwdw72yFfbZ
         vQ51Ccp2W308wYzzn+Zsx8vRefW/KJcTnZDJoicGMWAt25jE8QCuDdN6gi+FcgMVAN0Z
         ojiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=TsXG9fMZtAcg0OKCIa5Z8gDNAKJvgEll6RU/Upc7sYM=;
        b=rtLW/2pe5mS46t+7njNAPEd2zd4WeITogSVgZms5bdCHUDtff67Di6NlMXhhtPsWqh
         TmkfTM0xEZ3LpggsWa5J0FQDlS8stoIUAi/R9XcVhsvC7/dCekpdM41ORmsuuSRzLJXU
         +wDgdJG4NRTo0NJt4rrRph7mATUnaezyFSRP8hbdMv+Y2cEbdblKLK9jIrzajxVaxH44
         atL4iP2U+/LtIa+FglvvHeJsMmiO3M9bMusr8QnfJxEvk4icXFqMwzSMseamCzeg/K5M
         aLYmpjLA+h9crUIoxDXcLfPJR43H2kA3AHnr9tehPmJwVEqUUkkpeHuxLxp1MBaYRrje
         J3Ew==
X-Gm-Message-State: AOAM533neOHwN2tMAJwm0bglFrOfHG7Eq/I8H6N5hcUyEC5h0TgWMEuv
	JyjYMucBn67px4mztmj7cW+Y9DoHP1bT+g==
X-Received: by 2002:a17:90a:f198:: with SMTP id bv24mr1163958pjb.230.1602615738370;
        Tue, 13 Oct 2020 12:02:18 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id n2sm678007pja.41.2020.10.13.12.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 12:02:17 -0700 (PDT)
Date: Wed, 14 Oct 2020 00:32:12 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] gpio: 104-idi-48: improve code indentation
Message-ID: <20201013190212.GA85788@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Address code indentation warning messages by checkpatch script. Combine
split function parameters on one line. This also resolves the "use tabs
instead of space" warning by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---
Changes since v1:
   - Correct subject line per feedback from Greg KH.

 drivers/gpio/gpio-104-idi-48.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpio-104-idi-48.c b/drivers/gpio/gpio-104-idi-48.c
index 94c3a9bc4e75..b132afaf7d99 100644
--- a/drivers/gpio/gpio-104-idi-48.c
+++ b/drivers/gpio/gpio-104-idi-48.c
@@ -132,8 +132,7 @@ static void idi_48_irq_mask(struct irq_data *data)
 
 				outb(idi48gpio->cos_enb, idi48gpio->base + 7);
 
-				raw_spin_unlock_irqrestore(&idi48gpio->lock,
-						           flags);
+				raw_spin_unlock_irqrestore(&idi48gpio->lock, flags);
 			}
 
 			return;
@@ -166,8 +165,7 @@ static void idi_48_irq_unmask(struct irq_data *data)
 
 				outb(idi48gpio->cos_enb, idi48gpio->base + 7);
 
-				raw_spin_unlock_irqrestore(&idi48gpio->lock,
-						           flags);
+				raw_spin_unlock_irqrestore(&idi48gpio->lock, flags);
 			}
 
 			return;
-- 
2.25.1


