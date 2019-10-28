X-GM-THRID: 6752322786481405952
X-Received: by 2002:a81:288:: with SMTP id 130mr7336346ywc.193.1572225825748;
        Sun, 27 Oct 2019 18:23:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:ea09:: with SMTP id t9ls1693830ywe.3.gmail; Sun, 27 Oct
 2019 18:23:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwHffdUYgzHlE/VvsMivbH67aK0vWPn54ck2YrSETFAuD9sM/qSioxNATbIiuxufsxzYcDU
X-Received: by 2002:a0d:e003:: with SMTP id j3mr11123111ywe.87.1572225823752;
        Sun, 27 Oct 2019 18:23:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572225823; cv=none;
        d=google.com; s=arc-20160816;
        b=0dTZwPHN9kPyLQ91kQArxM6h+3H1P5ft4njppZfdwgXCN0afZxp/qiTlHYCzmEmopn
         ILrc0u475aSi/sv05bnQeXUQKKNhlC9gJFaPsrEMPo+RONaR7L4/NEeFYDmgRtTHA/7E
         AGyF6Jb0b3BMhzngzSIqqeusrow2tWPGktPbiUdDh8E/BTP1vxYezIm/xn6vmiDs//nb
         SNdWpiOND05gjZe09kh0mCKkHac6yrhGvlAm7P6vYFiWygDj1mzjV54mxJAYe2/dBYzF
         /ilHbKe00netqKnggkDPTcul5lc5nFWw7kXjA8BfVQ40A6kLPyZyk3H47ApVZr6l7mcH
         y2Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=YFLMMTb3+rTNbep72aANDbNhLKuuaVfvZiXGDDu1rc4=;
        b=t+2E2v7+vYUJTO6+K2OMLOGANUkcXnvzwVWRKCkWYHbN74rG4MLfaCP5lIeN4Rq9b9
         U7yQzzG+X05D0ezMJ3YlqMb3NMlru2Rs05h6+7ClZLChD8Rj99jJg4ovv8YqgWkn54Jw
         bFrTOFSHNOlZi54A1yIfJ/n8YdY6PpjQOBqKxl5moVL64Hc0++oquD4n49ODKi9uZ9uX
         bV9pEZbxDsueFVMmmRn7mAQNzZHGwcLeUywgWrSCmx8p8hHv7hjLwsM1Rp+kRMHYhN6c
         yR6cFmXOg/BrFgPpvl7iW8Md6CPySGleNClBknXlcyxYCYS0ShWFG7b8TicFgqAi+yEn
         BgVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Rskvbrsi;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id t73si492045ybi.4.2019.10.27.18.23.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 18:23:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Rskvbrsi;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk1-xa42.google.com with SMTP id 70so1666101vkz.8
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 18:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YFLMMTb3+rTNbep72aANDbNhLKuuaVfvZiXGDDu1rc4=;
        b=RskvbrsiL3zfVqvMU5cdCZfefLF9RMnj68zdZ7+f8aOPGxDdnyaCui44smTUqKRYiX
         H+lkhRAbeICRxXSmHvbYo5q47xqMZMWV0JHxKj0yAHtq4N200dYKuilXQi6KOW6HUHk6
         tcsMkwfgKjKTd7+Tsxk7skSDMutTOuAbOD6RqlEWH6x4/6Smtg1tLFyNe+HHX5DXt93C
         6JSkpOAGLeZL6nUTcWsYrhsi1P2yY+gqPX7gAYXXN5l0ioueEoynHs8Gu0BAfRCExGg2
         47GpVEEV0kIqdFCg1d9t6EwLtRiMVzUx6ep0ciXlAvIOvNQX1coIfQpUTOrUZEHBfbPt
         WdPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YFLMMTb3+rTNbep72aANDbNhLKuuaVfvZiXGDDu1rc4=;
        b=hTlUp9Sjpo+xpdiu1mdJj4kt2apEWc0j/kc8MC69kh8vHEK4OnOC9t+YhrSmTS2v1k
         gysjY2JfzUpqVkoc50Yikt8QjEPekVDWBYo82LZkm4akEsX10wFdhe8Ji2P15eADcFZv
         e2wZjX0Q5o7sINim1MkjhbAf2ZCWvOUvOablRiMNu0N2pHRDszOA+quDNWGAg66Y4r66
         sECl/TkObMOMk56+tTNrxJ/niLCoigDCNCNLcoYg4yPAlDqT4RDKMrL7yxThKFPaM2UF
         on1KMZ7nVAUvl7b1aYCElM2TYXHENAaCW4vylQhehlMV+2/I35bvoMolrAF5ajoi+Gi+
         psag==
