X-GM-THRID: 6465930684409053184
X-Received: by 10.31.141.202 with SMTP id p193mr13638955vkd.54.1505466803727;
        Fri, 15 Sep 2017 02:13:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.233.1 with SMTP id f1ls719868ith.11.gmail; Fri, 15 Sep 2017
 02:13:22 -0700 (PDT)
X-Received: by 10.31.130.71 with SMTP id e68mr13121259vkd.73.1505466802751;
        Fri, 15 Sep 2017 02:13:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505466802; cv=none;
        d=google.com; s=arc-20160816;
        b=OBCodv8VWg9OPQF7jayoO1ML/VNKgKXOJCipIcEosHPRZRzgAM4/DaPIndPSzO9Vak
         DGUazWkXhsz+8toXrCWc9SUJMXggBVXwq4iltihQ8K1P49hZbKrkSGn4BV8uUAZ51/0n
         USwzE/lUKiFCQNKdRFHw5W8lcFYn4J68S9Es7QIxGMsdCfeyObgPFVg2x57lgm7ibE0O
         Y+VlWQjLkmQo1DUCJpgS9UG59Bv1Q0tdpqfxSorNCsWlr4jphPLCl9xVzU+83fEuZQol
         AhBe22TYCFIkAca7sb9cdZeDh28P+Cd2nWvC5Ch9i1XAE+uvRjoniQ+Yn0R4cE9oKTV+
         IYsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=Y77VRs7PWdMP3OVie02P+sV1T/1hnhwzkpHtmF3lBKc=;
        b=JgN7ycRXkyBRPx+QUU56JTT68WLGNRHKE4aPmwKA2uomivgvKOgsDIV5TxtsoBWLjf
         xzw9ipmtgIfzqWSlSmORHVOqREUskc576KI2kWHOPB4Up4V9YLJforg6YUPeJyeWS0pw
         YUEbvCOSJjiaGyx5oI7AwHHGEFN4G9hhu1YRvg0AqiF2FGaz8hoAitHlLVgiUkq69Wfv
         4Xw8WWKEb/vq5MRnVJUz78pRVUHEsV4JWJdBrrwpgIvIOWtFq8PBpR0jJUsXrYCPpqLk
         Ql0P8QX8ELd1QNWo+Z2IqiDQ5N0/JmMp7CcaEKXp0eQf4MHDF+iwrqyKXZJIqF/x2zPf
         4Q8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NUTZAt/l;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id q65si43561pfj.8.2017.09.15.02.13.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 02:13:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NUTZAt/l;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id v82so1051383pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 02:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Y77VRs7PWdMP3OVie02P+sV1T/1hnhwzkpHtmF3lBKc=;
        b=NUTZAt/l50MCWTZW4wfP+YsLlkW5rskBSJZLSgs89fYVz5wdtEt+yQN1tX6974wyXZ
         eBVj9TYWg9Ydf2jpw+tVqOlpJ57wLj5snUxX+rZXbH0rNm+ckdb6OAaUsYzCyP/gKQ9I
         i8pmkwKL12fTNT0ipNlW37tNPDfWrelr2cho1O9j3DeGrPfRLNI8GlaQ+sAn2ktKAeWJ
         6z1frxhIi9rVOhWLIDUjCr8EYB6pohmwvoZ7mOuWy+7IjuP/oYSraBtPYTSoTeE+RNJP
         q+mrNiu/ULxkO8eReiys7B3Vdz1gGF/2/F5GZPbEkHJSxco3E/AVGpoRMdyLqfutErLM
         Ww8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Y77VRs7PWdMP3OVie02P+sV1T/1hnhwzkpHtmF3lBKc=;
        b=WRyG5ABhXoJICLtbleX7ZlVX0qAXvVV69IUX9+wxJiCGaEYSYElMVLF7eQNIC0UI8T
         TjJTZb7RoodzLZMZyQVOGuaNY4MafeA58SFxU7dckiwbwpKdvr4dSYp6THhNmdwv9l7U
         9Eo0fcigUDwjAYuk17b75XdhA9MuVcRTmQait2AbPmjCYon9UaF6oX3WWQW2hlDTGay4
         We+Y/RHZ/OEVpHoS3vEcqNTu7mj0jUKwGST14wqRxlog+TPkVMEvjSPyDaxggbKufe3/
         Ux48OOyvWwNgz/PzHSs6jQnsy8TEPUZdPIJDe/dsuakisMZ1UWEAshtyccPf4ctX5LuA
         0hAg==
X-Gm-Message-State: AHPjjUiM+Qlc4o3IjntNHfLVHS3FvFpOVfhOOS7/W2Whe73KoFYJ/Zp5
	Aea5/EE7aREXDFX7
X-Google-Smtp-Source: ADKCNb4y5/gunb2Fu0yhXR58muWYzCAwVa7+Et1bXz7JxHUKyFhOlEjOkg1LGUiUFsIQsWRlhWOFCw==
X-Received: by 10.98.252.216 with SMTP id e207mr23920906pfh.306.1505466802000;
        Fri, 15 Sep 2017 02:13:22 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([14.139.155.24])
        by smtp.gmail.com with ESMTPSA id r66sm1618288pfl.15.2017.09.15.02.13.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 02:13:21 -0700 (PDT)
Date: Fri, 15 Sep 2017 14:43:15 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: irda: drivers: Replace (skb == NULL) with (!skb)
Message-ID: <20170915091310.GA21039@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Some functions return NULL as an indication of failure.
The style (!skb) is more common than (skb == NULL) for these
functions.

Found by the following Coccinelle script.

@@
identifier i;
statement S;
@@

i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
alloc_netdev\|dev_alloc_skb\)(...));

(
-if (i == NULL)
+if (!i)
S
|
-if (NULL == i)
+if (!i)
S
)

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/irda/drivers/ali-ircc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/irda/drivers/ali-ircc.c b/drivers/staging/irda/drivers/ali-ircc.c
index 35f198d..756ae53 100644
--- a/drivers/staging/irda/drivers/ali-ircc.c
+++ b/drivers/staging/irda/drivers/ali-ircc.c
@@ -1876,7 +1876,7 @@ static int  ali_ircc_dma_receive_complete(struct ali_ircc_cb *self)
 			self->stamp = ktime_get();
 
 			skb = dev_alloc_skb(len+1);
-			if (skb == NULL)  
+			if (!skb)
 			{
 				self->netdev->stats.rx_dropped++;
 
-- 
2.7.4


