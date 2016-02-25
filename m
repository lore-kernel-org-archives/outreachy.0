X-GM-THRID: 6254956747855757312
X-Received: by 10.50.50.208 with SMTP id e16mr2062386igo.12.1456401555024;
        Thu, 25 Feb 2016 03:59:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.174 with SMTP id 43ls394101qgx.73.gmail; Thu, 25 Feb
 2016 03:59:14 -0800 (PST)
X-Received: by 10.140.88.139 with SMTP id t11mr13101471qgd.21.1456401554339;
        Thu, 25 Feb 2016 03:59:14 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 79si1182727pft.0.2016.02.25.03.59.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:59:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so2594796pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ti5+h9XO69nA6WWru2raYDr9K5pewK0KJnKOKEEgoGw=;
        b=mCjMMg8TZLj9ad5nFGGr6CtJrwW89EPTzYlvBGiDp+8Fw0B/zTFEHZqe5Djp8fQc1N
         4QjHGyMkwaRfXswBK0X4ohArSfD6tTWUd5E/kdQjLKbgfLr1t4pE1cWQIq49ZunMqKar
         n2icbv2u0iCZUEvZ95PZbLcASXAosrfI+PpKFLPzbvjE8ud/Vqu7uAgwk+Kr86jOZyAv
         Feaq1eZYBebgHTFaxOWKUplM+sO4vfRlznEqXaJgImnep3fgXuE20yjfLMNQjAdwj+1S
         o6r9gi7CRcZzeuBFk+hUKBhrqb1/eGSa0uzmdWBnyBTqeg4i3I34BJRBm4qKSGUnr/75
         sTkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ti5+h9XO69nA6WWru2raYDr9K5pewK0KJnKOKEEgoGw=;
        b=FThwljoVB0DniUVXWdCiAbcm7U4K0f636KFXd55NtCX+GLfuWpALnJevQzkjmfDWyy
         9oFJuHzN3LjG3g2TbAszbP33PYxQEYWrEREdWLZTskBK7/fBC8wLtWpjJ6IystBVP0ve
         /lPh5LzeA3QK63Ru+AznwBqnfcFy2t38J7DzrH295E1szputz7OA1hbjpvzvQhnFJmsn
         XnGskRU7iOC4OcqF7lNiJeT9ulSsrpGkIMWH32JGZ9lA2cwp7ryaoJkYjcRd3EYcF1Cy
         wFaPbkYj7f4Q4BQdk1z7pbFM5E+otYua9DT8DkUscXZI4hWK62fT50bf0OAzfiKKDbk5
         OVtQ==
X-Gm-Message-State: AG10YOTkFUWoYhb9yfTP4VY1l4u2NCMxQFGTr3rcn0E7Oh4eez0FEOlkuKa5Zp/lgyGRzw==
X-Received: by 10.67.1.237 with SMTP id bj13mr63018745pad.130.1456401554148;
        Thu, 25 Feb 2016 03:59:14 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y11sm11855902pfa.85.2016.02.25.03.59.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:59:13 -0800 (PST)
Date: Thu, 25 Feb 2016 17:29:49 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/8] staging: rtl8188eu: core: Remove useless return
 variables
Message-ID: <20160225115949.GA5404@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes unnecessary return variables and compresses the
return logic.
The coccinelle script that finds and fixes this issue is:

@@ type T; identifier i,f; constant C; @@
- T i;
...when != i
when strict
( return -C;
|
- i =
+ return
f(...);
- return i;
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	-Removed extra whitespace.

 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index ce655b6..656be34 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -488,11 +488,9 @@ exit:

 struct sta_info *rtw_get_bcmc_stainfo(struct adapter *padapter)
 {
-	struct sta_info		*psta;
 	struct sta_priv		*pstapriv = &padapter->stapriv;
 	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
-	 psta = rtw_get_stainfo(pstapriv, bc_addr);
-	return psta;
+	return rtw_get_stainfo(pstapriv, bc_addr);
 }

 u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
--
2.1.4


