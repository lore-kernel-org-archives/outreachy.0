X-GM-THRID: 6610740255626625024
X-Received: by 2002:a2e:3c08:: with SMTP id j8-v6mr641422lja.10.1539182908735;
        Wed, 10 Oct 2018 07:48:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9653:: with SMTP id z19-v6ls382550ljh.32.gmail; Wed, 10
 Oct 2018 07:48:27 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60B6ypipSMO90yEgzXsNgO6o59jC0NqBE+bCGbQiBoKPYsaljFuMds1PoehB1n+PHl4i+iw
X-Received: by 2002:a2e:7617:: with SMTP id r23-v6mr973352ljc.37.1539182907980;
        Wed, 10 Oct 2018 07:48:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1539182907; cv=pass;
        d=google.com; s=arc-20160816;
        b=AuUpTSNqcS8cD3gEcou5y3asbX47rQlmGRU/Tj6U6FpXOBaksoPH/ADAx9qfIM6ELE
         mraMmhOImUEVOkOWqyukRFabcT6gAaANwSgq4UgoXrnyLywQBD3mhDQ3eV3meWyK2HXH
         lxUkd/YX5eVvD26ZRo8dpyXmEXvEqsWP+5gClbRs900FCEag3W3YXrFoQxwB28L3p7OU
         /ERgil2DXRiY0S8JG17U390NTnMS8qKCA5o5Hx155g7XO8Rd/I9e/hhbFwpIghZWysPn
         kF4w7ovC5gxYL0IqTgUwTiC2SpSvC558H3QAPuhc+hrtZIni2paWkw81z7YVbaKwhY5k
         4A/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XkAYVZe7Y0rMZOGZFBAEk8Graqhl8OMZ7zsjXjwHY/E=;
        b=MvGA/6+yOK+quOAoCaBL0wS4CGaQMp4ye3nt81c4yzL0PRmx5gW+BTwGaj74Qx2ilx
         e4UnHAqAXee+ajYXR1QTb35MtVPtHN6/Rh74yD3v35u5TAZsvZYiLCCQQahb/oJrcwtN
         IQiKspehY1YjXXXfr5rq7KAt0iRjQWspCot5+lDOTjCLcU+kw0ij48rPSrpoASdfr3co
         sVhCmr5D9Bw2/nFLBfpp48vPv3NvIn+xbX5ZTWVuXptRQJ3FTnKGAo5yc5c0Swcc3VSb
         NXa76iJ+7mPy0khGUCad0tD95tK2h2K9Nz9vPeyCHF+BV+eT79XGkkGi0fRyItUz+hGR
         KqUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="P8V6/9ks";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id a199-v6si1087227lfa.2.2018.10.10.07.48.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 07:48:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="P8V6/9ks";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1539182903; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=PhLWe3qyGxTO+YVKDy5PhrCykKUJ9P8oYq1kdMkaRVma5wDIi47TESSz6v5oVvnz8Jaaywqzcrcpm+SS5Kd41DSMQ+HV7jKZBJ4D0PbEUYefko/MNs2s12AqynzANI4eisu18QoWODKmXxeMDGQaA4ywvNjjXFE3Vv1YWVXUxuU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1539182903; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=XkAYVZe7Y0rMZOGZFBAEk8Graqhl8OMZ7zsjXjwHY/E=; 
	b=VOoFrMAAITQ1RyTvRg7w9ybrtaS8h8sG+/FyErzVOtaBd/Rwt665sVXq+cl20e5PgW9BthBVEybAqL93rr3IbaN+27sp0gFiw3pefKiGjHCySTR7eAHKqHdAXaO4+usu5NuFBUVP66xl0+TgR/k3NIp6e+gA8y7hffFC6h3hS7w=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1539182903;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3210; bh=XkAYVZe7Y0rMZOGZFBAEk8Graqhl8OMZ7zsjXjwHY/E=;
	b=P8V6/9ks/gJioqSgwZyjHckapE61XUZvkHq600HnhM11/TpDvMBG58rRfDngxku4
	jRC1AV+jaEYZPoOHDBHMT6gX1sAdX/w5SWkJ4dSXPsvCyfSiZ0G7vVgLJTgrUAQURBO
	g3xjLqWx1ndpbHyytqXOgulevLKQQH46AI8JIyAQ=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1539182902711300.6117829519478; Wed, 10 Oct 2018 16:48:22 +0200 (CEST)
