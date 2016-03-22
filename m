X-GM-THRID: 6264891272837726208
X-Received: by 10.66.141.74 with SMTP id rm10mr28532629pab.16.1458658667393;
        Tue, 22 Mar 2016 07:57:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.208 with SMTP id n74ls4554364qgn.63.gmail; Tue, 22 Mar
 2016 07:57:46 -0700 (PDT)
X-Received: by 10.140.87.55 with SMTP id q52mr27735682qgd.11.1458658666912;
        Tue, 22 Mar 2016 07:57:46 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id sf5si5012460pac.1.2016.03.22.07.57.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 07:57:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id n5so314446888pfn.2
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 07:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0ph/l6FTNkfYs0RTOo3O7ANbQQBWto+YplA5QXsoL1s=;
        b=jEwdwia2Em9S2W59M9Tu0AozroXyKLAgrfTnmF0f4vPJTTteIWLFUGrstd0q+uIUE9
         Kpy7bJC7bruwWB/0uwixT3XYd/X59mMFmPEYQWQ8Ez5S4tiJL6fzv9zGmuYFROiguzyT
         XU9hBT0gvGCplDuuI3SfRAz13j/GmYuAjXpEXAJGa3Ly0MbPhE4xJ3x5D1Y0JEmB3DP5
         qpWV/ZEC9LD3jp1ONYMDXD+PoVV+l6k7ztwOwCgUA608ejyqdGlSjZ2Kr84Y/bxBU6Gw
         4AOKVnTWvgjMi1a5crrtfuEKL4yqpoGxcAb6+AwA4Wv2+i1GjaYxvu+zEXDeLfqqHPNa
         xWpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0ph/l6FTNkfYs0RTOo3O7ANbQQBWto+YplA5QXsoL1s=;
        b=N1mOYp+ij8tHsspRMWu9vbqgMHO29vhmyjSDQZ8GXe12kXXFYqkZl1s7xt/pMhvrzt
         nO5K9+bdTvjP7n1osFJCweJ0Ddzbb0xT/D3QFHigANsPzmzL+vcF9R9brZ89muo3rFGx
         DC6BLVJz+z6JQXRg9J87MKCyZqVFJxFGIr+DJ8RQmstBIDTwEoABWCt5Lu8TZe/IFNL+
         dZVncyiYnORwmdekbo+4EOso41eszKHBBtCNvRzjyYKQxfwiovomX1lPr8lR8//oGoSY
         A9R/Bkacm9HqlPNwQOkORhTHiRviX2JK9uewq0QBZ/BiaytAQXMQu16tpl2+SniDYpxg
         YDjQ==
X-Gm-Message-State: AD7BkJKBuYc5mxGIPL0CTj96uMf5f+h7zXd3p+siqaync6kHS4WX8VqEns8HcpyKIr/R8Q==
X-Received: by 10.98.34.28 with SMTP id i28mr53918211pfi.160.1458658666710;
        Tue, 22 Mar 2016 07:57:46 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id zu10sm49079053pab.31.2016.03.22.07.57.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 07:57:46 -0700 (PDT)
Date: Tue, 22 Mar 2016 20:27:39 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: rtw_mlme_ext: Clean up tests if NULL
 returned on failure
Message-ID: <20160322145739.GA5249@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:

@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 86108d4..439c035 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -4289,12 +4289,12 @@ void report_survey_event(struct adapter *padapter,


 	pcmd_obj = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;

 	cmdsz = sizeof(struct survey_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_ATOMIC);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -4341,12 +4341,12 @@ void report_surveydone_event(struct adapter *padapter)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	pcmd_obj = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;

 	cmdsz = sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_KERNEL);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -4387,12 +4387,12 @@ void report_join_res(struct adapter *padapter, int res)
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	pcmd_obj = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;

 	cmdsz = sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_ATOMIC);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -4440,12 +4440,12 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	pcmd_obj = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;

 	cmdsz = sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_KERNEL);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -4495,12 +4495,12 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 	pcmd_obj = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;

 	cmdsz = sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_KERNEL);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -4911,11 +4911,11 @@ void survey_timer_hdl(unsigned long data)
 		}

 		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-		if (ph2c == NULL)
+		if (!ph2c)
 			goto exit_survey_timer_hdl;

 		psurveyPara = kzalloc(sizeof(struct sitesurvey_parm), GFP_ATOMIC);
-		if (psurveyPara == NULL) {
+		if (!psurveyPara) {
 			kfree(ph2c);
 			goto exit_survey_timer_hdl;
 		}
@@ -5479,7 +5479,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)


 	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
--
2.1.4


