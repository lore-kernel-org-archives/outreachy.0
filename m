X-GM-THRID: 6264889260356141056
X-Received: by 10.31.9.78 with SMTP id 75mr27288015vkj.9.1458658198535;
        Tue, 22 Mar 2016 07:49:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.72 with SMTP id j66ls4851959qga.0.gmail; Tue, 22 Mar
 2016 07:49:57 -0700 (PDT)
X-Received: by 10.31.174.2 with SMTP id x2mr18802337vke.13.1458658197908;
        Tue, 22 Mar 2016 07:49:57 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id 138si727553pfa.1.2016.03.22.07.49.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 07:49:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id n5so314446923pfn.2
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 07:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rRtP402ctTkaX5fbe+dHcNCF+VApaPcP3PsMRm+W1FI=;
        b=am5R8PI8nHCPnejkDIbV6s5o9NKzRgrpXIkyWLm0fiSjr1wJBXvts9pR5q9674gXOu
         CBSZFSPOucYYW1xWTH3AVW5XpbCWMrZXB1gfrgSrfGeB2dQ9+7KJEyOLl/SFwNW9fIIw
         UDRiWZbgkodt988TBEGw9mtbkqQDQe1hFG7hTgcXZVVI+6VuT/JrJB0fGZic/EdWJEBy
         ElgnAFwbNHrue8J+EK0PMGabeBeqGWiD3QSXQewIAiCOR1ggeJ+6YJi65aNsC10IfJW7
         uGqabYgLmEOMSmnoPLrn57DmKWPlD4p7kKXV3vKru2FCTkhEdxWD2k7K5SlgZNhfkf2f
         1x8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rRtP402ctTkaX5fbe+dHcNCF+VApaPcP3PsMRm+W1FI=;
        b=CkvX4Ufj8+U73Jt+dAUvL4JPxss085T+kv+L2EbVYlRkaQ178Gm+j0z3JsLdo15VAB
         40ZOyTErzblUR6fBEQHJxN2Ym/tDMxeN43zfJyT+QohENkdepMNjjvz13nWRtgstZ6iU
         fXia/R7rs9HqCkTkt/+Yp7SXoqANE1SwjVseBqTWrdhcXidFaLWmofLfeEGtQxaYL+sp
         I9CPVNRbZmS1hJR3+qXx+SenGfk2BxoR+UlJRx+lUmtglBvVZgcgS6Wq2t/FqnMlsfvW
         hT3Jz2lpZthmbWJ1I+nfHBpOHUJRtGwMQmt7451F+S/M0z50ON0VO1s0xwmb8LDCrYQN
         EUkA==
X-Gm-Message-State: AD7BkJK+u2UGDRVUWshiiHUq/6Ct/xbhwMb+E5CfU7GBuYJsbVI5fHRSiES2gO162KVdDA==
X-Received: by 10.66.191.225 with SMTP id hb1mr54238437pac.78.1458658197741;
        Tue, 22 Mar 2016 07:49:57 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v74sm8659248pfa.7.2016.03.22.07.49.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 07:49:57 -0700 (PDT)
Date: Tue, 22 Mar 2016 20:19:49 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: os_dep: ioctl_linux:  Clean up tests if
 NULL returned on failure
Message-ID: <20160322144949.GA4701@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kmalloc/kzalloc return NULL on failure.
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
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index eeb1694..5672f01 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -2115,13 +2115,13 @@ static u8 set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 	u8 res = _SUCCESS;

 	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}

 	psetstakey_para = kzalloc(sizeof(struct set_stakey_parm), GFP_KERNEL);
-	if (psetstakey_para == NULL) {
+	if (!psetstakey_para) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -2153,12 +2153,12 @@ static int set_group_key(struct adapter *padapter, u8 *key, u8 alg, int keyid)
 	DBG_88E("%s\n", __func__);

 	pcmd = kzalloc(sizeof(struct	cmd_obj), GFP_KERNEL);
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;
 		goto exit;
 	}
 	psetkeyparm = kzalloc(sizeof(struct setkey_parm), GFP_KERNEL);
-	if (psetkeyparm == NULL) {
+	if (!psetkeyparm) {
 		kfree(pcmd);
 		res = _FAIL;
 		goto exit;
--
2.1.4


