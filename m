X-GM-THRID: 6886434353715347456
X-Received: by 2002:a05:651c:22f:: with SMTP id z15mr1083492ljn.324.1603372943787;
        Thu, 22 Oct 2020 06:22:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b5b7:: with SMTP id f23ls333983ljn.2.gmail; Thu, 22 Oct
 2020 06:22:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw9y7KhKjVAAnKC6KkBz4aAgL8Zr1PW9wGuY126KYHO2N/3Fj05YcdFnyLbMXu7qfoZMA00
X-Received: by 2002:a05:651c:c2:: with SMTP id 2mr1028975ljr.460.1603372941723;
        Thu, 22 Oct 2020 06:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603372941; cv=none;
        d=google.com; s=arc-20160816;
        b=GJvQYvrmnxI1Rx2IiabNt/VY8p2iAYjW3ncqeCd20Gn+2u7VzlsjAuosJLXb9i60Kn
         g93HekPLW5ruxfeNCwIpTYD9Ef8Kd2Bz3toWGaz2biSx+EnBeTyJtMJzlvIw4/vWXfn+
         C9gFMSJQnFLDWT2z8+HdkJRUjC9V1oanh9AGeudqW7TXw3IWDFQpKaInHTr5j6Uv6W4e
         8lMQ6Kb299JL1726x6AUFIcY5h49uehhioZMyj2KdAPgjldRxRUrJgzj153wf1mZtyVB
         PjVph4SB5PCcfVJqp05mFJ1T4URC+d1uSo96gE9yjJlL5pHi2vWp4GvP6RwjQzxGmsa9
         U/qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/457KlRttwTbzW2IPZucxg6Xez470vGxov79DYd6XzE=;
        b=wmip7zZX5oRqBH0kd7w6dQK3AlqFmZU1yJtBOrsirLDANjb4nL4NnKJOFxWd2egyb8
         bZqbORr/amNASWu32dVt6o34pPabTV619rxwiMU3Es4vOixYRMY98wqtT975IJ5CAl0B
         p6rlbvgkKI53LvCIN/PD/Cqdx69C2CMe2Pq1UtWEZD+DBlKAF2SeJHpJBS2cl+yCwmht
         rqYXeRNaZ3a06ToXS4TRYpF4SWNRDIiDy2i4p9C1aNn3zzGHbo9yJgTNQJX0YEz3Kp/6
         6cEqd1unX27Fkv07ARCd5CJvsN9oTDHJT38eG76KL0TVDCnXKt9vqdgDqnaEfi5BtkjW
         XWnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DIYpmXMq;
       spf=pass (google.com: domain of izabela.bakollari@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=izabela.bakollari@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <izabela.bakollari@gmail.com>
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a16si61038lfr.5.2020.10.22.06.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of izabela.bakollari@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DIYpmXMq;
       spf=pass (google.com: domain of izabela.bakollari@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=izabela.bakollari@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x642.google.com with SMTP id h24so2257897ejg.9
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 06:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/457KlRttwTbzW2IPZucxg6Xez470vGxov79DYd6XzE=;
        b=DIYpmXMqF2xG6qhoXcFf/CXetkWZcoj4lqmNFIAU3y7IxDegLJsSR9LOgdUoOKNvdb
         dNIMvAjwEVKc3WOUY/6HQ5tmbGSkhyQYwaWwFcCuebtPfNKAjt3wGkgC451xlcPYcW33
         jNW8QdWzZE60r6fFIa+LR7kmOte3AtGpOPcINRaHktSigQaWCq1jFflisDVp5CMmaOg4
         clPmoyalzrgw2Bciu/nv6QF3tGgvJvy4hAYhpQn3oi0pQW34rFD5TKcnwoNYfqmj8Yhx
         jj3LGrkwsQUc3bYviYoBEvBn+MRSKEdAxaU0KTAnQY3suNH2sV7SiBTnbs8OspjKump6
         aYyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/457KlRttwTbzW2IPZucxg6Xez470vGxov79DYd6XzE=;
        b=Q/vwbW20w8RztQXQumPQKPhEupeZVlh1DwsqOZ2JD4YXvYvNGGGabpFtVBjAAOdoJp
         R0y4KCvOImRwUFJMTvrzzsewMXEUuwS+xn0k0RtF5eRjWUs+EzcIIeIP4HVWBFh2xhPY
         v4zhr/rixfCYwi3eV6Unooqu7dtOAtPx8u3Zd/jJA2oP7uQNuAmYrz/Z3stU0/tZL+8h
         XgRQneW2sBOLqB++wbM+wLFF6uFsLTtPZ8dR4ujrTvvA7hifbDOjpwLrIShwF8Me6Cgv
         dpQVm2kdnG5yU+Kb95UHwqC7CZyxUaIeMmJaTRks8cY6oS+IH8YyuiVOo0jvevWpUBIL
         W+0w==
X-Gm-Message-State: AOAM530KcbXJr2R/sGIXqZh1gtIjggYOUsLffgZD5H6XxP2d9vgtgxyp
	0n+nfzDogsydItwUjshgzXA=
X-Received: by 2002:a17:906:3406:: with SMTP id c6mr2074952ejb.65.1603372941235;
        Thu, 22 Oct 2020 06:22:21 -0700 (PDT)
Return-Path: <izabela.bakollari@gmail.com>
Received: from localhost.localdomain ([185.200.214.168])
        by smtp.gmail.com with ESMTPSA id ok21sm909368ejb.96.2020.10.22.06.22.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 06:22:20 -0700 (PDT)
From: izabela.bakollari@gmail.com
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Izabela Bakollari <izabela.bakollari@gmail.com>
Subject: [PATCH] staging/wlan-ng: Fix line alignment
Date: Thu, 22 Oct 2020 15:22:18 +0200
Message-Id: <20201022132218.235744-1-izabela.bakollari@gmail.com>
X-Mailer: git-send-email 2.18.4

From: Izabela Bakollari <izabela.bakollari@gmail.com>

Fix code alignment. Issue reported by checkpatch.pl

Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
---
 drivers/staging/wlan-ng/prism2mgmt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index a908ff301707..1bd36dc2b7ff 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -1198,8 +1198,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 			if (wlandev->netdev->type == ARPHRD_ETHER) {
 				/* Save macport 0 state */
 				result = hfa384x_drvr_getconfig16(hw,
-						  HFA384x_RID_CNFPORTTYPE,
-						  &hw->presniff_port_type);
+								  HFA384x_RID_CNFPORTTYPE,
+								  &hw->presniff_port_type);
 				if (result) {
 					netdev_dbg
 					(wlandev->netdev,
-- 
2.18.4


