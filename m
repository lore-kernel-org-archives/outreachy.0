X-GM-THRID: 6264890995518734336
X-Received: by 10.157.40.214 with SMTP id s80mr4089440ota.9.1458658602626;
        Tue, 22 Mar 2016 07:56:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.68.34 with SMTP id s2ls209558obt.96.gmail; Tue, 22 Mar
 2016 07:56:42 -0700 (PDT)
X-Received: by 10.182.92.226 with SMTP id cp2mr27333087obb.19.1458658602363;
        Tue, 22 Mar 2016 07:56:42 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id tu5si4008262pab.2.2016.03.22.07.56.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 07:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id u190so316014668pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 07:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=f0qk512x16E0NacKnVLKuFwvwBwet9OeRRCOlSfxKBY=;
        b=XSqG95UFLqwdQ2zYxCLLuXVgDrZjeNzxtmdVI3BPs+WEXErDthNY+ph64AykthYsOl
         zlIV7/FBgDbL4iHyVixrBPV0ahtOFzwIdJX+HwnOVXsvEbR0ezGE2co0C7kXAXSrugfw
         u7lQXhcQW0UhOW/aLyws8tL+zn8Np5HuS83rtqXjg5Ihk2BbiOakXMuOLDF14zawZpQr
         SLWPq6vWB76sMlaVdbNbK2/rch/Xtc42mNv/1RgWEqQXWSGQHnfOVBMtc9kSQ4fRXBY/
         nmyiIZl8Jj4XaAsRNH5tmpYzmB4IuKN6cBx4N1EY9hzM0ivrp/I9F1aIOZPXTdCwXwUW
         2EIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=f0qk512x16E0NacKnVLKuFwvwBwet9OeRRCOlSfxKBY=;
        b=P2j/IIy6Kc7F2xOc0M9NRQiT14ookEM0Itt3y4ZvnElDPrS8c64/9/u2Yn98Cydvco
         EKXxpGr2l21khCvgvosAg/VVGtvZqe3g3+n8APEZm7RcvcGHtDVmcSUtYI69GbmJeVrF
         cSWyOLQJPnNQh+hHelsRFQKHFiRXTml/hisc5tGKZnQFYPVolDTjRDDhZBuNOHI6LOLE
         rJ5PjcSt3KHjK0VaD2nSucXK8YL1zzExMEBtt5MUOOGHOs2Rd8V9d8W0ug/nvXqD/xMo
         1OVzqoqsYuL6pMyYiEJDYoAKRHRz/OVaaP2WJq2cshyvjEzugtebW4NdmMzDSwOoykKg
         D21g==
X-Gm-Message-State: AD7BkJIliP5qcS/8KA/hKRDtCFN6oeAZe7byTaDELPSdsm6/YZF0SPo7p+QXALVZoQmxoQ==
X-Received: by 10.66.129.130 with SMTP id nw2mr54942690pab.80.1458658602046;
        Tue, 22 Mar 2016 07:56:42 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id fk9sm49082128pad.9.2016.03.22.07.56.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 07:56:41 -0700 (PDT)
Date: Tue, 22 Mar 2016 20:26:33 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: core: rtw_mlme: Clean up tests if NULL
 returned on failure
Message-ID: <20160322145633.GA5233@Karyakshetra>
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
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 472cd3f..1456499 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1579,13 +1579,13 @@ int rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 	int		res = _SUCCESS;

 	pcmd = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;  /* try again */
 		goto exit;
 	}

 	psetauthparm = kzalloc(sizeof(struct setauth_parm), GFP_KERNEL);
-	if (psetauthparm == NULL) {
+	if (!psetauthparm) {
 		kfree(pcmd);
 		res = _FAIL;
 		goto exit;
@@ -1616,11 +1616,11 @@ int rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, in
 	int	res = _SUCCESS;

 	pcmd = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
-	if (pcmd == NULL)
+	if (!pcmd)
 		return _FAIL;  /* try again */

 	psetkeyparm = kzalloc(sizeof(struct setkey_parm), GFP_KERNEL);
-	if (psetkeyparm == NULL) {
+	if (!psetkeyparm) {
 		res = _FAIL;
 		goto err_free_cmd;
 	}
--
2.1.4


