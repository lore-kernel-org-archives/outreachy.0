X-GM-THRID: 7423401132032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,66aeee52302e9056
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.53.137 with SMTP id b9mr31786926pdp.4.1425990336684;
        Tue, 10 Mar 2015 05:25:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.163 with SMTP id f32ls49011qgd.84.gmail; Tue, 10 Mar
 2015 05:25:36 -0700 (PDT)
X-Received: by 10.236.20.234 with SMTP id p70mr31877174yhp.46.1425990336517;
        Tue, 10 Mar 2015 05:25:36 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id pc4si88988pac.0.2015.03.10.05.25.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:25:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so1366155pdb.7
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dfocjl7jsQIxOvJJoQZKa27rUnxefW7CyuBRQcp2vY4=;
        b=nSohNQlnyWX/h6Jr3WpJJY6WNhjcQ/PIQ3fhlXWrdqQCu1Y2YcXxLwQjxMi4iaDb1H
         1oFBYniT/ddHgdd5GVkYaSntGZM3pzuIKE93pw5AU/wO7xhAxkZ2w715njR1lLayztL9
         KoFe5XU42fUvHhkdcaBCvj8nvK2a8LyVSZGwJGKqlVNa+LfDAxxQ2++FnyvDckGj9qrE
         s9r6trPzVIOS70MBDsKLAV5/a3bKEiYWPK6wra16rvWMb6DgeDQfiYpX7HYnG7wrvNp/
         o/UmBfOvL7uAyJeGvKULgSBUVWvH6wayAZVFUozhw1iCy2zQr9crD7LaPFfNzxJeE5PE
         PC1Q==
X-Received: by 10.70.54.198 with SMTP id l6mr66292271pdp.74.1425990336353;
        Tue, 10 Mar 2015 05:25:36 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([61.16.142.166])
        by mx.google.com with ESMTPSA id qj3sm831858pac.31.2015.03.10.05.25.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:25:35 -0700 (PDT)
Date: Tue, 10 Mar 2015 17:56:58 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rtl8192u: Use kzalloc instead of kmalloc.
Message-ID: <c051d4570556c6da9fc60bb44ba33a51503ea0c9.1425989875.git.navyasri.tech@gmail.com>
References: <cover.1425989875.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425989875.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch uses kzalloc instead of kmalloc function.
A coccinelle script was used to make this change.

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     - Make commit message shorter by removing the
       coccinelle script.

 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 3a54071..aa53ec2 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -3025,12 +3025,11 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
 
 		ieee80211_crypt_delayed_deinit(ieee, crypt);
 
-		new_crypt = kmalloc(sizeof(*new_crypt), GFP_KERNEL);
+		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
 		if (new_crypt == NULL) {
 			ret = -ENOMEM;
 			goto done;
 		}
-		memset(new_crypt, 0, sizeof(struct ieee80211_crypt_data));
 		new_crypt->ops = ops;
 		if (new_crypt->ops && try_module_get(new_crypt->ops->owner))
 			new_crypt->priv =
-- 
1.9.1


