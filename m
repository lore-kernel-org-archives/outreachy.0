X-GM-THRID: 6329721618764398592
X-Received: by 10.36.112.144 with SMTP id f138mr14710662itc.6.1473753158930;
        Tue, 13 Sep 2016 00:52:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.38 with SMTP id n35ls713625ota.27.gmail; Tue, 13 Sep
 2016 00:52:38 -0700 (PDT)
X-Received: by 10.31.154.196 with SMTP id c187mr19194704vke.13.1473753158555;
        Tue, 13 Sep 2016 00:52:38 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si3040069pab.1.2016.09.13.00.52.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 00:52:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so8895082pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 00:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=n1kNrGtkP2yTpcxPNNIWN9UQKR9o5SPWWBTQ19r1SRQ=;
        b=fUernw4dH4R2p+2NdkHj/zVOnELRNoheR8Z524HUAeQHyKjeAibZ3kvjQsBZezz2I0
         ak2dZzXtvcEk7CHN5s8rsBWEONIZGc977C/BXmzqzH4ibaj808HwZXGae2k8fQyk+JjQ
         8YLZiVIopRN20VKKsdzwyUJzkke2FWF++KF+JGP3JBOH3nApvXNN5+p6/K2MMGXa8EFI
         +TAjIZ7yYd5rFxVGWCk5v2IZuI4qvpE3cPjqUl6gHpm4FWhLt3lZ3f9hBMMw7kK2VrEB
         VRZlcCzCB+TJb78QmzJ2tIq1rLI65oH4bwcwZTMYbx584kQxoZbdfujX1yLjLX3ImXwm
         erKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=n1kNrGtkP2yTpcxPNNIWN9UQKR9o5SPWWBTQ19r1SRQ=;
        b=aO8AMJ2E07BlIiZWTJ7QQXk/697yHftwjjsBzk3HyGiuRCWW5ZCRLQEnnD0fuWAIvo
         ngS4BzgaNigpGy43F8VGpj0hE9wfw7Ld7xjrsffiZ/uFWlgrI+quOqwNrVjL2OMrNlpA
         czD9tWj62VZsqOnnmZlUCbFrfafxMUd/bllmxgy5Nal2YHKvhUSwliTL7zsd+kUuvT4H
         qFSw0ZwRedHWD/k2I9DUshZOltmlPCWFBSMJYgwxze+tnai0bVmiWfGfh9g6DYZOado7
         UNZW1xOMSVAW4BIkU7KFqRWmvAE5mwPobItQfrhT27mDI37/5AlB1PywFWUgEIxulMlg
         qA/Q==
X-Gm-Message-State: AE9vXwMa7fHy09CoLfwhSxpPEXqbAWOfXQ+P+WqR7hDKtWfGRpY/77/xQNIsPcWAZZaytA==
X-Received: by 10.66.190.200 with SMTP id gs8mr41431327pac.42.1473753158318;
        Tue, 13 Sep 2016 00:52:38 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id p17sm29124393pfi.7.2016.09.13.00.52.36
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 00:52:37 -0700 (PDT)
Date: Tue, 13 Sep 2016 13:22:26 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, lidza.louina@gmail.com
Subject: [PATCH] staging: dgnc: dgnc_cls.c: usleep_range is preferred over
 udelay
Message-ID: <20160913075211.GA6959@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

According to Documentation/timers/timers-howto.txt"
udelay() is only called once from a place where sleeping is allowed.
We can replace it with a call to usleep_range()
with a reasonable upper limit.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c      |  6 +++---
 drivers/staging/wilc1000/linux_mon.c | 11 +++++++++++
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index 4e1e0dc6..1b07255 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -410,7 +410,7 @@ static void cls_assert_modem_signals(struct channel_t *ch)
 	writeb(out, &ch->ch_cls_uart->mcr);
 
 	/* Give time for the UART to actually drop the signals */
-	udelay(10);
+	usleep_range(10, 20);
 }
 
 static void cls_copy_data_from_queue_to_uart(struct channel_t *ch)
@@ -632,7 +632,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
 	 * Presumably, this is a bug in this UART.
 	 */
 
-	udelay(10);
+	usleep_delay(10, 20);
 }
 
 /*
@@ -1104,7 +1104,7 @@ static void cls_uart_init(struct channel_t *ch)
 
 	writeb(UART_FCR_ENABLE_FIFO | UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
 	       &ch->ch_cls_uart->isr_fcr);
-	udelay(10);
+	usleep_delay(10, 20);
 
 	ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
 
diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 242f82f..22f7684 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -59,9 +59,15 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 
 	/* Get WILC header */
 	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
+<<<<<<< HEAD
 	/*
 	 * The packet offset field contain info about what type of management
 	 * the frame we are dealing with and ack status
+=======
+
+	/* The packet offset field conain info about what type of management
+	 * frame we are dealing with and ack status
+>>>>>>> staging: wilc1000: Fix lines over 80 characters
 	 */
 	pkt_offset = GET_PKT_OFFSET(header);
 
@@ -128,8 +134,13 @@ struct tx_complete_mon_data {
 static void mgmt_tx_complete(void *priv, int status)
 {
 	struct tx_complete_mon_data *pv_data = priv;
+<<<<<<< HEAD
 	/*
 	 * in case of fully hosting mode, the freeing will be done
+=======
+
+	/* in case of fully hosting mode, the freeing will be done
+>>>>>>> staging: wilc1000: Fix lines over 80 characters
 	 * in response to the cfg packet
 	 */
 	kfree(pv_data->buff);
-- 
1.9.1