Date: Wed, 10 Oct 2018 15:48:21 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: [PATCH 3/3] staging: wilc1000: Change struct members from bool to u8
Message-ID: <e409baf10c6cc043344f1a63712d661611953973.1539182155.git.code@wizofe.uk>
References: <cover.1539182155.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1539182155.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Recent versions of checkpatch have a new warning based on a documented
preference of Linus to not use bool in structures due to wasted space and
the size of bool is implementation dependent.  For more information, see
the email thread at https://lkml.org/lkml/2017/11/21/384.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/wilc1000/coreconfigurator.h   |  4 ++--
 drivers/staging/wilc1000/host_interface.h     |  8 ++++----
 drivers/staging/wilc1000/wilc_wfi_netdevice.h | 10 +++++-----
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index b62acb447383..dbea5144395e 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -30,7 +30,7 @@
 #define MAKE_WORD32(lsw, msw) ((((u32)(msw) << 16) & 0xFFFF0000) | (lsw))
 
 struct rssi_history_buffer {
-	bool full;
+	u8 full;
 	u8 index;
 	s8 samples[NUM_RSSI];
 };
@@ -46,7 +46,7 @@ struct network_info {
 	u8 ch;
 	unsigned long time_scan_cached;
 	unsigned long time_scan;
-	bool new_network;
+	u8 new_network;
 	u8 found;
 	u32 tsf_lo;
 	u8 *ies;
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index 84866a62a4d4..f76dc682f882 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -217,7 +217,7 @@ struct user_conn_req {
 	u8 *ies;
 	size_t ies_len;
 	wilc_connect_result conn_result;
-	bool ht_capable;
+	u8 ht_capable;
 	void *arg;
 };
 
@@ -252,7 +252,7 @@ struct remain_ch {
 };
 
 struct reg_frame {
-	bool reg;
+	u8 reg;
 	u16 frame_type;
 	u8 reg_id;
 };
@@ -282,7 +282,7 @@ struct host_if_drv {
 	struct timer_list remain_on_ch_timer;
 	struct wilc_vif *remain_on_ch_timer_vif;
 
-	bool ifc_up;
+	u8 ifc_up;
 	int driver_handler_id;
 };
 
@@ -291,7 +291,7 @@ struct add_sta_param {
 	u16 aid;
 	u8 rates_len;
 	const u8 *rates;
-	bool ht_supported;
+	u8 ht_supported;
 	struct ieee80211_ht_cap ht_capa;
 	u16 flags_mask;
 	u16 flags_set;
diff --git a/drivers/staging/wilc1000/wilc_wfi_netdevice.h b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
index b7eee772f3fe..347b35ceead4 100644
--- a/drivers/staging/wilc1000/wilc_wfi_netdevice.h
+++ b/drivers/staging/wilc1000/wilc_wfi_netdevice.h
@@ -75,7 +75,7 @@ struct wilc_priv {
 	struct wilc_wfi_p2p_listen_params remain_on_ch_params;
 	u64 tx_cookie;
 
-	bool cfg_scanning;
+	u8 cfg_scanning;
 	u32 rcvd_ch_cnt;
 
 	u8 associated_bss[ETH_ALEN];
@@ -93,13 +93,13 @@ struct wilc_priv {
 	u8 wilc_groupkey;
 	/* mutexes */
 	struct mutex scan_req_lock;
-	bool p2p_listen_state;
+	u8 p2p_listen_state;
 
 };
 
 struct frame_reg {
 	u16 type;
-	bool reg;
+	u8 reg;
 };
 
 struct wilc_vif {
@@ -123,7 +123,7 @@ struct wilc {
 	int io_type;
 	int mac_status;
 	struct gpio_desc *gpio_irq;
-	bool initialized;
+	u8 initialized;
 	int dev_irq_num;
 	int close;
 	u8 vif_num;
@@ -163,7 +163,7 @@ struct wilc {
 	const struct firmware *firmware;
 
 	struct device *dev;
-	bool suspend_event;
+	u8 suspend_event;
 
 	struct rf_info dummy_statistics;
 };
-- 
2.19.1



