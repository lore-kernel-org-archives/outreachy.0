X-GM-THRID: 6260470424532942848
X-Received: by 10.66.55.74 with SMTP id q10mr3277969pap.12.1457629358048;
        Thu, 10 Mar 2016 09:02:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.143.40 with SMTP id sb8ls142892igb.4.canary; Thu, 10 Mar
 2016 09:02:37 -0800 (PST)
X-Received: by 10.107.167.148 with SMTP id q142mr3369291ioe.17.1457629357335;
        Thu, 10 Mar 2016 09:02:37 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id 12si681745pfb.1.2016.03.10.09.02.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 09:02:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fl4so71197369pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 09:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NF51Thwf91ZbQznHzhCKtoCJUmjfmsXK4zxG9oxNDFU=;
        b=Mq2URnx6cOj/nw6ic6YGnOV2gWdQm+wEddPQeSO013Ck2DuYadTsrCapTPie0t60Jt
         E7cG8EAQpN7ph/N7t2QhbGNFeb8msa1t/p2VOUfBJFg47FYT9GBlfppZYLgSSzgZ3ird
         5a7mfwaibk135RinrTWBkU5TkRy/1kWXpAcI8iaKzSKqevUkgs3r/RaqxfL5VGse7/zz
         RNTbF2QnYrl0tUZVTbblGpFq8PCrWmUz5JUAcL0m4VSkb95RG+PfnQXP68WrmcouEUG6
         kOJZJ6GH0dfh6QSH4nd5MmUOyBnR4mBCbj1nQSnQF9Nf7luju9Q16eNuAUIfJ9xSw1mR
         zAnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NF51Thwf91ZbQznHzhCKtoCJUmjfmsXK4zxG9oxNDFU=;
        b=RuRlGRXQ0MqncdTsUM9Eou8WhzPmyJ6k1fW3yCMqWWR+jKwfuSCUHPxLV3c59TofjS
         NLuhd6irvlAxq70Cg5wYJueu+/4868BTQMi4edWkKoP95v2jy8J/pyxxoicMwjwOpx9X
         9Ro53AA5mCwOQ5j+dP4V4tjBjCkD4vWZgj5+70m8exTzie+6MZGIyvZG0EaiGIwkUUr+
         FU/kKZjMuwTgeLiQa7hT2kLrzfk7n8RHd1DG89fiFNr1/Q7Rf8ZW6DPmowIyjsV8tSFD
         HdIXoNPdQe6HVXm5gSdtEvh/HpKqGpdgiDMMlW64Lrn6vo82NZIXHpe8ObxZHHZQE0Q8
         xGNg==
X-Gm-Message-State: AD7BkJL+ErAtaiCTf/aFMOAZa7povnAHLpbeig/u57/76r1TRtLWMdMM8E+y708RgnoP9Q==
X-Received: by 10.66.66.108 with SMTP id e12mr6453604pat.33.1457629357168;
        Thu, 10 Mar 2016 09:02:37 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 3sm6824018pfn.59.2016.03.10.09.02.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 09:02:36 -0800 (PST)
Date: Thu, 10 Mar 2016 22:20:25 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Remove unnecessary else after return
Message-ID: <20160310165025.GA18715@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 1b022db..b6aa04d 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -468,8 +468,7 @@ static int is_desired_network(struct _adapter *adapter,
 		    pnetwork->network.IELength, wps_ie,
 		    &wps_ielen))
 			return true;
-		else
-			return false;
+		return false;
 	}
 	if ((psecuritypriv->PrivacyAlgrthm != _NO_PRIVACY_) &&
 		    (pnetwork->network.Privacy == 0))
--
2.1.4


