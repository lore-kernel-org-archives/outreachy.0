X-GM-THRID: 6756511751934574592
X-Received: by 2002:a05:6512:6c:: with SMTP id i12mr1928090lfo.142.1573122980302;
        Thu, 07 Nov 2019 02:36:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:961a:: with SMTP id v26ls978301ljh.5.gmail; Thu, 07 Nov
 2019 02:36:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqxQFMuCSs8EQ2sVls5MkoUNoOTtEd/Z9coF3W5sq2UC8M3A/TNfrxJMHEwuFVq6OPB78oVm
X-Received: by 2002:a2e:6c0c:: with SMTP id h12mr1755520ljc.222.1573122979024;
        Thu, 07 Nov 2019 02:36:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573122979; cv=none;
        d=google.com; s=arc-20160816;
        b=sWnwzgRQhtR9CPzHRZ5tkaMMUiNrEpN7q3xVAhGyLlM6AyBfafVG849BKvSfM72L4u
         rKbNsosUV5StEJwTtIi50khVfroOae2jvZ8dezwAGWBQYCUKGMEHKePSHzR/LspVfRTz
         A30xEfX+ghIep+ehZ0Yc8nKWFDsldWy/16MniPwq4uJwpZxj34UXHr9Sn83cxTVAjRtH
         Lhb7sG9P3p7YznHmZEntFI5xx/g+1MJq6cLHgKaWdS46Fttfzw0YfQic6RfsYMAsGONu
         89kvGWv4FZLdxFibyKPBj9DwxOXEisQNV7K/Et/Gs6es1/LEKYCV6x7VYk5X/vSceNFV
         FN/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=teW38WXulAIrUKBNvuumxpbZRbtrGwotg8AiJU+tjw4=;
        b=toglufJ9wKjqg6gUUyPmaiG66o5+/p639/AvtpIL2ikgfYMV9Lq1SvooyHdph0QtBq
         eNht1g9WireSPgsxh+JtGrtGgDyDoprrxHAorWe0+k1+qv3mQCc+/ng0xjlnGSF2Pui0
         G644EMX1mBi+TFpB1YWQlcBUXgQWZXwTZIvuAWYeD0Inu5yMp1T0brNe1/V02psoxwnb
         ORl6mPKoKPVVJOb5Ehh4a6VtU5TR8NanEAP9JDQ0Wy24vyxU9oZtBYPq8FxBI9N3+Ix2
         CLhq8ACQhO3zyYgomp93hcNCRwwgSzZ4tih8sX+mGdHUjnQJQ1hgrk/K3loQbZhbNYns
         9BjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZcNRyt3;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x23si125116lfq.0.2019.11.07.02.36.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 02:36:19 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZcNRyt3;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id e6so2460776wrw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Nov 2019 02:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=teW38WXulAIrUKBNvuumxpbZRbtrGwotg8AiJU+tjw4=;
        b=iZcNRyt3DP47SX6ynhkUyOQ+MvqqiG2DCpTPy4uEpdf/CGYqTGawcGA+YB86s2sDN/
         k0rMrOm9ZIg+M7fkoeNQDzl+0qmlF+eFsGk958hdenhBGS3zOe0qZYHfRXbDvEjRegk6
         LgqPiuri7VPm9HPDo7aePyxU6GwsIemjqNaAVmwStjTQr4WxXYcDcfp0S0iIYt2xb54r
         d4TuFYeR/4Ixj9aShZlIDJPb/iM5Pj1W5kT4rwPadGmS8d8So8VyTq2k0cGrwYeHY35N
         xXx9fQFXQXbNqUx+HChXT+IVTAUC1eW5oU7wOnOZ7sGekBg4vICoxfmU3HbYJzhKwlqA
         asnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=teW38WXulAIrUKBNvuumxpbZRbtrGwotg8AiJU+tjw4=;
        b=pfTfUXKRntG9CcOn51c7yzE81Ztn1EV3qH+wMDAxmRKiEyjYYdvTxyFhZufXnLR4hW
         Pu2tQlP0EUV1NxEflOnmqW2rquHkvHKxWfWXHf7/xQSh8B2OZfLBlwvqNMc9i4IivDE5
         RyfRa4fpaqC2sQrJS693qc/rHV7SqSQQVejvEVuWW89+9EFuCwCGPxaqmdiySOzYF5Oc
         zI+z4FV1B39FLsLDeNOCofal3l6CRmaywA/ZiQxL2qpUU0hCNBeJGJHvOhcfQiJejWeA
         ApoCIujCSVk8CUouxrrFImbF3vWhM2yXPYQLpjWE/hauM++XnIXvaK9vFjvoRWErLuz1
         FJqw==
X-Gm-Message-State: APjAAAXKDHODDg63weMRyrnvWCvvABNxyqyewi1G7HjtkPdkTQgxA7Hw
	RpKFlp8e9q9JhBaaWOZuFV0vv2vv/CyW
X-Received: by 2002:a5d:4645:: with SMTP id j5mr2245480wrs.329.1573122978159;
        Thu, 07 Nov 2019 02:36:18 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id k125sm2094922wmf.2.2019.11.07.02.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2019 02:36:17 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sakari.ailus@linux.intel.com,
	gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	mchehab@kernel.org,
	linux-media@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: ipu3: replace 0 with false
Date: Thu,  7 Nov 2019 10:36:08 +0000
Message-Id: <20191107103608.26598-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 0 with false to clear
warning of assignment of 0/1 to bool variable.
Issue detected by coccinelle tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/media/ipu3/ipu3-css.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css.c b/drivers/staging/media/ipu3/ipu3-css.c
index fd1ed84c400c..f36de501edc6 100644
--- a/drivers/staging/media/ipu3/ipu3-css.c
+++ b/drivers/staging/media/ipu3/ipu3-css.c
@@ -1450,7 +1450,7 @@ bool imgu_css_pipe_queue_empty(struct imgu_css *css, unsigned int pipe)
 bool imgu_css_queue_empty(struct imgu_css *css)
 {
 	unsigned int pipe;
-	bool ret = 0;
+	bool ret = false;
 
 	for (pipe = 0; pipe < IMGU_MAX_PIPE_NUM; pipe++)
 		ret &= imgu_css_pipe_queue_empty(css, pipe);
-- 
2.23.0


