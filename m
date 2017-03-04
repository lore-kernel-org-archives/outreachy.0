X-GM-THRID: 6393343309495926784
X-Received: by 10.107.11.160 with SMTP id 32mr3065366iol.66.1488643094963;
        Sat, 04 Mar 2017 07:58:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls13305614otc.36.gmail; Sat, 04 Mar
 2017 07:58:14 -0800 (PST)
X-Received: by 10.129.116.85 with SMTP id p82mr3167500ywc.40.1488643094622;
        Sat, 04 Mar 2017 07:58:14 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si553099pfz.1.2017.03.04.07.58.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 07:58:14 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 187so1888059pgb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 07:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=b9ADnycgnkmxGB5IIo+cnjIXlZn46XCAWiZviE9YlSU=;
        b=c6w/pV9UiWFhoHp/Aq93PcjyDI8dukNCtDY2F926AOuOXn3QA1i0Oray6GSMGLD80V
         Rg8GeWMGt401bR9vwxKqI7RibOMGv4z7FR6svE5+AMQh5/k/KmDAIpdRJXWLgl62Bm+G
         /IKVfSSAL8RyYKHLNfuZmL3JL8M0eZ62pkR8Cc4f1SAbXRLXvuDEGyiHX2ZjSME/n63S
         tSaobkSOr7A7kKiPQKFkA/+IxRbG51BcL6wQeSx2HI6wjtfOVj0brBOeEAy8wOlbKcf3
         G6jGLIHJna9kA7UWy69DD0q/YETu42aga4Vl2fh/B6b52RArflAZuKD7MMG6Klvxt6cQ
         vztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=b9ADnycgnkmxGB5IIo+cnjIXlZn46XCAWiZviE9YlSU=;
        b=lhUn8O15gNRFMsRjAwsgmu0t9LRvTtSUr0Rhh3vd2H8jGSYw8ieTbwXfINsmN4VGyY
         8Pka+VeiW03aG0BaM/83Nv7If9ahUwhXLQaHxXpG6sGsX+N5JiLYw1psj5PU3rLTrBjG
         oyIMs2RtIekRELHoA9nSjlSwaP6E/fE0YJtbBRyuK5Px1G5A7eduvTcexUsISNyKkE0n
         2kF0UBqNLaHWNT1h8SnKCoQdWataVBe2gHAsX10kiX50FzP4xZc+0bhVMZ2BEvU/Miv6
         nQ5l4ev8WT4elCbvXZPFYH6ofZnbhKt5zqtwm9QkVB81TTd3KrgRD0V9V75L3kbcdNao
         ELcw==
X-Gm-Message-State: AMke39mwqO65weulqSmb8a4oXFK+GaYjoFQWkpjVkaz2940lYNqbuYP+ItzduRUxPRDLqQ==
X-Received: by 10.99.127.71 with SMTP id p7mr10012790pgn.125.1488643094411;
        Sat, 04 Mar 2017 07:58:14 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w124sm30084958pfw.29.2017.03.04.07.58.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 07:58:12 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	linux-wireless@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 5/6] staging: wilc1000: function prototype argument should have identifier name
Date: Sat,  4 Mar 2017 21:27:39 +0530
Message-Id: <20170304155740.26105-6-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170304155740.26105-1-arushisinghal19971997@gmail.com>
References: <20170304155740.26105-1-arushisinghal19971997@gmail.com>

function prototype argument should have an identifier name as reported
by checkpatch.pl.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
index 11365efcc5d0..7a5eba9b5f47 100644
--- a/drivers/staging/wilc1000/wilc_wlan.h
+++ b/drivers/staging/wilc1000/wilc_wlan.h
@@ -274,8 +274,8 @@ struct wilc_vif;
 
 int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
 				u32 buffer_size);
-int wilc_wlan_start(struct wilc *);
-int wilc_wlan_stop(struct wilc *);
+int wilc_wlan_start(struct wilc *wilc);
+int wilc_wlan_stop(struct wilc *wilc);
 int wilc_wlan_txq_add_net_pkt(struct net_device *dev, void *priv, u8 *buffer,
 			      u32 buffer_size, wilc_tx_complete_func_t func);
 int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count);
@@ -291,7 +291,7 @@ int wilc_wlan_txq_add_mgmt_pkt(struct net_device *dev, void *priv, u8 *buffer,
 void wilc_chip_sleep_manually(struct wilc *wilc);
 
 void wilc_enable_tcp_ack_filter(bool value);
-int wilc_wlan_get_num_conn_ifcs(struct wilc *);
+int wilc_wlan_get_num_conn_ifcs(struct wilc *wilc);
 int wilc_mac_xmit(struct sk_buff *skb, struct net_device *dev);
 
 void WILC_WFI_p2p_rx(struct net_device *dev, u8 *buff, u32 size);
-- 
2.11.0


