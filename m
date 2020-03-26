X-GM-THRID: 6808532332710985728
X-Received: by 2002:a2e:8903:: with SMTP id d3mr5683769lji.266.1585234974687;
        Thu, 26 Mar 2020 08:02:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a49b:: with SMTP id h27ls1644883lji.2.gmail; Thu, 26 Mar
 2020 08:02:53 -0700 (PDT)
X-Google-Smtp-Source: APiQypIQeAZPIQ6OcwFmAu1UYRzhkmk0J0ycjOqDg9jWIrREK7dwTnUJsmmu8RIBFfVYMKvQ4sBM
X-Received: by 2002:a2e:985a:: with SMTP id e26mr5655646ljj.17.1585234973171;
        Thu, 26 Mar 2020 08:02:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585234973; cv=none;
        d=google.com; s=arc-20160816;
        b=uupiKER+zWdY1Xt27GnR5rqbFKEav/uyWMnb9cleeP4YXdsegAYifnuxijXXvoiaGx
         KT4mmh2MIVHegmiKUiSAMZGIpsi8oj5oGunTHZGYfysmzE3odTU43yrgVpX6roKBbzYr
         fUnW28ThTVF8wUuoXLgwgG/nZ9iyhUop/WlU5eThULVhMzhBe45cfA5+6SXcuP9FMgGR
         Rj9Qon6ImJZTJ22tValu+nvtNoVb554BOvP0beL9DjdRfrAnUsxQCFjB+s3vAahLKkGp
         gD0ZL7hM3UW9IGmFCeDfPEYfEYHiGE6BY9QuHdyIuctguzCTIJS2NqgDrcmQx824UYE5
         WBTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PdBOG9X0in6FoxDVhz70wgz9kf2q2AJWxIfpse20Le0=;
        b=jarEw/97WwwRcV4rXYbb/rP8VvphdODXjvfRCcUGgHqQkptbvmUabliv73p6kIe1gK
         X6xoi+cu8D2Yklt7VN0b4e1aiVhQpAfmT9aPs1oIAwq36uLAiiS5Kt1nWCpexbk5+/r1
         mgGCpw2SXc13xr+IG0C4+OyAxUrbB/hiXRCUwh2C24V6j4JFjXK7LYM3dXXMTTjmIxIT
         w+ZWSES2Ni6QPnBj9Ioi0W9gplUN5rosdz5t5d5+J7OEu7MhSVXzyOaeGnGZhFVWI3Dl
         Yhu0/iSaJQX9YUKJBI7YkjY3V1dfbssneDDqSi3XqxaZLbbvoeEJpi1CqdzF1f7nD8Fp
         +s3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EgO03eYz;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e4si122028ljn.1.2020.03.26.08.02.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 08:02:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EgO03eYz;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id 65so8257423wrl.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 08:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PdBOG9X0in6FoxDVhz70wgz9kf2q2AJWxIfpse20Le0=;
        b=EgO03eYzGv/TdSBF/WIR7A1AWOY+hNOR37xCYurReNaWcHZNRqTjV+E40yG0agVBFR
         HuOiLfLubzN3EB/j2q+zQ1ooD3LODdr5c/FszEc7iPgNbrKtv0nJaRp+cy6FtP13Nffe
         VsqU+mN0hzBg5cGrFmENabcFkcLmFk37NAWBNAJeWsbjOpTUTEeYV/C3gBiifeRbvXOE
         A/BF9k6fsuJXQCgPS22WT+QAxwOAtn1RED8iXc3YuYNnCDg+Q3an4PTX/6pSgf38tBmt
         H2tT3rA0h2M2NE26l7FrKg+AeAXjo0lVzQ1K95tSd6XoWhe1kYvRzF30PbXp42kavED6
         QfDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PdBOG9X0in6FoxDVhz70wgz9kf2q2AJWxIfpse20Le0=;
        b=ivu8IgcKU68WlemNkcC4QyQfPZWv3i5gd96DzO9GPl9ISgmQZaq///7pN9CHk+Vhbo
         YUvjKiUQCxu+PFcQjeXRSP57t2HEjNDlpbeADp3xrLwCNMV6qTYGOi+9JUxL124LiI2Z
         +VSecfeSNcfMmp4+KUW6qt78wiJbSBv97HNsMO1qHy/UDh77zT2LWKlzsPxXwhiTsScl
         2BZafry6rLISI4RAJvkACZSjjfe6GNMeU+UyjnQYZeS2X/CZ6lbHR7sjgbFd7/bROTVk
         A3fGkOFNkHTXAKD6YX/kSBVdSEDNlmE6KoZyjeoSL0EE+8vtMvc97Ziu3ZJuXh9nWO9Q
         yNqg==
X-Gm-Message-State: ANhLgQ0Zvd+ttozrqcI7Lzmuf6bp7ntglubfDXsRG3adqrDa5tRjkcn0
	1JWgq0N8R3RKdwY8kQ1GbZETm3qmd6E=
X-Received: by 2002:a5d:4683:: with SMTP id u3mr9699662wrq.248.1585234972284;
        Thu, 26 Mar 2020 08:02:52 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.179])
        by smtp.gmail.com with ESMTPSA id b202sm4043634wmd.15.2020.03.26.08.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 08:02:51 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 4/4] Staging: rtl8192u: ieee80211: Use netdev_alert().
Date: Thu, 26 Mar 2020 11:02:38 -0400
Message-Id: <70e8781cd2a9512cb6b3c42400a10323f3024f3c.1585233434.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585233434.git.jane.pnx9@gmail.com>
References: <cover.1585233434.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace printk(KERN_ALERT ...) with netdev_alert()
when a network device is available.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 1e79bc771fce..d8eb907ff301 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -131,7 +131,7 @@ static void ieee80211_TURBO_Info(struct ieee80211_device *ieee, u8 **tag_p)
 	*tag++ = 0x00;

 	*tag_p = tag;
-	printk(KERN_ALERT "This is enable turbo mode IE process\n");
+	netdev_alert(ieee->dev, "This is enable turbo mode IE process\n");
 }
 #endif

---
2.20.1


