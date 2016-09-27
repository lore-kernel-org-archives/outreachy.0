X-GM-THRID: 6334961343676809216
X-Received: by 10.237.36.12 with SMTP id r12mr7181133qtc.48.1474973127653;
        Tue, 27 Sep 2016 03:45:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.38 with SMTP id x38ls9232366ioe.42.gmail; Tue, 27 Sep
 2016 03:45:23 -0700 (PDT)
X-Received: by 10.98.208.70 with SMTP id p67mr4443478pfg.6.1474973123206;
        Tue, 27 Sep 2016 03:45:23 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si441751pfw.1.2016.09.27.03.45.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 03:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id oz2so569619pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 03:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=aj7e8WGli46ZggVbhsKYA5E3OP1gMyiQED71EP9FsK0=;
        b=oLo0sedlaI+e1pS4Aq0JTJRdARIeko3FfWsl+ON6VmPvCy3yEKNFd8/sbF2YC3Y8SM
         h77TGs3aEx8dLrI9E0Vd2JSbGlqVFx3aGzUuHtudMhTjd312SRtq0BiGFyra60ril2EE
         h9kTJBpzdaWktyVikysUxv9XutQubhc+voGGqlZSeDFn0ZS00FGEFsJ+ufDrMk1ikZQG
         kGv86gtoqSuodSjp5Y+ObjFkyN+uf//Knl/NPYrfLVJ4pj+NWlJ5v7WCSLCElHLCE6Hv
         PWygUSkqQvGf/pAgC9l92LnuKzL9BlI/TxOMiCL18aeZsfWvpYadm3RssLy+Ej38u+B+
         fphA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=aj7e8WGli46ZggVbhsKYA5E3OP1gMyiQED71EP9FsK0=;
        b=TbdlisFDRc50oJqepoTMqn3HqMya8U+8eAJ+IfCHUcYLtczbBvPWdqOJRrhr99szMt
         byaOxmTo9jVWkI+3imkF6YCRVltvFo2LNo5PXRferCatZ9EMMA7/axTM9HAXqUeekNXk
         ViHRhozRLu4fPyJVcd+sBDz/j5tW5TeL2bqq1U2RTpH287ySLrZ+nD9ZwuFoBUyb/CBg
         oP0MCRMyLZycpX3ZQsYuG7fqcOfSCSx69RV2To8ycbR57O544gnpLLEFHBJKGi/Aw4IG
         Dmq6V2PE1MtWgrhhboMDGSiU/Jrbnv1iBBNtJqei2zgDvc73YBpiE6PQxjcL92Fymps1
         XXQw==
X-Gm-Message-State: AA6/9RlI3kqGAJ15QS6GGh5CBDd+qGT7Z17RIKBU7tXxjehraO+Ze86EMQRmb5VesTW8gg==
X-Received: by 10.66.127.7 with SMTP id nc7mr14780603pab.107.1474973123076;
        Tue, 27 Sep 2016 03:45:23 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id q2sm3878401pfi.35.2016.09.27.03.45.21
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 03:45:22 -0700 (PDT)
Date: Tue, 27 Sep 2016 16:15:12 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Michael.Hennerich@analog.com, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: cdc: add comment to mutex
Message-ID: <20160927104504.GA13155@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the checkpatch.pl issues:
CHECK: struct mutes definition without comment

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index f6b9a10..88c6ebe 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -78,7 +78,7 @@ struct ad7150_chip_info {
 	u8 mag_timeout[2][2];
 	int old_state;
 	char *conversion_mode;
-	struct mutex state_lock;
+	struct mutex state_lock; /*generic mutex for cdc and drivers*/
 };
 
 /*
-- 
1.9.1


