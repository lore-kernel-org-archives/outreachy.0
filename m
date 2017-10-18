X-GM-THRID: 6478086724175003648
X-Received: by 10.157.37.125 with SMTP id j58mr8035646otd.96.1508297850182;
        Tue, 17 Oct 2017 20:37:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.43 with SMTP id c40ls920145otc.17.gmail; Tue, 17 Oct
 2017 20:37:29 -0700 (PDT)
X-Received: by 10.202.62.3 with SMTP id l3mr7113641oia.112.1508297849448;
        Tue, 17 Oct 2017 20:37:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508297849; cv=none;
        d=google.com; s=arc-20160816;
        b=BbgvPt+gnDGKvN+PoJz4zbfwKIw1FoQNt0QOZoEYT2qOo9EFLh38I54ccpxqjJcsIq
         rgBaDzkcXmBu75F7L+OoSW6ufF2hHGOHNt/iN/4TI8CRt1HVDQyEFUKgbVHGZDttmi8a
         0njQa2usYoQqBiHvzfHZ155kHkEVnPpQYObFuJC2KfbY6zNjGmahaNkmiUfP2wJsn9MK
         l6glXNTnFTq9qZ21HsrH4aWzSqC3cQqvAsgtsEtyTjdogDRZLv4MzdSm3Yf6mTC6xUOC
         jqGKDy9ySKa6IFi/+rZG7MSKZtSq0zodSIFzcRsBXEvYhZ2fks+4/kdvJZ/hY4AQL4c6
         4h2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=7Wt+H9M3UsJ7WgmO6nVgLPS400gBtfBLNiOD/ZBAKSA=;
        b=ODTXdATKZNsFM2sCf6uOBstMhJ5ociX7dTxyCx+1+DZuuwTornwoNjZbp7JVl9vbj5
         v161io8fNxyhFGnWghTq1LWrPphvhXdAAhOhYRMB2Z1wtyXBA7XpqK3y7RQCvDuchUhA
         4xWrUBCT3LyiqaR/iLES7ObNbtnDxtoJC4rweD+pCfq2SDWyrYvv5Alt7u2J3AZBeJsR
         C26M8FPWL7L94VKl58KaVmA5riPUbgXcd1o08Fk6dNg/dxUrbt6w9u3eeq5zU77eNvKz
         vsyFrPidVEbH5ZNisbRCfVnRUPepA3TzZSkxclNMuHFoiLjZFQfZjVZgp0rRiNh4jqa1
         1nmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=hSJ1+8mj;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22d as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x22d.google.com (mail-ua0-x22d.google.com. [2607:f8b0:400c:c08::22d])
        by gmr-mx.google.com with ESMTPS id b194si593583oii.0.2017.10.17.20.37.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 20:37:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22d as permitted sender) client-ip=2607:f8b0:400c:c08::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=hSJ1+8mj;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::22d as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x22d.google.com with SMTP id l40so2644073uah.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 20:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7Wt+H9M3UsJ7WgmO6nVgLPS400gBtfBLNiOD/ZBAKSA=;
        b=hSJ1+8mj4V52iSTU3D9ilZcttG1I5UNh6ebBK+vh1sHx5poaC/x3bTYV7sA9+uW0Ka
         YfKd3KNdSiBMNIvWgiBWnhHnMvAykoeTByd9q23my+LGDk3QMWVobDCjTJwgIq62Ef8e
         hvgx+mR0iHYTWh7b14oPFUe+ofDVi9oFu5uBjRMNh1EikMN1Rtg9sUG055IG6p3exTQ3
         Gjqg4x+uqK5JExPIn9ZbvtinfWJkI6XskLPJIZnilqCpxsAIrcSa80EZESKei10J5YbX
         qBrEyLuLPfJNR83FNa2mXsGbCePw0mK1hi/0tK233paf4T1RpfbUxFiJaijAP03D3UKc
         kJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7Wt+H9M3UsJ7WgmO6nVgLPS400gBtfBLNiOD/ZBAKSA=;
        b=OF01692y4zoSzGy/p8b2ePuYHOXWo0x206ndfLgI/JbKb6RwY3ezVJHyp6OmOspiOk
         HpFoLHfw38yGi0MUHly4wVyDB6wFvkUNPQPb9bpRf4TXW6KjB4YnCt2BmYISwSsRm6Sw
         zRfBWTOaHJo6xh6hlLr5IVZ0Av0QaiU8j96i1O8Gw6xMXId1nZH6CmWXylr6CS28knOA
         w4L/raJYqmu2Jl+YKHVPahM1e9qVWRFfU8AzPBkdeTlJqRtFFvw8GJEgwKxaP0719rrl
         mUh2xxUNAhFKEGx8PXlQECm0N3Y+4xVN6wxD7+fv5Cdo1CQZzTtVVHXwWdCc43IWa4m+
         MOmg==
X-Gm-Message-State: AMCzsaW6q1pd2/eIavsIdmR8towCLJIkFUK7/i3tr7M8JvE5wrztNz1K
	XUjXAmdq8S5gZy/XkFcmOM9+WrWp
X-Google-Smtp-Source: AOwi7QCyZaDAkWrdBo94q44iRGoaUbExmbVVBdYXJomoJrzP0H7jaJg1/LKTJEOOFZYBp224Mlu1fQ==
X-Received: by 10.176.27.164 with SMTP id k36mr11595567uai.59.1508297848814;
        Tue, 17 Oct 2017 20:37:28 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.206.125.129])
        by smtp.gmail.com with ESMTPSA id 30sm342560uad.51.2017.10.17.20.37.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 20:37:28 -0700 (PDT)
Date: Tue, 17 Oct 2017 23:37:21 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtlwifi: rtl8822be: Align the * in block comment
Message-ID: <c7088d12170f908e704104c7f6a226d301afdfb5.1508295702.git.frank@generalsoftwareinc.com>
References: <cover.1508295702.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508295702.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Align the * on each line of a block comment to comply with kernel coding
style and address the following checkpatch message:
'WARNING: Block comments should align the * on each line'.

Credits to checkpatch.

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/rtlwifi/rtl8822be/phy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging/rtlwifi/rtl8822be/phy.c
index aacaca6..ef37ae9 100644
--- a/drivers/staging/rtlwifi/rtl8822be/phy.c
+++ b/drivers/staging/rtlwifi/rtl8822be/phy.c
@@ -1756,9 +1756,9 @@ static void _rtl8822be_phy_set_txpower_index(struct ieee80211_hw *hw,
 	static u32 index;
 
 	/*
-	* For 8822B, phydm api use 4 bytes txagc value
-	* driver must combine every four 1 byte to one 4 byte and send to phydm
-	*/
+	 * For 8822B, phydm api use 4 bytes txagc value driver must
+	 * combine every four 1 byte to one 4 byte and send to phydm
+	 */
 	shift = rate & 0x03;
 	index |= ((u32)power_index << (shift * 8));
 
-- 
2.7.4


