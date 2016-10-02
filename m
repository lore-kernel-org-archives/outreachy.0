X-GM-THRID: 6336898988213534720
X-Received: by 10.200.46.175 with SMTP id h44mr5015813qta.42.1475424270925;
        Sun, 02 Oct 2016 09:04:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.203.7 with SMTP id u7ls1896740itg.16.canary; Sun, 02 Oct
 2016 09:04:28 -0700 (PDT)
X-Received: by 10.66.159.193 with SMTP id xe1mr4838364pab.1.1475424268269;
        Sun, 02 Oct 2016 09:04:28 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ua1si1909728pac.1.2016.10.02.09.04.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 09:04:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hh10so98576pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 09:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vIFiuDW6Bhqq2WhpG59X1y1kI9c9QC+0GDSwthm3RvQ=;
        b=kmuMZqtN3AEjQ8e/2rl4KRN8MWGwVqmnIbEr8JipjXxoHfWLayNOgTfSvDSboVGkGV
         n8IQIpw+XC0ZRraEtCtcgyAt+DQPlMUu9sYH5jKGgPnpBViR2MRqc1dbTU/itJu6J3Qa
         vsXzfiSYOquWXE1kDJeV7Fw6wEl9kvyKhAUsf32MW4xeOzFYhhFJ8PsvmHgL7NtCKXn3
         13EcTFrvMBV6PloPlh9S6GafjyoSbHEOjfxfNPkajdwLMXomyun7m41pHjdJP2bV4kEs
         v6WKbrTQXC3wxShz7lJQWhBv8z7yKCdfuUjLmXKiIkwdbEHkdFLG0hd4cQRfELfZT698
         ZECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vIFiuDW6Bhqq2WhpG59X1y1kI9c9QC+0GDSwthm3RvQ=;
        b=Ve6f4Cl29Oj+qa1D6z8N4Icws5DzB73mffZRTevsiPnTwfcudAofspdMZgDq3Ook9G
         oNwnT8ODh7YXWnIQUeCqtt+8cyqGCbt+4hMb+d5isNE2eeGKXnESJerteYK3cJ31N0ok
         uMSLM7AeFpklKBmzg8n0GFx6bxAQ0GLhHXt0A3d+qVT74paQA5Zjjwsk50raw0qVFA8l
         dhM54IYsNVT/DaXpP32yjWAU109EJX9NPRjwZ82QuLR30liyrM9Q4w8FZ6ys/KzbxfzT
         E7va7w80shV+NjfGfj8bBXKHXv/iR8T3ficZsM6zlY84HuwKWeAo2xP7ngweg5IhqKu+
         Oclw==
X-Gm-Message-State: AA6/9RldKDmg4lxeGMIKQHTwbU8qZ6cTywTTzNh9nITDLbGvjGiDKKEzXDjdVRUVzWbN/g==
X-Received: by 10.66.43.204 with SMTP id y12mr29825558pal.118.1475424268125;
        Sun, 02 Oct 2016 09:04:28 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id p5sm25406523pfp.7.2016.10.02.09.04.26
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 09:04:27 -0700 (PDT)
Date: Sun, 2 Oct 2016 21:34:17 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8188eu: core: rtw_ap: Replace memcmp() with
 ether_addr_equal()
Message-ID: <20161002160401.GA4550@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

When comparing MAC addresses, use ether_addr_equal instead of memcmp to
ETH_ALEN length.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index fbe9941..6a3dc5e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -1163,7 +1163,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
-		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
+		if (!ether_addr_equal(paclnode->addr, addr)) {
 			if (paclnode->valid) {
 				added = true;
 				DBG_88E("%s, sta has been added\n", __func__);
@@ -1223,7 +1223,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
 		plist = plist->next;
 
-		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
+		if (!ether_addr_equal(paclnode->addr, addr, ETH_ALEN)) {
 			if (paclnode->valid) {
 				paclnode->valid = false;
 
-- 
1.9.1


