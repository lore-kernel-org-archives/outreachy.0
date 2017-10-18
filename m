X-GM-THRID: 6477576827810349056
X-Received: by 10.200.50.55 with SMTP id x52mr1904101qta.62.1508341705612;
        Wed, 18 Oct 2017 08:48:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.16.22 with SMTP id z22ls2092742qti.3.gmail; Wed, 18 Oct
 2017 08:48:25 -0700 (PDT)
X-Received: by 10.237.63.153 with SMTP id s25mr2008408qth.11.1508341705061;
        Wed, 18 Oct 2017 08:48:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508341705; cv=none;
        d=google.com; s=arc-20160816;
        b=bb/JT/nrbj+VTx/XiqZ1Euf2bAW5l3Kn8sKf1kI3B3sIMGOBsd+mLyMOr7Oi3IDEXT
         f0xCdOh1qK1h94QklTkJfgthbgXylksQM6iHJsJM6sfY0i8u2vcWohVmcYYZ0TzNoqdc
         dG/IU6/OWSCIP3WEgWpMsk/rrgqgDfxqiKt0zATkt2i6+R3cYTcucHM/OHknLLk1WfoA
         05QBxmqZw2uJfVCIpuMaofzdOS7jSd15iN8iAyHPWmwOmjtd4zKdhG8crzXZ0zn3G8G7
         1We7wN5FFr7gHoMPYfYlR3fWqqs8emeOD2NuStTbJ52sJSJahzWwEji8orDReBtucdN7
         PRxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:dkim-signature:arc-authentication-results;
        bh=Ry+Xtg+yhdcVgKNPcynvXPlHtNdFMjfhOpCcr4iIXRI=;
        b=Fs3okOLA1t72Gf/RVQs/sNCOEbNluy4pCGQSBb6DTkgGXtOf7oSq9+VoU4ncQ4kJ5F
         dyVlpioXMJCDWqgpaPrglRIGMKk2KZxe8jED51pYRWeWaLA0d5rQWdTuA+25qWW3nx9s
         oklzTOwIw4gQGRALIXceg5TmHrWNDNdGgyyQ9BOUqhJNuc/e/421cuDJ9tbFDc8zcEXo
         I2ZyXeJvXyLhZNTCDep1Jalm7k6SDdeqS4htcM96xkPX6G13UvGUFYRIC3HGSBnhdWKP
         U4MmWVcbula1gz1i6Id5lw+iqaIe8+bTHcROAK4MWloQy5u1T8OL7iXDbudXAI46jTeZ
         d7VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=M7m/B9f7;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id 5si806636qki.1.2017.10.18.08.48.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 08:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=M7m/B9f7;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x241.google.com with SMTP id v27so3863335uav.7
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 08:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=Ry+Xtg+yhdcVgKNPcynvXPlHtNdFMjfhOpCcr4iIXRI=;
        b=M7m/B9f7RvTEZC7bdziC8Bz4u407X5KnvKIuqn//BkGUbL6XvxJNXvBPWFbXLs8sok
         fothjMo2eQnVID1VN+m3Xq6Cb2dt/iqE9hoW7tjbgyA53R0pPYO7cRTyAHXrkvtoUVaG
         A5WHnjtdO1SkX2OTy1ukO41gpPstxQggCmEGmO+yREo//fRXhxWYDKcmTEWnVJBeUONs
         Iki+zdv/ad7bN5aDgvqkfL1w5EQuEYjShLoDucqLX0cJ9Duq+IqV9c/tXLjmMjh1c+8y
         f0/l9aM5o996uBsWE23gMy+RPgkMp6Vgvms04cOEG55Jq0Srjyll+tc0aevX89Bs8ULC
         /aEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ry+Xtg+yhdcVgKNPcynvXPlHtNdFMjfhOpCcr4iIXRI=;
        b=j2oDA/IIr8W2pnpNMVfOdLBPSjvzV0UFr4uNHdUmz4PXwyZSyZJDjRY7M1DuxBBsrO
         RS4F5muVYsWD1FVniD6a5WC+md2xSuuePjdjaLZnBqS1T1xbNjKnVfOZG8U9OVzNAijZ
         hvd/HR3Ai2Qn9qv7Mb0xiPDh1gxOUO/0+SnLf9NZnig3N/zwDc+BDv3FgzRumgFSV2wG
         AEicq2b6n6HeXqzpRhOdDwaTQPcj9DrTOIENw/F80BlQmvlNaPgtkXfrrUt6ovPKIIhD
         58r9Jhaj1PvrefCejnMgkbS6zwFqB90CmI5p0NFbvMTQJugOyZR/mNQQJQ8bShSqkOpd
         NGuA==
