X-GM-THRID: 6526240605789487104
X-Received: by 10.55.33.197 with SMTP id f66mr4313341qki.59.1519508800621;
        Sat, 24 Feb 2018 13:46:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.39.201 with SMTP id n192ls5710336qkn.11.gmail; Sat, 24 Feb
 2018 13:46:39 -0800 (PST)
X-Google-Smtp-Source: AG47ELtE7YIKMTg2sFu1thGncpvj16tHNHzDINbBjrG69t8BcRLAAb6HJxY6egewdczxVzfOfOD3
X-Received: by 10.233.232.139 with SMTP id a133mr4236921qkg.25.1519508799270;
        Sat, 24 Feb 2018 13:46:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519508799; cv=none;
        d=google.com; s=arc-20160816;
        b=wp9oJ3HnFa/7Ib7NgHvdtlpNvPX7sjv6DQhbdL9nwn1dlDVlJM6RCX6Ckfp3fbbwkd
         lXGiTj+lHBZFAZbRmG6pnsI/3cw+5o7RmDAow6NaMCnDT7Rbr8p/g60SpQ/ksfRGxg0Y
         crTKjFVMAHx1MWhf22Fs7/QfS8979gvewcpBeBi1+v8OD5WEvZCPzZwUlC8dbnrOr/kM
         Jxuz7jmVGburmWahfcyGAYcP30GMRcXfovtQ5Rkl7qTYYwML3G6TbKLMhZ7+4MOYkmBh
         +SejAIEDvkq4eD4RVe1sbYeIclHZvjfa8yq7WTTALLfMGF4ovtZzIl+XJTStqNBV6OXy
         HSlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=yZ1rSBywqeoP+wHxAF9+DLeOYdpih3am23bzeQp/fVE=;
        b=CsaSUQWNcIl3gcE8hWhuq+k65NN0Yqy+0Bw/swGsOhtNo9AxSD26w/zLLaoeD5dXXi
         ZJ9GxkYYdpab5SZ243OVF70SX0FDTuqq9X8cqTARphCs6cryi4QxMDSL6l/scd8irT3N
         +v7d8K/3fbV3/AMf52RB8CbFDL+dgZiGbB0uyAh1haewt+TlW27X61e0rB5Q0YcJzLED
         Zr7GBmAhNje2bBcK5oZ/eTYZJpkWAwnwfXaEffWbuvQ3Hqmfn22YMpV/2xFF4rkqNSe7
         xdw1beg3uRZ3g/TAKZCid8mkAR7IgIbONd7yZEyvwzXMVSyzf0PcZC/YY/u9XRVo0ebU
         7K1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q9QPRTWi;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x231.google.com (mail-pg0-x231.google.com. [2607:f8b0:400e:c05::231])
        by gmr-mx.google.com with ESMTPS id d10si342286qtf.3.2018.02.24.13.46.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 13:46:39 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) client-ip=2607:f8b0:400e:c05::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q9QPRTWi;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::231 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x231.google.com with SMTP id l4so4719626pgp.11
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Feb 2018 13:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yZ1rSBywqeoP+wHxAF9+DLeOYdpih3am23bzeQp/fVE=;
        b=q9QPRTWi+z7Cd5noum3RbF/988yBUSC9t6cu1Swau5BR2mj/p2UQhqHbuDpo27KKcp
         2n25ZXEPtl2G/Jogcfa9fEFDSVb4npILQyHpAlnD0SFBzqNd+ziFykX6Seie4KhNKKGY
         +XDm7wKsBLfOOjKELubPRALk4K9uP/zleJ+lBwvojh7+n91Hif5oOMUnEzDpBtnj4Z3X
         hXGOXJVZpYNI9323MgcszdWseLRxacIGUcPAcDemrE+UL13+7qsjsktWk/4eP0eZVlwP
         ECkg9Wo69DjhCxrFto0NUS0hKPz0JnKeMmuEesMWBiukI0FkPaECh7Gb1/jCFjKQ8A9i
         sLog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yZ1rSBywqeoP+wHxAF9+DLeOYdpih3am23bzeQp/fVE=;
        b=Nvk9tU+xe513iima8C82v2nZPcOvlXWmMppXBxtQEgcHUAmJg8izcZSqDEio/XknXa
         OkzVgZA7VJfGNjAppN/Ia5sC3oi3UnIgSWW1DwP0bqttkZrSoC2PEcn2DDAkvFr7JYAH
         sxZBPg8j6+GNgB4d21meSMXEFfJHwgxFaBUVeklip6uxzwh0Fn9iYnvBYJcTYYK4IB27
         k4ZsGZCI1X4pJmqeX2o9FBX4ClR3rzngYa/LOq4210Gj6HQAtXpppPU1PXrSbJGBOABA
         XM7LaEsnQlok+sRyKYuIaRS1CpvdR36yllMg9Wa63TMf8qzxZC0K12zsi4M5Z3QJx5aQ
         UC/g==
X-Gm-Message-State: APf1xPADI4BrAxoWwo1yU1qqnmNBWPmDk61TqDVunbH/IWMcjUg6Bu4+
	EjE6rONAmNPbF/cwRpXOLIs=
X-Received: by 10.98.65.72 with SMTP id o69mr3902236pfa.97.1519508798902;
        Sat, 24 Feb 2018 13:46:38 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id 7sm10997737pfk.72.2018.02.24.13.46.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Feb 2018 13:46:38 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v3] staging: rtl8192e: use struct pointer to get the size of the struct
Date: Sat, 24 Feb 2018 13:46:33 -0800
Message-Id: <1519508793-11537-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Use pointer to the structure to get the size of the structure in order
to conform to the Linux kernel coding style. Issue found using
checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Change in v2:
 - Use single line when the number of characters is less than 80
Change in v3:
 - Improve the subject line and the commit message
No code change since v2
 drivers/staging/rtl8192e/rtllib_wx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index 03fbff0..74d4d2d 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -371,8 +371,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 		struct lib80211_crypt_data *new_crypt;
 
 		/* take WEP into use */
-		new_crypt = kzalloc(sizeof(struct lib80211_crypt_data),
-				    GFP_KERNEL);
+		new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
 		if (new_crypt == NULL)
 			return -ENOMEM;
 		new_crypt->ops = lib80211_get_crypto_ops("R-WEP");
-- 
2.7.4