X-Gm-Message-State: APjAAAVDGBHz3SzyaST2IJ0XhB1SZBzqry3QDaznf492UdiPcj9Ue6Ya
	GQ0M6+dbspbpeev7HlEWrx9PADD0fL+Nng==
X-Received: by 2002:a1f:acd0:: with SMTP id v199mr7627177vke.5.1572225823012;
        Sun, 27 Oct 2019 18:23:43 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id r12sm3118791vsk.19.2019.10.27.18.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 18:23:42 -0700 (PDT)
Date: Mon, 28 Oct 2019 01:23:40 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: [PATCH v2] staging: ks7010: Fix unnecessary long lines
Message-ID: <20191028012340.txospx2wfkefc7n2@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

checkpatch message: "WARNING:LONG_LINE: line over 80 characters"

Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
Changes in v2:
  - As suggested by Greg, this time just the last parameter
    "REG_STATUS_IDLE" was wrapped in the first diff.

 drivers/staging/ks7010/ks7010_sdio.c | 3 ++-
 drivers/staging/ks7010/ks_hostif.c   | 9 ++++++---
 drivers/staging/ks7010/ks_wlan_net.c | 3 ++-
 3 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 4b379542ecd5..8dc6c84630c3 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -446,7 +446,8 @@ static void ks_wlan_hw_rx(struct ks_wlan_private *priv, size_t size)
 				     DUMP_PREFIX_OFFSET,
 				     rx_buffer->data, 32);
 #endif
-		ret = ks7010_sdio_writeb(priv, READ_STATUS_REG, REG_STATUS_IDLE);
+		ret = ks7010_sdio_writeb(priv, READ_STATUS_REG,
+				         REG_STATUS_IDLE);
 		if (ret)
 			netdev_err(priv->net_dev, "write READ_STATUS_REG\n");
 
diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 2666f9e30c15..4206e535de5e 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -79,7 +79,8 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
 				&priv->psstatus.wakeup_wait,
 				msecs_to_jiffies(20));
 		if (time_left <= 0) {
-			netdev_dbg(priv->net_dev, "wake up timeout or interrupted !!!\n");
+			netdev_dbg(priv->net_dev,
+				   "wake up timeout or interrupted !!!\n");
 			schedule_work(&priv->wakeup_work);
 			return;
 		}
@@ -438,7 +439,8 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 
 	/* source address check */
 	if (ether_addr_equal(&priv->eth_addr[0], eth_hdr->h_source)) {
-		netdev_err(priv->net_dev, "invalid : source is own mac address !!\n");
+		netdev_err(priv->net_dev,
+			   "invalid : source is own mac address !!\n");
 		netdev_err(priv->net_dev,
 			   "eth_hdrernet->h_dest=%02X:%02X:%02X:%02X:%02X:%02X\n",
 			   eth_hdr->h_source[0], eth_hdr->h_source[1],
@@ -1831,7 +1833,8 @@ void hostif_sme_mode_setup(struct ks_wlan_private *priv)
 			if (!is_11b_rate(priv->reg.rate_set.body[i]))
 				break;
 
-			if ((priv->reg.rate_set.body[i] & RATE_MASK) >= TX_RATE_5M) {
+			if ((priv->reg.rate_set.body[i] & RATE_MASK) >=
+			    TX_RATE_5M) {
 				rate_octet[i] = priv->reg.rate_set.body[i] &
 						RATE_MASK;
 			} else {
diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 3cffc8be6656..0e1486ccb901 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -1212,7 +1212,8 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
 		iwe.u.mode = (capabilities & WLAN_CAPABILITY_ESS) ?
 			      IW_MODE_INFRA : IW_MODE_ADHOC;
 		current_ev = iwe_stream_add_event(info, current_ev,
-						  end_buf, &iwe, IW_EV_UINT_LEN);
+						  end_buf, &iwe,
+						  IW_EV_UINT_LEN);
 	}
 
 	/* Add frequency */
-- 
2.17.1