X-Gm-Message-State: AMCzsaW5RLh5k+KRPA1ftD46ceUpTkQHt9lWfQ1WJiDwMubI4CEuvOnQ
	vMGtF2YQKCTHcTrWp/OlIFsZ8A==
X-Google-Smtp-Source: ABhQp+SBDgeknKHDhlT0PYSaO7oO+sV7Z9qRzO2XWu/U6EG641u2oVzr4Z3TClXhZ9WSaAX2Tb9yTA==
X-Received: by 10.176.91.75 with SMTP id v11mr4062956uae.26.1508341704393;
        Wed, 18 Oct 2017 08:48:24 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id y129sm2817952vkc.16.2017.10.18.08.48.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 08:48:23 -0700 (PDT)
Date: Wed, 18 Oct 2017 11:48:21 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org, Julia.Lawall@lip6.fr, pablo@netfilter.org
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: [PATCH v3] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171018154821.GA2002@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171018145522.GA27138@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary parentheses to comply with preferred coding style for
the linux kernel and avoid the following checkpatch's messages:
'CHECK: Unnecessary parentheses around'
'CHECK: Logical continuations should be on the previous line'

Credits to checkpatch.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
Changes in v3:
	* Exclude any parentheses removal that makes unclear the order of the operations.

Changes in v2:
	* I rewrote the log message to improve the style taking in consideration Julia's suggestions.
	* I merged in this patch similars changes that initially were in theirs own patch. I will reply that other patch email thread, saying to discard it, to avoid confussion.

 drivers/staging/wlan-ng/p80211req.c  |  2 +-
 drivers/staging/wlan-ng/prism2fw.c   | 21 ++++++++++-----------
 drivers/staging/wlan-ng/prism2mgmt.c | 23 +++++++++++------------
 drivers/staging/wlan-ng/prism2sta.c  |  4 ++--
 4 files changed, 24 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211req.c b/drivers/staging/wlan-ng/p80211req.c
index afe8477..0d1556c 100644
--- a/drivers/staging/wlan-ng/p80211req.c
+++ b/drivers/staging/wlan-ng/p80211req.c
@@ -124,7 +124,7 @@ int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
 
 	/* Check Permissions */
 	if (!capable(CAP_NET_ADMIN) &&
-	    (msg->msgcode != DIDmsg_dot11req_mibget)) {
+	    msg->msgcode != DIDmsg_dot11req_mibget) {
 		netdev_err(wlandev->netdev,
 			   "%s: only dot11req_mibget allowed for non-root.\n",
 			   wlandev->name);
diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 344bec8..7c2e9c4 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -1177,8 +1177,8 @@ static int validate_identity(void)
 				 s3info[i].info.compat.top);
 
 			/* MAC compat range */
