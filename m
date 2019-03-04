X-GM-THRID: 6664590131341557760
X-Received: by 2002:a17:906:6dce:: with SMTP id j14mr2311073ejt.4.1551720809380;
        Mon, 04 Mar 2019 09:33:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a9b:: with SMTP id l27ls3621028eje.10.gmail; Mon,
 04 Mar 2019 09:33:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqxinde8pL24+fp0qNmidHoAPdvukttT4rct8+JzrzE6+ZVEhkFWbdMKiX2/vtztBnH9Sh1t
X-Received: by 2002:a17:906:3744:: with SMTP id e4mr2299765ejc.3.1551720808379;
        Mon, 04 Mar 2019 09:33:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551720808; cv=none;
        d=google.com; s=arc-20160816;
        b=VMnfgz5qbxi9uUUr/WX00yLb9Q1KqH/qJg8elHO9NZ6HXVmm33TEBHF1uwEUuEfwxr
         ZVT346QENky/zJq/obgXOgzR4nC27aODfDkxTRMbTJTfOWKWsXmBVCeY/OFhuWGiMvuM
         mNvNJqT+Vfs+/6HyOJmpuyQNajAutMRtWSdNXSsZUAo0NaZR9rdtq+LAXJ138wlMm2ZY
         jZlEpn5iBbBx+Ami5q+D1H5rjyuVDvk+GJYcun+sgzDa34jS+UmE5lrjj/XfH/3y8XPN
         amyeewyePKTpg9a6EqNXYEQ8PnwfUjvtBK3RWPJs3wUMpoLaXfLoAogpnyci6llSQ8xA
         4MNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=xpgq5GVgHOe/giTrDwPxfCmQUVIJovreX6JgKeJhyA4=;
        b=GZsyVxVX75Lk9F4rwVPQ5wTOTjWe0hCU74UJz+CCriUjktChL9osdY1uocbBaOn3Xe
         mXzPvUJ4rAcX3BC7yeWUeX5rRaSn+Ia4ZZTRSrpKEW+HFcePIwt/ELNdNHwBczAKfw0W
         jiiLmY6AV0/FGhlvbcDeudCmfZ1S/qCoJQkzykEW25mH7lkOv/3XeakeFlpxQGXGRiXu
         SY4+OkF+CbrnyibwynMyshxtI6ipgJGYMSlTRokF+dgYxfZiek02mpceVHD5Um1flAfu
         jcKzRQN2OQDOdVp2XjNQCs5UUZ93nStm6NHpG1pq2mhHMgQ93dgKTMc6BWiRiS0oxNqU
         WaVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=breTrYzm;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id a7si356525edb.1.2019.03.04.09.33.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:33:28 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=breTrYzm;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x331.google.com with SMTP id f65so3990717wma.2
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 09:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xpgq5GVgHOe/giTrDwPxfCmQUVIJovreX6JgKeJhyA4=;
        b=breTrYzmWBuLHgBIk+yxJLQCVrVxT7Zd1pQ0+BOStm8Gnzomx1dGR/XNDexgaSMByP
         QflxhM2MiW17ETADA63zaunqnaMAcsjyWoug8/EGefgGSQL0x87LIYwVeQvWfaNVChkq
         XSvaJ1sOrtcgLe3Oc7wnirszBTWCZ2LsjQWXqZhcqPSzJGemAZvTvVrN3+JgKI2nch8l
         31DnzI2iuf1ostzF35huaP0n94OKQPL89ojEyNbjLcj6wUshJT0BOwiuoNixFJ70SETV
         JASqlK2BVqWEfAD+s9vZaPbpjsrAww1qLWVjifQb4IqeHC12g4BOWzLdtKzSBh1AOvFP
         nfrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xpgq5GVgHOe/giTrDwPxfCmQUVIJovreX6JgKeJhyA4=;
        b=qK1hiI9xAYHmNRtNnbj/F5lqVEAoCsZrMATzM8ST2NaKzv+rDQsBx+5KsihFKMK0Mx
         5Gkn7ax3o6BpMoCuJYYsrxyOCorT8224Zc7vTEvrK5RuVaqJnbOIjYkP9cadA2Wej7Vn
         lrDU6kTcM0MxJloBerQxCXMZbFV9l1+Lb4pA0j5CRubgqQKuxEUl1svYLmz89Y0B4isf
         DxwEPRYMbAQTzF3eQI99eZfYacpu7U6arYskav4ygjfgsv7ei8SjWCUqCgKSPBBCJGGo
         eUQ1THPGM2yoe4ZrGaBinwCDzRjJZjZGv9jk+K3O6ddmauKB1shave0+dPe6HTn2bAE5
         cbHQ==
X-Gm-Message-State: APjAAAUHfQAY3F79XyZ1ZkApEwNWlepxjG5X6YoFYS0UOA4gIZLr2S8D
	eD2/EIi5IwvD63Njz8xEYT/+DDfp
X-Received: by 2002:a7b:c08d:: with SMTP id r13mr151722wmh.55.1551720807878;
        Mon, 04 Mar 2019 09:33:27 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([82.137.15.95])
        by smtp.gmail.com with ESMTPSA id w4sm9526488wrk.85.2019.03.04.09.33.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 09:33:27 -0800 (PST)
Date: Mon, 4 Mar 2019 19:33:25 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: emxx_udc: Fix open parenthesis at the end of the
 line
Message-ID: <20190304173325.GA32193@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

warning detected by checkpatch.pl

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 8b1a9ad..b960a21 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -1418,8 +1418,7 @@ static inline int _nbu2ss_req_feature(struct nbu2ss_udc *udc, bool bset)
 						udc, ep_adrs);
 				}
 
-				_nbu2ss_set_endpoint_stall(
-					udc, ep_adrs, bset);
+				_nbu2ss_set_endpoint_stall(udc, ep_adrs, bset);
 
 				result = 0;
 			}
-- 
2.7.4


