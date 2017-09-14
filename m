X-GM-THRID: 6464947819093426176
X-Received: by 10.129.50.18 with SMTP id y18mr13148676ywy.229.1505378055472;
        Thu, 14 Sep 2017 01:34:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.183.211 with SMTP id h202ls4404003iof.30.gmail; Thu, 14
 Sep 2017 01:34:14 -0700 (PDT)
X-Received: by 10.176.19.238 with SMTP id n43mr12577320uae.73.1505378054955;
        Thu, 14 Sep 2017 01:34:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505378054; cv=none;
        d=google.com; s=arc-20160816;
        b=xiwonRfZxprQ/kxWKJ9eqgKJ16SbCP0IfR/u0h9Mlaw/E9jQ34r72RL/tqe4VLgL3b
         mKYXyBrTlXIsnzoWlVbr0hZ0PYdhAGNt69xYerl/HK7fag7uCow9kwoVF9g05f5nJuAf
         DNrzv+o9qtHRGe7CsdWfvdHNai1lVoKyoizLkTH1v9KFCj7sBXQD8ZGWC1i25ul1T5H+
         a/DS+0VK6Ob7A+1f2hF57r1ySJLhgqZcS2pEnLlwfyyQFW0e37o5vMRsYgC2I59aHQps
         rcKJkeezNbHGCGIDp94jrLB6UIhr4Wp2RAImhowrW7JuHbLezi9HL4FM9bQT329U74ph
         06mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=AUQMsa9kTiDWC8BN0yt230RBgC/9RIZ2ikqCgH13uv8=;
        b=wXeIbuSI0keLgv4poFfLW9Rf0wwBxTU5cetMvfJHi3Hn9AOQ8jf1+VYOS585P+WGUe
         /U/cnhV+IRYtLuK2HSD2gZw3Pv9C6HNxdIPuTQXi0WxczJzO2nXbDyP1e0NfLvc9ClFA
         CF8MNmOsDrzXndI6afP+Ku13aH4bGW+Cgi7xL2QFDU+1E7C3+zGbzGDcxqvDWfonyz42
         fGcE+wOxf0DQGiaTcGjvWE8ceyQOikqyXET6Jelncag/TV/SOWbV7crIoQX5skMnHN5c
         GIc92ZKMwEdtly6DPBMpVjFHaOf0/4LoZ6i5XU7cRsnGPUsqUUXml0rFVT0r9QbWPA1R
         eWEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MEp7RDLa;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id g27si253370pfa.2.2017.09.14.01.34.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:34:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MEp7RDLa;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id d8so1360218pgt.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 01:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AUQMsa9kTiDWC8BN0yt230RBgC/9RIZ2ikqCgH13uv8=;
        b=MEp7RDLaJ5G0vGynlBXoxzBUxpT/gDusWeR3OPKVbDv+zGYPOogHKe4e/fB4+KWMqG
         /8kqijtnN0pOLc13LWWrNsBCQrG68YJ1ghJN78X/P6CulOg4tE4NvuggHdR/snyl1tyv
         gFMNXO9k+HModunSkN6otpyBlXRhv34BY4sQ9elrJNeDS2okopMwLDU507JpwNhWB9Ce
         1Ks3K/Dd7LQHbtdi5NQYnzhALmaUUMwWOBt8JzUbPs8XGQnd+N8xPK5T+IQcxEub/bDL
         xtFpBWlxVWkOBv3t/C7gXkU8yuMHsN5W74znFHMqIjPpE3sTPHl8b+f9UFOyr8bS0Pk8
         J+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AUQMsa9kTiDWC8BN0yt230RBgC/9RIZ2ikqCgH13uv8=;
        b=t5rf1ie+lHgm0PkF54mplk3rYeqm2lJ3iE9qKxrvqaempOOhzpstn1eQYSaWgQdLaS
         dayVNRvvOAclZRZVVCBG00R0LISNiVp7oZi+mNLi7ozpCv3e3hZ3D8hHRilS4QmGfT60
         hYTmtVgCIH/12f2Kl5kqNmnZSIIptiR3xqEX757uGes9Xr5mLmpBak7N+J8HL2M9t97L
         /ZT0YeWiildSQ3XIINn7CYNWmaT+kTC9L59awP/A6tjhh2j9ID/5kD62MQX83w/8Bkk0
         AtPl4OSd7VWT5kDRFljsEjr/H0F3JtVmHIQj8lX07IayUeYamRamj2c/2a2nV0YCgo0E
         4I6Q==
X-Gm-Message-State: AHPjjUicjUmcfuPtwnXkwNydLyZ84IXJwFjaYDI+mNJ/OoYYfzUEnaG4
	Wh+8Je81MPSoLYhKbHI=
X-Google-Smtp-Source: ADKCNb5lFtXJwAAvbnQgzOxRiXLnK95CtTOLN1CJ380O1zG6N9sQA3Y5kimTkx9NSBDcOsLdfvYzLw==
X-Received: by 10.84.173.228 with SMTP id p91mr24118686plb.264.1505378054353;
        Thu, 14 Sep 2017 01:34:14 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id k12sm1748626pgt.3.2017.09.14.01.34.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 01:34:13 -0700 (PDT)
Date: Thu, 14 Sep 2017 14:04:08 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/4] Staging: vc04_services: Fix 80 column issue
Message-ID: <ba40ee7f5588fe43a51bc92b05ed5afaf0f784b2.1505377440.git.meghana.madhyastha@gmail.com>
References: <cover.1505377440.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505377440.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Make parameter appear on the next line to avoid
a single long line and split into smaller lines
for cleaner syntax.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v2:
 -None

Changes in v3:
 -Mention the changes across versions.

 drivers/staging/vc04_services/interface/vchi/vchi.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 9fa9b93..a1c3371 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -159,8 +159,9 @@ typedef struct service_info_tag {
 extern "C" {
 #endif
 
-extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const struct opaque_vchi_connection_api * function_table,
-                                                   const VCHI_MESSAGE_DRIVER_T * low_level);
+extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( 
+	const struct opaque_vchi_connection_api * function_table,
+	const VCHI_MESSAGE_DRIVER_T * low_level);
 
 
 // Routine used to initialise the vchi on both local + remote connections
-- 
2.7.4


