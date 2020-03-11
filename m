X-GM-THRID: 6802954785072873472
X-Received: by 2002:a1f:2882:: with SMTP id o124mr2172809vko.86.1583936341342;
        Wed, 11 Mar 2020 07:19:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls288033vsi.6.gmail; Wed, 11 Mar
 2020 07:19:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vshh+eh9v8P/jGZ1aWMCABZx66LHQeH9sxzRmu1hPLgPCOx7gJzGYF3yXrzI9s/q9w1cNKR
X-Received: by 2002:a67:69d8:: with SMTP id e207mr2208840vsc.141.1583936340191;
        Wed, 11 Mar 2020 07:19:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583936340; cv=none;
        d=google.com; s=arc-20160816;
        b=GkW4RDhs3Dtsibx+pNnjShKT2mY432jyvSC5bwmvcy9tD116Az7paMsPxmozgIDlis
         oywg3ykKwYSkCMw8N+jPrAyEHETkxVldWBcsDREHxhcFmkHuYo9kCtrRkR/Fxlem9YhG
         RS6W23m6M4kg1JGxO3VABeu4pHAk4CZZJw2DX0+eBF7ZHyObVnqKZqQqXywIKhlLBXe0
         18QZNVE3BLoL4rD+K55LKsgK9i9TOFDxGiHSC6YqJpWS5+b3yfbxhoPf50k/C3VlLGVr
         jlvXHeTQDnu0mQwxUBnU4yEBMbI/dqJR4FSYpJAQYo99CGvwDMkIvhxRBiukqM5rqFOJ
         rSfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=C5r5xTHwX4aPillqLNWWzaESjsUyDlhCwco6xlcQYFU=;
        b=FIw4NhBbKAy2iMLD2PYkMdG4uqEQUZvX8hbNIGDrUR70p3kxD+Gl7XO16ltxtNxYIS
         Up72rP8lbz9eFq7DVSh8Nd1yKozeOKSuN2GPlKI4WDUQG3LcVT4wh5z/RGAiSrbaMAkK
         6grjWxU2BM8cxpTNZTFLU6FP+ouUwCckutKDw7+qezIIgHlohj2atCDBUBj+WYqHlUuj
         +3WWQhONworGoIUo2vDoBZncLxZXLjU6Av67D7gKBD/4BiYlz2Pz3gowXJ5MaEfSJ0YG
         PYIg9L502fkMahrY74C3q1xjChgSBilV98c1KYtu7vP9M0HZlosOYNWY//8bFs3dZMcb
         qTFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=iCxKCy3V;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id w4si125893vse.2.2020.03.11.07.19.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 07:19:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=iCxKCy3V;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-ot1-x344.google.com with SMTP id k26so2110271otr.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 07:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=C5r5xTHwX4aPillqLNWWzaESjsUyDlhCwco6xlcQYFU=;
        b=iCxKCy3Vh6G6+PXesnYBZfzyQd59GBtivCQ88J+spHHpghLOURAF0Q9ysKf6qlFV41
         skQ84Z6CwtZ4NWMtMOSgWyAZejrUJ5SQwaE5m5datbS5zGcmAgfVroaj0itbeKEgjUKK
         tQmvrlDB362+1PqwfbH5GtAryGSHfQgh6X0YWG7ntXKqWS+ix8WRiM67hRJXnBU1olSe
         x5WCzybd/S+rBK1DASR5pBKPWA6USgTngmpCebRpGtOVZCxhHtgGNBbjRxYgsulfKujv
         vr8JqOpRS+QZ7m96ozLUOxT1LgjmvnIGcQ30d+9A7hYrOL0vwLTj8dcaHxwFOz+jx36F
         kBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=C5r5xTHwX4aPillqLNWWzaESjsUyDlhCwco6xlcQYFU=;
        b=HqYmMKZhLCVu8Y6N9J8QY9skwcnAqQbrqz2+TEwNlu+UytaBI4hqbYvjhpIO8Qwf4I
         PIMlrIzAZlK0q7To1OkGVT/y3Ave6qj/xW+9tmwSy7fX907CgcM5cuO+mV9V/uool9wp
         MTL43Z/okj2DGxejb4htQh+FcFwOyO3J7s8TgixqQMD5bvzk324iWr0+7ZzaxTaBlcSN
         49t0rQXWIUu6P1cvPNOaJHkdwj8YEO6vTiFpOwIohusW0TEbTOzXgM5tfMh5aovLfsVF
         zVwgEoFZB/7UZt1sSxowFqUfAjrEtU+CIZ0u5ZvLqIt4L6bHcdhKHz5UhYFAw06qH9N+
         u4/A==
X-Gm-Message-State: ANhLgQ1iz2e2LjdZ70WNeffu3RlbKR206wmzt0+XuY65PQ1JEu1E/0qB
	rjf0kTAdXWTHwMGYVVGSXtrz1NxueEuSPA==
X-Received: by 2002:a05:6830:1610:: with SMTP id g16mr2618039otr.295.1583936339146;
        Wed, 11 Mar 2020 07:18:59 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([2806:106e:1f:1211:ccea:c45e:83e9:af6e])
        by smtp.gmail.com with ESMTPSA id h13sm5540591oie.12.2020.03.11.07.18.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 07:18:58 -0700 (PDT)
Date: Wed, 11 Mar 2020 08:18:57 -0600
From: Enrique Vargas <jevargas@seas.upenn.edu>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: qlge: include newline after declarations
Message-ID: <20200311141857.GA16781@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

add newline following coding conventions

Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
---
 drivers/staging/qlge/qlge_dbg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 670361873d1d..52704c67e110 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1332,6 +1332,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
 {
 	int i;
 	u32 value;
+
 	for (i = 0; i < qdev->intr_count; i++) {
 		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
 		value = ql_read32(qdev, INTR_EN);
-- 
2.17.1


