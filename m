X-GM-THRID: 6211822819926343680
X-Received: by 10.50.43.170 with SMTP id x10mr3128185igl.8.1446302791424;
        Sat, 31 Oct 2015 07:46:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.201 with SMTP id t67ls984313qgt.73.gmail; Sat, 31 Oct
 2015 07:46:30 -0700 (PDT)
X-Received: by 10.31.170.17 with SMTP id t17mr10840904vke.2.1446302790780;
        Sat, 31 Oct 2015 07:46:30 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id sm2si1115180pab.0.2015.10.31.07.46.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 07:46:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy1so95883605pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 07:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+b2NVqiUh096azYYyFGT+btnC0U2GMBBlDYxJCTxJrk=;
        b=ndNA1bj7+Mhee/3YD8M3jYUSdx0zAyab1JoWqW16wFzbY5p3f5xlff/54n0jKhjbgN
         sqjTkfKvs2c4kGHGtmEqbWRA6x6tGaZ3WHJ8JVXqKYPF9Mo6PPxwlueQS5t58lWTQaxR
         gv53C6Rol4ov65h+cBuKW53CEUnVtyJzm6fjwaHLFi1UzdjQopeLvuc+Fg0AgItn+5IT
         DGUNqvnqSdmjCEuk8yfG7Ub/omqrMW6NtZyN6hJvBA/xspAuxe0k/bh464dsgKMcl7uc
         Yw6Oqt9kzF1qwKCfYcMoiO2lIUO8jRpTtPV/iZ7BZPw60VxTDrgHyMj1NajuqX40oWH6
         WIlQ==
X-Received: by 10.69.8.34 with SMTP id dh2mr15325824pbd.122.1446302790621;
        Sat, 31 Oct 2015 07:46:30 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.37.188])
        by smtp.gmail.com with ESMTPSA id ia3sm14358197pbb.5.2015.10.31.07.46.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 07:46:30 -0700 (PDT)
Date: Sat, 31 Oct 2015 20:16:27 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8712: rtl871x_sta_mgt: Remove wrapper
 function
Message-ID: <50a3d739a35e00dc6c2b737b9fdc382aaa094ec8.1446302505.git.amitoj1606@gmail.com>
References: <cover.1446302505.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446302505.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove wrapper function that can be replaced by a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_sta_mgt.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
index 6ae8cdc..a379b84 100644
--- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
+++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
@@ -89,16 +89,11 @@ static void mfree_all_stainfo(struct sta_priv *pstapriv)
 	spin_unlock_irqrestore(&pstapriv->sta_hash_lock, irqL);
 }
 
-
-static void mfree_sta_priv_lock(struct	sta_priv *pstapriv)
-{
-	 mfree_all_stainfo(pstapriv); /* be done before free sta_hash_lock */
-}
-
 u32 _r8712_free_sta_priv(struct sta_priv *pstapriv)
 {
 	if (pstapriv) {
-		mfree_sta_priv_lock(pstapriv);
+		/* be done before free sta_hash_lock */
+		mfree_all_stainfo(pstapriv); 
 		kfree(pstapriv->pallocated_stainfo_buf);
 	}
 	return _SUCCESS;
-- 
1.9.1


