X-GM-THRID: 6339007122983878656
X-Received: by 10.98.129.195 with SMTP id t186mr2074777pfd.17.1475920029501;
        Sat, 08 Oct 2016 02:47:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.95.9 with SMTP id r9ls2020652itb.4.canary; Sat, 08 Oct 2016
 02:47:08 -0700 (PDT)
X-Received: by 10.66.15.73 with SMTP id v9mr4767293pac.44.1475920028118;
        Sat, 08 Oct 2016 02:47:08 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z73si2785877pfa.1.2016.10.08.02.47.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:47:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so2612678pfz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MFi0zbrX46C6R7zT1GzyqdL5kVl2MSse7slNCygPKbw=;
        b=ARiPwmFB5QlcvABLor9s/jrGNJD8do7xg11qcT+uAqEMUkjQvJ55zqFp1gse/NsEpt
         pKQOTW7wgrqkgZkde2CUVVVLwcv9RbOqCMWA7ZzN1V6SlyY59yglq3TGBFcXeP/rErgD
         h6Z6L02D6b0zEJZjXLSifCl6njaTNy3riUQIN8bYYumfP/IuFKWjiiGrhwaptWAF8o4l
         2SmCjnBGMIWl6BuIRcRejklfVX2mHC5l4dGXH7Yfxw7W4bYYTIZ77+pZG8m7UitvJkhN
         mKITFg1FroJKLp3zRL9VYHbVvV80TaWcjK4TDPojIaiYUzEuUB9XxW9W/pCv31fcPTzh
         oLuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MFi0zbrX46C6R7zT1GzyqdL5kVl2MSse7slNCygPKbw=;
        b=Ck7izaaMgk6DJ12uvZSh7kbDcNDg3ilqhJFF2oI/pQFLAthmnkT/qtnhUQC5ksO8QK
         xFTgFJnTlefiwdOjCc/dqSIy1RMkCYIOjOYJA1LUWR8AXToqvFX49ldLKVg/c7SV+RMQ
         ZcDsAVGeNzPPpLY/w71Eh3r72QErMZHV2NG5lG61WutdlX3tNe5b5gnEwRGaB9iDvb0f
         I+YkB8ozZeAcWNE9A/xpJOTIDBNABGV+v5JTBbSy2ARtnLkeJzAD3+4gU3asA4n2XgYb
         otwrUM1WPa7sEuDPQnw5fBOvobsMDT0LzsVZivWWBJMWAigkwF1vKoOKO5V9dWL9/78r
         vrlQ==
X-Gm-Message-State: AA6/9Rkc7bqnNoBfiRXi2R91/Q1gqaSXtKm6Y6/IkrExWKfTYP7ETOJvcTIdJH32LetVCw==
X-Received: by 10.98.149.18 with SMTP id p18mr36485579pfd.146.1475920027895;
        Sat, 08 Oct 2016 02:47:07 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id t18sm19985138pfk.29.2016.10.08.02.47.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:47:07 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:47:05 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 03/13] staging: wlan-ng: renames hfa384x_InfFrame to avoid
 camelcase
Message-ID: <20161008094704.GA12664@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames hfa384x_InfFrame to hfa384x_inf_frame in order to fix a
checkpatch error caused by camelcase.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h    |  6 ++---
 drivers/staging/wlan-ng/prism2mgmt.h |  3 ++-
 drivers/staging/wlan-ng/prism2sta.c  | 49 ++++++++++++++++++------------------
 3 files changed, 30 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 43c299c..7577f2b 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -774,7 +774,7 @@ union hfa384x_infodata {
 	struct hfa384x_KeyIDChanged keyidchanged;
 } __packed;
 
