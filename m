X-GM-THRID: 6336169348869128192
X-Received: by 10.107.144.197 with SMTP id s188mr2346608iod.90.1475254387665;
        Fri, 30 Sep 2016 09:53:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.17 with SMTP id e17ls729232ite.21.canary; Fri, 30 Sep
 2016 09:53:06 -0700 (PDT)
X-Received: by 10.66.159.65 with SMTP id xa1mr2332066pab.80.1475254386765;
        Fri, 30 Sep 2016 09:53:06 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 7si4896737par.0.2016.09.30.09.53.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 09:53:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so5180055pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 09:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ktZ2u2yDoQs38g89Hp6Ku0eYnDwRQtsmrePSnXGmU9I=;
        b=EU4yR5+1CeKVEsniwC5zPL+mVKmoTyg8lRlH1SAh97Rp7ENR7ewwe7o2YJeg4rhoqa
         F9vWlpYe3EhPNVuVXYe+1r9Ngeo1xqB+r8mIty7fgrUnLS4BvjxwXKTN2JmgIutHCfif
         i/bjwUKK5olI2YkW+QwqZsMTgoTOoBM7tt8Dl8HcyqWWv8LeO42pED0RrRZmTbWAlGJY
         TGcEbD64dPoBAUIV7yb98qdjwKjDm/dg6QEsAtc2U98im1tF5Bf3HbAXf8OtUlHP+G9u
         MyohvUP8eT+LGh9CKll/1iUpuJYCsoZ5lepLFYq9V5tiuk0OmYyQdbQeygl3SOxsMxG1
         yqKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ktZ2u2yDoQs38g89Hp6Ku0eYnDwRQtsmrePSnXGmU9I=;
        b=Mq7ruMzqLXCPOVvglE7qGfvfcPywtUTWZ8LeecIJbJNannrT12Gv0P4NAmdgzFcMvc
         ol/7NAvwXSkpJCLS6pclfH/5hzsS+ijP2tOf4Vcu0SI6evdjeOJOrhDVjn4jc/f/eGFZ
         77NrqqiAyvEnKCJxxJTEyp4VWNiIMiR9jxlvLqkmjqVZgOv05l9c1kdgjvsIpPgTpEGV
         byX9LPl9uQPsvKcJsRkCcUuJSKV+jYw4qbQdFbBrFrzrZEdni1Bd8xIFAxIfK+82gGn4
         mQjJtX1es2cIWm3CF6g1fa1AQ+8wE7tdxcx+pMpEGjOYCR1uclYK+0EhpoaKUK7RyLsY
         3DDw==
X-Gm-Message-State: AA6/9Rm0/PXAozJzglAOoTa3dqI3borU396OkokqqE+rMzyx1ElEZzQ947D5MIX69P+vvw==
X-Received: by 10.98.131.5 with SMTP id h5mr2845408pfe.82.1475254386629;
        Fri, 30 Sep 2016 09:53:06 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id n19sm29168446pfi.50.2016.09.30.09.53.03
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 30 Sep 2016 09:53:06 -0700 (PDT)
Date: Fri, 30 Sep 2016 22:22:48 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8188eu: core: rtw_ap: Replace memcmp with
 ether_addr_equal
Message-ID: <20160930165233.GA4907@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace memcmp() with ether_addr_equal()
issue detect by checkpatch.pl

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
+		if (!ether_addr_equal(paclnode->addr, addr, ETH_ALEN)) {
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


