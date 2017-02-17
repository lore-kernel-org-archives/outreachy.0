X-GM-THRID: 6387958804710948864
X-Received: by 10.107.165.78 with SMTP id o75mr1963342ioe.32.1487312574291;
        Thu, 16 Feb 2017 22:22:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls3404061otc.22.gmail; Thu, 16 Feb
 2017 22:22:54 -0800 (PST)
X-Received: by 10.157.29.226 with SMTP id w31mr1807155otw.29.1487312573993;
        Thu, 16 Feb 2017 22:22:53 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h130si548203pfe.1.2017.02.16.22.22.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:22:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e4so3360931pfg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 22:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Mh/7WhhVudQz269nXixkoM9b06/isnZyF7UtZj3lxWA=;
        b=G5nH7MlBAnRKJruAbBiP5L9zO5+uo76HRH7Yqa8OrmtnLgxrhFX+gOVqDRdebd08G5
         rCS4od14qCD0dCJz+IK+aibTBswDjqDIBz4a7AN92AaOTjtKXZTwOKS5KiAmOoh0cwQc
         NSJRoTjyQliflooAxerq9IZEdrFN5B2qyDRJNxnggn4nTCt9++gfk+zke8x8PUHV9781
         8gQGy001vYMaTug/ZHjdmcWElQQTZePeM3ws3reQqcedDrjJYDavSjjw/lXf1hgpNM3R
         3hLT/jp0VVWTgrNCEnLr0mMozbuttQLCihMjadNv8lW5lQGPS4OpEIyHN6O1sag/jauK
         IKMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Mh/7WhhVudQz269nXixkoM9b06/isnZyF7UtZj3lxWA=;
        b=nb3J128vGRaS8+CBHqOJHgzg8HJcx0heLx/Mv/e6/EjsGW3x8LUvererZfGKpRPkkN
         Vd7UAQBLjFLvwc0ZnyzTfNNu+7swWHjw5ULseU/270EeyAKMW/txo2RYTEPBDGbK7D6j
         Wdi23rAXDwj4tiVtBQNVIZJsvSxwX4j+AH3AhMYtF+yK1HUwAylxmguxlzd/39ZpTAKH
         mb9eUWYQmEDpq/vfawUWw3pc2VzcuhR1zy9z+v6gsC2+jD3ZW5AJ3YFdaNanHoxNrM1/
         zkXkxZbwDvdAnnoDONpSDXt5rEt/SN3NbWRGYmdrippvDABaMnco4SjYoWQSwYanbx4V
         6iNA==
X-Gm-Message-State: AMke39m//gsqTaj7Sc+7P4JAHsp6WJnfxNTc7Xl9aeqEkGDuXYUMIsEIyMs3atcCViCqaA==
X-Received: by 10.99.48.68 with SMTP id w65mr8011048pgw.107.1487312573787;
        Thu, 16 Feb 2017 22:22:53 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l3sm17141628pgn.10.2017.02.16.22.22.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 22:22:53 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 6/6] staging: rtl8188eu: Add a blank line
Date: Fri, 17 Feb 2017 11:50:30 +0530
Message-Id: <c1f6fa4ba79b0bcd725b2053e0c8c477291eb29d.1487312015.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>
In-Reply-To: <cover.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com>

Add a blank line after function declaration to fix the
checkpatch issue Please use a blank line after
function/struct/union/enum declarations.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 6316a27..82ee022 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -2085,6 +2085,7 @@ void rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 	_rtw_roaming(padapter, tgt_network);
 	spin_unlock_bh(&pmlmepriv->lock);
 }
+
 void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 {
 	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
-- 
2.7.4


