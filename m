X-GM-THRID: 6808276319540871168
X-Received: by 2002:a63:b706:: with SMTP id t6mr5196334pgf.329.1585175357069;
        Wed, 25 Mar 2020 15:29:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:af5b:: with SMTP id s27ls2377373pgo.11.gmail; Wed, 25
 Mar 2020 15:29:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt/yBmIxhCRleMvamCxAIdrjasM7qsLnVvMjzqI/ClzIsTb5QD43dIuM+FsGol0W/eTqHcj
X-Received: by 2002:a63:5ec6:: with SMTP id s189mr217291pgb.374.1585175355578;
        Wed, 25 Mar 2020 15:29:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585175355; cv=none;
        d=google.com; s=arc-20160816;
        b=kqQG5tHTOhPO+htGg6JXTO8/w6gu7NhNbMp/oLeRoi3ooiESzLC/lrGuHfuNuM1uG4
         8U8ZWYlmuPpfc+8tAmZkPrf/JCs91pTycwDMiFB/YF5vwCacNkx7Eosura7yjaA8dyGr
         gafGEJzIdpOnHg5F2OklvAMeULA/OfZjXqkuXjYQu7p9OCATFaLVOmdRU4j7+mATifNn
         KQVCTfDbTPkjoD0XnEtbUzvby3RI2disI92QngaGm8ZhEyPNVPqkHZfKfuSNqF4FK2hi
         bbfDC1TWwdPe1yCgYYeAWoGdDwftjzqFGMvJr2avLqVj39H8Iv2aAt8wTEgZtZMlYhN2
         wyoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=LyYXufOUFN5oWBOpcmZRLdaTepJDZ4LbjSQe+KjRvBE=;
        b=lWu6C+3aIMMTHyjwA3U60xop0E3heu+rf9S58elhHJMNbU87IScxSTP0xWgn1cItYw
         njB9gz0ep24ag7RWxmVRmUgcr3H3dkdVFYP15W7qfjlCWCCKS/4iiH4uLwUY1qwQO1Z0
         dHa2ikLa1foE9Y7myorfLi+t6qFqN3PP1Q2Fe75B3jyPv4w6DziziYavxU5ckF1sjR0D
         tmys6B8+j4nbEIVVB233QNb9PbVDLmFgSycsOM1x7GeTlBgCw0BSuuv4OzSQdYgANa5K
         j8F+V8adZ+BRz+mfydkn0JpOwr9ReQU+FNubgXTAwx7dKtz5oEIsvLWPY4k+qma2YfAR
         cFaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0LQdQfY;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s63si25459pjb.0.2020.03.25.15.29.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 15:29:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0LQdQfY;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id d17so1881688pgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 15:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LyYXufOUFN5oWBOpcmZRLdaTepJDZ4LbjSQe+KjRvBE=;
        b=I0LQdQfYqfNHczc5FQJqWphRXlzTHmVhPGME+4aT+Ilzoe8LG3uOCvcu28FImaWJb/
         ioLl16u2QiATn4zBW7UhDlJLfax8+0z1CHkw+aKwhU2QKAxS+oYyY24YZhtOaIf1fz0x
         R7U2Zl12Yb9fA67w6yzcdbvksYK/jrEKu8+7L988J04CgE6QYM8XR2yBx1WeRsLJGrR6
         ST/YLPsroAsBaLG+BmmQWPMz/EHFQtX6sjxr9Urd7HC0WOh0y5Of/AO+FzSXMD2B/0hi
         ITbX7G4tNsJK5VoeM1kfVcjo9esgd92BTt+pR/oAGpl5gsVOqcFE8uUwmff/eDQHIMGi
         Stlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LyYXufOUFN5oWBOpcmZRLdaTepJDZ4LbjSQe+KjRvBE=;
        b=npluova843zZ+n49f/B8cKlXsB3Ebb731E3ZZZJsgfH88wftri3ZTOS37NElaIVH8w
         b34K42bGPdIw2BrWGmKQ/AvpkeQfzJQtK6Fg0eDdSskWmYIFXixfeAPHF+I4z5DmMjO1
         FHruiUkBw4kxz0inEwaf08xJJlmofV4OX324oWkxepI+iAJqJO8SMXpUnXnhoFBzzUut
         8dkREs+gZx3bDuvSGt9xlf3m44u0Hqr7YM0pmZq0B0hxna/c9AWHLy3oYWzJeuiPlpio
         r9CYyuXMKu+PwQ5v/qJJfwtTQ/BtL2fRyVg9CSrLjW0SoYkp4bcwI3N+TzMDXhibH9Sz
         dmlQ==
X-Gm-Message-State: ANhLgQ21/Gig4y2IYoV28YLlKhx+VnrsT+SAJaBwTCt1r3FWDMA9G1A6
	mZYMrJjWKFQ0f0JD0/PcZEhStP/Vurk=
X-Received: by 2002:a63:ef41:: with SMTP id c1mr5068479pgk.195.1585175354567;
        Wed, 25 Mar 2020 15:29:14 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id k3sm129301pfp.142.2020.03.25.15.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 15:29:13 -0700 (PDT)
Date: Thu, 26 Mar 2020 03:59:08 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: Clean up tests if NULL returned on
 failure
Message-ID: <20200325222908.GA5370@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:
@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 29f36cca3972..5c27c11f006a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -474,7 +474,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
 			pwep = kzalloc(wep_total_len, GFP_KERNEL);
-			if (pwep == NULL) {
+			if (!pwep) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
 				goto exit;
 			}
@@ -2137,7 +2137,7 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 
 	param_len = sizeof(struct ieee_param) + pext->key_len;
 	param = kzalloc(param_len, GFP_KERNEL);
-	if (param == NULL)
+	if (!param)
 		return -1;
 
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
@@ -3491,7 +3491,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
 			pwep = kzalloc(wep_total_len, GFP_KERNEL);
-			if (pwep == NULL) {
+			if (!pwep) {
 				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
 				goto exit;
 			}
-- 
2.17.1


