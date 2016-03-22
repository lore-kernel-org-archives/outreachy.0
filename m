X-GM-THRID: 6261499450444742656
X-Received: by 10.13.242.134 with SMTP id b128mr26594107ywf.28.1458650041710;
        Tue, 22 Mar 2016 05:34:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.186.101 with SMTP id fj5ls1142348obc.12.gmail; Tue, 22 Mar
 2016 05:34:01 -0700 (PDT)
X-Received: by 10.182.110.163 with SMTP id ib3mr27085781obb.43.1458650041391;
        Tue, 22 Mar 2016 05:34:01 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id sf5si4832614pac.1.2016.03.22.05.34.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 05:34:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so35940080pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 05:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Q5YGTISuRqWH0kho6fNBGaLx1v/rsnpAJIgKxhAQSME=;
        b=tQrtNpzZy43018L0+x3aeVH99ELW4whLGgUg9Jr4VZp0hcGU8C1pz9fYf8UqWfEyW0
         xVXQPBBcbFZvE0Ga5uzTVrjY2L0zBhdBLl8ShmUUkyjI7WGqXPyar33kuP9gkZuHYUBF
         ML/Fv7IcySJHELzxlC4cguYDBa91uGCUVnzVgoiC0fv/nT+tMJoFi6bRVPkFGlnZLZvn
         mo8ns/pjGxVceugFW79ZjdJmexP8X6IPPxm+0LjaoGB0rz9ACERCmsx1yuzxhu2M2Cai
         ZbmwAJn1GNW4t3Q7Cy+J2zwmumx27Fo5CRYUB40UH1tgUeoMRQNHQmAdIBWN0JUH0n8I
         mJDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Q5YGTISuRqWH0kho6fNBGaLx1v/rsnpAJIgKxhAQSME=;
        b=OGHvtI065ZCMuViJs/jIqkfZ0yyM5e+NqzW34PUbdKeP86eEKgHjkEdmm+4TdHFhMe
         WRNKbANE+7iGhq/8+eXPAzNpLKBVtIkCunJ8qsw8bfN6Ey07vTwSaKxIOi5hGK0GI6Xk
         IQQD8QQ7I+X7X3HFSJs5xdBbViVvTSYahiEBLKVohtO1NmsyP2+lYIFf5tvf3ADfvXdY
         Wmw1+KVXSSf7XOAokZQUJ2KXbYDXLkLxoxuNKUQ3XcsBFMULU7Vl3EJE+PbfGpPq9bqL
         AxANN0w1/gwBcOw24yzHjPN9DS6+W3AMlcs+bVw4N7XesSbQ9+Sp2iXXrPgI9z2AhtT4
         uL6g==
X-Gm-Message-State: AD7BkJI1+OdaRQEBKmZqz4Soknnkd/ZnlWwgCeO4oH4aF5fSgXW9vAluBLvvh92ygIzZlA==
X-Received: by 10.66.190.131 with SMTP id gq3mr53224274pac.42.1458650041177;
        Tue, 22 Mar 2016 05:34:01 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([117.210.122.67])
        by smtp.gmail.com with ESMTPSA id b74sm48134586pfd.24.2016.03.22.05.33.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 05:34:00 -0700 (PDT)
Date: Tue, 22 Mar 2016 18:03:49 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: wilc1000: Fix lines over 80 characters
Message-ID: <f480a579aa22d0a0b4d74d843a5b8d33686324fe.1458649426.git.anchalj109@gmail.com>
References: <cover.1458649426.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458649426.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Break lines so that they do not exceed 80
characters. Problem found using checkpatch.


Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
changes in v3:
- Make subject clear 
 drivers/staging/wilc1000/linux_mon.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index fd25116..9f85ff1 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -60,8 +60,9 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 	/* Get WILC header */
 	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
 
-	/* The packet offset field conain info about what type of managment frame */
-	/* we are dealing with and ack status */
+	/* The packet offset field conain info about what type of management
+	 * frame we are dealing with and ack status
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
 
@@ -128,7 +129,9 @@ static void mgmt_tx_complete(void *priv, int status)
 {
 	struct tx_complete_mon_data *pv_data = priv;
 
-	/* incase of fully hosting mode, the freeing will be done in response to the cfg packet */
+	/* in case of fully hosting mode, the freeing will be done
+	 * in response to the cfg packet
+	 */
 	kfree(pv_data->buff);
 
 	kfree(pv_data);
@@ -255,7 +258,8 @@ static const struct net_device_ops wilc_wfi_netdev_ops = {
  *  @date	12 JUL 2012
  *  @version	1.0
  */
-struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev)
+struct net_device *WILC_WFI_init_mon_interface(const char *name,
+					       struct net_device *real_dev)
 {
 	u32 ret = 0;
 	struct WILC_WFI_mon_priv *priv;
-- 
1.9.1


