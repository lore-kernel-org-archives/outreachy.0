X-GM-THRID: 6674267883353145344
X-Received: by 2002:a5b:44e:: with SMTP id s14mr5350432ybp.100.1553998941557;
        Sat, 30 Mar 2019 19:22:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b807:: with SMTP id v7ls1649196ybj.7.gmail; Sat, 30 Mar
 2019 19:22:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzxSmh80vfki9w/f6OYhn0V1g3FEKZY61qyUciP3Tx4OIJid26+HYa3gbAYLJPqfeBuNEGE
X-Received: by 2002:a25:fc1:: with SMTP id 184mr4868702ybp.1.1553998940625;
        Sat, 30 Mar 2019 19:22:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553998940; cv=none;
        d=google.com; s=arc-20160816;
        b=Ywgs6CQDxfT3dmzJ9eikBk8iOAtAEd2qMv6axSOTF/X1e7N2l+ZlWlZdAm/iV7RkCp
         1FZ/diL2xtKpBspMUNt/k5XqQnEO+aCvlsL2HIweOhRIXmXNdZRl4iiPFA3WtzY9gZUO
         vLU15vkiBJlz7G9infJ3G8ZEmQRnLTvqAr7bmJcuPTup0oJz6x+KQtGGqs7C/GmPTJPj
         IyVOCL1HiiisOuOKLvkShy1N6PAw+E9vqMmT+WUAsycle+mhW6sfHOuDbwoNNrhvg1ME
         KGZB7xy153XSVJLtroeRdnrkTPXY4AFSOalZNNY1ugfXmD/rW6NReOBZNDXg2CYsP00o
         Ornw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=f++YJvzzxOQGBPDPWz20AkbaPEW6B87CZppRq4gB6oI=;
        b=ton+vfpLB/eZrHZZZpQFJ977R7miKR4Tjn7XrsZ/b6S4R/Y6mXoiIv2fqKFtWsLr5w
         aC23yNT0nIBzJmEFkjbHH6BZCMHjG/UQ8M4qdqO4CXyDtYoubrUgoMdTobNe/YYF6mqJ
         FnLdwjJfcgoeeW8PfkppQ7LjsREaXHTjWifKBWBZL3/ruMaoEOap7t3UeCrtLUzcFuAF
         vqQ0G9PEkmnDSdoiPPDBuNRorYF9osA9qhnjEqgZU6K0jyy80xsR5h1JAlH4AssVr2Ry
         LpTcu/aWYxcPzaV0ic89OwCVLV8FIj4LUCyEjIJKuCqhsT5j0/sqi+toh0m+sJ+QBpqO
         fM9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a5GOanvP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id h192si365606ywa.0.2019.03.30.19.22.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a5GOanvP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc41.google.com with SMTP id j66so2056062ywc.10
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 19:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=f++YJvzzxOQGBPDPWz20AkbaPEW6B87CZppRq4gB6oI=;
        b=a5GOanvP3AbJKemS0kt1cKHYFU9/8JPNxce0M0t23wfdeXnjr/hs/g9xyK9AbSLl09
         BCN83RkJf0HjWUnKXRuPTO/yImhGCJv1pRGq1j0OSwF4h8RrS5+UnAjjmcnifFIArRJZ
         JUpOv0BXBtt6gs5bYFvg6dQbuVrtos5FfqPevtrVit421IDotPI7cS2PMfYxpLSX2QTN
         k7Oi3j8bKMXpSeYnXqKXLpr4auPU2Sxcl354/T06lqLiYSIcXs/0Rq32BgFZ+KURC2v7
         IjfhfzLs3/vzE8l0koS+s0fgZ/d8hDhPnOLzVh1YsPdQ3yK42OnZUWBk3uR6ynkE+Pt3
         2njw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=f++YJvzzxOQGBPDPWz20AkbaPEW6B87CZppRq4gB6oI=;
        b=W/V2OPPH4sME4+e9zDEAOm0sLrugw5ooOoQ5YafO/9z3+t6f6b5o3gLbZ76Rei7N/2
         9SZXyhuPEPAG7VXfYI7czpSv1a/7OKfS5Lh6nXbalgVs3Bo8x09lhgdhvrkz4mW95Tno
         J3Ln6qkqUzrWPljEmJVi6m7G8ZPQO/+JPdAljZQxJXv0g3L12B7eXyBLrabI3KvIAHbn
         p2ebFSjJjK9RQ0oel82nr9GXWtQ3lS1mhjeuqkHbew7lipIZQ3Pj+0DkbsAURc4DeXjt
         FW3WYlhf7feYERnSz722Jhq9wIHndsD/ogYLIPYUjPmAAn3GYg7loaJz5sIWnmp/meDj
         3PJQ==
X-Gm-Message-State: APjAAAVVX+DeVKkhemGYeBQgIfcD4B/zUk0x8t4fYeXxSb+tjV4khhbO
	Ep+YZIilYegaP8ucgB8+b4gYI2PC
X-Received: by 2002:a0d:e185:: with SMTP id k127mr46747476ywe.456.1553998940274;
        Sat, 30 Mar 2019 19:22:20 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id x126sm2425558ywf.92.2019.03.30.19.22.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:19 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 4/7] staging: rtl8712: use list_entry in function r8712_get_oldest_wlan_network
Date: Sun, 31 Mar 2019 07:51:52 +0530
Message-Id: <20190331022155.68569-5-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331022155.68569-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to
wlan_network in function r8712_get_oldest_wlan_network() because it
is a better practice to use list_entry for such list manipulations in
kerel.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index e0b4b8fbcc0e..05bfc2a60eb9 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -289,7 +289,7 @@ struct	wlan_network *r8712_get_oldest_wlan_network(
 	while (1) {
 		if (end_of_queue_search(phead, plist) ==  true)
 			break;
-		pwlan = container_of(plist, struct wlan_network, list);
+		pwlan = list_entry(plist, struct wlan_network, list);
 		if (pwlan->fixed != true) {
 			if (oldest == NULL ||
 			    time_after((unsigned long)oldest->last_scanned,
-- 
2.17.1


