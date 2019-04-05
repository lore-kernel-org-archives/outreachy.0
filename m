X-GM-THRID: 6676441168066117632
X-Received: by 2002:a25:bb8c:: with SMTP id y12mr2474571ybg.89.1554480094880;
        Fri, 05 Apr 2019 09:01:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1582:: with SMTP id 124ls3012439ybv.5.gmail; Fri, 05 Apr
 2019 09:01:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwgsAMTcZwXPwgEjXIb1tWZHKogG+Vph1f/b7TzaSUaII0zIWOJRz7pzxUHcoBo8uDgbWgb
X-Received: by 2002:a25:f20c:: with SMTP id i12mr2673210ybe.12.1554480093685;
        Fri, 05 Apr 2019 09:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554480093; cv=none;
        d=google.com; s=arc-20160816;
        b=meas1DaWA2SZ50zqK9rAFXms7n4sFGxF2pxwN/uFo55JuVaP57WK/bpoz4qlq3PvqU
         q4TIuUmvPKOlY38s5o5t3ot/1AL6s6hOYh/6gDmcqS7BuEfqsN4FxkypyIb/hvF/H44J
         1s+HYdl+tgOx88RITcED2G96BGlA+FJMd5+Rr8aEE+Ae1g7XZcSMojVR4BWXlJMVbz7E
         vmHlFBbP+Syjs2txHi9eTfSU4ax6G8Eu0XDvUUEFrW1kXzYHHowkt+434YRxwAsQ/Z4J
         zPfrbr44xOEHCw5rJVEiM5RWM2Y1OeBWS3tt1qlxOgQLxz6hE0EL1pjKxYd1BpPFumgB
         kiQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MkBCdkTeVBbZfckn5BDERk0dCG2U4sMle0TDvs++Aa0=;
        b=D+lh/zUAEazEb2Nk0DdFxll31nCYrrKZsBnbtJhvwjEMS3X/bVI4DbOa+M9j/Ri5w3
         VPydkHFLxg2VGSWU00MCxXzyyAdU/vmdiCh/OR4B96UmYQgxurGIpFiG071LsFbA4/l9
         Gty0awh3h28l1+CMhJSa8KoXXy/SKQGXDe3YkpxB0zFALuRvPICwzcxmuN0aZiMrQdMF
         zSjnX39hCO0RWjNlEDT5l69/3M3bPS3hB4Ad4DGZI2UYJ/4/b9Tr8mGdsyj1a9CqgBx3
         YHfzAQoJIiCP32GPkzM9/kx8JBRJLGrQrEihQ+KEklQr7kv8M2GSl+o8gkAIuO9p3IYg
         INAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dVngnNFw;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e3si699327ybq.5.2019.04.05.09.01.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dVngnNFw;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id w23so3260958ply.4
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Apr 2019 09:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MkBCdkTeVBbZfckn5BDERk0dCG2U4sMle0TDvs++Aa0=;
        b=dVngnNFw2Yw0klmh0/v5ofXN1dC38wN/Tp4k21VT6gK+mL0iS0mwucXniu1CAbkrpb
         lJUAGfm+v4X1LOwLZwiu6Sh2GmzwcNBxKLhU7mbqPv9U0N8y2QuwiHKPNSGkEkMTWf7I
         Tru5DM60TBlZF7wGcMqAo9pTytkLpqSPx3SqPpr8dgj76V+D3kwDi84Zg+EJaJUgl4MQ
         OmQdwmZ1G5ND/xnsjglw7JrvUanf1wLIHgZ1xEKorX//1+zxiNx03npkcMf2daBJeOVT
         V6gaXLqZ7DYomKur3tcbkiobXUa7GLDnPEOeHd9c4N+QpLUoW5n5NDI7uyhQoho9mpjm
         5Q2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MkBCdkTeVBbZfckn5BDERk0dCG2U4sMle0TDvs++Aa0=;
        b=nB9HfA1+y57tcMsLvkv05z1vstzObLDCd9/c6m0T5wiH9HBnQK3Ns+aI8ptfa9iKVt
         dFAixPIp+zLXdrAVcYdRH0sbDNi33K0/qTMb9l/Uv5pSFCcSi++ZDZ3DWZG1EGEockR+
         hVgSmX9hzPKJ0AL3rSxHd0Zwq5DioGsDIrNpGb2S42vUk2QRNw8GbQNNoMI+Xp9lazsF
         6EDkkvyfAMe43EYDfo2DisKwiT/5D6bGpiYdZdS1mNhzhcPlnRMkKnJ2bE41/X0bABSa
         b+zFS+ONihbKUyiY68cXskQ7/UXfLuGzzSHd8DEOfedUrR5E+g1Q1LSgmD0qVhAL+deA
         dKaQ==
X-Gm-Message-State: APjAAAXQ746/RSjm/qN5oWdMqVuYXKkHK8pXz2gOxNB5+AlMjUUlWgSh
	LOsTx4M+EXb/ejNQCJRVGt4=
X-Received: by 2002:a17:902:4381:: with SMTP id j1mr13131985pld.75.1554480092645;
        Fri, 05 Apr 2019 09:01:32 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id n1sm25515946pgv.19.2019.04.05.09.01.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:01:25 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [RESEND PATCH v5 0/4] staging: rtl8712: use list_for_each_entry
Date: Fri,  5 Apr 2019 21:30:57 +0530
Message-Id: <20190405160101.8691-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset replaces while loops with list_for_each_entry macro for
traversing linked lists.

V5:
- use list_for_each_entry for list traversals

V4:
- use list_entry instead of container_of

V3:
- improve log message with more explanation about the proposed changes

Himadri Pandya (4):
  staging: rtl8712: use list_for_each_entry in function
    _r8712_find_network
  staging: rtl8712: use list_for_each_entry in function
    _free_network_queue
  staging: rtl8712: use list_for_each_entry in function
    r8712_get_oldest_wlan_network
  staging: rtl8712: use list_for_each_entry in function
    update_current_network

 drivers/staging/rtl8712/rtl871x_mlme.c | 39 +++++++-------------------
 1 file changed, 10 insertions(+), 29 deletions(-)

-- 
2.17.1