-			if ((s3info[i].info.compat.role == 1) &&
-			    (s3info[i].info.compat.id == 2)) {
+			if (s3info[i].info.compat.role == 1 &&
+			    s3info[i].info.compat.id == 2) {
 				if (s3info[i].info.compat.variant !=
 				    macid.variant) {
 					result = 2;
@@ -1186,17 +1186,16 @@ static int validate_identity(void)
 			}
 
 			/* PRI compat range */
-			if ((s3info[i].info.compat.role == 1) &&
-			    (s3info[i].info.compat.id == 3)) {
-				if ((s3info[i].info.compat.bottom > priid.top)
-				    || (s3info[i].info.compat.top <
-					priid.bottom)) {
+			if (s3info[i].info.compat.role == 1 &&
+			    s3info[i].info.compat.id == 3) {
+				if (s3info[i].info.compat.bottom > priid.top ||
+				    s3info[i].info.compat.top < priid.bottom) {
 					result = 3;
 				}
 			}
 			/* SEC compat range */
-			if ((s3info[i].info.compat.role == 1) &&
-			    (s3info[i].info.compat.id == 4)) {
+			if (s3info[i].info.compat.role == 1 &&
+			    s3info[i].info.compat.id == 4) {
 				/* FIXME: isn't something missing here? */
 			}
 
@@ -1218,8 +1217,8 @@ static int validate_identity(void)
 				continue;
 			if (nicid.minor != s3info[i].info.version.minor)
 				continue;
-			if ((nicid.variant != s3info[i].info.version.variant) &&
-			    (nicid.id != 0x8008))
+			if (nicid.variant != s3info[i].info.version.variant &&
+			    nicid.id != 0x8008)
 				continue;
 
 			trump = 1;
diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index 7207059..97ab6d7 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -1256,10 +1256,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 				     word, result);
 				goto failed;
 			}
-			if ((msg->keepwepflags.status ==
-			     P80211ENUM_msgitem_status_data_ok)
-			    && (msg->keepwepflags.data !=
-				P80211ENUM_truth_true)) {
+			if (msg->keepwepflags.status ==
+			     P80211ENUM_msgitem_status_data_ok &&
+			    msg->keepwepflags.data != P80211ENUM_truth_true) {
 				/* Set the wepflags for no decryption */
 				word = HFA384x_WEPFLAGS_DISABLE_TXCRYPT |
 				    HFA384x_WEPFLAGS_DISABLE_RXCRYPT;
@@ -1279,8 +1278,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 		}
 
 		/* Do we want to strip the FCS in monitor mode? */
-		if ((msg->stripfcs.status == P80211ENUM_msgitem_status_data_ok)
-		    && (msg->stripfcs.data == P80211ENUM_truth_true)) {
+		if (msg->stripfcs.status == P80211ENUM_msgitem_status_data_ok &&
+		    msg->stripfcs.data == P80211ENUM_truth_true) {
 			hw->sniff_fcs = 0;
 		} else {
 			hw->sniff_fcs = 1;
@@ -1317,14 +1316,14 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 
 		/* Set the driver state */
 		/* Do we want the prism2 header? */
-		if ((msg->prismheader.status ==
-		     P80211ENUM_msgitem_status_data_ok) &&
-		    (msg->prismheader.data == P80211ENUM_truth_true)) {
+		if (msg->prismheader.status ==
+		     P80211ENUM_msgitem_status_data_ok &&
+		    msg->prismheader.data == P80211ENUM_truth_true) {
 			hw->sniffhdr = 0;
 			wlandev->netdev->type = ARPHRD_IEEE80211_PRISM;
-		} else if ((msg->wlanheader.status ==
-			    P80211ENUM_msgitem_status_data_ok) &&
-			   (msg->wlanheader.data == P80211ENUM_truth_true)) {
+		} else if (msg->wlanheader.status ==
+			    P80211ENUM_msgitem_status_data_ok &&
+			   msg->wlanheader.data == P80211ENUM_truth_true) {
 			hw->sniffhdr = 1;
 			wlandev->netdev->type = ARPHRD_IEEE80211_PRISM;
 		} else {
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 070a237..38956fb 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1929,8 +1929,8 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 		return;
 
 	/* we don't care if we're in AP mode */
-	if ((wlandev->macmode == WLAN_MACMODE_NONE) ||
-	    (wlandev->macmode == WLAN_MACMODE_ESS_AP)) {
+	if (wlandev->macmode == WLAN_MACMODE_NONE ||
+	    wlandev->macmode == WLAN_MACMODE_ESS_AP) {
 		return;
 	}
 
-- 
2.7.4


