X-GM-THRID: 6465116132895358976
X-Received: by 10.31.169.209 with SMTP id s200mr10042662vke.13.1505277150615;
        Tue, 12 Sep 2017 21:32:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.194 with SMTP id 63ls2271083iom.27.gmail; Tue, 12 Sep
 2017 21:32:29 -0700 (PDT)
X-Received: by 10.129.161.85 with SMTP id y82mr10732657ywg.3.1505277149810;
        Tue, 12 Sep 2017 21:32:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505277149; cv=none;
        d=google.com; s=arc-20160816;
        b=jujeqClZmuKEwhqJefodsUDpCSjiVQauTYSsmSee7ey4wheYmBk/RMyFnyssjt/pUS
         YdqIL7w/3Y6ZROIWDyo8TtDv74ZvsVAzbzVel4WNA9iD+4xbQOaCJjwpI3notg6eI54W
         /Aeru0wskeqtQ6E7Yz4Hmri3Fbb+DgsmqsXCzKl4Y53O1ISBcPL5vCHpOUTbRlErRco0
         HFrzST/OHJjnwHgeeHuzUKUo8jhPZymAxgV6txT0cX2V+oadM/n0BuD3mImHCCPplOC6
         VnCmdNCF3HL+Fn0xtXlZJW6kER/Mq88UsHZ/GJkLfk0b20VV38Snu7/igU71wM0Y2mwS
         Ev2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=G/eXBq6y8UdOeHxm19QXY+uatWg1S2r7pG7k3hOTAjk=;
        b=lAorsCpqZSJ4KjGsrcpv+eaT30QxSztEicIeoFmYg+x6RhldnqM1QOvRG7wJvNBKQH
         hlop2LZOJr80QJvHpFk12O6+6vkvsukmANnUx49HXHjA6nbeM5jGZfz7JAPln7s2tE8k
         rLFeMAlIPhFcyudrNZ3Sby3UqzhGm9XAafntKUgA59FTtauIw2+wT9QdcvsIY+GG69NC
         E9pa0Hur2I1C6o8p4LMWqLqP77W8W5gXfTH/i6odxYO72QCX/pEEnCtwEcrUmIFiuASE
         9nPYDO0g9ldj9WKXmUy5k/KrzL+aMux4l5DICurB9m3kGKfJxeP0ubTVhu8HRIP55GPg
         +wPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KdGT3wLv;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id k76si1355502pfa.10.2017.09.12.21.32.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 21:32:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KdGT3wLv;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v5so7126528pgn.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 21:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=G/eXBq6y8UdOeHxm19QXY+uatWg1S2r7pG7k3hOTAjk=;
        b=KdGT3wLv0+pjJjBGW9QTVkLeoEc4HxsqEQKZhfQUxPT672CyIP0ws5jnToKH7uS2Jv
         BSAJjo0qxX9N8ZRtq69mc/6yESlJQApFxZ2P8+plAb9qiJnBqIUbMwSMK5MBurapls+W
         kzS/qTOhko/4n9xUKIk/4JZ+6VU9ZLn0xj5bSeYeOwqJH3T2H/LLicP7/VAooG5fhkSD
         RsVvwEMBxWZqVVczM3BwI9K0F7B2Oac15u9NrDxXqhps6jcbLzRHmpfEMYbBUvQghZoJ
         E2xUTx+QcDywmLIozrpYv05x+FZ0VhyOg7wPMWtsrF22C8zN3u07mbfWlReLsxPmv02l
         +LZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=G/eXBq6y8UdOeHxm19QXY+uatWg1S2r7pG7k3hOTAjk=;
        b=EnRJHVoOaIcdpJ6mEaj/Pb2E78isaoqVrxk1LYjsRH0lgIC2gqE5i4gDjM5qMLSPUJ
         fHNOzE3DFXy5tKNboqDGy2tuOohyikYLUG9f1wGSPNDoXao/aEBdRxs4Gp9a9lX1zgOj
         PDqhbS7mWP1zBrrA9z8j+9LvrhSNhVMC5zEz5waRbb74iUxGUGsXlf7nXG9HVF3rFGBz
         GBJgHLL5LIw/2u7CX0MyHRtWwVyBbYV9jCTdpXOtggDqWL2l/DK6IOaHBO65kVts6VqE
         6C5Z0n94WmZPTc9BnpDPkqMAmVQeJojrCINvxtpu8tnigffPuFjFIwDQf+2VVFvdbxDe
         Or/g==
