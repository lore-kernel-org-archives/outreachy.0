X-GM-THRID: 6806104906273914880
X-Received: by 2002:a2e:93c5:: with SMTP id p5mr3821917ljh.192.1584669823894;
        Thu, 19 Mar 2020 19:03:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8541:: with SMTP id u1ls974449ljj.10.gmail; Thu, 19 Mar
 2020 19:03:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvpMzqglRt5IJvMVVzCBcL9cR6Dx3ZsrmitaIOztsMmWVrQXguj+y1WVhJg46QysuPbBr5k
X-Received: by 2002:a2e:8798:: with SMTP id n24mr3894807lji.114.1584669822058;
        Thu, 19 Mar 2020 19:03:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584669822; cv=none;
        d=google.com; s=arc-20160816;
        b=vAuAzChXoqz/hsiGunTeOiJ+W00r9DAYoTAQkNKosI42nK28O9PAi8tfVdGprSDnpu
         Wo3zE+jtMqlPQYlKSHaBvnqjUgJurO80bySTlST1PA+jGPm9JUIeHMBce2yFDfUuf93L
         U6nSEAQWAXL1ijKXFNaVo61QNmErR8/OdJK9/I9D2Bdir8XpJYU4+QP85L0MqKsyHxRf
         RYwSvPRHuA4DWyBWQ16GUYatyQ//H76lD7DSSnfVs3qQTT+mxmCt9o3y9dQ2oBs3bZzS
         SnUet8Chz+hphut3fPeN6kwv+3JWNpey4titOcTJ2kgkLyFjHUAdTC4gbyUN2wFaJzwP
         DRKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I69HdjzAo7WYzqHf5ZKcwQo4vs8GT14NEPwhfoW8ieY=;
        b=IYMn5llrVuP7Wl2RdUnzvHmVRhwKTyT6WASfno/emcFodJFDNo5Wbclv0lOqcfp5PR
         Oz987mxOEGa0ua0UH5GqHNGXJFEOSTMAu7VdgoXUv/4lpW4Fxk3aDheJt1hSxMcSDBAb
         vANNYSDpRrdRsMp5fTzhAlGaRm3gLUedbyJoa5VDwSTiiJgKoGwVpa5pEPiVTOnXHSka
         kPJc40rucqUdrD746XFzt3FqqHsGOOn2Dde4zaFqosYPnM+WHzRuuZJr5yezAuHmyu4n
         aP4u1p3s8GM1Opisunt9c1gLRYfyYmeB10skKAPWCMlIJGrts3OpGRYo69ISyRgjotfJ
         1I9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfP94Z8r;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s17si294372ljm.5.2020.03.19.19.03.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 19:03:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfP94Z8r;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id w1so4780749ljh.5
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 19:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=I69HdjzAo7WYzqHf5ZKcwQo4vs8GT14NEPwhfoW8ieY=;
        b=JfP94Z8r8qWfN/QuLFIHOvwspWc/wB5lQH1eNHGyux7jmyE8rOAYvA9ZS5vT+aCgUa
         KL79QU55f4JtL9p6lHJYNVK9kDzd3JyZIHvt0Edclnd32FLOsCQvCZXUtBq2JXLTSN0i
         DMqhIVcbgHL09yl3+A3HSug4UT+9IphqDpahPbfdUY6WNdowWqdYT5aRMD9AJa6x60v0
         OcezRLB0lbOuF6/2SY1JMzBeAPaAzDJY6OgLllHimsN3mqQqJafW4vNLNqQvcHrYKq9F
         iCQXNNpVxzk61V2Hd1jlyd+CIv37Nw+grO86NyryUZkc7JoRS68hzsOBjxMc+a0CK8fM
         +UnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=I69HdjzAo7WYzqHf5ZKcwQo4vs8GT14NEPwhfoW8ieY=;
        b=XAMoJ5QJymKU6SyqNAPkeoZpAKZi/yg8AP1/Nx8No4eCZBEFtgnqqEUYLHuCjGzIzO
         b3fX+6pXqTwH1aoJXYR5GfN0VEDwWj6YlkjrPBvfiWdACHhBaMEZKYJV7XTaijPElIz/
         e3PRFr8OtZAY6Wqb9BVFJd86ev5O9XmrhlfPjzBuBKNCnFPhoXUk1aVptX2VfHqiG6ux
         DF9GYA0AhqshD7A3Bz429NKIIARgU/obejF0MC4hSzN2fPjZcuC/NfxNf5X0eMhX5alW
         UNEgCLkBMifxQ/udlFc5huWg9vuFJyiAbwy1quKAzXnx6MKr42Dskx5trvR6n/B7sJ6C
         A2Lg==
X-Gm-Message-State: ANhLgQ1iF2K3HTNASBL8QDbt8z0LUbQjdvC3uHSkCgLIXA3ufJA9r+x5
	lbSIGrjCQjSFUVcXWojighY=
X-Received: by 2002:a2e:330e:: with SMTP id d14mr3899357ljc.72.1584669821859;
        Thu, 19 Mar 2020 19:03:41 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id l17sm2867519lje.81.2020.03.19.19.03.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 19:03:41 -0700 (PDT)
Date: Fri, 20 Mar 2020 05:03:30 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8712: Avoid multiple line dereference
Message-ID: <340c8671b671ed9b1416cfc7790e0e4426f89371.1584668081.git.gokcekuler@gmail.com>
References: <cover.1584668081.git.gokcekuler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584668081.git.gokcekuler@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

merge a line -> with a line ending with a sign

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index cabdb35..74dac74 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -944,8 +944,7 @@ void r8712_stadel_event_callback(struct _adapter *adapter, u8 *pbuf)
 			pdev_network = &(adapter->registrypriv.dev_network);
 			pibss = adapter->registrypriv.dev_network.MacAddress;
 			memcpy(pdev_network, &tgt_network->network,
-				r8712_get_wlan_bssid_ex_sz(&tgt_network->
-							network));
+				r8712_get_wlan_bssid_ex_sz(&tgt_network->network));
 			memcpy(&pdev_network->Ssid,
 				&pmlmepriv->assoc_ssid,
 				sizeof(struct ndis_802_11_ssid));
-- 
2.7.4


