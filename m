X-GM-THRID: 6470705412124442624
X-Received: by 10.159.195.2 with SMTP id bd2mr36499plb.18.1506762452174;
        Sat, 30 Sep 2017 02:07:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.132.103 with SMTP id 94ls2750160ple.9.gmail; Sat, 30 Sep
 2017 02:07:31 -0700 (PDT)
X-Received: by 10.99.121.141 with SMTP id u135mr991380pgc.156.1506762451621;
        Sat, 30 Sep 2017 02:07:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506762451; cv=none;
        d=google.com; s=arc-20160816;
        b=fUMHmAQhoymGgLJ3QzMIWtY6kNg9gBz0WvQwaTqKHjO+sFqY2wntsUMnvD/30TvndI
         L5f4WbB5OXe9gYWGeA5gifdYkqgkSIqC0+EpLfXVC/C+WXsSaI2Bq4kiXkyFLZDhf8kA
         X/HqvMT7XBTsEpXtomGwU1Vp9RZ1tgfaFnN2LoshMRkDOV08Qs+hyazcGDvZqomyeKYo
         V7nmQroNlmfklyT9rH0uumFNarqxciOrK7vm14fAecLW3cTlw204wZ1gUUt0ptUpAYFc
         oMi+C6aNw9H8XkOYsTcg6T9H/vIwulp+0JZ01CtlLAGtWWh6RS+uq3Rp763yJjrXDqIf
         9CbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=CrK3nm/0O0SWqsq6uM1BSy1oAI58XiN0tKV0znwCBEc=;
        b=XI64dvu5pCA6hA6kxVPXU2mnkBEi3zCVmj1fN9Pt7LeWC7a/DlANjD6ukkD3pvJMzi
         KkOJItTfMK8srkAIHx8wUI9987eBEa7fSUGsPPeSTv3DWLrzn/psvUAyVVzRAdL4+g0U
         H9oDXgD0qAZkqyFDctu2w9C8Z4BPbRXEXa/aErxqMdJKJgjfpg4k8v+oxiS4pZTh06ob
         jqLSI7aNhmpy+uWUBu/9us9vTryyDkoyh8m4C1WFI0DT9hrL8tcs7b1GXnlhv9HvUh6B
         ODyriHVVr7jKws8ioSisgezr27xfg3ZPugyj0hn6riqff/HLU9o4thZESPZatKO6DYRw
         hWsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SJQ6US5F;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f13si703492pfj.11.2017.09.30.02.07.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:07:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SJQ6US5F;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id g65so1253510pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 02:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CrK3nm/0O0SWqsq6uM1BSy1oAI58XiN0tKV0znwCBEc=;
        b=SJQ6US5F5hVAm+BN4qAZZ4blau/p2SRWY/1sl8TdoAMe8svMHOvAmGkCwUvI84Kpui
         gINhTqJY03ttFgZOSOZiVXUINraJskVCKl/uk2NppiMEijC2/ZUdSNRtyo88oQt+9sK/
         HeQWZBvorbR3tPecYAuOKI+cr5zfQQ5hi6FeWoUgrEgfukF4G9MD4E2qRZAdyJw9KRB0
         eprdOUj5rJhwGoeQLVNFEPy1PhKYoMP56pG8YfKYmX/YY1DLmkV3/jLdTmN7QdWuDobe
         KAchx3wEuiGVgRr2d+r2odEu/rt0/GOlJ32GjUk4Ng2MNrCed9P1SjZ+p9un7EJxYf0J
         pT1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CrK3nm/0O0SWqsq6uM1BSy1oAI58XiN0tKV0znwCBEc=;
        b=JeWJWa8dz86ULTBPrkeUZ+kuln1Xw9T1d7xpD4KfVNuxUcSGDXnLWQsnKNgTn9Pt7G
         9U/Cv8kU1scIbNVo+wDBfDQSmFLbrK6HkL0/ZICjlTYA7tbc6zkH3cDQcKJKce++1039
         VT0PCQ5CabvehrnHfOCo5va4+7ReJqPgeVWEIRqBGeDns/xvmDg/YMt6XeKHkmS9aQIH
         iuFc5GmP+JAYPJLBJFgjH5VQPD4Mi4i2/kERaRytqV84/o7sRdS6vAN0/hMRRCxnIXSw
         4ogrXKz0r/Jo6bmcgAxgtjdt/HuC8i58qrwESp6wEtBuBeB9WdGQ3dmnOwHV/nBqgSaD
         RivA==
X-Gm-Message-State: AHPjjUhDW4hpKCrX1O311I+7AJY7wfnvbmnGRUuAT07ou3zwUOJeoN2n
	l5YEc2T+DwBwgXLMSzNZfeE=
X-Google-Smtp-Source: AOwi7QAaoPLfubvObTfEP80H3obXXH0+qpuBaZl4evQBDzM3lypkQ3h08Gtl/oH7tXvbSx3B1ebPbQ==
X-Received: by 10.159.198.7 with SMTP id f7mr9723237plo.38.1506762451413;
        Sat, 30 Sep 2017 02:07:31 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id h82sm11461466pfd.148.2017.09.30.02.07.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 02:07:30 -0700 (PDT)
Date: Sat, 30 Sep 2017 14:37:25 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 3/4] drm/tinydrm: Add the dummy versions of
 drm_of_find_backlight functions
Message-ID: <d9c1678eeb1b829ce678ddb151878d895bbc9d9a.1506762029.git.meghana.madhyastha@gmail.com>
References: <cover.1506762028.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506762028.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add the dummy versions (function definition returning -EINVAL) of
drm_of_find_backlight and devm_drm_of_find_backlight in the #else
part of the conditional directive in drm_of.h. This is needed
for drivers where CONFIG_OF is optional.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v5:
-Fix the kbuild errors and warnings such as return 0 instead of -EINVAL.

 include/drm/drm_of.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index b2d6e0c..55c9304 100644
--- a/include/drm/drm_of.h
+++ b/include/drm/drm_of.h
@@ -60,6 +60,7 @@ static inline int drm_of_encoder_active_endpoint(struct device_node *node,
 {
 	return -EINVAL;
 }
+
 static inline int drm_of_find_panel_or_bridge(const struct device_node *np,
 					      int port, int endpoint,
 					      struct drm_panel **panel,
@@ -67,6 +68,18 @@ static inline int drm_of_find_panel_or_bridge(const struct device_node *np,
 {
 	return -EINVAL;
 }
+
+static inline struct backlight_device *drm_of_find_backlight(
+					struct device *dev)
+{
+	return 0;
+}
+
+static inline struct backlight_device *devm_drm_of_find_backlight(
+						struct device *dev)
+{
+	return 0;
+}
 #endif
 
 static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,
-- 
2.7.4


