X-GM-THRID: 2517133950976
X-Received: by 10.236.227.162 with SMTP id d32mr8752975yhq.7.1424623327298;
        Sun, 22 Feb 2015 08:42:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.170.225 with SMTP id ap1ls622123igc.11.canary; Sun, 22 Feb
 2015 08:42:07 -0800 (PST)
X-Received: by 10.50.23.75 with SMTP id k11mr7462363igf.3.1424623327073;
        Sun, 22 Feb 2015 08:42:07 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id pc4si3932361pac.0.2015.02.22.08.42.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:42:07 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjp10 with SMTP id p10so19756432pdj.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=DuRlJIyghYkDIPPCO3dXZ4v8SbYzXIjo6bGUGrKYu+c=;
        b=CKFH+SjLDFfXzpUjTPy6hOtwuc4Ks4CTs9mjyPfNtyi5mcycLLGRBFhlVJNP85yOn4
         WvJ4C2uhBzvz/6SQhPBgZBxCVS18HNGNmh9rm100xhFxryWglOmn+GGl5w/b58Vn9CnN
         iOndgWLUkwewI6pw26ltvdL52P8b4acTzPwK1k59djuDMh6wyQnX0VUf0ACDZLY/Ddx8
         ULZQ7h+U9+K06hVsgWr1Oa7uHiJY0CXdi7bcLdeu6oGwexC1HdOwzHL4A1zfK1oxb7xG
         eQeJLgBAoI6ftXCYjH9d1Zzb0DpdODnfMWWPC+Ulmj65F4qOHNCBEohrXrWueWTs5s9j
         4/2w==
X-Received: by 10.68.221.34 with SMTP id qb2mr12503971pbc.47.1424623326954;
        Sun, 22 Feb 2015 08:42:06 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id oq4sm19106906pdb.73.2015.02.22.08.42.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 08:42:06 -0800 (PST)
Date: Sun, 22 Feb 2015 22:13:08 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/4] staging: rtl8192u: Fix quoted string split across
 lines.
Message-ID: <72bbf597b52686359f45a7f24f733f7771060f41.1424622240.git.navyasri.tech@gmail.com>
References: <cover.1424622240.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424622240.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl warning:

WARNING: quoted string split across lines

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index bd1555d..d5b16a6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -65,8 +65,8 @@ void ieee80211_crypt_deinit_handler(unsigned long data)
 	spin_lock_irqsave(&ieee->lock, flags);
 	ieee80211_crypt_deinit_entries(ieee, 0);
 	if (!list_empty(&ieee->crypt_deinit_list)) {
-		netdev_dbg(ieee->dev, "entries remaining in delayed crypt "
-		       "deletion list\n");
+		netdev_dbg(ieee->dev,
+		       "entries remaining in delayed crypt deletion list\n");
 		ieee->crypt_deinit_timer.expires = jiffies + HZ;
 		add_timer(&ieee->crypt_deinit_timer);
 	}
@@ -145,8 +145,8 @@ int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
 	spin_unlock_irqrestore(&hcrypt->lock, flags);
 
 	if (del_alg) {
-		pr_dbg("ieee80211_crypt: unregistered algorithm "
-		       "'%s'\n", ops->name);
+		pr_dbg("ieee80211_crypt: unregistered algorithm '%s'\n",
+		       ops->name);
 		kfree(del_alg);
 	}
 
@@ -231,8 +231,8 @@ void __exit ieee80211_crypto_deinit(void)
 		struct ieee80211_crypto_alg *alg =
 			(struct ieee80211_crypto_alg *) ptr;
 		list_del(ptr);
-		pr_dbg("ieee80211_crypt: unregistered algorithm "
-		       "'%s' (deinit)\n", alg->ops->name);
+		pr_dbg("ieee80211_crypt: unregistered algorithm '%s' (deinit)\n",
+		       alg->ops->name);
 		kfree(alg);
 	}
 
-- 
1.9.1


