X-GM-THRID: 6261499450444742656
X-Received: by 10.159.35.76 with SMTP id 70mr3552550uae.1.1458649919607;
        Tue, 22 Mar 2016 05:31:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.74 with SMTP id p10ls1234762igi.23.gmail; Tue, 22 Mar
 2016 05:31:59 -0700 (PDT)
X-Received: by 10.50.43.129 with SMTP id w1mr14888875igl.4.1458649919206;
        Tue, 22 Mar 2016 05:31:59 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y20si4784396pfa.2.2016.03.22.05.31.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 05:31:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q129so36501052pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 05:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OIztt1VIT3aNOhasGR696dXinYGrfiWvZzdjHh8NFe8=;
        b=CvszXP1qyza0wzohunjvvc9B1zbFxYWm+ngj3ofyi8HVxrynSrLCFSSOHEDDlWO7aW
         dkkoT0ajqq1LXBLMZtoJ3SSlESZ0+A3hJx/zWWDFAqAlRXQwCf/tM0cKaVWjsa8P2Y26
         FsWQ9RdGDFJ4RNLkiEeQseEs8BM3g5H1j0L42FPRYAIbM2cGGACJhZ2f6JdzpuWbZBjH
         pJonlUNI+YjXKurmmdE2VF+92Kl+d7oZLro7DJIjtuPRW+392dJK8ulv8xmlufyZiw13
         W0qg6ZYa9oqnm6MOGl7H9/s4trSqwhFQeavA0rIgtXdNqLjXOevjO0bItQ3GvRaBOLD0
         bgQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OIztt1VIT3aNOhasGR696dXinYGrfiWvZzdjHh8NFe8=;
        b=k8pMzPcRe7vDUQA1omhCWyjDSAo2+IdqN1IR+ohhIUGt+g5JkUxouiLS1w3QuWGAaK
         vLVhRCmhAQPdjxRCyI3riQI+n1Xjwfh4K2hNa+ZMdvl+EBVXsC5jzxwIvXO8tTpLzNxg
         88gKtcYpHWEAL2pfxLLIiCCdcZ2fY6WuMURLBq5AwI6UVWX9A6tyVR2UQbG/MPi5oUDG
         SMJ22T0pPUziLN8zbCT6phnq8tUCTgpFE/7rlwB1JByowOG8Z62XTNnAy6AnUjlkptPV
         2sZ5X31NNNw8Wnn/uQx83xmqy7krHwUd9LhwVCZVxiEWqL7YcIzTazUvM1nyQl6GfK9A
         voyA==
X-Gm-Message-State: AD7BkJI/Ivm429E0AFIoc5La9QVn8PK0kDT6u435XkSPQDBMTQARox+tTwPIDt9ZZFHsiA==
X-Received: by 10.66.142.132 with SMTP id rw4mr52584686pab.26.1458649918874;
        Tue, 22 Mar 2016 05:31:58 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([117.210.122.67])
        by smtp.gmail.com with ESMTPSA id ll7sm48209573pab.6.2016.03.22.05.31.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 05:31:58 -0700 (PDT)
Date: Tue, 22 Mar 2016 18:01:42 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: wilc1000: Remove camel case in variable
 names.
Message-ID: <3463c943cec05f2eac850d774866e1906f32a4db.1458649426.git.anchalj109@gmail.com>
References: <cover.1458649426.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458649426.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove a problem detect by checkpatch.pl
CHECK: Avoid CamelCase: <srcAdd>

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
changes in v3: 
- Make commit message more clear
 drivers/staging/wilc1000/linux_mon.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 7d9e5de..fd25116 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -24,7 +24,7 @@ struct wilc_wfi_radiotap_cb_hdr {
 
 static struct net_device *wilc_wfi_mon; /* global monitor netdev */
 
-static u8 srcAdd[6];
+static u8 srcadd[6];
 static u8 bssid[6];
 static u8 broadcast[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 /**
@@ -225,11 +225,11 @@ static netdev_tx_t WILC_WFI_mon_xmit(struct sk_buff *skb,
 	skb->dev = mon_priv->real_ndev;
 
 	/* Identify if Ethernet or MAC header (data or mgmt) */
-	memcpy(srcAdd, &skb->data[10], 6);
+	memcpy(srcadd, &skb->data[10], 6);
 	memcpy(bssid, &skb->data[16], 6);
 	/* if source address and bssid fields are equal>>Mac header */
 	/*send it to mgmt frames handler */
-	if (!(memcmp(srcAdd, bssid, 6))) {
+	if (!(memcmp(srcadd, bssid, 6))) {
 		ret = mon_mgmt_tx(mon_priv->real_ndev, skb->data, skb->len);
 		if (ret)
 			netdev_err(dev, "fail to mgmt tx\n");
-- 
1.9.1


