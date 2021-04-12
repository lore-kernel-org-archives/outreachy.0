X-GM-THRID: 6949336424403435520
X-Received: by 2002:a17:903:228d:b029:e7:1f01:bab0 with SMTP id b13-20020a170903228db02900e71f01bab0mr25398219plh.80.1618226510893;
        Mon, 12 Apr 2021 04:21:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls7574520pll.4.gmail; Mon, 12
 Apr 2021 04:21:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYliMN7GYJY/TyUWfp66ugSlc/hZdCPzwdnuNUA6KwcfYBGyB/a+t5XVQO0RnQbadfqUUA
X-Received: by 2002:a17:90a:5b0b:: with SMTP id o11mr27426816pji.150.1618226509869;
        Mon, 12 Apr 2021 04:21:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618226509; cv=none;
        d=google.com; s=arc-20160816;
        b=U3ug4KtxAp0oijschV8pMQSRdKQjFK7zm7BkK+7OIS/GDvNbkZvEgQvvUkeIkeX27P
         4JZxP05Sa1YDEcgmgT4jS3nI3PadzhdnoTTOQ88IncJiedM8BIGN77Y9nr7Bq3pbJMXV
         m/5OGa4v6TZn+VNvqdeX59tdYcQaXMIHTZGbvDA9RmyR+pq9pueyUmSGw+xC38x4tCUX
         v9cgNRCe+bndeDel22598UxglHC2xgCDK2jc2SNkMHds+T/HA+KKL5KegtuF7JrZtLHq
         RzukT6l4orwDKQGUgCGQzM4Au+FIottDwSgp3PHD2h4pNzOH9F9DOLa5MlHLDnNsp+BF
         oJtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yFCTQ7PANP8vxmOvU5wLD2Qh5bIpwPlUD14vZ3d3jUE=;
        b=Zzuw/UjycO/OydNnfYmSzM1sZUez2xEUq9+7fQyGae7mQtQZnsnfpcmvk2p7Gi7wnK
         8m7PLUPdMMTWNGGRfQwby4pnxlM1UR7pOlRCLnmo71CdG1Hv0OMg/9SP87D0dAF4MwFe
         apCCKSUIFBLLX2gPDyArO4p1gFKCUofrvRXdHQU5fcmWJ9zY8yVBoSE+WfHLtgL4gAtp
         qXwjK5yX0VR0a7mvli8GsjfAIfDlv0eGGvPvYNm+wOzZYqJeyjos6lg8JLqb1OVxWkIR
         wxc1KWSqZSrQHxT68Amu1nkuUV/6j5WqJ0wALvrooewayCt05TjTpjCpu2RsfehIeE0t
         /OtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tMH9P9Qw;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id x4si571685pjq.0.2021.04.12.04.21.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 04:21:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tMH9P9Qw;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1029.google.com with SMTP id u14-20020a17090a1f0eb029014e38011b09so2092105pja.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 04:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yFCTQ7PANP8vxmOvU5wLD2Qh5bIpwPlUD14vZ3d3jUE=;
        b=tMH9P9QwjcyO5zX9ktssrTVitZPAiaYYMrggHxfNArDTjcfL4XdY7CPu4PTIQvd8c6
         AHbwi5iSqBFEND1f9GiyiQw/QEK29GviiHFvq+OK90OSqsvWv8qrT1Uh4Qke7Y9GMJ5I
         O4EqzwzV41S88KsvPj8UWk/o6gY/4stw2N5k19qLBLeL4K43oU0qKnAPgbLTDP9LLjFG
         0wCgLhegkGtpPUo4vlkV6BMK5qntqd3wtzEzK88IBlsATFQl/K3MAR3HqYK6vO7RY9OE
         rYBiCVCtiKdSd7dbp8wr4AkYVBBGRLYMW2+opXg0Ge4YDt2lB7dN1zgPLTjj6Gh2GQWh
         /Ujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yFCTQ7PANP8vxmOvU5wLD2Qh5bIpwPlUD14vZ3d3jUE=;
        b=pjd3pOEks9j8zp1hftrK6vfo0jU2QWgOJKa71sC7oG0G0e5N0VsHdKg9NABoh0QdDB
         Ra5esdKBkWWo0z7fsDb4EpwKzQ0BRVxSxbO0x9SzS305lcHqxzPR1ANR17UyWQmB1xU/
         +7WCSIL8+NV3z1lXyKzLOZPr0hAbj4YoTKGOha9QTUt99hSXbpgzUa2aj1ga0kTccV16
         5zOpykfglK+Xzj/HEWn6TiGV6LYJyiS2nZbI29DHgthd3e0/i393QNlSpwc/C8vciBIS
         r1/7Xn8YkhqJQ5ap8NuMpe/FET+I03EqTZz8YuscNZkd3o0iI2Zm9gcvGs3+9qo5HX+G
         H9eg==
X-Gm-Message-State: AOAM531OipyN0HHQ3p8Mjo8JVo6dhr7zENTC3vzniNSn/0pq9m0ylcY5
	U3poRZveHwpqnHYtd87qU42SmOGHxDELFg==
X-Received: by 2002:a17:90a:bf17:: with SMTP id c23mr18470563pjs.12.1618226509560;
        Mon, 12 Apr 2021 04:21:49 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id o8sm1859156pjh.20.2021.04.12.04.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 04:21:49 -0700 (PDT)
Date: Mon, 12 Apr 2021 16:51:40 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v4 1/3] staging: rtl8192e: remove parentheses around boolean
 expression
Message-ID: <596aa7e6d4e8ce80eaa98519001e17cf9d370f45.1618224838.git.mitaliborkar810@gmail.com>
References: <cover.1618224838.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618224838.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses around '!xyz' boolean expression as '!'
has higher precedance than '||'

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v3:- No changes.
Changes from v2:- Modified subject description. Changes has been made in
v3.
Changes from v1:- Removed unnecessary parentheses around boolean
expression. Changes has been made in v2.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index b1fa8e9a4f28..431202927036 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -276,7 +276,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 	struct rt_hi_throughput *pHT = ieee->pHTInfo;
 	struct ht_capab_ele *pCapELE = NULL;
 
-	if ((!posHTCap) || (!pHT)) {
+	if (!posHTCap || !pHT) {
 		netdev_warn(ieee->dev,
 			    "%s(): posHTCap and pHTInfo are null\n", __func__);
 		return;
-- 
2.30.2


