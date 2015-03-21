X-GM-THRID: 9347595763712
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1564ac45bb5dd367
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.103.41 with SMTP id ft9mr1098537igb.3.1426921166283;
        Fri, 20 Mar 2015 23:59:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.4.98 with SMTP id j2ls982057obj.28.gmail; Fri, 20 Mar 2015
 23:59:26 -0700 (PDT)
X-Received: by 10.183.3.75 with SMTP id bu11mr66024308obd.12.1426921166005;
        Fri, 20 Mar 2015 23:59:26 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id pj7si114026pbb.2.2015.03.20.23.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 23:59:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x233.google.com with SMTP id op1so129896039pdb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 23:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+czsnPGMr2RDy+T2OcjOPTDMMrJdcf7WnqIMmHzDB8g=;
        b=kSsQ+h2X08Dcfj4zkFkP+SDU5A1TXgamhOcRFLThlQv6elmEnVi9KskovDnKU23ivc
         g5XTxRexy0ITOEH8P0REra9XlhKo3C4e+9K/0pZV/mSe5GX1AyfhuYLff2PykF6DQG24
         Y3haOtV0ldgscaOuk8d5VeSOUGs3o8jLaLiNhhtmi/mo5ZgJ0I2ZlwQ3kgsYjSzqV6u9
         YElCZUCzNRyCiGVWGro3G7e83wzVqqA67KFW94fxzHjVOaoJgwAnPihIh0QuyJe4aUpC
         ztHxcE86Q7bYEW7BxkmIXItedRjy3JFm1QxUYwd8ZNZVjccq+D09P5USjA06d3DBtyg9
         E+Rg==
X-Received: by 10.70.130.69 with SMTP id oc5mr85741586pdb.89.1426921165876;
        Fri, 20 Mar 2015 23:59:25 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id bt2sm10659828pad.12.2015.03.20.23.59.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 23:59:24 -0700 (PDT)
Date: Sat, 21 Mar 2015 12:27:24 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: wlan-ng: Remove typedef prism2sta_authlist_t
Message-ID: <78e2924c524b99bb2c14096373910063c458b4a7.1426920752.git.vatikaharlalka@gmail.com>
References: <cover.1426920752.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426920752.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove typdef prism2sta_authlist_t and replace its uses
in the code.
Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 8f20910..cd869ff 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1204,11 +1204,11 @@ typedef struct hfa484x_metacmd {
 #define WLAN_ACCESS_DENY	3   /* Do not authenticate "denied" stations. */
 
 /* XXX These are going away ASAP */
-typedef struct prism2sta_authlist {
+struct prism2sta_authlist {
 	unsigned int cnt;
 	u8 addr[WLAN_AUTH_MAX][ETH_ALEN];
 	u8 assoc[WLAN_AUTH_MAX];
-} prism2sta_authlist_t;
+};
 
 typedef struct prism2sta_accesslist {
 	unsigned int modify;
@@ -1348,7 +1348,7 @@ typedef struct hfa384x {
 
 	hfa384x_InfFrame_t *scanresults;
 
-	prism2sta_authlist_t authlist;	/* Authenticated station list. */
+	struct prism2sta_authlist authlist;	/* Authenticated station list. */
 	unsigned int accessmode;	/* Access mode. */
 	prism2sta_accesslist_t allow;	/* Allowed station list. */
 	prism2sta_accesslist_t deny;	/* Denied station list. */
-- 
1.9.1