-struct hfa384x_InfFrame {
+struct hfa384x_inf_frame {
 	u16 framelen;
 	u16 infotype;
 	union hfa384x_infodata info;
@@ -862,7 +862,7 @@ struct hfa384x_usb_rxfrm {
 
 struct hfa384x_usb_infofrm {
 	u16 type;
-	struct hfa384x_InfFrame info;
+	struct hfa384x_inf_frame info;
 } __packed;
 
 struct hfa384x_usb_statusresp {
@@ -1370,7 +1370,7 @@ struct hfa384x {
 		struct hfa384x_ChInfoResult results;
 	} channel_info;
 
-	struct hfa384x_InfFrame *scanresults;
+	struct hfa384x_inf_frame *scanresults;
 
 	struct prism2sta_authlist authlist;	/* Authenticated station list. */
 	unsigned int accessmode;		/* Access mode. */
diff --git a/drivers/staging/wlan-ng/prism2mgmt.h b/drivers/staging/wlan-ng/prism2mgmt.h
index cc1ac7a..567820f 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.h
+++ b/drivers/staging/wlan-ng/prism2mgmt.h
@@ -65,7 +65,8 @@ extern int prism2_reset_settletime;
 
 u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate);
 
-void prism2sta_ev_info(struct wlandevice *wlandev, struct hfa384x_InfFrame *inf);
+void prism2sta_ev_info(struct wlandevice *wlandev,
+		       struct hfa384x_inf_frame *inf);
 void prism2sta_ev_txexc(struct wlandevice *wlandev, u16 status);
 void prism2sta_ev_tx(struct wlandevice *wlandev, u16 status);
 void prism2sta_ev_alloc(struct wlandevice *wlandev);
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index fd662ff..2641641 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -112,25 +112,25 @@ static int prism2sta_setmulticast(struct wlandevice *wlandev,
 				  struct net_device *dev);
 
 static void prism2sta_inf_handover(struct wlandevice *wlandev,
-				   struct hfa384x_InfFrame *inf);
+				   struct hfa384x_inf_frame *inf);
 static void prism2sta_inf_tallies(struct wlandevice *wlandev,
-				  struct hfa384x_InfFrame *inf);
+				  struct hfa384x_inf_frame *inf);
 static void prism2sta_inf_hostscanresults(struct wlandevice *wlandev,
-					  struct hfa384x_InfFrame *inf);
+					  struct hfa384x_inf_frame *inf);
 static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
-				      struct hfa384x_InfFrame *inf);
+				      struct hfa384x_inf_frame *inf);
 static void prism2sta_inf_chinforesults(struct wlandevice *wlandev,
-					struct hfa384x_InfFrame *inf);
+					struct hfa384x_inf_frame *inf);
 static void prism2sta_inf_linkstatus(struct wlandevice *wlandev,
-				     struct hfa384x_InfFrame *inf);
+				     struct hfa384x_inf_frame *inf);
 static void prism2sta_inf_assocstatus(struct wlandevice *wlandev,
-				      struct hfa384x_InfFrame *inf);
+				      struct hfa384x_inf_frame *inf);
 static void prism2sta_inf_authreq(struct wlandevice *wlandev,
-				  struct hfa384x_InfFrame *inf);
+				  struct hfa384x_inf_frame *inf);
 static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
-					struct hfa384x_InfFrame *inf);
+					struct hfa384x_inf_frame *inf);
 static void prism2sta_inf_psusercnt(struct wlandevice *wlandev,
-				    struct hfa384x_InfFrame *inf);
+				    struct hfa384x_inf_frame *inf);
 
 /*
  * prism2sta_open
@@ -964,7 +964,7 @@ exit:
  *	interrupt
  */
 static void prism2sta_inf_handover(struct wlandevice *wlandev,
-				   struct hfa384x_InfFrame *inf)
+				   struct hfa384x_inf_frame *inf)
 {
 	pr_debug("received infoframe:HANDOVER (unhandled)\n");
 }
