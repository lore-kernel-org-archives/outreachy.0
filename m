X-GM-THRID: 6395378707824902144
X-Received: by 10.99.96.71 with SMTP id u68mr4739387pgb.32.1489040197049;
        Wed, 08 Mar 2017 22:16:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls5116015oth.45.gmail; Wed, 08 Mar
 2017 22:16:36 -0800 (PST)
X-Received: by 10.13.254.2 with SMTP id o2mr4613449ywf.50.1489040196703;
        Wed, 08 Mar 2017 22:16:36 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y203si685144pfb.0.2017.03.08.22.16.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 22:16:36 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so6193875pfg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 22:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7Z0K0NkoDENfrzEXcv5ttIJPhCy89JNXtZqc5vY7PQw=;
        b=YwQkfSb2xhBUBCE7VHpYpEZoeul/3gSO5qA+4AuF+J+sDBPhch/ediZM0wlUHMIVbT
         jjw58/mYxiBE26mZN/lQnOV/DL9mif2/245wSt77pKF8E4qaRiw9leIRzTP3hwiIf7gM
         litsR4G3f+BsIXaSFBJxAI+haRDa1OOKjqPPK8xrrGgJ9LMrhge913bUzXKjiQ97kJYx
         GHFkHo4Agl46WgqEkDCPmo+dm023v5Q8sxPu7f94wD82xVyBZFdeDeOFBAp2Nld3GaBO
         R/KtKoamndssyWhHx6rWQftoqox0rOCfMGJGCkuPOtjDVLL9x+S5qrU/8+70AO4PkSXF
         dRcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7Z0K0NkoDENfrzEXcv5ttIJPhCy89JNXtZqc5vY7PQw=;
        b=IblsxMj7n8sq1bP8/aGg3IK6J7/B2lAh+eZsU4DflTcS+oxwBwGS1V2M+8HVcwX4uf
         ZroZQwnJNvxMXmdC2F3GCygv2KYFUVrqB52mpkBactveDVx1a86HK7CkhhJEwXpliil+
         y1WcYDDwFkjHjpv01i6APezV7wv0yy6zGkN444fVzcwhOsyMWQk2NIjA7Sycr0anVZEO
         VyZsP8Pi0jA1WqQNJ8RWeF7ZNCahzhiyI7wvSNOUuYdl8iJotQ6G2fm/R0Bl7SxZ2QGs
         yw7k3vhotyrS5HFEGQehqSXKP8lcdqq6EVHfnQHpRG5Ux6e6riwSBjjzs5LfgiS/ZYEk
         rh3w==
X-Gm-Message-State: AMke39n9foQzh3ZXUoNoEeSXzsqeRFNAcAW1FTvrQbhxSpgozJ+g0sSgblxlNSo7NKaZcg==
X-Received: by 10.99.119.2 with SMTP id s2mr11889568pgc.153.1489040196458;
        Wed, 08 Mar 2017 22:16:36 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.208.174])
        by smtp.gmail.com with ESMTPSA id o189sm9766466pga.12.2017.03.08.22.16.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 22:16:36 -0800 (PST)
Date: Thu, 9 Mar 2017 11:46:22 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 1/3] Documentation: phy: Fix repetition of word 'the'
Message-ID: <3559f33444fbae6fda8e11ea00c0dfe3b7dc46b2.1489039271.git.karniksayli1995@gmail.com>
References: <cover.1489039271.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489039271.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch replaces 'the the' with 'the' in the documantation.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 Documentation/phy.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/phy.txt b/Documentation/phy.txt
index 0aa994b..383cdd8 100644
--- a/Documentation/phy.txt
+++ b/Documentation/phy.txt
@@ -97,7 +97,7 @@ should contain the phy name as given in the dt data and in the case of
 non-dt boot, it should contain the label of the PHY.  The two
 devm_phy_get associates the device with the PHY using devres on
 successful PHY get. On driver detach, release function is invoked on
-the the devres data and devres data is freed. phy_optional_get and
+the devres data and devres data is freed. phy_optional_get and
 devm_phy_optional_get should be used when the phy is optional. These
 two functions will never return -ENODEV, but instead returns NULL when
 the phy cannot be found.Some generic drivers, such as ehci, may use multiple
-- 
2.7.4


