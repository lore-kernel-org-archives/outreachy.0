X-GM-THRID: 6674498336356040704
X-Received: by 2002:a6b:6a11:: with SMTP id x17mr8478574iog.35.1554027743272;
        Sun, 31 Mar 2019 03:22:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls1984059itg.0.canary-gmail; Sun,
 31 Mar 2019 03:22:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUIBbQKLFxKU+kO8DMR5q6xyEYugZZrAKLtm16bqoDWYWRb8SeLyh2yMjnwz5x4g1vzi1R
X-Received: by 2002:a24:2f4c:: with SMTP id j73mr4605538itj.24.1554027742178;
        Sun, 31 Mar 2019 03:22:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554027742; cv=none;
        d=google.com; s=arc-20160816;
        b=me7s1Y1onwNAyzbqHo1PS8oc7R+rkNTqKf0AuDVN302IcxU5gI3NHrz5ffXmA8mvy+
         4wzaz79wdlJyimGrwo4441fjXgQGwJd3foRDN4P48ZqCcBlb4dsZzJp9ReF+KaxEfcgc
         ohm1HNk2jp5ajRaOCDiLSPCxwJ+WeERhBQ7ZIxWYaLwNfIfs4oCCpHVNr0HkAycDqS3e
         EBkZQl45woNtAVrdbj7knf/tRKEpIvd1Q2hjI/F9uTdNQWHmj96uu9/oJm3gdrfdEp7m
         4uBkmmRqlLGhUPbpJRWecKd0KoXJh1VuojkMY/+buSxop67bz1a/CgPvx6C9Qylwgd1y
         /Z0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xuLG1XHXK8CFpKN5bY6S9yU/Nj7pCwpM7SW4eVyOP7A=;
        b=JWzUAFbQx7bE+g710QyZezzwODmrha/7vRItzGQmBNgbsyU2/T+jwDriKe0Asfw8+J
         PBD3ygHSOAQZUhQKA/QuGVHyVoaXtx8qrOCec3bxtLBGXM4yoQUugrhjInjX1gX1RaKx
         mLJarlla6s+gstHGIYnZTEGvC4akmBJLuFftmxhVmIyaAnkgDV+bF+0uo0+sa2D3MREF
         ujMoPtPI2DsYKlQX0y/9NB0/wu1G7SfjiREsN/sHe6rUCTE1i80L408XGYRGeLK4Q1ie
         4cZtHZAJHcqTZ0vDQMsw3YATFtMd0R7KMRQ8CGRImNbUjd8GEVHZS2K2Uo6j24RplmS8
         oRuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j5Oi0ZHZ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id n6si312406iod.1.2019.03.31.03.22.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:22:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j5Oi0ZHZ;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c207so3105080pfc.7
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xuLG1XHXK8CFpKN5bY6S9yU/Nj7pCwpM7SW4eVyOP7A=;
        b=j5Oi0ZHZPvwt+tGKfZUx4PgcNEmd10m9KnBZ1O3K4/Lho8KGXC0svB0qN/ltFITSn2
         85ltl5Vx3YPO+EoPt+2/dPlmejX9ets3btVYhGw8Vmk1sry9o2ggl3fnWCABAfvydtL7
         rn2oZ+Hidhyqq6mDV31TNOFbfKCRfoD4hHILpqkp/wVWOLXeLevBaU0FwH2jOexd9LL9
         8glQ4rucAfyra6ewQaNeYHmlAX/xjpC3VluEXuIU7+eyEIC6j9PXhxP/Ml5Wb9Q3QxF6
         qbCy4DfdlPPe76l5qVW6W02RF8HWP1whZcwrVHBca4UKb7fNnGgiA87Yz8Oi3lvT2FXY
         p1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xuLG1XHXK8CFpKN5bY6S9yU/Nj7pCwpM7SW4eVyOP7A=;
        b=n1cE9qP64lNQpQnwTfjAhfTaz7J5OWD7gStdCJg0hLWH1pOwE70yl/XFb+PCgC3wRt
         1mgx332oDZecem99Zed8sxGfL3laFtrL4maR/11UZsZZkpYgbtJQQCe7nv3dYJzj7sZ3
         zfB/qOXWVOfdgCrZiRVJ8P8iZ99jVxsPCO8yqzBujsK9eiE3j8uDmRQjNg1zZPwC9W5n
         k/YLmIyuxHqG7wPn52VbMY581jeTgd3qo7oAJ3gRVJ+Yo0CsUQ5J9uZOwR1s/NJxO9eU
         bdThJC9xWz00lqI0GiQh+KbPMf3q2eA7wcqiAVj8ZB24T78msTbWFWhRQmnskiwnhNWA
         ofAQ==
X-Gm-Message-State: APjAAAUG6LXDMQlboGGXw2u7Xo5zbKnIWU0OMR2G5ouwRd+mkVE3gRMW
	ZeiIPEGtUt2D4qtjcufhse9jqqLdBC8=
X-Received: by 2002:a62:8381:: with SMTP id h123mr3935974pfe.226.1554027741442;
        Sun, 31 Mar 2019 03:22:21 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id o67sm2415244pga.55.2019.03.31.03.22.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:22:20 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: Modify return statement.
Date: Sun, 31 Mar 2019 15:52:11 +0530
Message-Id: <20190331102211.21225-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Remove return variable and directly return the value
Issue found using ret.cocci

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 4480deef95a1..f404370d6631 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -1180,12 +1180,8 @@ unsigned int update_supported_rate(unsigned char *ptn, unsigned int ptn_sz)
 
 unsigned int update_MSC_rate(struct ieee80211_ht_cap *pHT_caps)
 {
-	unsigned int mask = 0;
-
-	mask = (pHT_caps->mcs.rx_mask[0] << 12) |
+	return (pHT_caps->mcs.rx_mask[0] << 12) |
 	       (pHT_caps->mcs.rx_mask[1] << 20);
-
-	return mask;
 }
 
 int support_short_GI(struct adapter *padapter, struct ieee80211_ht_cap *pHT_caps)
-- 
2.17.1