@@ -987,7 +987,7 @@ static void prism2sta_inf_handover(struct wlandevice *wlandev,
  *	interrupt
  */
 static void prism2sta_inf_tallies(struct wlandevice *wlandev,
-				  struct hfa384x_InfFrame *inf)
+				  struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
 	u16 *src16;
@@ -1033,7 +1033,7 @@ static void prism2sta_inf_tallies(struct wlandevice *wlandev,
  *	interrupt
  */
 static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
-				      struct hfa384x_InfFrame *inf)
+				      struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
 	int nbss;
@@ -1088,7 +1088,7 @@ static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
  *	interrupt
  */
 static void prism2sta_inf_hostscanresults(struct wlandevice *wlandev,
-					  struct hfa384x_InfFrame *inf)
+					  struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
 	int nbss;
@@ -1101,7 +1101,7 @@ static void prism2sta_inf_hostscanresults(struct wlandevice *wlandev,
 
 	kfree(hw->scanresults);
 
-	hw->scanresults = kmemdup(inf, sizeof(struct hfa384x_InfFrame),
+	hw->scanresults = kmemdup(inf, sizeof(struct hfa384x_inf_frame),
 				  GFP_ATOMIC);
 
 	if (nbss == 0)
@@ -1130,7 +1130,7 @@ static void prism2sta_inf_hostscanresults(struct wlandevice *wlandev,
  *	interrupt
  */
 static void prism2sta_inf_chinforesults(struct wlandevice *wlandev,
-					struct hfa384x_InfFrame *inf)
+					struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
 	unsigned int i, n;
@@ -1182,10 +1182,10 @@ void prism2sta_processing_defer(struct work_struct *data)
 	/* First let's process the auth frames */
 	{
 		struct sk_buff *skb;
-		struct hfa384x_InfFrame *inf;
+		struct hfa384x_inf_frame *inf;
 
 		while ((skb = skb_dequeue(&hw->authq))) {
-			inf = (struct hfa384x_InfFrame *)skb->data;
+			inf = (struct hfa384x_inf_frame *)skb->data;
 			prism2sta_inf_authreq_defer(wlandev, inf);
 		}
 
@@ -1443,7 +1443,7 @@ void prism2sta_processing_defer(struct work_struct *data)
  *	interrupt
  */
 static void prism2sta_inf_linkstatus(struct wlandevice *wlandev,
-				     struct hfa384x_InfFrame *inf)
+				     struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
 
@@ -1471,7 +1471,7 @@ static void prism2sta_inf_linkstatus(struct wlandevice *wlandev,
  *	interrupt
  */
 static void prism2sta_inf_assocstatus(struct wlandevice *wlandev,
-				      struct hfa384x_InfFrame *inf)
+				      struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
 	struct hfa384x_AssocStatus rec;
@@ -1532,7 +1532,7 @@ static void prism2sta_inf_assocstatus(struct wlandevice *wlandev,
  *
  */
 static void prism2sta_inf_authreq(struct wlandevice *wlandev,
-				  struct hfa384x_InfFrame *inf)
+				  struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
 	struct sk_buff *skb;
@@ -1547,7 +1547,7 @@ static void prism2sta_inf_authreq(struct wlandevice *wlandev,
 }
 
 static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
-					struct hfa384x_InfFrame *inf)
+					struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
 	struct hfa384x_authenticateStation_data rec;
@@ -1721,7 +1721,7 @@ static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
  *	interrupt
  */
 static void prism2sta_inf_psusercnt(struct wlandevice *wlandev,
-				    struct hfa384x_InfFrame *inf)
+				    struct hfa384x_inf_frame *inf)
 {
 	struct hfa384x *hw = wlandev->priv;
 
@@ -1745,7 +1745,8 @@ static void prism2sta_inf_psusercnt(struct wlandevice *wlandev,
  * Call context:
  *	interrupt
  */
-void prism2sta_ev_info(struct wlandevice *wlandev, struct hfa384x_InfFrame *inf)
+void prism2sta_ev_info(struct wlandevice *wlandev,
+		       struct hfa384x_inf_frame *inf)
 {
 	inf->infotype = le16_to_cpu(inf->infotype);
 	/* Dispatch */
-- 
2.10.0


