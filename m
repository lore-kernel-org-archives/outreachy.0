X-GM-THRID: 6466070722699591680
X-Received: by 10.129.106.65 with SMTP id f62mr13526539ywc.99.1505499408087;
        Fri, 15 Sep 2017 11:16:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.238.75 with SMTP id b72ls1548154iti.21.canary-gmail; Fri,
 15 Sep 2017 11:16:47 -0700 (PDT)
X-Received: by 10.36.41.210 with SMTP id p201mr2635250itp.35.1505499407170;
        Fri, 15 Sep 2017 11:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505499407; cv=none;
        d=google.com; s=arc-20160816;
        b=J+CKPgEU/hTlMbBnsnqZbfsUglnyBvAehr4i+37sIbdgwE7t7qkU7Bif7Gk4oikHtp
         UwI9elOcnK2RCpAjG70tDI3CU9+NCXa38gnWwjFGa2kQPA9pis6+UvOjH++3EA7/ATl8
         AZPjehxO1t0707zwzqZ1daJtOcrEPedGazUqu8fapaC4E2zOEOQ44F8bkEG7AePaddv7
         +LyYkd/ZzLdti6r7DTNKwPaKJeOQ+RLnYbG3tkplORMs1RbnmANPw0PDtT8/9qEFUNkS
         J+SWGKLQ3WU5WypwDcKhlj484gOvrV/47Ozi92qp7YTJQgd/4PVzb8gMP/YPgpfNQpon
         h6jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=VYG672B0eOvk7z5xu1QSmJwQcExcK41oxupOLSJ/QpE=;
        b=fvBRDUbroodBAkS35XEWN1PLpDyG8N9zm0l/upi9p9gC/OSrwT/C3XTjh7z90QTu++
         DWpQlsCDSZ9YyeYvM+gLu6QwLxOpNvHO8Hq96RSQ/H+ATu8tsfoAsS+BUqTpS+xck/j2
         OfMwPkX2UY9uQJgT3nxkeGSYlefLFNZfkVN6dfRXqE8eeTcSvi5wamuDILV56CtoDqix
         s7ziiDlAW+6DyJ2j9jOsk++04tleqd3jvahPC9muvxwwLHIKLpNzIGI17rur6shwlWNE
         YqFuHh/rilorsPs1wBRPv2ZMLq36VOF/Tro5l0K/OnV1GHupZvXb/D2G3y/fVEj06vvM
         RpbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eeFKG8n3;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a17si146864pfk.15.2017.09.15.11.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 11:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eeFKG8n3;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e69so1567478pfg.4
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 11:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VYG672B0eOvk7z5xu1QSmJwQcExcK41oxupOLSJ/QpE=;
        b=eeFKG8n34MUa4qa7tRodxhMEWDQuhoIzZK2p5SEy+wpD+oGH0DOSAToGziepGeYt5p
         JPY7N7so0H9JsvTX6RDUWB7adWnDZm2FoBgdq9wZ+45QZ+kLCf2dFKAM+fXr5R9KkeV0
         ZXeSKCMomOHHZjL2BeMQH8+vIAgYmhw0B/35h5ooJzZeb5FYLPmkaDxQXD7RS0gKXoX2
         FOnvq1LSguoJKLEunKbtkFaTKL7hd9RH67v2/6ovGDL3tphYSXJaBFdtEszNLWlbtBoA
         hNJEyFmFDPYS5viy1fCf8wNgivHWi1VSgkIkrrUERHrcgYmp3CFUl+3U+2RdmTyjj5oi
         0w/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VYG672B0eOvk7z5xu1QSmJwQcExcK41oxupOLSJ/QpE=;
        b=pOINf3jVXk4zyOt0ocP8YPxjpVmze0x+Uxc5zAU5ThCcGZC9GfUrLijMZEMoWyl7ZE
         Z+Xsj2QZK9nibZkZkq8ckvijoARg/yQ750Wxuy+OFb0n8CGBXe4CNRs56msxhGppt/lk
         NT0cv3s+hyT9How7CH2Eh4WFqyL7AjGiHzSGXUghmCBvpccf4YNY2s24zmgKhYF8UzO1
         kUumaR8/Cb26pRkSXYVUS7yP3Y0wu1/ab74ercaDXwgqhJQ40EqmH/G2UBgCw1kMLvea
         Dh9hi3xoK3091xFvZecyW84Q0nHkOOdUhsvRzg2Jaaozq7elL/i912gacqrE1gvjqsyp
         uXTA==
