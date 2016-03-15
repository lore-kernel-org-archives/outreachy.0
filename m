X-GM-THRID: 6262126512629088256
X-Received: by 10.129.156.8 with SMTP id t8mr20569154ywg.25.1458015086570;
        Mon, 14 Mar 2016 21:11:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls2439qgd.27.gmail; Mon, 14 Mar
 2016 21:11:25 -0700 (PDT)
X-Received: by 10.129.146.66 with SMTP id j63mr1740650ywg.50.1458015085901;
        Mon, 14 Mar 2016 21:11:25 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id s129si1744331ywb.5.2016.03.14.21.11.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 21:11:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id t4so4810910qge.0
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 21:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GOrpQ4jWcXaxbq/A+PTlGKg68R2syDAOwMO+7UY3Qug=;
        b=dpERyqSZICLQqyPVDgZDkf69ux9uiVtEry75WLHgOhFYhYSnL7ufGNI0KHiRq2Opmo
         qzQVu3ppZ/2vGh71ARNzzVNFwMghzhKo9FiP3HX0877s0JE6/fS/bACwY62oFJnsmub+
         4vGhw9RhgQHHmWK7O5AiR/a3rZmCEggJBTtvS/0WsYBe2yivLkHKGVlAyWXc9zGgHZas
         JKlYBwnv1aGU90RZYv+Qk9xP5KPyb49TQyzlR+hQQYCwJEO826JFEjERDWjrrw9k74xg
         1r1xD+rF1mWOAwuCZh2WzGLKeby/U3O4tXWvKUQTJCsmMY8t4gaNAMdlJE8z60rY/ujR
         1pJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GOrpQ4jWcXaxbq/A+PTlGKg68R2syDAOwMO+7UY3Qug=;
        b=b/TrnGpDLASqrY2+SrNBxo0woIj/vB6Fhsikn3Q44xcihjS5qq0e7ejzGOozyCTf84
         jTRC09pfZFXeXH4PxFGBdhuUZsx0A82J0JnXxfpH8SNdNgK3YJkqDOKw+m6cy6IuSB4+
         QzdcO5HOPOmOIsmtSPhE+FxyRI5eFjKtQEOmrE0C9Z93SPn+uHM4M0ty91CQCH3f0GQ4
         uorRDtO4PLy+Vcl+FgrIBIzsTdxZrzb23QXDd1RN0rcoG5oUbnOumRYoyDc0qXXFQ+5+
         9f9PyMlZhuJjhRDdMkE3OAr1OxiniTp86DuPGtBbtQGDUqigoIU+rkI7Y0rkUyM7svSN
         F/ZA==
X-Gm-Message-State: AD7BkJI64c3gkimX4uLcyx7BPWi/lRd4ZKC9nhJH70Ok9ZgA4ZZlbhSTNsGL5BttBINfaA==
X-Received: by 10.140.20.183 with SMTP id 52mr35197917qgj.38.1458015085628;
        Mon, 14 Mar 2016 21:11:25 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id b103sm11892156qge.2.2016.03.14.21.11.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 21:11:25 -0700 (PDT)
Date: Tue, 15 Mar 2016 01:11:22 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: rtl8188eu: usb_halinit.c: removes unnecessary
 parentheses
Message-ID: <a17ba274d6c55ccd81ede35bed2654cbf6e5aac1.1458014176.git.juliana.orod@gmail.com>
References: <cover.1458014176.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458014176.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Extra parentheses were causing checkpatch issues
and were removed.

WARNING: Unnecessary parentheses - maybe == should be = ?
+	} else if ((mode == _HW_STATE_ADHOC_)) {

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index e7ff784..9cdd37d 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1304,7 +1304,7 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
 		StopTxBeacon(Adapter);
 
 		usb_write8(Adapter, REG_BCN_CTRL, 0x19);/* disable atim wnd */
-	} else if ((mode == _HW_STATE_ADHOC_)) {
+	} else if (mode == _HW_STATE_ADHOC_) {
 		ResumeTxBeacon(Adapter);
 		usb_write8(Adapter, REG_BCN_CTRL, 0x1a);
 	} else if (mode == _HW_STATE_AP_) {
-- 
2.7.2


