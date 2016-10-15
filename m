X-GM-THRID: 6341665121383743488
X-Received: by 10.194.134.101 with SMTP id pj5mr510512wjb.15.1476537644501;
        Sat, 15 Oct 2016 06:20:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.24.147 with SMTP id 141ls390890wmy.4.canary; Sat, 15 Oct
 2016 06:20:43 -0700 (PDT)
X-Received: by 10.28.154.209 with SMTP id c200mr138188wme.10.1476537643934;
        Sat, 15 Oct 2016 06:20:43 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id w63si122016wmf.2.2016.10.15.06.20.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 06:20:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z189so2504594wmb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 06:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Dnc1wYULTwRLUnLLdWOO9QUbtxdsnh6UswU7sWzvowg=;
        b=KbO9XULf1IkRLJEEFM0HzOfCfbpEE1yQKEUIjJ0CRDYaYiufCS/LKlyNuOm/2DXNK9
         gbrr9WjDQTWW7qvWuYrOdbYaf0J7lfb4n8X0zPh+cyjn7z+Otynqt9YbDijmWaHjJLGa
         2XT1eI/1fzDv6m5Z7hSfWBNHCqXcw+L1h3jY33Bi1G7dAZs/8yYrqHG9sNUTES/r+cDH
         vZKSg1iN1eq1glU3ge1DZmp3GnmQs+q25lPLcUODn5d1bjoZPslA06fizFF9rv/J1wB8
         vk2yb4QIFZjWxDWzy3omeq7IaaD+DMf+O6HMrMmZKdecGRwL0llTXxLqz4gkCx14UYOr
         DVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Dnc1wYULTwRLUnLLdWOO9QUbtxdsnh6UswU7sWzvowg=;
        b=Zuzaz4jFTh/6NhWv9b7Mzho06eQ9QIXPf/TSNKPBWNj2gc1/JssCxNEPwsFXBplfE2
         ViQpIkCeX3xNVpdA3Nv5BZKTtVmGfil+cjTMARbDFjlChYJN392rEuLd2sIN7eRty1fG
         dRPrGBrcrZ7bPafJIz0AE2E9bj/Qxm0cF2QfCaR6m9uEcZB+KkRucAlPDdZjrGDcCFy+
         6AE+BBnjmRTNrvJjTQPdMIx+v1G3/qlU0OKN5EL22kHXkHaUu38H/USM7yeZL22FN6Oa
         fnjgPCLBakQ2JX3om8xgfwXTN8wEY06PRUSD6M4BcIH8zB1hvUUiMaIL6UQ45R1px3Hl
         TTow==
X-Gm-Message-State: AA6/9RnR8CmqajrPsKyX4mIIMKdFllP2crbpsGADMysnWtbWl3aMETu6EiHQNLhFS0QnNA==
X-Received: by 10.28.130.138 with SMTP id e132mr2113551wmd.110.1476537643458;
        Sat, 15 Oct 2016 06:20:43 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id g17sm36963372wjs.38.2016.10.15.06.20.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 06:20:43 -0700 (PDT)
Date: Sat, 15 Oct 2016 16:20:41 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: i4l: No assignment in if statements
Message-ID: <20161015132041.GA20307@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the assignment before the statement 'if'.
Found with Coccinelle:
@r1@
identifier ptr;
expression fn;
statement S;
constant c;
@@

+ptr=fn;
 if (
-	(ptr=fn)
+	ptr
	< c) S

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
Changes in v2:
	- rewrite the semantic patch;
---
 drivers/staging/i4l/pcbit/callbacks.c | 28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/i4l/pcbit/callbacks.c b/drivers/staging/i4l/pcbit/callbacks.c
index efb6d6a..6d8d02d 100644
--- a/drivers/staging/i4l/pcbit/callbacks.c
+++ b/drivers/staging/i4l/pcbit/callbacks.c
@@ -56,8 +56,8 @@ void cb_out_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	 *     - kfree   when msg has been sent
 	 */
 
-	if ((len = capi_conn_req(cbdata->data.setup.CalledPN, &skb,
-				 chan->proto)) < 0)
+	len = capi_conn_req(cbdata->data.setup.CalledPN, &skb, chan->proto);
+	if (len < 0)
 	{
 		printk("capi_conn_req failed\n");
 		return;
@@ -89,7 +89,8 @@ void cb_out_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	int len;
 	ushort refnum;
 
-	if ((len = capi_conn_active_resp(chan, &skb)) < 0)
+	len = capi_conn_active_resp(chan, &skb);
+	if (len < 0)
 	{
 		printk("capi_conn_active_req failed\n");
 		return;
@@ -110,7 +111,8 @@ void cb_out_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
 
 	/* Select protocol  */
 
-	if ((len = capi_select_proto_req(chan, &skb, 1 /*outgoing*/)) < 0) {
+	len = capi_select_proto_req(chan, &skb, 1);
+	if (len /*outgoing*/< 0) {
 		printk("capi_select_proto_req failed\n");
 		return;
 	}
@@ -170,7 +172,8 @@ void cb_in_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	dev->dev_if->statcallb(&ictl);
 
 
-	if ((len = capi_conn_resp(chan, &skb)) < 0) {
+	len = capi_conn_resp(chan, &skb);
+	if (len < 0) {
 		printk(KERN_DEBUG "capi_conn_resp failed\n");
 		return;
 	}
@@ -194,7 +197,8 @@ void cb_in_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	struct sk_buff *skb;
 	int len;
 
-	if ((len = capi_conn_active_req(chan, &skb)) < 0) {
+	len = capi_conn_active_req(chan, &skb);
+	if (len < 0) {
 		printk(KERN_DEBUG "capi_conn_active_req failed\n");
 		return;
 	}
@@ -220,7 +224,8 @@ void cb_in_3(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	struct sk_buff *skb;
 	int len;
 
-	if ((len = capi_select_proto_req(chan, &skb, 0 /*incoming*/)) < 0)
+	len = capi_select_proto_req(chan, &skb, 0);
+	if (len /*incoming*/< 0)
 	{
 		printk("capi_select_proto_req failed\n");
 		return;
@@ -247,7 +252,8 @@ void cb_disc_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	ushort refnum;
 	isdn_ctrl ictl;
 
-	if ((len = capi_disc_resp(chan, &skb)) < 0) {
+	len = capi_disc_resp(chan, &skb);
+	if (len < 0) {
 		printk("capi_disc_resp failed\n");
 		return;
 	}
@@ -275,7 +281,8 @@ void cb_disc_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	int len;
 	ushort refnum;
 
-	if ((len = capi_disc_req(chan->callref, &skb, CAUSE_NORMAL)) < 0)
+	len = capi_disc_req(chan->callref, &skb, CAUSE_NORMAL);
+	if (len < 0)
 	{
 		printk("capi_disc_req failed\n");
 		return;
@@ -318,7 +325,8 @@ void cb_selp_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	int len;
 	ushort refnum;
 
-	if ((len = capi_activate_transp_req(chan, &skb)) < 0)
+	len = capi_activate_transp_req(chan, &skb);
+	if (len < 0)
 	{
 		printk("capi_conn_activate_transp_req failed\n");
 		return;
-- 
2.7.4


