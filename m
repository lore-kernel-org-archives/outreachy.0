X-GM-THRID: 6673442126229929984
X-Received: by 2002:a1f:ae53:: with SMTP id x80mr5563289vke.8.1553965970407;
        Sat, 30 Mar 2019 10:12:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:fb14:: with SMTP id d20ls1159942vsr.5.gmail; Sat, 30 Mar
 2019 10:12:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwaAgYmMLrxkcdzleXu3z+lPzJW3KowRv/noBL6ryGkQv2lOXsCe0dV3CYBUTaBk5H7SbH0
X-Received: by 2002:a67:7e13:: with SMTP id z19mr2117665vsc.32.1553965969925;
        Sat, 30 Mar 2019 10:12:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965969; cv=none;
        d=google.com; s=arc-20160816;
        b=Y2/k0n5Xyf7C/gwEZ64ZCS9LbFIhGC06hJ6cpKFdEkhH7//h8VE1vyQdfjKkKR2xsr
         OQDpjz/8Rp4ZmcGLcJyd5mpHT3n5L+9/VVKFyd3QeJ9e4LvUytDcU0Mef5T5U+17HcmW
         muBAoaCk2HqBou+ijcJwy6ZPFjSbtUNncCgMUUL+C2P++iNBa9+VXqCEJ/JeLnKYpgMY
         EK/upWF4EVWDdl58WCIfU0tYDMw/z7UUK5GrTlL7UtMmIZick79pLW7Dkh72u+iyXngO
         Op/LJ1oxooFKIYCbc9copOlV5UkwACzxGkw09/Svz3HV9JIaaPBFeYyAcH37bEks7vs9
         w4GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=rcXu/+zkKpkyCDTyDbr0SfMGuH+Ca5Ri2ec3/lkluAU=;
        b=lkcy3SCw3VO0RMKwuvDYGsP+58eTnxbABKO8lgl5o/oTXJIlalXY6gEDKhchN8F+PZ
         JkyybmwcDC+/kzGbi8/eOVC0zbcMIrHpW8lgbISeDkl//Rm1Hlla8VLTTCedZH1DPp7+
         jWLeGw7wiVzxaTii0frt8nZapIBc8g9OzqVdopM82fX5GvkFKY/+fm2SE5b4s8SxJkJK
         3xhRQ8P/uo2DhFVXF0c4MDq6RH9G9cPBpVPDaTYnrZPaopJ0eTDUN0YYxM1CLGy/3p/D
         3CqL9FDVZv3CSwm4/sUbyarJoVrDxzen5rKEZKCcU2rIHYjb4cPK2T/kjeDlXpIBAFeB
         4N2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y6740gZo;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k77si323133vke.3.2019.03.30.10.12.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y6740gZo;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 8so2508377pfr.4
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=rcXu/+zkKpkyCDTyDbr0SfMGuH+Ca5Ri2ec3/lkluAU=;
        b=Y6740gZoQlgntIXBStik1q4b7AnaNVe/LVQizZLGfaIAgaIo++kv+oRnD9yiudpCi9
         vnvT96p0jBJdk7MORbLNJjJTYwMEDpoAKxpycx8osi7k3H0Mehkhxv4uZW/96FEnx7wk
         cMDtviERHY2JKP7RIh3OuT/Av3spB/dJQR8+1rNFtdfh1ohUQY6q2QrKFZg50eacNtn0
         0AeMsLw035IixzFipUpxBe/dD+aY38ViUcSYNBS2QmQ3NNqsp4vOTLaKKiqa/wKK5VFF
         eRXGxRibL42xUbLlXVyMJpMlheQiYkWOtjnYZe55kcjMDL4rCJm92bJvoI7qIja28/vF
         7HPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=rcXu/+zkKpkyCDTyDbr0SfMGuH+Ca5Ri2ec3/lkluAU=;
        b=G2LSj4LVSBPqD5W3joE1fpp/2lj4uerJcix5W8zPlvYw/oBybscLEV1bU8qC+cQI+U
         1WCeaOpDBEz+cLpySD4kdbA1u+jptQmq6WHbCERxfbWjjE6LJTaSFseHAAKJ5hrLrBeV
         hLHAat7pudpmXv1SHZZNLYbo7hh31VkVmqMlKtMWmNA+Qcv69LCtKP8+JNCraZxtRjLN
         cOnt+9RWdFP+k32CJOjg6MlTJq9j4WUn9HZ/SdiQc06ODui/j49R+dTocrqqmGLWLoSE
         KRqDHjiBFNDEE56pxJeDeOzsq1QV4SeID7rlEITDlHexnYICZ3tUuLfaUQ/k587uk49c
         BdOQ==
X-Gm-Message-State: APjAAAXb+cJ/H250oDYlSnMVqkU7rU6w3GOpQAGW/DRKLdyOaQqGBpWX
	VTpERi0DUq2su+PW1sg6fYYikv2T
X-Received: by 2002:a63:384:: with SMTP id 126mr22979578pgd.341.1553965968765;
        Sat, 30 Mar 2019 10:12:48 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:48 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 8/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 22:41:55 +0530
Message-Id: <35e568818262f50fe80649391c16120dfa865c14.1553964404.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around an expression.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 8fb03ef..68fac89 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
         if (pPMK->cmd == IW_PMKSA_ADD) {
                 DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
                 if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
-                    return(intReturn);
+                    return intReturn;
                 else
                     intReturn = true;
 
-- 
2.7.4


