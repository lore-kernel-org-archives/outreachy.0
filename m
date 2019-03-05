X-GM-THRID: 6664866314925899776
X-Received: by 2002:a2e:9613:: with SMTP id v19mr1371666ljh.16.1551785113526;
        Tue, 05 Mar 2019 03:25:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7:: with SMTP id 7ls2363901lja.13.gmail; Tue, 05 Mar
 2019 03:25:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqyDv6KTWM/iU9ebo4EjxxznZ+7qgrwZCyukycVrTq1Kp1Ce0PdN5oi1cdcR68KnX6Jp+QX7
X-Received: by 2002:a2e:253:: with SMTP id 80mr1315314ljc.27.1551785112570;
        Tue, 05 Mar 2019 03:25:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551785112; cv=none;
        d=google.com; s=arc-20160816;
        b=UOBuaeuk4ABeVaRFT/dqkyu5Xp7ZBtov2PRydoUsUvQ9VxI7XtWCMpBO1ecFyG0RYC
         DG1/OLaT3jEhfEejkeEdbrVFjZuQldLTDnwOAED6m4uu6HJPZlQWJt3IyNH2MZRjqpHv
         YA1YOXM2wstEzix+e6K1perogEmJmOx/zG7lAAv8QN9xd8zXq74S/TSkveOs94QMG3Jk
         3yFrHtg0tl71LMVvbKBeeHW41UUCkuHOQd0+4SKVqSB8jhC68e1KRMTTfexU+q/v67hG
         LPtSbt5Y2zCqOOW+whZWNxRT21/qKfucev6GjJmwm1tSsH6/m6szS9QpY+kOKTtLEkIL
         NcIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=X8DLS/164AXpYJBuh+dYDLP9yR5oCXteuFVc+A9Ikhk=;
        b=ymZaxkOwv9tiDsCOPJZ390fgGID5EmgGGer/7AKRr4oIYdskbTu3n3TFihynvG+dNJ
         FuzVThjKd4zlGF/eM1R2NtUPiCjXD89GKhYEEhw+oPbvWitMWZj2rjE6l6Y9FlZqb/Dn
         vLSZTrPLX4s0S36barHbvFUJ9E3idy8VuOfrs7m99CdfDqaRJmGxLj14x1MJT41R3Lg9
         KaigeHC3BwDjPCV83kLdZfoFN/OjESJ0tKx6RedHw3DZfVvYAk87oQiHqNbiNvgoDQu+
         a+nnwe9J1Ap+7a5KlscFEJX+R5q3njLpdfB+wDD6XDj/VLa287jv+AGoFZol+XPz+loI
         fMSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cv/Oy+sP";
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id h11si486084lfm.3.2019.03.05.03.25.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 03:25:12 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cv/Oy+sP";
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id f14so9037162wrg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 03:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=X8DLS/164AXpYJBuh+dYDLP9yR5oCXteuFVc+A9Ikhk=;
        b=cv/Oy+sP8ExeiH/5eQjfLlc2EPHAaKwJAA+rmlaHNxtP4z4Te202ycZ1sLOpu9aqx7
         BzPwc+QVLLieSIRRtzZN5iROpJKX91YyTDfhg9QXews+gk8EA5kDd/6w41co/uta0IPI
         XLpPE1eyjt65iRJbgn/xdnyk1TrksY8fwbH4L9zx+cEAYbbfpj/sY3NxPzdmxSfvSJDf
         PmCKkgyza4mt7fB6jsQS7n0i94jCLOG15B4KCMvrUkvtdOtBAcv3i8WZ4RbtLYkDSFDV
         5geG7s7QlkLUTVbCrMic/I06AdOVyA98lUUj9EPaqzwvWNQd66xEqoVn7M854EcjFXr7
         Pz0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=X8DLS/164AXpYJBuh+dYDLP9yR5oCXteuFVc+A9Ikhk=;
        b=ND7/ZD4XngLFFbM0DmjcorD4UmVdWgvXirTZBtHLQWOxKnJ1xA4LhUkDWnWsqmPzni
         BsKYfjl+qId133SGnlS40gtalPTCtQp/pJrGbeCGc6aLX5xfkodqGlhyCdy0PlKLpXCd
         3DC74HRljX2k2omh8mOv2gM2C2Yw2zgn9B3eduUUlFRn7J/f3aC73JEd5K5KXPJMGJzk
         Pkzfo7lyBJeiDQuki4EB9r3EPrb9BqCepA5HAtw9mu8UNA9RsdIcGh8VuACfEF3ooAZS
         NUtMXGkY2cwcqYxXR0omPXTG7c5/C5AHsugxLTmTTiyeURHPOZXw2FpepttbZG+5W1r3
         PT0Q==
X-Gm-Message-State: APjAAAVqT/zEekWamsvXD56lwfIbjemXAua+EgW7pbD+mnElb102XkII
	aK03H+rAj2hHQebtn5jbpIga4oQh
X-Received: by 2002:adf:a147:: with SMTP id r7mr15376393wrr.5.1551785112059;
        Tue, 05 Mar 2019 03:25:12 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id n6sm9475592wrt.23.2019.03.05.03.25.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 03:25:11 -0800 (PST)
Date: Tue, 5 Mar 2019 13:25:10 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ralink-gdma: Replace from uint32_t to u32
Message-ID: <20190305112510.GA16536@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace all uintr32_t with u32 to avoid getting
checkpatch warning

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index a43d9b8..ccf9ccc 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -283,7 +283,7 @@ static int rt305x_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 	struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
 	dma_addr_t src_addr, dst_addr;
 	struct gdma_dma_sg *sg;
-	uint32_t ctrl0, ctrl1;
+	u32 ctrl0, ctrl1;
 
 	/* verify chan is already stopped */
 	ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id));
@@ -360,7 +360,7 @@ static int rt3883_gdma_start_transfer(struct gdma_dmaengine_chan *chan)
 	struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan);
 	dma_addr_t src_addr, dst_addr;
 	struct gdma_dma_sg *sg;
-	uint32_t ctrl0, ctrl1;
+	u32 ctrl0, ctrl1;
 
 	/* verify chan is already stopped */
 	ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id));
@@ -752,7 +752,7 @@ static void gdma_dma_tasklet(unsigned long arg)
 
 static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev)
 {
-	uint32_t gct;
+	u32 gct;
 
 	/* all chans round robin */
 	gdma_dma_write(dma_dev, GDMA_RT305X_GCT, GDMA_REG_GCT_ARBIT_RR);
@@ -766,7 +766,7 @@ static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev)
 
 static void rt3883_gdma_init(struct gdma_dma_dev *dma_dev)
 {
-	uint32_t gct;
+	u32 gct;
 
 	/* all chans round robin */
 	gdma_dma_write(dma_dev, GDMA_REG_GCT, GDMA_REG_GCT_ARBIT_RR);
-- 
2.7.4


