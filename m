X-GM-THRID: 6949544081527668736
X-Received: by 2002:a19:9d5:: with SMTP id 204mr2499016lfj.378.1618066839755;
        Sat, 10 Apr 2021 08:00:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c07:: with SMTP id q7ls271010ljb.11.gmail; Sat, 10 Apr
 2021 08:00:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwYRmokVFa90MZZh9BgJthc4j8TkxeSsHBcrS56d8Ab4aTL6guycsLXk8qjiunZp+xbdQ8m
X-Received: by 2002:a2e:96c3:: with SMTP id d3mr12906425ljj.284.1618066838027;
        Sat, 10 Apr 2021 08:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618066838; cv=none;
        d=google.com; s=arc-20160816;
        b=NbvHHfex1EHAFiJu1pdvbx3DGpEoeT2suG2IPjWOwct4VAfRtBpoyZkDjGiRhnS9ia
         4WZ7gCGRtT2Cmh1XqBqg2so4pwGSs9py4+8JDeVPcZstojwT6KaNqSOFhU+B72paXw73
         VnEuWoH8CGeTkCFUtVyLpu4jM3DzXYKRbNxpveyISbDK3stJnEJNRiZ7XTOO3dQO0T8l
         S4QFtDejWnZJLRua+MeO6w1iNTZUADJsvP4Lkw0sF5KBxwTFin6MjY7bZ4mfVCypVquh
         i7suFEA3adJWzUv5vlblifMKqn7U8jfPdo/gHTvaUISfaXPuVfP1okiuSaDV3hpH8BIT
         J2kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bgdrPa7l5L6m3hWfj8WaDq/TG4IT8UX2aSD3AHmvjM4=;
        b=Ep3LR9bZXHa0EgQmUAyCMUImCRsSl8+/EIfvnJi28SRD3EVZcfYJBEctv8wY88chnp
         TolAfQ+wdESyrqHNTz4xlRohUz5jL8ghosfBLVcrQrZl7i9Ep5mWXGEAtzMRKR8vBORR
         R5lYvargxFGJOgB8vXlhWRnb9dMJZatAmVmx2hhFW280IsI0XZ1LHEKlEYtJpM97oP28
         VjNofxceku27DoB+Ay1IYRyaCEt00CgS3y5mlBML2rYR5qX3NuOjR9UQ1gZUbJXJajtc
         SAMNIhHp4Cst9kwt/vXTnDTMAXTr5hHZvZwj/xhQ4F+x8CT1sjZXwDfzk6Io5q5s3VYq
         jbsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a4++dpXf;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id j7si397255lfm.9.2021.04.10.08.00.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 08:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a4++dpXf;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52a.google.com with SMTP id e7so9843634edu.10
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 08:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bgdrPa7l5L6m3hWfj8WaDq/TG4IT8UX2aSD3AHmvjM4=;
        b=a4++dpXfQhFANQH3JEHBxYb72PGTgDy2ZZOmdYrZUjZ0nq5RFbDPFAubt6sH6KNe7+
         ECLEWOqho1uHNdpZLJcz0V0q4ft43WUZ2h6EUqz//pH7lJzYfIdlpmePYqVcjFbFkH0J
         McoflhG6YzEg8rUs8bnSajnmEGtaVLM79+CvlortLqdyluzfIU3y7PVNosNraG9e78MW
         bEdQnwJ8HqN7eNCWrDclXIjLFbk/iRV4U78zU3pFd2aIWTOeGleWl4ACzmOeVCLjw39T
         OnR1R4wToexQN1eA5nJi5g0FjRvYdoVGm1tn2xLFJ59Tsdibq6uydyc+FiNPmo7wvvyO
         UtdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bgdrPa7l5L6m3hWfj8WaDq/TG4IT8UX2aSD3AHmvjM4=;
        b=bJknf1JisSuVuJsLrxTDYR3q/kLhEBFoi0DE+LFm27N0f8BweCb5NoFsbjQz7cmBp8
         O3Cvf/pC9KLEeEBBYE18piTEXbnOvAUF81Fkkk2YPZJLKnhaRuZPoYMg3ph1+fNbi19R
         CyQy1b9yp6QIgs9FzG6uS5E95CBxcRRwZC3nWGMhuonA2f9Zl/fhQhOsGPloPl5RsXwv
         +9HVIVXBdjH/hZOy79dVNjH7dbkZISn2/160/6eYBw2gpK2CKPAw4+/O0/ldlWASYbtm
         8BLFU76eZla9GClRZxKZYgTNfahM1KEixVqooZnebTfFL2bwtGEqRv0FsE5gSBtiIZyy
         KSYg==
X-Gm-Message-State: AOAM531K/Y95E95V62vRe1fS3cBhQDzrQO80XDBNH0kPyoxvDytl38WL
	SB2383FXlOWKRf4h8ThZMZU=
X-Received: by 2002:a05:6402:17af:: with SMTP id j15mr22330057edy.50.1618066837748;
        Sat, 10 Apr 2021 08:00:37 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id gb4sm2719494ejc.122.2021.04.10.08.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 08:00:37 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 3/5] staging: rtl8723bs: core: Remove an unused variable
Date: Sat, 10 Apr 2021 17:00:06 +0200
Message-Id: <20210410150008.5460-4-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210410150008.5460-1-fmdefrancesco@gmail.com>
References: <20210410150008.5460-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Delete local variable "u8 sec_idx" because is declared and set, but never
used.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: No changes.

 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 2af66a18200d..3fd8a4261ea2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -628,7 +628,7 @@ int rtw_get_wapi_ie(u8 *in_ie, uint in_len, u8 *wapi_ie, u16 *wapi_len)
 
 void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len)
 {
-	u8 authmode, sec_idx;
+	u8 authmode;
 	u8 wpa_oui[4] = {0x0, 0x50, 0xf2, 0x01};
 	uint	cnt;
 
@@ -636,8 +636,6 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 
 	cnt = (_TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_);
 
-	sec_idx = 0;
-
 	while (cnt < in_len) {
 		authmode = in_ie[cnt];
 
-- 
2.31.1


