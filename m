X-GM-THRID: 6528407961600
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4e02e36f79c282f0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.18.67 with SMTP id u3mr3692196obd.38.1425458381928;
        Wed, 04 Mar 2015 00:39:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.11 with SMTP id j11ls579921qga.70.gmail; Wed, 04 Mar
 2015 00:39:41 -0800 (PST)
X-Received: by 10.236.230.39 with SMTP id i37mr3398565yhq.47.1425458381701;
        Wed, 04 Mar 2015 00:39:41 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ks4si430485pbc.1.2015.03.04.00.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 00:39:41 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so31768475pab.2
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 00:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=shTGQYmec6x2aaBI70iUM/J+Rl8OTnOTdYxefXfT1M4=;
        b=slc6gGm4Q5ovx9pp0rMVRfUPaz35xOS4NCWyUvvPNhTfEOehGLc05HYX7DGH3GmDox
         BSSSMFdnBps5dTQAbFSohYywEddJY0Ucu/+gsFsnE7Jqm7P43KQ8uvd9C6Aca2j3Mkqg
         N1GmZ4moKt9qoxkAuADw8w4aP+x4ofC921GrPYtmMML68uzOFlJvnM8DUtA8aPYJYDSj
         DPZNjgi6LvDqIh7jS7X2j5QvoMqnv10dTxuQKlD8i4fOgutjE8lLBOWiT41UXokQaY4J
         FABL1LyNMDxT3Hn1UrfnVwy5iQx0hZsXMxcYbtRKsU9h5GZ9an/v7+n1XGGcX1uXiADJ
         vI6g==
X-Received: by 10.66.246.107 with SMTP id xv11mr4774739pac.79.1425458381541;
        Wed, 04 Mar 2015 00:39:41 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id eb4sm3174792pbc.82.2015.03.04.00.39.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 00:39:41 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 3/3] Staging: rtl8188eu: Remove unnecessary return statements
Date: Wed,  4 Mar 2015 14:10:46 +0530
Message-Id: <1425458446-27117-3-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425458446-27117-1-git-send-email-somyaanand214@gmail.com>
References: <1425458446-27117-1-git-send-email-somyaanand214@gmail.com>

This patch removes unnecessary return statement from a void
function.

This issue is identified by checkpatch.pl

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index dac4246..998a949 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -650,8 +650,6 @@ void WMMOnAssocRsp(struct adapter *padapter)
 		pxmitpriv->wmm_para_seq[i] = inx[i];
 		DBG_88E("wmm_para_seq(%d): %d\n", i, pxmitpriv->wmm_para_seq[i]);
 	}
-
-	return;
 }
 
 static void bwmode_update_check(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
-- 
1.9.1