X-Gm-Message-State: AHPjjUgPSkp+G9QE+vX96/uzuUX6jHA+6e5ZC6whXV0j4dMSqEj/Ap/n
	E5n0bNYAHSegM0Xq8Tg=
X-Google-Smtp-Source: ADKCNb7VfTPqhif4srcH9YjWjegeRH4ug+K4LmzZ3m86TVXQx05F0zjG2pd+SugrD/kitS+JsQHh4g==
X-Received: by 10.84.215.205 with SMTP id g13mr28423373plj.165.1505499406694;
        Fri, 15 Sep 2017 11:16:46 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([14.139.122.139])
        by smtp.gmail.com with ESMTPSA id c65sm3017230pfa.179.2017.09.15.11.16.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 11:16:46 -0700 (PDT)
Date: Fri, 15 Sep 2017 23:46:39 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	gilad@benyossef.com, dan.carpenter@oracle.com
Subject: [PATCH] staging: dgnc: use usleep_range instead of udelay
Message-ID: <20170915181639.GA19334@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl check

CHECK: usleep_range is preferred over udelay

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c |  6 +++---
 drivers/staging/dgnc/dgnc_neo.c | 10 +++++-----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 870ae3d..fb1df19 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -397,7 +397,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
 	writeb(out, &ch->ch_cls_uart->mcr);
 
 	/* Give time for the UART to actually drop the signals */
-	udelay(10);
+	usleep_range(10);
 }
 
 static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
@@ -587,7 +587,7 @@ static void cls_flush_uart_write(struct channel_t *ch)
 	       &ch->ch_cls_uart->isr_fcr);
 
 	/* Must use *delay family functions in atomic context */
-	udelay(10);
+	usleep_range(10);
 
 	ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 }
@@ -609,7 +609,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
 	 * Presumably, this is a bug in this UART.
 	 */
 
-	udelay(10);
+	usleep_range(10);
 }
 
 /* Send any/all changes to the line to the UART. */
diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index c7cc490..5ec1026 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1230,7 +1230,7 @@ static void neo_flush_uart_write(struct channel_t *ch)
 		 */
 		tmp = readb(&ch->ch_neo_uart->isr_fcr);
 		if (tmp & 4)
-			udelay(10);
+			usleep_range(10);
 		else
 			break;
 	}
@@ -1261,7 +1261,7 @@ static void neo_flush_uart_read(struct channel_t *ch)
 		 */
 		tmp = readb(&ch->ch_neo_uart->isr_fcr);
 		if (tmp & 2)
-			udelay(10);
+			usleep_range(10);
 		else
 			break;
 	}
@@ -1483,7 +1483,7 @@ static void neo_assert_modem_signals(struct channel_t *ch)
 	neo_pci_posting_flush(ch->ch_bd);
 
 	/* Give time for the UART to actually raise/drop the signals */
-	udelay(10);
+	usleep_range(10);
 }
 
 static void neo_send_start_character(struct channel_t *ch)
@@ -1495,7 +1495,7 @@ static void neo_send_start_character(struct channel_t *ch)
 		ch->ch_xon_sends++;
 		writeb(ch->ch_startc, &ch->ch_neo_uart->txrx);
 		neo_pci_posting_flush(ch->ch_bd);
-		udelay(10);
+		usleep_range(10);
 	}
 }
 
@@ -1508,7 +1508,7 @@ static void neo_send_stop_character(struct channel_t *ch)
 		ch->ch_xoff_sends++;
 		writeb(ch->ch_stopc, &ch->ch_neo_uart->txrx);
 		neo_pci_posting_flush(ch->ch_bd);
-		udelay(10);
+		usleep_range(10);
 	}
 }
 
-- 
2.7.4


