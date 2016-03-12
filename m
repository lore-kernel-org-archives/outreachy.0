X-GM-THRID: 6261204257874116608
X-Received: by 10.66.146.194 with SMTP id te2mr11261508pab.17.1457800333326;
        Sat, 12 Mar 2016 08:32:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.10 with SMTP id we10ls1271100obc.77.gmail; Sat, 12 Mar
 2016 08:32:13 -0800 (PST)
X-Received: by 10.182.47.132 with SMTP id d4mr11650240obn.40.1457800333013;
        Sat, 12 Mar 2016 08:32:13 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id h69si955001pfj.0.2016.03.12.08.32.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 08:32:12 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id 124so105305186pfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 08:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/2GvheyBpzp7a0FPmc8qcbs4NmV8IGdiLK5g1Q8oteY=;
        b=KnomGkG/Na/xUIpRH1uCCBTWv5gCNGnb8k7O2ApthswDmRKh1wJRAyROAmx37ydifQ
         iqrXvk0toCyUKrCDtwqMwYXII2tJsGsAXCc0zlyFFAZFiyEllvMX2fIMqFiob2RnDl+y
         yRz2n3QK63A0pWxZUR/mZUcdAGholj+ID4QvnqU/2xXRHeDmuRRBrdBuJkg4KK+lnxMM
         sj+wZrNGpE8Pq74za9zx7CT2A8hkwxubirpJAb6WIQPwV54gbFFBNJWULjTbfBmTE20Z
         6lPLZtbnmF1rNb1K787qVoKJ1KiO80Oooa3BT/9KjKoCwJE68/ElQS5Gyvksf951ozDE
         n3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/2GvheyBpzp7a0FPmc8qcbs4NmV8IGdiLK5g1Q8oteY=;
        b=DH7cv8go/ujcs1chDTHC8LKg3DqRpbuVRIr+mi/MROzVZsr2dn+ahYFsw6WyUCnV+g
         vH8HnvIEUuG5g4zNNdJX9P5YUMAVi8KHwnPI6AY89iZsyCc8O18fSrXba+10RubEcAjG
         ZZ11McfSlXoqdC2HTbuJMa07o2dkz7xGdzPNeIcMkCKKsWv4PeYyQk6JDXwKhnMLDsVV
         6p7qM6unR8x9wiFcqK+/8jhSLNplrI3pGi9601kh35rgCcanxwGvRZgC9mmuk6Cd/QRH
         hICWYnPCJ1Gy0c254gW8El4ulNUFGFRECTE7kf9FtcKMdCsaFRW/861kUmUf76hwnlEa
         uZPQ==
X-Gm-Message-State: AD7BkJJcVvt4KzucGK4ZVK3sNN+/+oTvckyrncRysII0b6uR1pka/uLDZU9AC0RrvddlWA==
X-Received: by 10.98.17.132 with SMTP id 4mr17008808pfr.16.1457800332861;
        Sat, 12 Mar 2016 08:32:12 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id n11sm20810154pfb.74.2016.03.12.08.32.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 08:32:12 -0800 (PST)
Date: Sat, 12 Mar 2016 22:02:01 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: wilc1000: Fix line over 80 characters
Message-ID: <34df57c2a9e66d8279f7c3b948896da328c382ea.1457800084.git.anchalj109@gmail.com>
References: <cover.1457800084.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457800084.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Break comment lines so that they do not exceed
80 characters. Problem found using checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 7d9e5de..44996e2 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -60,8 +60,10 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 	/* Get WILC header */
 	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
 
-	/* The packet offset field conain info about what type of managment frame */
-	/* we are dealing with and ack status */
+	/* The packet offset field conain info
+	 * about what type of managment frame
+	 * we are dealing with and ack status
+	 */
 	pkt_offset = GET_PKT_OFFSET(header);
 
 	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
@@ -128,7 +130,9 @@ static void mgmt_tx_complete(void *priv, int status)
 {
 	struct tx_complete_mon_data *pv_data = priv;
 
-	/* incase of fully hosting mode, the freeing will be done in response to the cfg packet */
+	/* incase of fully hosting mode, the freeing
+	 * will be done in response to the cfg packet
+	 */
 	kfree(pv_data->buff);
 
 	kfree(pv_data);
-- 
1.9.1


