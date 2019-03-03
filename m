X-GM-THRID: 6664067951305424896
X-Received: by 2002:a17:902:aa08:: with SMTP id be8mr4240026plb.45.1551599230619;
        Sat, 02 Mar 2019 23:47:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:246:: with SMTP id 67ls4980863pgc.11.gmail; Sat, 02 Mar
 2019 23:47:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqwY6aPS1mHz+mzIuwAdKJxOU0l9VcRo8tfT0A8RFVPgSHkJNa2+E86IFtIo99dNLQngkpJo
X-Received: by 2002:a63:9143:: with SMTP id l64mr1855348pge.20.1551599229856;
        Sat, 02 Mar 2019 23:47:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551599229; cv=none;
        d=google.com; s=arc-20160816;
        b=t/bAFFk3Rj3Mv9CBfhrBvC2fRoVQdXuZjYoq5KTvRNY7El0MZE9pihOBsEiTXesWFY
         L0bRqcnxGHITPHbSoKlZFKZS6LJzShlbVCAPJgPLhYyr33RbTI8quAhv1x+H7p3b0qpW
         H4quqlEaQLu8FLZ/GcYKFVV0rFnZv6gCO7FiPD1O68+ZE/qHO1OrYjgvFY5M+fxYviIs
         T+Cg/wEn9KkcAd3z+09cvTQKibI9XEkoxHUv8NpPzO00DNgQ1fa/pCkLpYeBQ3SJYdyt
         /P5lf6sdhX3qnuyhsmNuGObhGSrIUX+hUQMluH8vGzOe6uekEtGjCSwwUpLAYqbMoNpV
         3YkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lBwT45i6qs/Z5CZym1Lg0us7bH3hCh+GIpLJ0bt/A+w=;
        b=PB5oRh4D3plF+kqwldb8dBLohPigvAToqTyZFCuMUHyUm1isCP9Sek0sIWIDVD0Y4X
         K9hWEbDAvXYeY03B6Rp4XCVJq6+KjuTH5LobmHSWit+zHlD2iTlpxBRcpA+mksH0Hzf/
         al/9/0tXpgJ9Zzce2D6pQAHLQl2cK+3YRQeyrzXRE3rsdOy0CFz05DSAD7msO9K6ceXm
         SRcDjHpdrNL3bWbhFSRUk2FYVuNNWggM0ZCrdmZ3IIVdxz1maB51PV1ZumrxYXo5FbyN
         C0xSTZHcWlcmrdnm/c6qTzGzrS5Vsxy4PBHRw+5MkNYKq8uI62s+g8iOx/wgV+q/Rg2T
         MCwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IRfZrI9F;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h15si131534plr.5.2019.03.02.23.47.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 23:47:09 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IRfZrI9F;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id q206so1027496pgq.4
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 23:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lBwT45i6qs/Z5CZym1Lg0us7bH3hCh+GIpLJ0bt/A+w=;
        b=IRfZrI9FweBEw29lawrrR2BMLiQRbWwPP3aU24yMfpcS0gW6hi4eOLuSQGnkdcgWhf
         jnxPboX0Pwd2nn0CzONZDQ9HXkQb/Y1O5ybV+kYdhfh2rOHsz3lMYvrAkbrKY6PfrG1A
         pyS6zkVqi0LjZibq5MZLTtmFfoKswodOBdlGnwtjNYg3+f8lawSqN25id97L5Nqod+x6
         eOIWso6f13FihNqfXIT1HZwVmtwj5cC1aoPDzXS8dhcORPUwdxydrW8M1yamcMbsv+9e
         EM0aZESpXI9jvsl62bCtSixs2sfkiJJTlVuntX6EH95TME/nqvd+8jMcONC0gRiWMIRm
         e9+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lBwT45i6qs/Z5CZym1Lg0us7bH3hCh+GIpLJ0bt/A+w=;
        b=jcyMFraZM/8CCIJBu0R8vU8c5+ac19UnhVZx5RyW4RBIvZ9VjAGInThaVcUoELtUeQ
         75eBx43FYblKjXcQ/R5pB9tpugwy6BgpAzovy+EtdFnGmjTfwDVUQ8Hq82T4a+NyUtQq
         wB3cB9KXcytE220DwAeCnsXZYAsgp96VUMyKVBkIBg5SYXPalxDnZyrDB/zG1JKipeSN
         VhLwWw+jc+wMHT7jLg8dhhlnEA65lUs0cKQrJICgpR2hGCJHkPh5V60DaFwGkvOw29Ya
         a5K6Sesg93Bj+e010JBksScaX/bpf9NkUP6oBj3WD3L4lgxpF8pmVOOq03HtU8S4uYsf
         dqqw==
X-Gm-Message-State: APjAAAVg5mDQvH2wh20XA+VdAmqrzNb4zexGbCmYciX2rRDpD5/if+Zq
	3XadPrKAX0hUk2yzM1jLOTtbcxlMMWM=
X-Received: by 2002:a65:6683:: with SMTP id b3mr13032458pgw.423.1551599229649;
        Sat, 02 Mar 2019 23:47:09 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([114.29.227.194])
        by smtp.googlemail.com with ESMTPSA id d129sm3898483pgc.59.2019.03.02.23.47.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 02 Mar 2019 23:47:09 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH v3] Staging: pi433: Fix line over 80 characters issue
Date: Sat,  2 Mar 2019 23:46:48 -0800
Message-Id: <1551599208-3301-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch re-formats the code to remove the checkpatch.pl warning(on
line no. 566):
WARNING: line over 80 characters

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/pi433/rf69.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index e19b9ce..0c189a7 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -563,7 +563,8 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
 {
 	switch (flag) {
 	case mode_switch_completed:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_MODE_READY);
 	case ready_to_receive:
 		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
 	case ready_to_send:
-- 
2.7.4


