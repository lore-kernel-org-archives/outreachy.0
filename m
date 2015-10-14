X-GM-THRID: 6205572963733864448
X-Received: by 10.50.134.199 with SMTP id pm7mr6946135igb.0.1444847547119;
        Wed, 14 Oct 2015 11:32:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.233 with SMTP id b96ls343458qge.16.gmail; Wed, 14 Oct
 2015 11:32:26 -0700 (PDT)
X-Received: by 10.129.85.149 with SMTP id j143mr3909411ywb.31.1444847546735;
        Wed, 14 Oct 2015 11:32:26 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ce6si450879pad.0.2015.10.14.11.32.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabur7 with SMTP id ur7so12335118pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 11:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6Wv4TTg8Yb9E2JLF4cBS4vYSkbFwR2RowUrbT4NRsoQ=;
        b=nAvfx3aryDVXTA0DrVRw0JqTcYqPRCFORw/uvIqHGPK2LjDSzZd64REd0M7P+TQ+XX
         srr2O5PY34fU52aDuX/SVbx5bVjX4/eF2v7Vq24cHd45Iru/L2vuhIEA3d+tZz1LVx4H
         /vLJLOaox93p0cLn8YzG9kXo4VcYlYw4b7iYI+xEqTodr/1R9s/7fgLTmTSiSKVmck31
         UrJUXfRTWXQlSlNYMg8xet3UkBEQFpGiIYsLQE1WHI0fdAhfr6BPOfx91OJJh0qJlMMA
         JO29OejM5YLgXEhps0iBCetL/Iee34dRd8J1DpxPtXyFmJGTMN+FfmAttbxBv9BzEsuT
         YfIw==
X-Received: by 10.66.100.164 with SMTP id ez4mr5030876pab.141.1444847546586;
        Wed, 14 Oct 2015 11:32:26 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id vm6sm10962569pbc.8.2015.10.14.11.32.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:32:25 -0700 (PDT)
Date: Thu, 15 Oct 2015 00:02:14 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: rtw_ieee80211: Remove unnecessary cast
Message-ID: <20151014183214.GA26759@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Explicit type conversion is not required and should be removed.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index 39325a3..82d4e88 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -1103,7 +1103,7 @@ void rtw_macaddr_cfg(u8 *mac_addr)
 
 void dump_ies(u8 *buf, u32 buf_len)
 {
-	u8 *pos = (u8 *)buf;
+	u8 *pos = buf;
 	u8 id, len;
 
 	while (pos-buf <= buf_len) {
@@ -1119,7 +1119,7 @@ void dump_ies(u8 *buf, u32 buf_len)
 
 void dump_wps_ie(u8 *ie, u32 ie_len)
 {
-	u8 *pos = (u8 *)ie;
+	u8 *pos = ie;
 	u16 id;
 	u16 len;
 	u8 *wps_ie;
-- 
2.1.0


