X-GM-THRID: 6255184254546739200
X-Received: by 10.50.50.138 with SMTP id c10mr2095994igo.3.1456398576204;
        Thu, 25 Feb 2016 03:09:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls344727qge.15.gmail; Thu, 25 Feb
 2016 03:09:35 -0800 (PST)
X-Received: by 10.31.152.208 with SMTP id a199mr40674411vke.4.1456398575662;
        Thu, 25 Feb 2016 03:09:35 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id ui7si1144815pab.0.2016.02.25.03.09.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:09:35 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id q63so31217700pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/0PoILwf7ZW2hHhFlQScHDLUUVqMyeZ06/jwLwvj65k=;
        b=Ry63WmJaFCJl789kAoGczPx5wZT7Me/IfjCp0TCcNEOzItI1hAwVoD3aKDuJag5XnB
         ONGUbEcmX0+fpRA2rciSOeXxGGup7eoXzF95W6c9icdY9bnlDQR9IGXmlFOtFEqPfB+P
         3V16x6PINxOOuHL211rRJVdn5foEqdQL0XWpRXjxep8rLO/pAlm7rZt7Az6NGNf7etDx
         2L4cgiuViyHjFFq6MCEp8vW19jbEl1ZzUlIVMub3nTTvcdLpw7FpJD0cwTUVM7eBRhm2
         U/ZrYjqshzO94gks4Pr/lo7P8AEpKNf2InT51RcFK2iJXN0Q66/op8jlrLgcNd5ntK4W
         KWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/0PoILwf7ZW2hHhFlQScHDLUUVqMyeZ06/jwLwvj65k=;
        b=T3H8Yie1BXs3MyuctATfe0EUtcZUwH34QaL8n5zA78oyaCbUEUNIlZ73/plaOQtSIW
         SHoKCyRKB/piSxoWDPcp1UO9ApOZQ5VaH8kYEVxm0i8/mYOtVVSXU9m/7b4kGpzlXUfw
         kEFcsXJVXrgv7TABjBOoJePgo9NMSHD02pfHfjUYxT4uSzMY/AT3TW37iSg0MQIKmTzO
         yVwCIj7b7z7/dsAq7gGVo0Nyem7Fnnax9ue0jQb4+Oub4kI5Y2LQ+T9SM9/4NifUnDX4
         N1RuXRMqVstsSUkcyVUwaNo8PbrtCb5t5lxnXjSyOXVv1Jk1zJU5uLV5lTdnbPGrY26t
         yhOA==
X-Gm-Message-State: AG10YORYqoF9cj5CF81Hb6QqxCjlqlqrSwHSh3LhSQCTd5hUQl8qwZDU5FUBiTHyK0zW8A==
X-Received: by 10.98.66.81 with SMTP id p78mr62249796pfa.43.1456398575509;
        Thu, 25 Feb 2016 03:09:35 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id lq10sm11509142pab.36.2016.02.25.03.09.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:09:35 -0800 (PST)
Date: Thu, 25 Feb 2016 16:40:03 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: Fix unnecessary whitespace warning
Message-ID: <20160225110955.GA3905@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch remove the warning detect by checkpatch.pl
WARNING: unnecessary whitespace before a quoted newline

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_pack.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_pack.c b/drivers/staging/lustre/lustre/lov/lov_pack.c
index 4d8abb9..c65b950 100644
--- a/drivers/staging/lustre/lustre/lov/lov_pack.c
+++ b/drivers/staging/lustre/lustre/lov/lov_pack.c
@@ -183,7 +183,7 @@ int lov_packmd(struct obd_export *exp, struct lov_mds_md **lmmp,
 			return -ENOMEM;
 	}
 
-	CDEBUG(D_INFO, "lov_packmd: LOV_MAGIC 0x%08X, lmm_size = %d \n",
+	CDEBUG(D_INFO, "lov_packmd: LOV_MAGIC 0x%08X, lmm_size = %d\n",
 	       lmm_magic, lmm_size);
 
 	lmmv1 = *lmmp;
-- 
1.9.1


