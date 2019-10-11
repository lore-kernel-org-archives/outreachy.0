X-GM-THRID: 6746422022313607168
X-Received: by 2002:a81:7c0b:: with SMTP id x11mr1000524ywc.387.1570773829165;
        Thu, 10 Oct 2019 23:03:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:e81:: with SMTP id 123ls1080044ywo.15.gmail; Thu, 10 Oct
 2019 23:03:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw1e6T6KBNXNvJa8+oMoi3sECfa21J+Pf7MPQg+rY+LoOe8j6R2c7PbSG/E07DjW10sCJjr
X-Received: by 2002:a81:558a:: with SMTP id j132mr1067310ywb.35.1570773828204;
        Thu, 10 Oct 2019 23:03:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570773828; cv=none;
        d=google.com; s=arc-20160816;
        b=rjv8SlkEKa/EqPzEdF1KuTApySdPxnpT5tPH+LX8cZq9QMr2fnj2GERZtV9twdngSk
         U2ZBjz4ByL1ASIAoIjB0cmI1R/vLMaJR9VrloiqHkOxlkQ6u7zL7KsNqaeAR04opQUYz
         SVbdiOraanEFFOlp4RrhphNKpvuWmIKJVmCz8eWCLqVfK7v/GQ8RwRokQOZy5mru+ro5
         OOYMmIxrq/W6nrA//76kK//syTBTZfbsL0AWmIg9QY71pjuNku7pyDjVG44tzGkJOFD6
         fFTxa/14++pZoA41YSzZoEIDTGDCnFldb8Aa2wLhHTg2SV4aoZYMjQJ3RXbq9WO5+2DE
         Cmmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=78A7v/fFdhcM+C5XDuRJJKeqGNkh4U2EwVbQjxNiiy4=;
        b=yQaq8ERmD5HoqEhLCckAlhJXc5LqTd4c+8mm7j7e7nS6YSvqKN/p8mFZGhgQUsBl8M
         pUYFg9yzPDoO0QLUZ/74qnL4i1DdSSQYi45XjDn8SzMjgCVzboSwQo5cKMbJSUjf/oI6
         QBLieMNeeo1Gbvxv7fLQSYqto06J0nBKi8ZF0jy8tw7d3BWYovQYC7Di4tCnrtHGsZJu
         t+GyKoLI5vMwwRxoSufTcxnmkB09U3/ZrDYqWlgOIMGD3Q3ZKehgi6GkpmotnadmNwan
         By1f7j/iaClJAruq+yU9ZVsiQ2Bo7Rj3EV1035Aeik4ejiw7HSyM/7B7+dw6/FkB1JVD
         423g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TIio2u/G";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u129si343548ywc.1.2019.10.10.23.03.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 23:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TIio2u/G";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i32so5138189pgl.10
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 23:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=78A7v/fFdhcM+C5XDuRJJKeqGNkh4U2EwVbQjxNiiy4=;
        b=TIio2u/GyvX/4+US8sREUzM6Z3hhenOMPV+381jep+sjhxKO4duKvimQMh/WPE0REM
         vQ+hdZk6PiDEiiEI5UMiLw/ELIodqrpT+mMyC4BMOpNwqbEijlZRR2UvLGuqF2TIfk/E
         m72QSO8KEWaevDMZk1br1k5QbLZAl8VWvHZcAZsEJqnh/kvm6aU3y4x1u92gjAauMcJx
         52kH3N0IiXPMGRJ+7CQs70UYTu0oBw38cAR1iLYvYDuypvyDYmmYbidP53/YVZAdmPVX
         uIK1IPLS5uI3Z7/lGmjddnqWztt0vd7rZGNO01P/gZR7v2LfI8uvp9pfluKIfS5gSwga
         yr0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=78A7v/fFdhcM+C5XDuRJJKeqGNkh4U2EwVbQjxNiiy4=;
        b=sKocUyexLtohHhe0o7tnQm7T9KybDhS4qrpXYKmsWvPJmtnkdGMkAfb6U/n8WogoCy
         FZKbF/tYMwH6umDSOVieXIqozxdmKYIk8l2KnnMu7YKKVcPj51FIJP0Q5v5p/kKwVCUa
         WmU1i80CMxwh2apMK99fZIlpqvnofsDeqU6FVB86E1Xg27SlArEbWY9dEZFTa2pJ/r63
         1mL1hW/bDKalFkLXSscfKAkGHXFVbauVylz1zJJmBOvyrOLzelabz1J931TOS98nnU7k
         tffwjAnMHj2IeLWdXUcClzCYHLcjEA+NA+uQv6xBYDeJ7H8PaAZGUOwrvP0xtcVlkhId
         tlVA==
X-Gm-Message-State: APjAAAVdnZbSoZp5DkP5rF+F5KqNLuuyUo33dyw+U050E8EKKgMm90EP
	ZS87J5q9R+EB6ctiEN0fbqKiJamwcm3pvA==
X-Received: by 2002:a62:6411:: with SMTP id y17mr14803815pfb.158.1570773827623;
        Thu, 10 Oct 2019 23:03:47 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.zuku.co.ke ([197.237.61.225])
        by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 23:03:47 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH 5/5] staging: octeon: remove typedef declaration for cvmx_fau_op_size_t
Date: Fri, 11 Oct 2019 09:02:42 +0300
Message-Id: <777c55e3bb9f2f4804765bb0daca1720d8aa5085.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove addition of new typedef for enum cvmx_fau_op_size_t
in drivers/staging/octeon/octeon-stubs.h.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 06e6a0223416..a0aa99e7b757 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -205,12 +205,12 @@ enum cvmx_fau_reg_32_t {
 	CVMX_FAU_REG_32_START	= 0,
 };
 
-typedef enum {
+enum cvmx_fau_op_size_t {
 	CVMX_FAU_OP_SIZE_8 = 0,
 	CVMX_FAU_OP_SIZE_16 = 1,
 	CVMX_FAU_OP_SIZE_32 = 2,
 	CVMX_FAU_OP_SIZE_64 = 3
-} cvmx_fau_op_size_t;
+};
 
 typedef enum {
 	CVMX_SPI_MODE_UNKNOWN = 0,
-- 
2.23.0


