X-GM-THRID: 6257131864000036864
X-Received: by 10.140.89.10 with SMTP id u10mr18066518qgd.24.1457381477270;
        Mon, 07 Mar 2016 12:11:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.75 with SMTP id d69ls147611qga.20.gmail; Mon, 07 Mar
 2016 12:11:16 -0800 (PST)
X-Received: by 10.129.116.214 with SMTP id p205mr18852659ywc.55.1457381476592;
        Mon, 07 Mar 2016 12:11:16 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si3252411pab.0.2016.03.07.12.11.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 12:11:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 63so8630997pfe.0
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 12:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hinTysvcYui4hVDQud76EnDBA/+UYXrBhZkGW1rrmHQ=;
        b=groC0tzvQeo3D6Pev3fXaJ0AEB2D5YgMARfIjdT+47KvRQttzVXvOqb5Q9bZ5Zf8rH
         /AUts9+mW9pViLcVqbs2FQCHDtFdWxJXW/2RdZLTScIc6D3V7kMRJuntp3qGowXD33fj
         wFFc8UZN5fBKChthQEOCDBSQfTzZNn4G9oMPvJZrQjhKqFde0GlofqdkBto2dk8kown+
         Qg7yXqt7a8gfzufbPQOx6zlcurhYKwxO2vK+07HOAtxi3FlFlAehZZXySYEDO9XOBZqz
         Xq0lB38t5LXmCSxaPFyNik/w7P4SpjvixU8onhiH3auhGFBRsDIpIgOxxOdhvqQlbaLK
         7Q7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hinTysvcYui4hVDQud76EnDBA/+UYXrBhZkGW1rrmHQ=;
        b=iileomrYVIynGKAktyvtQQ3TAm90hj3Hg4bxMZ3TVyTpF0WvVdno+bicZlR/vvtw20
         Y8pKaxHwd0h7mgu9mhkWYk1qZeejmCl65plxPKHhkSFjjEc437yB7k8WQPX9D5l+fjUa
         v4lJXwmLkjgB9HbeZl7FatpUT88Dj3FJ4EqeA+w7cWgTUPABBQZZ+RLJtL0aTwnOiUhH
         lA+B7+RlZfeEPUtIDmpXtOpPGIILFQE9im+Zk9Sj8QKMJxRGpANf70UKujQHyWYBkDfS
         ROY8kxfca9a49Zif64Cty5X0HQla2GOhnVDZ+a5a1PkqTQDKM8qxoSv5uT/3ZeI0fZtF
         fcuw==
X-Gm-Message-State: AD7BkJKW74UG1lgNT6WpOuMf4MzedOz3/nkJ1S2DVmOgC3tSNy0RYx2KDbdAq2NAk7HPZA==
X-Received: by 10.98.80.150 with SMTP id g22mr36238586pfj.132.1457381476362;
        Mon, 07 Mar 2016 12:11:16 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.136])
        by smtp.gmail.com with ESMTPSA id tb10sm26062439pab.22.2016.03.07.12.11.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 12:11:15 -0800 (PST)
Date: Mon, 7 Mar 2016 17:41:41 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: rtl8188eu: Do not print message if kzalloc()
 failed.
Message-ID: <ef8405535080995506ba858558e7f84f500162b8.1457351977.git.bankarsandhya512@gmail.com>
References: <cover.1457351977.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457351977.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index 1de7929..e5a6b7a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -394,9 +394,8 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.Ssid));
 
 	pcmd = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("rtw_joinbss_cmd: memory allocate for cmd_obj fail!!!\n"));
 		goto exit;
 	}
 	/* for IEs is fix buf size */
-- 
1.8.3.4


