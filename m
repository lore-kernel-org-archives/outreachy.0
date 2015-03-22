X-GM-THRID: 9490543935488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bbd6d04c601b280
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.65.165 with SMTP id y5mr92402396pas.43.1426985679719;
        Sat, 21 Mar 2015 17:54:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.231.225 with SMTP id tj1ls939804obc.7.gmail; Sat, 21 Mar
 2015 17:54:39 -0700 (PDT)
X-Received: by 10.182.58.67 with SMTP id o3mr12426750obq.43.1426985679462;
        Sat, 21 Mar 2015 17:54:39 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id ri9si1198416pdb.1.2015.03.21.17.54.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:54:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id j4so58534622pag.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PWirZlTXtyrBVGQDeyiVGXCENDDjQQ8NO43nWGxtfd4=;
        b=bHpmU/7agQxgdZGiHq396AWmVnJaHqEQb7mX03tR21Ay5QpvJmkaejEtGBWwgcIJZb
         yTksDbQRFlI0YWUJq7XuBmYXJYFA2k2m3zb4Vz2dQ7rugRSKUUhjmKgWU6AmxLHMC7lN
         CiKE5sLQoEq3JCo4QXVFEzkGobHu9F8QC0nSMIHR4ROnrpDvcHi+wINIg5W/QAycMQiq
         LiorQ+WE8bRv2mZbomMxORx8FHJVBNibuYuiS7QnZ+rRXat6naSQEIZZ1Gl3mwBQwdys
         TB/6j1Z0Sqo3OQLcrxkjO8Ai9GfH87seZaV6DYcGqEEZ5/obwoB29qE308Z1AXpQ+G49
         GVRQ==
X-Received: by 10.70.40.167 with SMTP id y7mr109188615pdk.164.1426985679369;
        Sat, 21 Mar 2015 17:54:39 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id o17sm12689698pdj.26.2015.03.21.17.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:54:38 -0700 (PDT)
Date: Sun, 22 Mar 2015 06:22:37 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 09/10] Staging: rtl8712: Fix cast to restricted __le32 in
 rtl871x_mlme.c
Message-ID: <e7a9e6c6b54759c288e2f64f1f8b1941f30641a7.1426983594.git.vatikaharlalka@gmail.com>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to fix the following warning in rtl871x_mlme:

drivers/staging/rtl8712/rtl871x_mlme.c:952:24: warning: cast to restricted __le32

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index fb2b195..2241e94 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -949,7 +949,7 @@ void r8712_stassoc_event_callback(struct _adapter *adapter, u8 *pbuf)
 		return;
 	/* to do : init sta_info variable */
 	psta->qos_option = 0;
-	psta->mac_id = le32_to_cpu((uint)pstassoc->cam_id);
+	psta->mac_id = (uint)pstassoc->cam_id;
 	/* psta->aid = (uint)pstassoc->cam_id; */
 
 	if (adapter->securitypriv.AuthAlgrthm == 2)
-- 
1.9.1


