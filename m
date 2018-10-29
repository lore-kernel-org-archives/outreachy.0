X-GM-THRID: 6617910833765679104
X-Received: by 2002:ac8:5555:: with SMTP id o21-v6mr248878qtr.41.1540852439073;
        Mon, 29 Oct 2018 15:33:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9de0:: with SMTP id p32-v6ls4425532qvf.3.gmail; Mon, 29
 Oct 2018 15:33:58 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cWsQgKTV3uZN7KuLW1NpQ9LFCCllyu/S96N8GQiudkft1fbatjtc6XrlTDkyfZF9E3N83p
X-Received: by 2002:a0c:e752:: with SMTP id g18mr13102848qvn.8.1540852438401;
        Mon, 29 Oct 2018 15:33:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540852438; cv=none;
        d=google.com; s=arc-20160816;
        b=EinvN33a0VIYn9Yj/qPdwR9pY71qzO3vyYMLXTvYHsQt8ET3wiXWJu+4WB3S1pYkBF
         piifAZ8hi5E17a52BQRChEs/ZaQ8QpHT4i/wn8EFRE8bHrMcM1JOW9i2VW3qLNTz/Mc8
         QYF7WgAD+W6gPCs8sxxBgs2ioOVFp8959rPeMX8SQty8mR1vae9gvMKM4mlO21y1wmkr
         93CD+9z99Cvj2pu6bNAClexffuAQLmzCxU37ZEEH/ydy8lAguHjx9aUvYZFkP91ONjUd
         Nq/tKXLvlKFn/jop2OLtLcNoRT/oU7Q2hhD6IhPkcEBaowo/nTJrtDw1Je1AlLfT5HbM
         n8hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=vJDWuBtkLF8v1VsPtYKdSteAnpNhAA8jWiaLTn4LVMU=;
        b=mZxj4Uv3Xu8JJOQ3+cIwIYT3u0Sya9ExPXziuIp+kLou+vVQ5KSBwMUKnIpMQv5DDP
         lwbt3WfXFMtUmOmBaCgaJLLXK7dFMNEktrBhCsRsQyguqm6A2mc22EuY5k7X6tgP8bBY
         ZahVe7UBwCo/nCS6E4/g+inatUUGhtcuk6QNr3VvnJ9cotoiXWB9XdaTjHTg0zZ6spuY
         tZOe2bPBqRvl6HoGQ9zSZdaXadU1UYM5ICjOYdiSitgnKdzH18CBMRrXP3tuedIf7XrB
         RVgQEF1Ms5zbNXLiJ+bK01n/4pJoejjk1Mqlt/vD3UX/lpSjg2TvDtOK1EuK+XVuKQgm
         R+FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WFZ4h/Nx";
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-it1-x12c.google.com (mail-it1-x12c.google.com. [2607:f8b0:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id o2-v6si1145576qtc.5.2018.10.29.15.33.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 15:33:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) client-ip=2607:f8b0:4864:20::12c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WFZ4h/Nx";
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12c.google.com with SMTP id y123-v6so5364687itc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Oct 2018 15:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vJDWuBtkLF8v1VsPtYKdSteAnpNhAA8jWiaLTn4LVMU=;
        b=WFZ4h/NxdHjGmHcuL4bOeNd2ak0Izfi5OskvuZAVl4rkm50Oy7vAzI53a2nzVsVGqn
         Fy/UR6WYpgEjTTG7caBM5mp1iTkAAPDb0KLg/4rPItgGh49vCG1N+OKLnirFVgfw+f+C
         XMHRIgmRCWF43k0YsoBxhxO5mzX/eBgARHsqseXOdmvD0nCj2OQKksch0uOMHPtk5+9X
         M6lHSgLvF0jJWnFPlwSc85rfiQseSZouK57oFh7QdykUozEtLzwFClhIPAraI9ySgeSv
         yQU6cmTT0AqhD0kzdrushn1Lm2xW2/QRK23R3HP5h7MyUYY6cxtvTc63OgF/Xn/xzGRo
         gQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vJDWuBtkLF8v1VsPtYKdSteAnpNhAA8jWiaLTn4LVMU=;
        b=bmLvKBDcAgC/ZMy8IKW2Bwcrcgf7153GFhm3+mQ8GO4Mj9rZqyx25Sm9i2gT5U286L
         Ek0mx8VkyBYvyymguwL96xxLogxp6qC4oz4K0Rhz/RMg7PCqhMIvkLICTRTBUisO9diI
         jW1b+Y8pQNlmxwKquHptKCvBSJe9N9paztfrZj67a3G1/p+cnib6QAOS8AlT+pxOl++A
         e8jSqjVk+RyYgB8Li7rBJ/j8YQR3wgfqYfxNVEQ20LsUnxqlHdQ2uyUopBhA8GUJN9qC
         DT57Z2z+XZsPQwHmp5acj2FsD6TzZZ65UQkwJwWG1MlQOGoyJ5qqJqm835nFOItX1acE
         sDgw==
X-Gm-Message-State: AGRZ1gIkap3RkpVRX50W5aajZfFMnocrZ1GOIUfyeLT3BL4Wf6ey6FaU
	kRHgeBcL9VM7zl1mjCQVtw/4WpclkAs=
X-Received: by 2002:a02:4f9b:: with SMTP id r27-v6mr11260420jad.97.1540852437612;
        Mon, 29 Oct 2018 15:33:57 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from ubu-Virtual-Machine (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id y22-v6sm7409427iob.79.2018.10.29.15.33.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Oct 2018 15:33:56 -0700 (PDT)
Date: Mon, 29 Oct 2018 18:33:54 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bastien Nocera <hadess@hadess.net>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 0/2] staging: rtl8723bs: core: cleanup blank lines and
 indentations
Message-ID: <cover.1540850888.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patchset removes unnecessary blank lines and fixes incorrect
indentations in if statements and for loops.

Kimberly Brown (2):
  staging: rtl8723bs: core: remove unnecessary blank lines
  staging: rtl8723bs: core: cleanup incorrect indentations

 drivers/staging/rtl8723bs/core/rtw_ap.c       | 214 +-----------------
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |   2 +-
 drivers/staging/rtl8723bs/core/rtw_eeprom.c   |  20 +-
 .../staging/rtl8723bs/core/rtw_ieee80211.c    |  25 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  34 +--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  14 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |   2 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c     |   6 +-
 drivers/staging/rtl8723bs/core/rtw_security.c |   4 +-
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c  |   2 +-
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  46 ++--
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |   7 +-
 12 files changed, 83 insertions(+), 293 deletions(-)

-- 
2.17.1


