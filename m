X-GM-THRID: 6473105457256857600
X-Received: by 10.98.147.28 with SMTP id b28mr404950pfe.56.1507137310005;
        Wed, 04 Oct 2017 10:15:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.212.80 with SMTP id u16ls5217594pfl.10.gmail; Wed, 04 Oct
 2017 10:15:08 -0700 (PDT)
X-Received: by 10.101.69.1 with SMTP id n1mr2036148pgq.94.1507137308935;
        Wed, 04 Oct 2017 10:15:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507137308; cv=none;
        d=google.com; s=arc-20160816;
        b=N0pyw2evZLHLu+1NENR+WqLDSBMERvbYa7sBhywcMQ6TKzLtk67jBpOu+aX5yVvML8
         3llXxQNxIGVBGHXukU8pVeNNbhE+yqTt2QL3HU/rTzJcTNgvF3KhF2yrsRv74FwzayvK
         /G94rnIZ3jndtcs9jheCRHdbJde1kS/YkW40wm1LOEHBBimW8TXNd2/I7HQywjFXx8Y3
         2yOaFqjESptXA+3gJZhVLtCrTCS09TNRQbK+/VRu+tk3yszrhFi/tZzxKh+xHd4KyLrx
         Kf4MTsMrxcx5O8g3BvdBPuZvAm6giUePBzqcrPm2dyDaE8EwsRWXtIgEsQbQ3ccMaVn2
         oHJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=i3Va20nyVkEhhf+SmnTEX1lpXCKG/4e+Ew7x5YIhDm8=;
        b=L8nUFDmUemydbt5TGlQDJiPJmXWCLp+WY0pCukYf5UMJS8KOwuhc2FRyIms+dOJoCF
         MBTsCbEoq8KKrDQfx0EWjJVvIEm7tRo9peK6oRS8K5jXr5qyyac/NvCkT29Jiwl7r0lW
         oB4JbwCgyWUGyLtMXFzV99a8PE1JVIm2l2hcl/aQH8RzJwnssZPISzP0gISAkv0BSZp9
         uxC7eXezV07tEcWbmRkGEr/xgzI+wwaOvSoVbQRbr7YHYD16ybuK/qoJZrPfi4HCcEuQ
         JpVXeugQ+ZTra0dnlP9G8yUgpd/FwawOccOJx/wbET7PefSRz7ySq39j1VT/bjWoybzu
         WD0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EcPbhRK6;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id h3si1884875pfk.9.2017.10.04.10.15.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 10:15:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EcPbhRK6;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id i195so5355507pgd.3
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 10:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=i3Va20nyVkEhhf+SmnTEX1lpXCKG/4e+Ew7x5YIhDm8=;
        b=EcPbhRK6Gyj2leNOuAHm+SpK9O8bSfmWlcmJh4trKJdxneYnKzzPrw3SkKxt2d1DPX
         TqdyMnnCnW5qF/nR0ripbKeYjjSasKFCJHrjat6pVsHPGfF8YnPsGWBDcH8CUgjZa8L/
         883qsNYsH1+hr/uh1o99H9CTnlhn2XAza5zyiU1X2TLtnZ3A3O6aDkO4LWt72NnoQJyT
         7pC0JtY5Xm7IpNOfUwTXMWsHZJGlmqT7rzlbqIRRa5AFAxuvgFPE2UQaHd/HZ9CgfadX
         uAGQdlTjKrZlDdu8PcF4nKtO63lL3ULe8oE0zyA+RUv5Mknc1vQ6L4As5rVJ0kZtzvrP
         GXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=i3Va20nyVkEhhf+SmnTEX1lpXCKG/4e+Ew7x5YIhDm8=;
        b=hwPvXUSRjbBWJI1cb4y5xO2AJrH2exfNVpkwrJQxLsjN6i7EcsjtPaLLqm/IPp+NAg
         Fg/8E5fL3F/2jBUkNAd+7QCh3qeR4N7BWaYx1355Fbk1KXE9wdZ/2zscEXr0Ec+IEP97
         dJPahV9VJKIf4LY/GWTGSV3IOnDbqArH3N6dnoCLU5lz9/jcxykB+2I9b5bI1kxDlI/T
         pyEOVQvRZLxDORg4Rv5MR1AKByjXEPxvXahBC8lNeUyEGYGWBdDOQRAZcwT8ujI7b25F
         yZm9HV5VHidP4WBclGrig/XDdBr5ZKv3m/HIDGZaOyB1Vj4eMs36CfGI96De9YDhpFR1
         VcTw==
X-Gm-Message-State: AMCzsaUq7Ga6XRrScfttA9YH3Fpc06olxzqLtGXqxj896s2sSvtGt4OB
	i0l0UtPlk4LUW1LyrIzXll8=
X-Google-Smtp-Source: AOwi7QCOY2OS6UiyHfYvGp69QSTJruw7aJTWdftygrkt1gduTX+ECB18UkZjr4RyD3e4+9nGNul3Sw==
X-Received: by 10.84.247.133 with SMTP id o5mr8326163pll.6.1507137308594;
        Wed, 04 Oct 2017 10:15:08 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([182.70.213.86])
        by smtp.gmail.com with ESMTPSA id u73sm27239913pfi.58.2017.10.04.10.15.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Oct 2017 10:15:08 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: rtl8188eu: core: rtw_ap: Use list_for_each_entry_safe
Date: Wed,  4 Oct 2017 22:44:55 +0530
Message-Id: <1507137295-3753-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

This is a cleanup patch and doesn't change runtime behaviour. It 
changes an open coded list traversal to use list_for_each_entry_safe.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
expression e;
identifier m,list_del_init,f;
type T1;
T1* pos;
iterator name list_for_each_entry_safe;
@@

f(...){

+T1* tmp;
<+...
-while(...)
+list_for_each_entry_safe(pos,tmp,l,m)
{
...
-pos = container_of(l,T1,m);
...
-l=e;
 <+...
 list_del_init(&pos->m)
 ...+>
}
...+>

}

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2
 -Make commit message more clear.
 -Add file name to the subject.

 drivers/staging/rtl8188eu/core/rtw_ap.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index a2c599f..551af9e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -280,7 +280,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 {
 	struct list_head *phead, *plist;
 	u8 updated = 0;
-	struct sta_info *psta = NULL;
+	struct sta_info *psta = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 chk_alive_num = 0;
 	char chk_alive_list[NUM_STA];
@@ -292,10 +292,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 	plist = phead->next;
 
 	/* check auth_queue */
-	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, auth_list);
-		plist = plist->next;
-
+	list_for_each_entry_safe(psta, tmp, plist, auth_list) {
 		if (psta->expire_to > 0) {
 			psta->expire_to--;
 			if (psta->expire_to == 0) {
@@ -326,10 +323,7 @@ void	expire_timeout_chk(struct adapter *padapter)
 	plist = phead->next;
 
 	/* check asoc_queue */
-	while (phead != plist) {
-		psta = container_of(plist, struct sta_info, asoc_list);
-		plist = plist->next;
-
+	list_for_each_entry_safe(psta, tmp, plist, asoc_list) {
 		if (chk_sta_is_alive(psta) || !psta->expire_to) {
 			psta->expire_to = pstapriv->expire_to;
 			psta->keep_alive_trycnt = 0;
-- 
2.7.4


