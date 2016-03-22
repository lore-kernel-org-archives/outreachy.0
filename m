X-GM-THRID: 6263377185768210432
X-Received: by 10.13.217.204 with SMTP id b195mr25959032ywe.26.1458616584616;
        Mon, 21 Mar 2016 20:16:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.72 with SMTP id e66ls4688146qge.51.gmail; Mon, 21 Mar
 2016 20:16:23 -0700 (PDT)
X-Received: by 10.13.219.149 with SMTP id d143mr26076693ywe.2.1458616583907;
        Mon, 21 Mar 2016 20:16:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id h69si3814643pfj.0.2016.03.21.20.16.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 20:16:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id 4so159010748pfd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 20:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iT3ReTIByc42RXn7aeLN0wGi0u/uU6oHlqnKDoGkvsU=;
        b=sL9iWfMNohhxYICLUsnw6FCwcyF2pD9K7e2FHs0DW+qTdJhwgisWmpiYzclw6vBcrY
         zqPxGllZPDu1bwn1rrQxnltpWpSs2LRY8qmUmALXHmIhRhKCfkqE3aQlveiNsd2sNXwh
         wwTDWTwoK4wpb6Te9CEPsTC9WHP31EC7HiiLdHBvS1g2W27ClcboIL52nqwtE86mgtuS
         BSDWMr63g99CtvCJxo86Jptqbn/7icFqIkYZwHDrrXAQRAdR2x3Vyj/bRWCY9KeF92vM
         jVefxtIOjBea1lNIz/XKLJCWApbkZcWWh5uqqC3ql4KOqDUiqv0SNapohOrNzfUo90s5
         TxdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iT3ReTIByc42RXn7aeLN0wGi0u/uU6oHlqnKDoGkvsU=;
        b=FbFeiNHVzxVU/I7wjoA+cKM1TIqaV8u47HP1mvUmn2OW2e7JOytiTO8USr8Z7isC8Q
         lQ5MBRbsISWF5kFfAq6crmt/VmbLpfc+5sDyR18Nl/l/gHWjAb8NMXvufKz1UwDRjMmD
         g3Vs1VG0GI46LOGgsgcfTxfGUNNO1bxsFvtFnr8rhib9vVc4YWS01jhlG8Sri5PfLHuQ
         LBEYfMH73I+IEc57Jx2P+SEIh2yDmVP18l1UTYcXC+klZ9Dw1RLQQ3KlpPiy3mKI2IwS
         8pXOSM5c9onBn3oBz2gNjj9HY08io6QZQQJ8j25GcCtwyDCc/4YXuYWSfmVsusqyoUVl
         PUBw==
X-Gm-Message-State: AD7BkJKbgMyzxPK9BphFNRQeE43ZdDRF7PE2DHwE+X18A2g149qEBsHRbRgml8wk5GaXRQ==
X-Received: by 10.98.8.74 with SMTP id c71mr50926345pfd.155.1458616583665;
        Mon, 21 Mar 2016 20:16:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.172.252])
        by smtp.gmail.com with ESMTPSA id f66sm43904269pff.8.2016.03.21.20.16.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 20:16:23 -0700 (PDT)
Date: Tue, 22 Mar 2016 08:46:19 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH] staging: most: hdm-dim2: Remove possible dereference
 error
Message-ID: <20160322031618.GA3909@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Commit 3eced21a5afb ("staging: most: hdm-dim2: Replace request_irq
with devm_request_irq") introduced the following static checker
warning:
drivers/staging/most/hdm-dim2/dim2_hdm.c:841 dim2_probe()
error: 'dev->netinfo_task' dereferencing possible ERR_PTR()

Remove the bug introduced by the commit due to change in control flow
by returning PTR_ERR immediately rather than returning at the end of
the function since we do not need to free anything.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index 0dc86ad..a364495 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -771,7 +771,7 @@ static int dim2_probe(struct platform_device *pdev)
 	dev->netinfo_task = kthread_run(&deliver_netinfo_thread, (void *)dev,
 					"dim2_netinfo");
 	if (IS_ERR(dev->netinfo_task))
-		ret = PTR_ERR(dev->netinfo_task);
+		return PTR_ERR(dev->netinfo_task);
 
 	for (i = 0; i < DMA_CHANNELS; i++) {
 		struct most_channel_capability *cap = dev->capabilities + i;
-- 
1.9.1