X-Gm-Message-State: AHPjjUi8LYVy51KirraZWlYzd4W1yDbdYs8TqT1JtNDVClWQgdpg9fcg
	YQSgqIclKmCeRNpM
X-Google-Smtp-Source: AOwi7QB7OR2Rj57ASwUovvmYlTbxyHTK2D/dTJCe0r6n++J08fcdnBrzQwX3uO1Gg18oN73naKjwCA==
X-Received: by 10.159.218.70 with SMTP id x6mr157025plv.222.1505277149305;
        Tue, 12 Sep 2017 21:32:29 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id i63sm25431367pfk.34.2017.09.12.21.32.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 21:32:28 -0700 (PDT)
Date: Tue, 12 Sep 2017 22:32:25 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wlan-ng: Replace pr_debug with netdev_dbg
Message-ID: <20170913043225.GA9679@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace pr_debug with netdev_dbg when appropriate net_device
structure is found.
Issue found using the following Coccinelle script:

@r exists@
identifier f, s, i;
position p;
@@

f(...,struct s *i,...) {
<+... when != i == NULL
(
pr_err@p(...);
|
pr_info@p(...);
|
pr_debug@p(...);
)
...+>
}

@rr@
identifier r.s, fld;
@@

struct s {
	...
	struct net_device *fld;
	... };

