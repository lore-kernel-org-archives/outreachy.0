X-GM-THRID: 6251509125461573632
X-Received: by 10.31.151.21 with SMTP id z21mr15919112vkd.7.1455542893903;
        Mon, 15 Feb 2016 05:28:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.44.199 with SMTP id s190ls503265ios.33.gmail; Mon, 15 Feb
 2016 05:28:13 -0800 (PST)
X-Received: by 10.66.159.167 with SMTP id xd7mr16087937pab.5.1455542893509;
        Mon, 15 Feb 2016 05:28:13 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id u66si3000926pfa.2.2016.02.15.05.28.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 05:28:13 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id yy13so86023632pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 05:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=47RrkFwAHeec0dHy3vE3hV/JEmgB43tbAFqcxOF1Pgc=;
        b=aJzl35dI+41Dep9XipAa9s/x5g6L1OnMoVggtih0AbCdsKHlcuaFAeHQHsk3zzEXVN
         WA4XdLpAEI7eDzdPGGqQzy0B6al6z9xjNc312nZR3odmWLXois/Jlmsbl4z1uzNbD+kN
         IWULJAIZhJcH9PUY5XvvcMYH9Ws/RDwIJJyg6e1wd/Zaiidn7u71T4vpEd9sRT+/jIAA
         LFjwFQU/sTQixKD1YQIXJSzopo5Bf9OH3YzKxlclfqQW7U3UWoyek6z+MDwJS9lqKVvf
         lPgAA7ti0be+5JFUarFJXpoFoGATkdooRp1dk21EXwQBj4PVBRO99SjqCLYKoC9dxmCP
         YTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=47RrkFwAHeec0dHy3vE3hV/JEmgB43tbAFqcxOF1Pgc=;
        b=m09JbzJKhKGQ/8KrHfuAhiC6m8q5qcM55xuCzDo07rqkAFkNNU9lOFZeZjuKKg8yUn
         r4ehePaKGwRObEJz66p1rQjHZ4w32PckDpSIV86tSwoZOsfjDqv2CYs8KFNkRxAnLK7D
         s+fMaVJJ+RcGYVEruvN4q/YjHUH+OHz0V1LDyMFBlPJdna5o0pkeFykY4j+qp+8fhUYC
         CmJnrwWfNdkZSibFG2rvAPzR4U/TWOsmsb9iJ96A1UcKAA1duNt1KkrdE3nYZ2fSwu9U
         9TGuiKOM3eCfAXJAS575sVpH52LUTZh8CkblefyI4BoQO2oDuDZlLoHNW4Dpshtesf63
         gKUQ==
X-Gm-Message-State: AG10YOSsz7SXG46Cu+jrKKu8sEVQd/kayQqaWtQ9QAedLV9NwBtya93BUGzz2DwSCNmnPA==
X-Received: by 10.66.186.14 with SMTP id fg14mr12728701pac.102.1455542893372;
        Mon, 15 Feb 2016 05:28:13 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id d65sm38720120pfb.74.2016.02.15.05.28.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 05:28:12 -0800 (PST)
Date: Mon, 15 Feb 2016 18:58:38 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove an error initialise statics to
 false
Message-ID: <20160215132828.GA24595@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove the static variable enable initialization.
because the default value of static is FALSE 

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 45f70ab..21e79dc 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -329,7 +329,7 @@ static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
 	return 1;
 }
 
-static bool enabled = false;
+static bool enabled;
 
 void wilc_enable_tcp_ack_filter(bool value)
 {
-- 
1.9.1


