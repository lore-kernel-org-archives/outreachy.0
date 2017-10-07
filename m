X-GM-THRID: 6474180643558260736
X-Received: by 10.101.77.203 with SMTP id q11mr473313pgt.60.1507387646143;
        Sat, 07 Oct 2017 07:47:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.26.83 with SMTP id a80ls364747pfa.8.gmail; Sat, 07 Oct 2017
 07:47:25 -0700 (PDT)
X-Received: by 10.98.217.216 with SMTP id b85mr336713pfl.16.1507387645196;
        Sat, 07 Oct 2017 07:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507387645; cv=none;
        d=google.com; s=arc-20160816;
        b=OEOYBYFk9Ix0hJipsWMOsXqhdoLVOrH2NbuffzzaY/cbydoxL8v72x3M2BlkLqNuc/
         sHwonwCIk0EntJWgAAe+tXRAMjz3QcAo35cAbuVPiFS2XFrgzUvN6j0KyVW7wD7aWGzh
         apIBr9s6F4vurkzDrayKmB1b126VVEFVizxyOOj0DqWm703NckVlwXZoOjoyUAS8JmJ+
         r1bkFDUX4sAPSOcCW1HzO+ukFIgTdk/EgyTkEfXyJ180mWhk7im22DzXPYpOMdVasdUT
         p3tchTRp7FXOTuZDt9wY7PgOwldbpmOPF/jnZ+qyI8FrlZcJRay7cjJUribgcerPnrds
         frmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=654xf5JdUEgp94TL48XGc6DXDaykkEEaU7QIlhfADUM=;
        b=uyIn88Yxy8PGlNX3s1fJTFx32s9G+mGUBFZ/GsXC7XON5ckEACYSrzWi/w4fxBX5eR
         ijYIcMXyvUQPeT1k4vTfN2cWUYbVw9R5boGsQPYxUsTZmSWZopv/yBemSMAfBlFW9Fkq
         zfbw55OVgL9suu6hAHi08/F5+RDbZVptVKfGzYWCunkJqIsmcD39eFKtY3mLWIO26YHh
         vlKaxY8EhBzTggLPplZtPFwksGdwCwiO4DfTezd9y8FNYdFmDmdb4wAK9DDjKC61iAwG
         ihi3QWNvgFATTNNNYhlpPD595oMg9gHll6+M/J+822Bu3cEyUDZLGRLyJJM2GjsaB+lq
         7fnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZAbTkme6;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a28si444775pfe.24.2017.10.07.07.47.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 07:47:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZAbTkme6;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id z80so797575pff.4
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Oct 2017 07:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=654xf5JdUEgp94TL48XGc6DXDaykkEEaU7QIlhfADUM=;
        b=ZAbTkme67wrxYLbvS56QPWUCAvcuBZqUpBuoK3gtvXE6jma32eNyFqqv/Zhp4iqI+T
         AaGzNJD2V7xYQwSbqJ0LGgc/5BepNQX/FMOZNOrxdhW5gc649Q9NZxOMzPM5O0GI8Vqk
         9ZvogS9dpfcNssfqypAhWRvh6bsY7ZaU5ntMB+G0hw/M8n4UGTFzXmEwsXyHT0YrCVQX
         iRa4hLsmvjm9KWEhcEbHVT45hb1WnB+494WSi8h3a9mQUoirsH3lbeMJWqT2qxoTZSMB
         3BJcYhwB42ZK5RR+V+opVpJmJFoAJS1wdK5Utq9aZReds8kC5qlIiBLdAcXV+Oitmni+
         n6lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=654xf5JdUEgp94TL48XGc6DXDaykkEEaU7QIlhfADUM=;
        b=SrmNtWmr//mLYDLsX522UL+Afgob2gzWmkZUbC1bdFg+yDCXpf1V4Bi2xiY1bwVn2W
         RT83XtuTQdbBsaK9vb5YuKNQ55/uxnlqsSX51qCZpUfMj21/EVp0HGXEvI/hhrZNWTvn
         2LMGgZQ7t7f7gVHrFOHfYSdNgGUueRkf/sbbGbgCTv2iCDKLkqR/QU55nwUs377gBfGj
         qQRA6nOwbveZo5lM9g4ruzDAda4mfFf3SzDuwTjP/T5K/GoTbVrf/vtV+WCfhaTQFwyH
         HVExWIk7ikrWp04reAqisMzbDYM91IwSlyNZl8/YaDlLjV/UQ+S2GZwvmt/TNxeQq4sH
         hexw==
X-Gm-Message-State: AMCzsaUlNVgp9g09e8fxBsDByL8KPfBgASboSryXnvLdUexUQPnjKqH8
	Zgz6wVsrLtLjDTNUT+O5Gw8=
X-Google-Smtp-Source: AOwi7QA+cnFMoY1+7aevfL2psHdRCEwfFLdMrtJle0WIkDaCUyMFcLy465eesTNwvTxTej9VFzSejA==
X-Received: by 10.84.129.193 with SMTP id b59mr4695402plb.76.1507387644760;
        Sat, 07 Oct 2017 07:47:24 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id n27sm8656747pfi.11.2017.10.07.07.47.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 07 Oct 2017 07:47:24 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Thomas Petazzoni <thomas.petazzoni@free-electrons.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: fbtft: remove unnecessary parantheses around assignment
Date: Sat,  7 Oct 2017 20:17:18 +0530
Message-Id: <1507387638-17906-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Parentheses are not needed around the right hand side of an assignment.
This patch is done using Coccinelle:

@@
expression a, b;
@@

b =
-(
a
-)

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/fbtft/fb_uc1611.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
index 48e3b3f..8eb5e7f 100644
--- a/drivers/staging/fbtft/fb_uc1611.c
+++ b/drivers/staging/fbtft/fb_uc1611.c
@@ -225,7 +225,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	u8 *buf8 = par->txbuf.buf;
 	u16 *buf16 = par->txbuf.buf;
 	int line_length = par->info->fix.line_length;
-	int y_start = (offset / line_length);
+	int y_start = offset / line_length;
 	int y_end = (offset + len - 1) / line_length;
 	int x, y, i;
 	int ret = 0;
-- 
2.7.4


