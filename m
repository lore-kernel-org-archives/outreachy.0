X-GM-THRID: 6341665121383743488
X-Received: by 10.194.116.161 with SMTP id jx1mr501220wjb.10.1476533972472;
        Sat, 15 Oct 2016 05:19:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.196 with SMTP id c187ls1441437lfe.48.gmail; Sat, 15 Oct
 2016 05:19:31 -0700 (PDT)
X-Received: by 10.25.89.197 with SMTP id n188mr532787lfb.26.1476533971700;
        Sat, 15 Oct 2016 05:19:31 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id r65si185325wmf.3.2016.10.15.05.19.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 05:19:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b80so2330681wme.2
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 05:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=efpeutBsLfCNgiWKoSCuJVZli+EHCZ67uQvOJJnmTZI=;
        b=z0R1KV2+vvGpKMUqmrZieaAQdYHPu8JaclNhQuYmGvQJVUVYla9//BIlqCFZWYjdB9
         7SvkE4aGtgOpmN765/l9s78JNMStKQnrmDHmoEJFsEWA2t0zRVH19fks8Wns2xaGi10m
         RDMdUIkmSUMdZl6p3vnW53KhmQQYX6svwnq9VbxfaIJOZEdwqMq7zIoLzxXHQMKyKKXQ
         jxy3M8Cr2NCrxEFTSH+4fTS7wPeXAn/Guv/9+2pi0pOdPNMPzvetiMYBjcLYej9HhyEJ
         VC0s/gO79og9FBMtctR539GL8eR+UN9yWeUg675/khhBuSxXxCDlE8trwzQOnyspgTTN
         ZP8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=efpeutBsLfCNgiWKoSCuJVZli+EHCZ67uQvOJJnmTZI=;
        b=VHJN073nH1vm69wKvPVXPEsl2RPW+/jbvtExlDMZCn+u50b2kpMSPy4bpplMjcF5sA
         oKwt41YQbUxOrKOYIf8clqTYEfN9SNnpMJUGvt0I0bwy9pYkf3+FEnl0pihJILfMVHtF
         oj5pweyUbtBervNyiOsNoP0mx84dhr8pz63ivehrf6Iy1bfxfSdERri5uAGkRAKQNbh7
         2ORV/aOm9lLNRBZcxIR7qGDByocpDt6utBOEeOpck6Zi8PDic5QTbpA+4LEOoK3kbvvF
         /PomDgaDZcljs6BuDRUppj6WfB+69U/bcxgGW3GI+enzKPATNto5EzzYRvx7bOExArG0
         dMqg==
X-Gm-Message-State: AA6/9RmUS7GIJk01NRZIAjvz4kBi4GuJk3ARDZXuRPqF3CK4bnFzeChMlLZLep/OxYz8sA==
X-Received: by 10.194.175.166 with SMTP id cb6mr5298053wjc.84.1476533971170;
        Sat, 15 Oct 2016 05:19:31 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id a66sm3205175wmh.19.2016.10.15.05.19.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 15 Oct 2016 05:19:30 -0700 (PDT)
Date: Sat, 15 Oct 2016 15:19:29 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: i4l: No assignment in if statements
Message-ID: <20161015121929.GA17750@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Does the assignment before the statement  'if'.

Found with Coccinelle:
@r1@
identifier ptr;
expression fn;
statement S;
constant c;
@@

-if ((ptr = fn) < c ) S
+ptr = fn;
+if (ptr < c ) S

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/i4l/pcbit/callbacks.c | 37 +++++++++++++++++++----------------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/i4l/pcbit/callbacks.c b/drivers/staging/i4l/pcbit/callbacks.c
index efb6d6a..7806dbb 100644
--- a/drivers/staging/i4l/pcbit/callbacks.c
+++ b/drivers/staging/i4l/pcbit/callbacks.c
@@ -56,9 +56,8 @@ void cb_out_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	 *     - kfree   when msg has been sent
 	 */
 
-	if ((len = capi_conn_req(cbdata->data.setup.CalledPN, &skb,
-				 chan->proto)) < 0)
-	{
+	len = capi_conn_req(cbdata->data.setup.CalledPN, &skb, chan->proto);
+	if (len < 0) {
 		printk("capi_conn_req failed\n");
 		return;
 	}
@@ -89,8 +88,8 @@ void cb_out_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	int len;
 	ushort refnum;
 
-	if ((len = capi_conn_active_resp(chan, &skb)) < 0)
-	{
+	len = capi_conn_active_resp(chan, &skb);
+	if (len < 0) {
 		printk("capi_conn_active_req failed\n");
 		return;
 	}
@@ -110,10 +109,11 @@ void cb_out_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
 
 	/* Select protocol  */
 
-	if ((len = capi_select_proto_req(chan, &skb, 1 /*outgoing*/)) < 0) {
+	len = capi_select_proto_req(chan, &skb, 1);
+	if (len < 0) {
 		printk("capi_select_proto_req failed\n");
 		return;
-	}
+	} /*outgoing*/
 
 	refnum = last_ref_num++ & 0x7fffU;
 	chan->s_refnum = refnum;
@@ -170,7 +170,8 @@ void cb_in_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	dev->dev_if->statcallb(&ictl);
 
 
-	if ((len = capi_conn_resp(chan, &skb)) < 0) {
+	len = capi_conn_resp(chan, &skb);
+	if (len < 0) {
 		printk(KERN_DEBUG "capi_conn_resp failed\n");
 		return;
 	}
@@ -194,7 +195,8 @@ void cb_in_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	struct sk_buff *skb;
 	int len;
 
-	if ((len = capi_conn_active_req(chan, &skb)) < 0) {
+	len = capi_conn_active_req(chan, &skb);
+	if (len < 0) {
 		printk(KERN_DEBUG "capi_conn_active_req failed\n");
 		return;
 	}
@@ -220,11 +222,11 @@ void cb_in_3(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	struct sk_buff *skb;
 	int len;
 
-	if ((len = capi_select_proto_req(chan, &skb, 0 /*incoming*/)) < 0)
-	{
+	len = capi_select_proto_req(chan, &skb, 0);
+	if (len < 0) {
 		printk("capi_select_proto_req failed\n");
 		return;
-	}
+	} /*incoming*/
 
 	refnum = last_ref_num++ & 0x7fffU;
 	chan->s_refnum = refnum;
@@ -247,7 +249,8 @@ void cb_disc_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	ushort refnum;
 	isdn_ctrl ictl;
 
-	if ((len = capi_disc_resp(chan, &skb)) < 0) {
+	len = capi_disc_resp(chan, &skb);
+	if (len < 0) {
 		printk("capi_disc_resp failed\n");
 		return;
 	}
@@ -275,8 +278,8 @@ void cb_disc_2(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	int len;
 	ushort refnum;
 
-	if ((len = capi_disc_req(chan->callref, &skb, CAUSE_NORMAL)) < 0)
-	{
+	len = capi_disc_req(chan->callref, &skb, CAUSE_NORMAL);
+	if (len < 0) {
 		printk("capi_disc_req failed\n");
 		return;
 	}
@@ -318,8 +321,8 @@ void cb_selp_1(struct pcbit_dev *dev, struct pcbit_chan *chan,
 	int len;
 	ushort refnum;
 
-	if ((len = capi_activate_transp_req(chan, &skb)) < 0)
-	{
+	len = capi_activate_transp_req(chan, &skb);
+	if (len < 0) {
 		printk("capi_conn_activate_transp_req failed\n");
 		return;
 	}
-- 
2.7.4


