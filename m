X-GM-THRID: 6261499450444742656
X-Received: by 10.66.246.170 with SMTP id xx10mr13708973pac.13.1457869118842;
        Sun, 13 Mar 2016 04:38:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.7.71 with SMTP id h7ls611747iga.16.canary; Sun, 13 Mar 2016
 04:38:38 -0700 (PDT)
X-Received: by 10.107.16.34 with SMTP id y34mr14268895ioi.4.1457869118553;
        Sun, 13 Mar 2016 04:38:38 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id y20si2409355pfa.2.2016.03.13.04.38.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 04:38:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x3so21871939pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 04:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hxM1OC9Jo2Om2agjf8K0QTZq7YX2JpoJ4SYfR2FQn8I=;
        b=FksCNUOnPvPqrcUZNFIFqtK9aQ6ld6WGrJHKp7b0EPerZhoeZwR1mxUPAjhUYjbBJS
         qMBT97rjrp31k8EmGYkq5WfkmI2270ophoiSK5VEN92lXFeE63xG509TJmDit98h6awu
         Y98lG3cJg/gwul0k3CIFr84h9Cj5Ff4HR2Kf0zkOtTptT4S7wOg2qYJrVUw1hPTG4Zwp
         QIU35DXBvuqxq0RZSqvwcS0rw1jKt9v2vrrv3eYn1HXtATE3TG02dFyeCnqk5w2yQ1Nh
         N7+a2BKPH32205CwpViVEdeQsZYVb7glO8qC2y66cx+I0Gv0uUWjXA5mYLCkePp+EkQ8
         Zn6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hxM1OC9Jo2Om2agjf8K0QTZq7YX2JpoJ4SYfR2FQn8I=;
        b=a+he5FkfznND7JiqHLFuaNGsnsfThBYVrlH5iCTq6D9btpp0uzRgDFovwVSPIMq2+r
         n/IxZBERfTjMzuD9EV5TSCb1RKXIua3qj0aXG9406Jl7iROlB09aKrsdZkeRApr77hVk
         85aneOR5BaScCIgAP3XUTtXoJ9gL+ZpPhXT0siKSLaTsJ1SCiZ3JMxS8+6ElAy6NEASd
         Cqa6LUQFFBY/iwvtIK41EcA/DnuHRaWgbgMKEoowu0K+XYJSIZNCeXLOd8S5uVEfT13L
         qUX/3A7FciDTcHe2wkOw0qXMLCPXrHXdLr/6fjCj4s9aqoV6tr+JaZvN42qJJwTuLMv+
         0EPQ==
X-Gm-Message-State: AD7BkJIY1eBELhUGoHf9aQfGxW5KbAHXbIC5f/kKvTr3n6AfOBUJOzSCE1Z/k6IvFDu3fA==
X-Received: by 10.98.42.211 with SMTP id q202mr21512960pfq.13.1457869118391;
        Sun, 13 Mar 2016 04:38:38 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id c9sm24827589pfd.90.2016.03.13.04.37.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 04:38:37 -0700 (PDT)
Date: Sun, 13 Mar 2016 17:07:50 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: drivers: Fix lines over 80 characters
Message-ID: <55e6d749e6540164f7e206c1eb7ddc17b30fa292.1457868804.git.anchalj109@gmail.com>
References: <cover.1457868804.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457868804.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Break lines so that they do not exceed 80
characters. Problem found using checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index fd25116..0d79a61 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -59,9 +59,10 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 
 	/* Get WILC header */
 	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
-
-	/* The packet offset field conain info about what type of managment frame */
-	/* we are dealing with and ack status */
+	/*
+	 * The packet offset field contains info about what type of management
+	 * the frame we are dealing with and ack status
+	 */
 	pkt_offset = GET_PKT_OFFSET(header);
 
 	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
@@ -105,7 +106,7 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 		hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
 		hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_hdr));
 		hdr->hdr.it_present = cpu_to_le32
-				(1 << IEEE80211_RADIOTAP_RATE);                   /* | */
+				(1 << IEEE80211_RADIOTAP_RATE); /* | */
 		hdr->rate = 5; /* txrate->bitrate / 5; */
 	}
 
@@ -127,8 +128,10 @@ struct tx_complete_mon_data {
 static void mgmt_tx_complete(void *priv, int status)
 {
 	struct tx_complete_mon_data *pv_data = priv;
-
-	/* incase of fully hosting mode, the freeing will be done in response to the cfg packet */
+	/*
+	 * in case of fully hosting mode, the freeing will be done
+	 * in response to the cfg packet
+	 */
 	kfree(pv_data->buff);
 
 	kfree(pv_data);
@@ -255,7 +258,8 @@ static const struct net_device_ops wilc_wfi_netdev_ops = {
  *  @date	12 JUL 2012
  *  @version	1.0
  */
-struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev)
+struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device
+									*real_dev)
 {
 	u32 ret = 0;
 	struct WILC_WFI_mon_priv *priv;
-- 
1.9.1


