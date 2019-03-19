X-GM-THRID: 6670157635256320000
X-Received: by 2002:a9d:7dd6:: with SMTP id k22mr1089023otn.56.1553017095084;
        Tue, 19 Mar 2019 10:38:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4541:: with SMTP id s62ls1073018oia.7.gmail; Tue, 19 Mar
 2019 10:38:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz9Cy2Xm2+4UZWtopH1UtRRoNv261vWCovtWCjhJP5pCIjyl/Qq02xQriJ83MbKdt6eTlSU
X-Received: by 2002:aca:cf05:: with SMTP id f5mr1214004oig.46.1553017094124;
        Tue, 19 Mar 2019 10:38:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553017094; cv=none;
        d=google.com; s=arc-20160816;
        b=N3YXO/EOTBr+BL1VKiJgjsJJHWoBzG6bnENVdmYurWaFfet8kYNulrcX8zl1kSdIrF
         Qfj/Cy0daCZnYE6vSevWopPZN3pbAs4TFe2P1k6Lj5knQJL+Z0GWAJbin2UHfx7Zbxm8
         u2Rmf9pZkHlR1Yk8gvBV6oCikD87uWKXRGyIlKNFXtrdhU2xDuQ0KHK5JcHpP5nHlJKq
         mjfJ20FqNDF8C/ud1G7CbVZ8kj7Z+cKwA4x57buNSlZi+BRdk18eVVb8L2aSKJLAR7AH
         CvLSl5tSVaW6fyMNt9DV3jVbQ2qMtL6kVUWrgJe+e1c8vnTVYTt1osWkOW3t+yJ8S+pc
         zAHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JY8b0XGmYapl2xjeROHOrorApuUao2COxz3gnKI9wCY=;
        b=X7VxbB6topFVZdJLv6fPUbpXy07ZMjON9pYzJU+0+I4dTcCF3vGj41G0/DNCZpgL+a
         4oF3IpurYvrR43wqP736S2LR7sfbT3gtqqW0tpYx3x1kelA8st66JUHGi3Ve9fm/JMJq
         nyODwWn/CB8tjO3obGXfurQCBLLcvgs8qsjY4Ncvl01d1y10StEIB1CzRuGIOpbeFAOP
         K9/E6lJiUsFD5FGCWoAEJj/o9vQbPWoMJvp5uG8aKd0ZuX0nUd66LUxK66hMAQowEWZ1
         D1TjeAA5jFnmH/DkaIgUpeUb5EFM7lA6XVID18cPCVN4LtAzJFM2TGAkR9H3gMCIUkRL
         6TuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kqdSAuEh;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id x4si673809otg.2.2019.03.19.10.38.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 10:38:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kqdSAuEh;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id i2so845149pgj.11
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 10:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JY8b0XGmYapl2xjeROHOrorApuUao2COxz3gnKI9wCY=;
        b=kqdSAuEh04tyMS91dGbFveAg8XMsi22fLDmumaChRXvmFxumOKgFrlI3fmEKC0b7a8
         uqREDr7lFkICncBq+UehjQ0+iEh7SNuFdfOcsz2ZKGRq3VC0GTjftvxsuejOQXQ6HNvy
         HeUvSklFZ+yudhbq7JO2uDymUAylF1QE5fSXqEFNKjshKDPhSsMbnVUzkWsWKffYoyb/
         70eMWCj9JGAi840PDFf82iJzaMLDVjo84EsFzFpZXq+aHYwRMXFsBjxF906mradlZcOj
         OX12gyHhsr+lQRoOxM8xXhPo71PvGKlrrQSXHQC5/g8CEfZ38vXbS7ZNu5Wu2oPH4oIq
         Ni2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JY8b0XGmYapl2xjeROHOrorApuUao2COxz3gnKI9wCY=;
        b=N1pzacusv60UMUNhJGsjZ7VM0q7ccilFbfcmcz4ODQ0zd4RdloBY5GQFSmGk6YQwXE
         5H7ytdC84MT/331ou9w8DeYyAJbtv11WaikqJLE13LsjHOW9mp9WvPUCVM/H3CQzJzMU
         NRiLXdJmlrQ3AjPar4v/6Sxyd5cJRvhn1MtocwWL0GCnoS5n7Ug6q5HYLTMh4QcjomrY
         o7RTkFY58to89ipA67Q+63JTsRrm41IBP0FG8yuSnIrJsCdpbMc7XDoNHF062TsizD3A
         4nKO5W/JKeY2a3JkPFxqC7PP6Ifr2R/l1cwvUllcYsczs7f8kSv8rsnNv7FCeLUlmd4h
         SeJQ==
X-Gm-Message-State: APjAAAXmhUdE4eDSyMJKIsAmZHrb1tqfnkWjI1E0P0xzcEFS0YZoipDj
	ZYB7rTL+CewvlJDitKSDFwTjzAo7O2w=
X-Received: by 2002:a62:4754:: with SMTP id u81mr3144319pfa.66.1553017092829;
        Tue, 19 Mar 2019 10:38:12 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.64])
        by smtp.googlemail.com with ESMTPSA id x19sm18543060pfm.108.2019.03.19.10.38.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 10:38:11 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 17/17] staging: rtl8192u: ieee80211: ieee80211_tx.c: Adjust space around else.
Date: Tue, 19 Mar 2019 23:07:59 +0530
Message-Id: <20190319173759.4853-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the spacce around else.
Issue found by checkpatch.pl

ERROR: spaces required before that open brace '{'
ERROR: spaces required before that close brace '}'

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 024fa2702546..19e5b4fdd524 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -851,7 +851,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		  else
 			ieee->seq_ctrl[0]++;
 		}
-	}else{
+	} else {
 		if (unlikely(skb->len < sizeof(struct rtl_80211_hdr_3addr))) {
 			printk(KERN_WARNING "%s: skb too small (%d).\n",
 			ieee->dev->name, skb->len);
-- 
2.17.1