@@
identifier r.i, r.s, rr.fld;
position r.p;
@@
(
-pr_err@p
+netdev_err
	(
+ i->fld,
...)
|
-pr_info@p
+netdev_info
	(
+ i->fld,
...)
|
-pr_debug@p
+netdev_dbg
	(
+ i->fld,
...)
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/wlan-ng/prism2mgmt.c | 78 ++++++++++++++++++++++--------------
 1 file changed, 47 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index c4aa9e7..7207059 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -394,8 +394,9 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
 		count = HFA384x_SCANRESULT_MAX;
 
 	if (req->bssindex.data >= count) {
-		pr_debug("requested index (%d) out of range (%d)\n",
-			 req->bssindex.data, count);
+		netdev_dbg(wlandev->netdev,
+			   "requested index (%d) out of range (%d)\n",
+			   req->bssindex.data, count);
 		result = 2;
 		req->resultcode.data = P80211ENUM_resultcode_invalid_parameters;
 		goto exit;
@@ -684,7 +685,8 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 
 	goto done;
 failed:
-	pr_debug("Failed to set a config option, result=%d\n", result);
+	netdev_dbg(wlandev->netdev,
+		   "Failed to set a config option, result=%d\n", result);
 	msg->resultcode.data = P80211ENUM_resultcode_invalid_parameters;
 
 done:
@@ -1120,15 +1122,17 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 		/* Disable monitor mode */
 		result = hfa384x_cmd_monitor(hw, HFA384x_MONITOR_DISABLE);
 		if (result) {
-			pr_debug("failed to disable monitor mode, result=%d\n",
-				 result);
+			netdev_dbg(wlandev->netdev,
+				   "failed to disable monitor mode, result=%d\n",
+				   result);
 			goto failed;
 		}
 		/* Disable port 0 */
 		result = hfa384x_drvr_disable(hw, 0);
 		if (result) {
-			pr_debug
-			("failed to disable port 0 after sniffing, result=%d\n",
+			netdev_dbg
+			(wlandev->netdev,
+			     "failed to disable port 0 after sniffing, result=%d\n",
 			     result);
 			goto failed;
 		}
@@ -1140,8 +1144,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 						  HFA384x_RID_CNFWEPFLAGS,
 						  hw->presniff_wepflags);
 		if (result) {
-			pr_debug
-			    ("failed to restore wepflags=0x%04x, result=%d\n",
+			netdev_dbg
+			    (wlandev->netdev,
+			     "failed to restore wepflags=0x%04x, result=%d\n",
 			     hw->presniff_wepflags, result);
 			goto failed;
 		}
@@ -1153,8 +1158,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 						  HFA384x_RID_CNFPORTTYPE,
 						  word);
 			if (result) {
-				pr_debug
-				    ("failed to restore porttype, result=%d\n",
+				netdev_dbg
+				    (wlandev->netdev,
+				     "failed to restore porttype, result=%d\n",
 				     result);
 				goto failed;
 			}
@@ -1162,8 +1168,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 			/* Enable the port */
 			result = hfa384x_drvr_enable(hw, 0);
 			if (result) {
-				pr_debug("failed to enable port to presniff setting, result=%d\n",
-					 result);
+				netdev_dbg(wlandev->netdev,
+					   "failed to enable port to presniff setting, result=%d\n",
+					   result);
 				goto failed;
 			}
 		} else {
@@ -1182,8 +1189,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 						  HFA384x_RID_CNFPORTTYPE,
 						  &(hw->presniff_port_type));
 				if (result) {
-					pr_debug
-					("failed to read porttype, result=%d\n",
+					netdev_dbg
+					(wlandev->netdev,
+					     "failed to read porttype, result=%d\n",
 					     result);
 					goto failed;
 				}
@@ -1192,24 +1200,27 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 						  HFA384x_RID_CNFWEPFLAGS,
 						  &(hw->presniff_wepflags));
 				if (result) {
-					pr_debug
-					("failed to read wepflags, result=%d\n",
+					netdev_dbg
+					(wlandev->netdev,
+					     "failed to read wepflags, result=%d\n",
 					     result);
 					goto failed;
 				}
 				hfa384x_drvr_stop(hw);
 				result = hfa384x_drvr_start(hw);
 				if (result) {
-					pr_debug("failed to restart the card for sniffing, result=%d\n",
-						 result);
+					netdev_dbg(wlandev->netdev,
+						   "failed to restart the card for sniffing, result=%d\n",
+						   result);
 					goto failed;
 				}
 			} else {
 				/* Disable the port */
 				result = hfa384x_drvr_disable(hw, 0);
 				if (result) {
-					pr_debug("failed to enable port for sniffing, result=%d\n",
-						 result);
+					netdev_dbg(wlandev->netdev,
+						   "failed to enable port for sniffing, result=%d\n",
+						   result);
 					goto failed;
 				}
 			}
@@ -1225,8 +1236,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 		hw->sniff_channel = word;
 
 		if (result) {
-			pr_debug("failed to set channel %d, result=%d\n",
-				 word, result);
+			netdev_dbg(wlandev->netdev,
+				   "failed to set channel %d, result=%d\n",
+				   word, result);
 			goto failed;
 		}
 
@@ -1238,8 +1250,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 						  HFA384x_RID_CNFPORTTYPE,
 						  word);
 			if (result) {
-				pr_debug
-				    ("failed to set porttype %d, result=%d\n",
+				netdev_dbg
+				    (wlandev->netdev,
+				     "failed to set porttype %d, result=%d\n",
 				     word, result);
 				goto failed;
 			}
@@ -1257,8 +1270,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 			}
 
 			if (result) {
-				pr_debug
-				  ("failed to set wepflags=0x%04x, result=%d\n",
+				netdev_dbg
+				  (wlandev->netdev,
+				   "failed to set wepflags=0x%04x, result=%d\n",
 				   word, result);
 				goto failed;
 			}
@@ -1283,16 +1297,18 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 		/* Enable the port */
 		result = hfa384x_drvr_enable(hw, 0);
 		if (result) {
-			pr_debug
-			    ("failed to enable port for sniffing, result=%d\n",
+			netdev_dbg
+			    (wlandev->netdev,
+			     "failed to enable port for sniffing, result=%d\n",
 			     result);
 			goto failed;
 		}
 		/* Enable monitor mode */
 		result = hfa384x_cmd_monitor(hw, HFA384x_MONITOR_ENABLE);
 		if (result) {
-			pr_debug("failed to enable monitor mode, result=%d\n",
-				 result);
+			netdev_dbg(wlandev->netdev,
+				   "failed to enable monitor mode, result=%d\n",
+				   result);
 			goto failed;
 		}
 
-- 
2.7.4


