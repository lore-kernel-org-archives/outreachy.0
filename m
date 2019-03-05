X-GM-THRID: 6664067951305424896
X-Received: by 2002:a9d:17cf:: with SMTP id j73mr1472361otj.46.1551806059080;
        Tue, 05 Mar 2019 09:14:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3de5:: with SMTP id l92ls758364otc.0.gmail; Tue, 05 Mar
 2019 09:14:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqxxJUBL6Ee6ri17X4io13ihWTDoaThDdk1H8KBziLO3N9M0tUdIY1m3TF5EqG5RN3PXpJtH
X-Received: by 2002:a9d:7b55:: with SMTP id f21mr1524374oto.43.1551806058229;
        Tue, 05 Mar 2019 09:14:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551806058; cv=none;
        d=google.com; s=arc-20160816;
        b=X8RHOrgEffq6yDIx7ITmA1xbepZEWheG/Bak4i+KNY335DaNMpfgOViIPRg0DmaYVm
         ArPdL+rl41YCImCTMyrHHn7MQbAS3qTfhqdQAg0YEJBp91+JlKhBRBellnSoWe4m2+61
         CEZXaJhZmZNNHLn8kNA1XNDWwiY02xmCyFkTnikcGJHFTHwpALvErfpbtpiIyLq6Umz8
         a8mT9CvqmHeRomfeo2aGfxqXdRg2tL+ml5naNC6ikkbuq2NiOE/Dx5Dtkt7a32hnAb4I
         I1JkaqmR0zQ8wbxayj7I+/henp5Dq00Ve0lBF+X1lbI6GKJn3jCG5lwS7QChtjSFztkp
         eteA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=BdpHEKVfIXS4vgfQHXL0A5Hqz+hntafjNPuogYK2dMA=;
        b=hevMGbRwdRbMy04UF53znt8OmbPF+gGpJJNexIup5H5HHaSvKCkAW+GU19CZ2GUySW
         GoLXZ6/SgRXx+6P6OvmEOrE1T6gcTxnDmX3G4RYdKZa19raywWiwYTm2zmJ9K8Duox+X
         vhwpkdCJRW6tyZ34sOVdYfEHiZGgN5iaFuVG7eiSIfA52lbwwqUrsGsZ5JqJGud3+PyQ
         EWSCZXL7JK451CqySXOhSxSGyENvSXOFppShs9DsAIlAVdaF31kp27ND7vStmSQMbP1v
         fAlua4PgJZK2PTBCRKj1BuVICszhnEuUvO1CuY3QSEOb+es0v1ogFvRce2Qi0u83VdXQ
         bV/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ew+iq1Bx;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d128si428141oia.3.2019.03.05.09.14.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 09:14:18 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ew+iq1Bx;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id 125so5822047pgc.12
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 09:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BdpHEKVfIXS4vgfQHXL0A5Hqz+hntafjNPuogYK2dMA=;
        b=Ew+iq1BxheWJySBhb14ZW3SWOo0a45tzkDjwv8fWvwusKsD8KRJOQ9Ti3AAAEwGIsh
         novSjNP9AjUZeQqG2QLGXPySZOpkJbCcF5AFldwDKV5u/5Spj3eW1MfXJnZ/1vPVtEHC
         Hu0YLQ7hbGR8TG8xLn05Lr0X2J6/ZGMzhxyybSCh9KadLItS3wIcEEDaK+1HTJ4nZmdA
         4Cg7zl7xL9py7597+OqvC1sdMxuasZSVr8MipeeCFTtv611ZTS3wByWY7ogAfs66ZJIx
         86+gfmYf6VDUGd4iMDNO/pRcYPfR7vU2C2ruMaNUMnAFdRbw9EZ2zNn6oA9eArG3GeEo
         wBPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BdpHEKVfIXS4vgfQHXL0A5Hqz+hntafjNPuogYK2dMA=;
        b=bhp2mjHt8Muv8tMl/xa8fVd2uK82PcOfTHlZJKeidmfXStoGItIuBrSSSKqFTtHjuO
         LewM535PISRG35m05ZO9zbvH8KEUdX8OJ8BR1x6rR24pix9YksPSkgpKFLbIPh7PwxfU
         X8N2D5hWy9PTiZl4maeeoyDXSRFOuIZ7rVpBrs+62HGcjZyZ1rfYk8c+Icva+++hNcP2
         4VlkCqlnNjMKGGjn3UAyFkqJ9o8j1UJiZizvV/quPnkAocagbZmsoqKJjVD92Mn03pkA
         flBa+Bh6i/Ro1EOb9Ajh7s5UI+pULygR42rghV9bbg4ZMuOCx77Y84/uEV8G3qLjXcKV
         eM/Q==
X-Gm-Message-State: APjAAAXUKEIt1EZOkNhz8mc+ieGME4wG4O3xfTFjO+bG3MudAHkZyWTj
	n2bKdtVC53uwCP3vXofYkrk=
X-Received: by 2002:aa7:8251:: with SMTP id e17mr2877952pfn.96.1551806057452;
        Tue, 05 Mar 2019 09:14:17 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([117.211.86.109])
        by smtp.googlemail.com with ESMTPSA id 20sm21873950pfs.182.2019.03.05.09.14.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 09:14:16 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH] Staging: pi433: Fix line over 80 characters issue
Date: Tue,  5 Mar 2019 09:13:06 -0800
Message-Id: <1551805986-49458-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

Break the lines after '&' and match the alignment with '(' to remove the
checkpatch.pl warning. Remove whitespace after '&' if any.

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/pi433/rf69.c | 48 +++++++++++++++++++++++++++++---------------
 1 file changed, 32 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index 0c189a7..815fc9f 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -566,39 +566,55 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
 		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
 			MASK_IRQFLAGS1_MODE_READY);
 	case ready_to_receive:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_RX_READY);
 	case ready_to_send:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_TX_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_TX_READY);
 	case pll_locked:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_PLL_LOCK);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_PLL_LOCK);
 	case rssi_exceeded_threshold:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RSSI);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_RSSI);
 	case timeout:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_TIMEOUT);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_TIMEOUT);
 	case automode:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_AUTOMODE);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_AUTOMODE);
 	case sync_address_match:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_SYNC_ADDRESS_MATCH);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+			MASK_IRQFLAGS1_SYNC_ADDRESS_MATCH);
 	case fifo_full:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_FULL);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+			MASK_IRQFLAGS2_FIFO_FULL);
 /*
  *	case fifo_not_empty:
- *		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
+ *		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+ *			MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
  */
 	case fifo_empty:
-		return !(rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
+		return !(rf69_read_reg(spi, REG_IRQFLAGS2) &
+			MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
 	case fifo_level_below_threshold:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_LEVEL);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+			MASK_IRQFLAGS2_FIFO_LEVEL);
 	case fifo_overrun:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_OVERRUN);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+			MASK_IRQFLAGS2_FIFO_OVERRUN);
 	case packet_sent:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_PACKET_SENT);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+			MASK_IRQFLAGS2_PACKET_SENT);
 	case payload_ready:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_PAYLOAD_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+			MASK_IRQFLAGS2_PAYLOAD_READY);
 	case crc_ok:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_CRC_OK);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+			MASK_IRQFLAGS2_CRC_OK);
 	case battery_low:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_LOW_BAT);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+			MASK_IRQFLAGS2_LOW_BAT);
 	default:			 return false;
 	}
 }
-- 
2.7.4


