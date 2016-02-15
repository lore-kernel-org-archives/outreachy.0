X-GM-THRID: 6251161839379415040
X-Received: by 10.182.119.199 with SMTP id kw7mr14572710obb.15.1455526728836;
        Mon, 15 Feb 2016 00:58:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls3203512qge.62.gmail; Mon, 15 Feb
 2016 00:58:48 -0800 (PST)
X-Received: by 10.129.49.18 with SMTP id x18mr14714009ywx.37.1455526728113;
        Mon, 15 Feb 2016 00:58:48 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ff2si2793555pad.2.2016.02.15.00.58.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 00:58:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id gc2so209246pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 00:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=3vjLBvBB/nIGfn417fbh2jhHrZ08Bn7cdb8qBskwNE4=;
        b=WhJh9I6fiASIEWjq1hiqx4RNLy5MXRUmG8SzXeT3QC7HTWgyYK4n9S8QXjOuP8wlck
         +SA6rfxLaOZf0genDKJg6m7/74vsb9otauLakFV0NwXTfVRI3SV86EpU91SKdA9THufe
         wuCEHWkJOqaeoX/+/ZvKiZrfF6WJj1ZnH7o8xr31gbSNU8HI+dZf/Myi3bGJjQmUexlz
         e06jcOW2TVZRdRr+uge9NRdbMBVpuCqmy9BqN8yeNZTpsprYeact0EtPj//TnUWK5igt
         zLXwm9f/OqvmPZbXeCq5ytyX1kWZt3KKnFAH06i3p6nUXI5f8Wmn0kSqryKUGmhLcjnn
         fEMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=3vjLBvBB/nIGfn417fbh2jhHrZ08Bn7cdb8qBskwNE4=;
        b=NjjOYOoezn5D6B8S39CN0TnuZJugTPBcDo769c9orvoCmecGfohS9MmPEeVl0SfRgI
         NQTYO7bvYN002zUX0aeEVcaCJcKe6NbHjsy5tp1quSEAC69Z3v/pmiN56MnoeJ2CJMdz
         UEymI69+rczcHybWVJuRxxC0CdDx4l0yufVLiSi5D9s4YgNPojOLyxhXRdd/yZiHithJ
         Y1MkIagfyam17BB0467bDabRI+uORNwtUOY7OoIo37TtsqZoBu5jk7LpXVrN+WOrrnjj
         xl5uMCHtT9Kgpa0bnaOlqdcF+qgdntVbxFXOvavN0riHzueu4Ycm2eT8ROT98OyePPva
         nEXA==
X-Gm-Message-State: AG10YOTYY1HH0J9FDFylJAmB1MP16JTUumPm+Rfg7oe/CBRYmqaYwhJ9hTIaExCfrsuLog==
X-Received: by 10.66.144.134 with SMTP id sm6mr16775822pab.158.1455526727969;
        Mon, 15 Feb 2016 00:58:47 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.132.55])
        by smtp.gmail.com with ESMTPSA id g10sm36723009pfd.92.2016.02.15.00.58.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 00:58:47 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 15 Feb 2016 14:28:37 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 1/2] Staging: rtl8188eu: core: rtw_mlme.c: Remove NULL test before vfree
Date: Mon, 15 Feb 2016 14:28:20 +0530
Message-Id: <83f4464387fb6dc7183b31777e6cd7941780e269.1455526161.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455526161.git.bhumirks@gmail.com>
References: <cover.1455526161.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455526161.git.bhumirks@gmail.com>
References: <cover.1455526161.git.bhumirks@gmail.com>

The function vfree tests whether the argument is NULL and returns
immediately. So NULL test before vfree is not needed. Also remove braces
around if branch as they are no longer needed.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes since v1:
*Correct errors in commit message.
*Remove braces around if branch.
Changes since v2:
*Add file name to subject line.

 drivers/staging/rtl8188eu/core/rtw_mlme.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 9c2e659..a645a62 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -122,10 +122,8 @@ void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
 {
 	rtw_free_mlme_priv_ie_data(pmlmepriv);
 
-	if (pmlmepriv) {
-		if (pmlmepriv->free_bss_buf)
-			vfree(pmlmepriv->free_bss_buf);
-	}
+	if (pmlmepriv)
+		vfree(pmlmepriv->free_bss_buf);
 }
 
 struct wlan_network *_rtw_alloc_network(struct mlme_priv *pmlmepriv)
-- 
1.9.1


