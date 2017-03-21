X-GM-THRID: 6395900241087823872
X-Received: by 10.25.203.151 with SMTP id b145mr4487716lfg.17.1490136790385;
        Tue, 21 Mar 2017 15:53:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls41563lja.1.gmail; Tue, 21 Mar 2017
 15:53:09 -0700 (PDT)
X-Received: by 10.46.21.28 with SMTP id s28mr5306978ljd.14.1490136789836;
        Tue, 21 Mar 2017 15:53:09 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id i76si1449238wmh.1.2017.03.21.15.53.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 15:53:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id y90so703617wrb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 15:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mcgHZ+DKFsVOjNbBTuDNNkk+Q4H/O1LB/gPqhSI+qD8=;
        b=eWZ4MZEh38bZddCMsRnuSJ/C/svKvsKSHghRIw9b0X0A7Rax/dJynk9n4iX1+BcMGs
         l9gs7JOoy2FjSClD2VimCN3Uw97fLD6cOTpv0o5Oo2OOCgbVZJNAagKrsZHlStdi+jA0
         Kx7iontqzXz91M7gBlsCK0yfvRNp2svv5d/zsQ5MrUUR1teLBKxL3fTZfedWFPTeBqnd
         XnIjRFNTb4en2anLWJuA7+rmcxidv6+/7soN8CG2QYIGBfwNlJu/OrSyEEN5OnGsQ/wc
         +r69JZJ+u4VWywcq7byplwtgEe2nsbCeqz8Q2pang3VNn5y4PjYl+kHNrR7o+D1cFhK1
         Qs7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mcgHZ+DKFsVOjNbBTuDNNkk+Q4H/O1LB/gPqhSI+qD8=;
        b=RaFffwQObEBf7J6UR12T0o01mGWwiK4sgd3Wnf6pZZMj0Zb8OCbFMVys5ZMlcKW/Ny
         NQaStL8MwZmKP4dnfc9IoL6WoEt/8/UVvVaGmMXe2Hd+NXL0u8zRMhNEaPOTLqBf8z/I
         TmhtdeUB0f535OpdHmxSw0Hy8tkxAK2dlxbmC98PANIZguD4ha/XJ9Xsw8Awoc5HrSt4
         3R7CANBs2bTP/jPN4wWDlwBZQqYKZ1UmPio/gRRjb9sQIlUMWwHuX0mIFHx7r7/baSxv
         i52Q7UatT0i+nOpTb4zLiQzAWy8xRjuOHyx7BDJMUzksoT+zfg77lAN3okFCkGSGsQvC
         ElEw==
X-Gm-Message-State: AFeK/H0066xeeeLL4lC1urmbEO+Osti1jEI8THtZuU4rTha+Wbqe1pBeqGIxFBPcMHFjtg==
X-Received: by 10.223.156.2 with SMTP id f2mr25725313wrc.176.1490136789634;
        Tue, 21 Mar 2017 15:53:09 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id s26sm12226608wra.66.2017.03.21.15.53.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 15:53:09 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v3 2/4] staging: rtl8712: Invert the test on check_fwstate() to reduce indentation
Date: Wed, 22 Mar 2017 00:52:59 +0200
Message-Id: <a1fa1b5597ab9f51c2ab877a8cf0695c72beb0a3.1490136448.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1490136448.git.narcisaanamaria12@gmail.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <cover.1490136448.git.narcisaanamaria12@gmail.com>

Negate if condition to be able to return immediately in case of error,
and then continue with the rest of the function
without extra indentation level.

This was found using the following Coccinelle script:

@disable neg_if@
expression e,E;
statement S;
@@

*if (e)
    S
    else { return -E; }

    @disable neg_if@
    expression e,E;
    statement S;
    identifier
    l;
    @@

    *if
(e)
    S
    else
{ rc = -E; goto l; }

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 60c97f7..38c1703 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -695,14 +695,14 @@ static int r8711_wx_get_freq(struct net_device *dev,
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;
 
-	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
-		wrqu->freq.m = ieee80211_wlan_frequencies[
-			       pcur_bss->Configuration.DSConfig - 1] * 100000;
-		wrqu->freq.e = 1;
-		wrqu->freq.i = pcur_bss->Configuration.DSConfig;
-	} else {
+	if (!check_fwstate(pmlmepriv, _FW_LINKED))
 		return -ENOLINK;
-	}
+
+	wrqu->freq.m = ieee80211_wlan_frequencies[
+		       pcur_bss->Configuration.DSConfig - 1] * 100000;
+	wrqu->freq.e = 1;
+	wrqu->freq.i = pcur_bss->Configuration.DSConfig;
+
 	return 0;
 }
 
-- 
1.9.1


