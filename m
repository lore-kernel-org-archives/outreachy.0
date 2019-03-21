X-GM-THRID: 6670848374106750976
X-Received: by 2002:a9d:6f0e:: with SMTP id n14mr2490407otq.156.1553177920428;
        Thu, 21 Mar 2019 07:18:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls445372oth.10.gmail; Thu, 21 Mar
 2019 07:18:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzA+ydNCfj+5QEG5v20RrCNe45TC9shon9aUZ9HEE8Susd8joUkucaEKrv05SPrQ3GFbZOp
X-Received: by 2002:a05:6830:130b:: with SMTP id p11mr2713161otq.360.1553177919056;
        Thu, 21 Mar 2019 07:18:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553177919; cv=none;
        d=google.com; s=arc-20160816;
        b=p2UpzMlJcclyGNVti5rX+NRNhC77rCDnHfcb8qRvrIrEKLMLTHr9sPRQ5NIJvzMolV
         hSv4eShnPq09YqdtrGboHU9NMWmHg0UXhQQNHruh34kH2aSr6RgggbiWqSa5O5Typdyw
         lk3lq58z2jJtWI89oIRvVze9KX2X2Y0J+vcCBfgElH5pAMVw7+kOGza2lVENo0Cd7BBf
         aEslpfMDoZO+vgFhyaPw+etp+IvsxG0TgbGnwCSKPWFOxG9bxDmdh+v5BrSHWlgCIz5R
         v5v9x4JtGz2qygGe6d16gXfHIOUyF/yRl5QyFwlMo1FE/0aZm+DSutjBpW393l2gUCr1
         2Stg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=LR26dSI+bNHcwgIckZ1+PujBYQuC4Sp0f1k1vNxX8EE=;
        b=MEgPtJap/QoTpZgDK/nyWyzpXk+UEl9FWcpk3RXDrH84aJpYvIasAE7p9tpYk54rsX
         Hv945kGF4/SL4YFD6F8bkARWx33QKgHVaxKjH61lzxE/nfc6tKsD73W7xf4fnUqMMXZm
         9b0dPRRA7xBna7YBHmvfQL78xwXEXvbWX4FBIed1nRDJ6jNUkfX1MArel+J6Twjnr9dY
         +e3s3aR7MUa1PE4QhyA3nmUm+1/LK+J0i2+UxTBuad6XH5vyFOhjH5LM+AhUtssgRnLC
         EZGtzGf6Vfu+wcHSDgCxsH9xZYdmrOoSJWvT3/li1ra7ETDqn1Seow+oLdqtYjRJZ+fq
         cbKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kmL6ZSG1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id z22si95658otp.5.2019.03.21.07.18.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 07:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kmL6ZSG1;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id v1so4292796pgi.5
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 07:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LR26dSI+bNHcwgIckZ1+PujBYQuC4Sp0f1k1vNxX8EE=;
        b=kmL6ZSG1EOWneoGF/oHJBQFynrMNY2b2SvQP3mkgskwgxX51MhGqrmH22Uq1Yi8Kg9
         iXeL5VgV3G+Nq5kd7behtyPcKBpaWK60T+yHTI/IxL+SQggBsAxp89T7MFYnSQyvfrO0
         +qh2FAeV6Rsr6oxs3PP1vtADwBvq9FjNYuFU2YmCdseEqwdnup+BMW9J/0Zfb9k6ZlNH
         4jKpnjmWj/GVS4kkmk2ObGnGz+2Ge1RYk98mUNt3PrZuxJax/2FunhxysGQVho4QCVST
         rooTl6seEPcrH6+nbT+Wne3Dqca3LuDaKBbbXPgmAxwRtslebfXr6WFsUJwVroPpAAMI
         HWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LR26dSI+bNHcwgIckZ1+PujBYQuC4Sp0f1k1vNxX8EE=;
        b=RPWF9I6uxVWVGyxqA+9xt3FCZkb4gnbsHFWt0VklNs/Hd7DGYA4/BqLtzi4k4HaRU3
         1knIeUm84Bkn2dPW+mHBHwRTm9bl/ll2D/Tfg4lG8gQPK//7izPAuVmdZsDk6shrDTrK
         ApEsALYFN3QmjcWKyB0u+tec9seODAU+p4+iLFlkHDuVKlZ8cgjcj9i2XIoNBJOTE8Ca
         KwmNttmfRf34wyqVK8r1MRjADjLwoOevzXCqn4zlIkkHVNcVF5zMdYaHVQ+/FUdlwedo
         AqswPmYRn67YQVkxgDJHwcWwFqoqBgwM6oV8xtpeoiPFBllYW2T4KqzZ+aX7ohHcJ2nU
         UxSw==
X-Gm-Message-State: APjAAAUSN5sH+s/KcGwS0RyRfrjxmWIyHQFI4EeDVYRVRin3WIYL2gZp
	Q7zTin74D/PMK1mawSHk4Z4+3czU
X-Received: by 2002:a63:d302:: with SMTP id b2mr3560397pgg.13.1553177918433;
        Thu, 21 Mar 2019 07:18:38 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.235.30])
        by smtp.gmail.com with ESMTPSA id p2sm8212571pfi.95.2019.03.21.07.18.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 07:18:37 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: rtl8712: line over 80 characters
Date: Thu, 21 Mar 2019 19:48:23 +0530
Message-Id: <1553177903-5647-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix line over 80 characters issue.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/ieee80211.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index 2eae11d..4cca739 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -238,7 +238,8 @@ unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
 	return NULL;
 }
 
-unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len, int limit)
+unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len,
+				 int limit)
 {
 	return r8712_get_ie(pie, _WPA2_IE_ID_, rsn_ie_len, limit);
 }
-- 
2.7.4


