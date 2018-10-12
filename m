X-GM-THRID: 6611156296380973056
X-Received: by 2002:ab0:26d2:: with SMTP id b18mr6579907uap.5.1539365473273;
        Fri, 12 Oct 2018 10:31:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:aa14:: with SMTP id t20-v6ls1801053vke.3.gmail; Fri, 12
 Oct 2018 10:31:12 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63iuOcw/wrZN2wGoBY997GENH30rn/CB/ccT28qSxhgbiUV0asBviq8GwiuDEB82JExBbXL
X-Received: by 2002:a1f:2c49:: with SMTP id s70-v6mr6427782vks.7.1539365472356;
        Fri, 12 Oct 2018 10:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539365472; cv=none;
        d=google.com; s=arc-20160816;
        b=LuBeHn+h/ZO8KYEFe81Jq1UaQe/MDOnHcaE2ZHQNE8LgMrg0UbBzIm9j+LyTl9Q6Ut
         FCyaItHfbliP6MI5GhFfx3bVfnNqXcn95qZhKr/P3eJ2vubA3RnHKMQRS3BtxXXPZxGo
         hRtWQGZkQnWrzBTgqZxgLAlwvL/WiazOIIJTw/maLUVcn/WBbwu00TvDrh5DRHx+xfKj
         0nElsP9Vz9fY/e+6ziuX+UkAh6mrGP7duwSC45ynTAv7qcAKQQCNeKOUW1/4OFtMvjSn
         S1V8RRlWpkV1faW4H2AA0vkhbZSVCqEZv0CpcPDTsM7mBY1v25XjHXb+FYp8kJzdYLwZ
         YdTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3QxNjn9KDyqUJMqKna8FBa0UQkj8dbuU6NaZGOvkK9U=;
        b=w2QkGk+GiXYRJlgjEhzwAEVS75c1ten4U7yW/1PJiv7t4i/HQgAdvVFDrpBSDhiI5/
         cbIuNu2zFoxc+u6YEAlnhmX9dWqIoyT6jkbRhkmrdgpQZKYGG34GQvuvsbpQnjwE5cT9
         RXQzCe+s/VBu/TOpbFXp9hsKm9EwXnGAbyXYTRMNm/Et0SdWAEWnXBGdICD7YU8FcqRI
         x0eXUyMV1O7iagZiJVpQULW3oEVj+tGLapjbW37XY3Jly2mvF90ecC9/sMcr6pnozG2p
         z+Qr8gnfSkE9FGgybEB3cpEJWUCPAje36nTK+f8GaeAo55L9AUjtnA/+q7YG9/e+lF8F
         OKFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YvaaNJ3Y;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 131si68567vkx.3.2018.10.12.10.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Oct 2018 10:31:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YvaaNJ3Y;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id f78-v6so769730pfe.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Oct 2018 10:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3QxNjn9KDyqUJMqKna8FBa0UQkj8dbuU6NaZGOvkK9U=;
        b=YvaaNJ3YbxKypVMIbPuBj25g/OsTiw/y8E759wqJvd9h4JdEAgM8ifH8wtp3WovpWt
         NPxlSbHN2PlZW0xbneH/t1e1ktskfH0R0+GyxmU0NKO2Gbr3CkPTsOWkWKmSOqU1FUUs
         5Jj54MG2dUpTP0BhuaAh2nf0URme0QOLHzgeOnGSejkpeqhFfGVtzUa6wuivJSb1uN0N
         +nMSbDzVNALxQL8GOXdSSwSblPQAh7XDHTvPOVHiSelp8yG+zSYcUfRzi4mSiP54LUCg
         Nu0TG1w8OsOif6uIzvDGsreEc/CAhm92J/MyAoEA7EIpTi77i4jDnpxU8IQEIwcHCTEk
         1eUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3QxNjn9KDyqUJMqKna8FBa0UQkj8dbuU6NaZGOvkK9U=;
        b=G5nPjeJpnNBeDXzzNyMLmOpgoI0BTTxxQOFZrm5v8bn1I+SCLI2FvZ3nErW/x0PSz3
         ZzDthIerlar1/kpbrnkiP2goK26jege7nG9s3f47FvCJI/TgC3Rsi14Aap+Pxx1XlVg5
         wGDKqZJ+y5Oa1V3spZ3UliuKPYkufOyQkOtBbepnRbM9iH1GlMigAsQODQE9GYK2mJsb
         QBEfTBvLhnpW0QELRcQll4k4L7TEeIrUJdIlJKccCCIdL4opv0r8KzKBEOkZmC6xNFLU
         Cphsdj8Oo9PsyugJO5eZi9xOn8CfWv5dCd7bIyes1VoWPMvovLzzOvbCAxulnyMYYfcf
         hXTA==
X-Gm-Message-State: ABuFfohmCznF+oQEgudxq2Wu8G4XvoluuJ14nV1b04/7tflebeguWfW8
	uvBYB9znqY3rwoye9kkFbuw=
X-Received: by 2002:a63:cd45:: with SMTP id a5-v6mr6461787pgj.43.1539365471331;
        Fri, 12 Oct 2018 10:31:11 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.94.223.241])
        by smtp.gmail.com with ESMTPSA id a64-v6sm3057004pfe.32.2018.10.12.10.31.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Oct 2018 10:31:10 -0700 (PDT)
Date: Fri, 12 Oct 2018 23:01:07 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, julia.lawall@lip6.fr,
	mamtashukla555@gmail.com
Subject: [PATCH v2 3/3] staging: rtl8723bs: os_dep: Shift * to be  adjacent
  to pointer name
Message-ID: <3c60ea29501a02c3148fb2340b15cfd519379902.1539364736.git.mamtashukla555@gmail.com>
References: <cover.1539364736.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1539364736.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Shift * to be adjacent to pointer name to follow Linux coding style.
Issue found with checkpatch.pl
ERROR: "foo * bar" should be "foo *bar"

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
Acked-by:Larry Finger<Larry.Finger@lwfinger.net> 
---
change in v2:
-Fixed corrupt patch issue by redoing it. 

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 243394e..28bfdbd 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -528,8 +528,8 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 	}
 
 	if (padapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) { /*  802_1x */
-		struct sta_info * psta,*pbcmc_sta;
-		struct sta_priv * pstapriv = &padapter->stapriv;
+		struct sta_info *psta, *pbcmc_sta;
+		struct sta_priv *pstapriv = &padapter->stapriv;
 
 		if (check_fwstate(pmlmepriv, WIFI_STATION_STATE | WIFI_MP_STATE) == true) { /* sta mode */
 			psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
-- 
1.9.1


