X-GM-THRID: 6331679421130342400
X-Received: by 10.157.17.121 with SMTP id p54mr2857863otp.147.1474208995478;
        Sun, 18 Sep 2016 07:29:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.42 with SMTP id 39ls8884641ott.0.gmail; Sun, 18 Sep
 2016 07:29:55 -0700 (PDT)
X-Received: by 10.157.33.68 with SMTP id l4mr2826411otd.125.1474208995107;
        Sun, 18 Sep 2016 07:29:55 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si4121979pfw.1.2016.09.18.07.29.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 07:29:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id my20so2728073pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 07:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pLM1iz550YCixtaWxErRW3gV49YwztNTHWPBv7007Ww=;
        b=yKWDv4eUgkDVRR+iCy3CEKebvdMGAAUjO1cIrXb8nDYmtvwLAeaMkCRCcJobem+NlU
         1zcaUp/Fe+RvqNGdkJ1pNJPMCHarXch8Z3cN4UAYMYiGHAFI/9tlp6smC9uVa/7xl3ru
         6kU7LwmfLo92r+DiUnkFdnqGaH16F6BEkJZocPaCN9sQ4xe/5LlhTI57jDGOI8eyvEHI
         OVta3OfSSt2jusD7OjHMB/kAc1807gSZZfjnAKsi1+6uP4c8kwvysLTpSGCFwBdUoYkV
         oPTfpu+FvFOOvq2MuljQKrob6KIHOIklcRd4G7xrg/MQAis0sqH5y/rlaLBhfc717VOa
         ZIeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pLM1iz550YCixtaWxErRW3gV49YwztNTHWPBv7007Ww=;
        b=annbzNiZhIKkg15T3yqYpzTco7+6KZCtzu6tKrzUI7V83GGYQFD7GMNWfrNQZmsD4L
         Ez/h7W45IeFdUOMPbYw6qnfFlZ2Dpr/O63YyAO1rTT/4Nzsl2Sa2Cggs5AwlxM8dECEO
         LfNxGTtGkxQBzr81JwlmbrbwN8NO2CtHhINwd/3q40WifCyeqyYZ1Q7a3eaX7sdK0b+s
         B65e9DQ0DN38Hckg7oNEYdO8DtSilG+u8xGhWqkIBn9W4MbD8XFeOa7pI0aZuR0gFmcX
         GeAqJFKRrdE3S9A91JqTKmLEHt4AoMKsnZFbzpHLjHv5zGZNYuFhKcDYH7XmFkj6IO+D
         SYUQ==
X-Gm-Message-State: AE9vXwOjFTDM7wsHfztH+jCpEVxb8UaIjgb5dAwqBA8S574C2LzgsXWa61D0BprfN40TBQ==
X-Received: by 10.66.7.8 with SMTP id f8mr39086887paa.91.1474208994923;
        Sun, 18 Sep 2016 07:29:54 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id h66sm64859448pfc.47.2016.09.18.07.29.52
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 07:29:54 -0700 (PDT)
Date: Sun, 18 Sep 2016 19:59:45 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, jsimmons@infradead.org
Subject: [PATCH] staging: lustre: lnet: klnds: socklnd: Remove unnecessary
 line continuations
Message-ID: <20160918142937.GA8801@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixes checkpatch warning:

WARNING: Avoid unnecessary line continuations

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
index 1bdf962..f9f0088 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
@@ -35,7 +35,7 @@ ksocknal_alloc_tx(int type, int size)
 		spin_lock(&ksocknal_data.ksnd_tx_lock);
 
 		if (!list_empty(&ksocknal_data.ksnd_idle_noop_txs)) {
-			tx = list_entry(ksocknal_data.ksnd_idle_noop_txs. \
+			tx = list_entry(ksocknal_data.ksnd_idle_noop_txs.
 					    next, struct ksock_tx, tx_list);
 			LASSERT(tx->tx_desc_size == size);
 			list_del(&tx->tx_list);
-- 
1.9.1


