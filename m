X-GM-THRID: 6205119636361445376
X-Received: by 10.129.72.83 with SMTP id v80mr9118894ywa.11.1444742046248;
        Tue, 13 Oct 2015 06:14:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.3.69 with SMTP id a5ls1419433iga.4.gmail; Tue, 13 Oct 2015
 06:14:05 -0700 (PDT)
X-Received: by 10.107.37.206 with SMTP id l197mr29335230iol.17.1444742045870;
        Tue, 13 Oct 2015 06:14:05 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id wl2si286750pab.1.2015.10.13.06.14.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:14:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rc13so21475608pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 06:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hPAi8j+rNQ3ZiWzi1PdRDHqoBKF4HZrD5D/HsCVtmjM=;
        b=QJPpF8cWkKlXQqcwAduPULqNm0N6Py2rwd7x9Hn/yGOMOZyagxEzZzNcJlFxXfHG5Y
         YfaNokj9APGjZcT4Suz/OsC/qlVaKUcN4183t3QIiAV9PyZB2v0d3LOgbNlgT4UyGsOw
         yc6rpQ/TITxeupm6BMjtVJsxE58lwSXf5sdeHc7OtP4VKR8rHs5Cg7sFN6zOb3cniIOG
         JjLeJgxFc9bgrR5yOwYe4fY42jmsP/YYiIIY2av07esc5c9hpaLlAyN+qLWa380FLYdw
         BdF4tv93pMEpubtTszm4fqhgtsmMmr9qZ1Fl0nW2auRoUhi3n1xKSc+yvHsoW7u+Zm3m
         p1JQ==
X-Received: by 10.68.103.194 with SMTP id fy2mr37119280pbb.120.1444742045761;
        Tue, 13 Oct 2015 06:14:05 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id fe8sm3945423pab.40.2015.10.13.06.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:14:04 -0700 (PDT)
Date: Tue, 13 Oct 2015 18:43:52 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] Staging: wilc1000: wilc_wfi_cfgoperations: Remove
 unused code
Message-ID: <492f629b583485eb4ed9d218215f15ee03030823.1444741377.git.shivanib134@gmail.com>
References: <cover.1444741377.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444741377.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove a flag variable which is not used anywhere in the code.
Semantic patch used:

@@
type T;
identifier i;
constant C;
position p != e.p;
@@

- T i@p;
  <+... when != i
- i = C;
  ...+>

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
        -Remove the definition of constant from header file,
        include one more patch.

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 6472777..d2e6f55 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1764,7 +1764,6 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 {
 
 	u32 i;
-	u8 flag = 0;
 	s32 s32Error = 0;
 
 	struct wilc_priv *priv = wiphy_priv(wiphy);
@@ -1777,7 +1776,6 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
 			/*If bssid is found, reset the values*/
 			PRINT_D(CFG80211_DBG, "Reseting PMKID values\n");
 			memset(&priv->pmkid_list.pmkidlist[i], 0, sizeof(struct host_if_pmkid));
-			flag = PMKID_FOUND;
 			break;
 		}
 	}
-- 
2.1.0


