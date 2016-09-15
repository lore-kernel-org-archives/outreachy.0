X-GM-THRID: 6330624598541860864
X-Received: by 10.13.230.79 with SMTP id p76mr8082102ywe.5.1473968481015;
        Thu, 15 Sep 2016 12:41:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.193 with SMTP id h184ls1304320ioe.33.gmail; Thu, 15
 Sep 2016 12:41:20 -0700 (PDT)
X-Received: by 10.66.189.136 with SMTP id gi8mr5700418pac.0.1473968480323;
        Thu, 15 Sep 2016 12:41:20 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si1507082pab.2.2016.09.15.12.41.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:41:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 128so2594994pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1hyGnkJ/wlsNfcOUD1Q4b6pisesOOoOHvNP6+EPlRzs=;
        b=BCXfbJ5iegtMnazpIK4Dk22SE3ZqE+9SPAXn+4acSFIvbEuENMxqtmoePnC9fayAt5
         RCEx1cHjeo63HNmmUrEID+YCJnOSkUdQviiFJy/DqtptAUMu8rtb0JnSNOlmQV6J5yCi
         4BwazYY+YRFHuWN8v0k4LNrRv80sQ5AgyVum2mOfVxfe+rGJCxrRtvGHcys1y3U7GhEd
         wSjGDX5HlRQ24r8gt0QfPQde/XhyETFOQLTAwMU+x/Daoo1F7lSy51/meRH/GA6XpU1h
         QE7U5i8XCOMGOAcckqZDwhtIvhaJFsei+c2DwSwY9MqZDDhSr3mMGtjXu3BdR0vAy4EU
         5qvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1hyGnkJ/wlsNfcOUD1Q4b6pisesOOoOHvNP6+EPlRzs=;
        b=LfQ7jI8hjpYoydD0EkTsc0Zsw+EVEkWGrSni6MFwC9OmR7xGl79b3zsK9mn1OtWKn7
         QGub6GjVNnwLxjmiTAQ+nx1KyEqkxysiGWf1l3tP4lZoNNIHR7UEC03yzkz0aC+rnsgn
         AkkfBoVXeMzywZjzPCY1GttjkizaUyGMwaqsjAyw23NcuoGvi4f6FyUGDdVfJHdUX30+
         0awOVK9FbkByrxcnuRL/xI2vL7aDB/8N6OWovoP6BvuRSg/WoTse9v1ph9iyQ47Saibk
         BTnqgBR5JD7oEjsqea0fbFm2TVTnqA/ul5z9M+IDpa/dj2Lj2JgRI6D2uIcWxNBoiQhc
         /cYQ==
X-Gm-Message-State: AE9vXwMiZBWn3Uawe2c2Tc5lY+SIyBMWuLQTJK1BInqT/kt90W/LsfZwd1xFfUthzkqo0g==
X-Received: by 10.98.200.206 with SMTP id i75mr3474720pfk.172.1473968480133;
        Thu, 15 Sep 2016 12:41:20 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u19sm4533992pfa.40.2016.09.15.12.41.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:41:16 -0700 (PDT)
Date: Fri, 16 Sep 2016 01:11:08 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: lustre: Remove unnecessary return capture
Message-ID: <20160915194108.GA5345@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Instead of storing the return value of a function call into a variable and
then returning it, we can club the two into a single return statement. This
change was made using the following semantic patch by Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
Change in v2:
Make the commit message concise by changing 'return - call form of statement'
to 'return statement'.

Change in v3:
Include changelog for changes in v2 and v3.

 drivers/staging/lustre/lustre/mdc/mdc_request.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_request.c b/drivers/staging/lustre/lustre/mdc/mdc_request.c
index 5bf95f9..cf94926 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_request.c
+++ b/drivers/staging/lustre/lustre/mdc/mdc_request.c
@@ -2488,9 +2488,8 @@ static int mdc_set_info_async(const struct lu_env *env,
 		}
 		spin_unlock(&imp->imp_lock);
 
-		rc = do_set_info_async(imp, MDS_SET_INFO, LUSTRE_MDS_VERSION,
-				       keylen, key, vallen, val, set);
-		return rc;
+		return do_set_info_async(imp, MDS_SET_INFO, LUSTRE_MDS_VERSION,
+					 keylen, key, vallen, val, set);
 	}
 	if (KEY_IS(KEY_SPTLRPC_CONF)) {
 		sptlrpc_conf_client_adapt(exp->exp_obd);
-- 
2.7.4


