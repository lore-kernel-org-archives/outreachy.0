X-GM-THRID: 6954765577462218752
X-Received: by 2002:adf:ee83:: with SMTP id b3mr2461127wro.329.1619282545498;
        Sat, 24 Apr 2021 09:42:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls3028030wrs.0.gmail; Sat, 24 Apr
 2021 09:42:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHcqLpiC7RM3i3WAYfUQQcDFtnLLmu1whioSCLeScsGbbXdK+lD98K+3ROGiu+myg5DA/F
X-Received: by 2002:a05:6000:144d:: with SMTP id v13mr11773199wrx.73.1619282544157;
        Sat, 24 Apr 2021 09:42:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619282544; cv=none;
        d=google.com; s=arc-20160816;
        b=ElMR/smpcLYC5vhqy1X5e2SFH/ro0LdKHS4/QvecsqTsAJXb5i1N5Gf3FYrlt6ey0L
         nRFzNAyKKt/uDKsZnZFhWImXrfXDQ5fR+qKlDa3au1YqgnQOWVWOQ8FNCiHSgKiE1E9P
         +c95ZgB9NpazvTb+WJXBhG52KC5kKOJCpaLxg0heWGFifv/JaPYCgcJBMbEYKHq08JHS
         6xgEHD7/Yr7TuUOtRgWtmbBSRr3WCkwMvAC0sIp9VCDV1NZYIrS0snweJx+73F+rLwT/
         C0lY/YTVWQDa/ub1nLQ04EougpinlwmKBgO8qQB6Xogj9AbBHNMsz0DICJwdUXIIxpjA
         Pufw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=X3nB2B4pvvUsFa8wxAgDFnWASBskzgD5/+De7g7TAR0=;
        b=Tj9UcWDXnBQRRPG2/4LWxjnw+8iHg1cGrfZd+kRxKj+730P6/7yMey1HL4lj26lHvS
         7g5F8tmyacaPvemMHb+k1kaGAnivO8oDXhdiE+V3wkImsmPVHo1pEZhqOh098vnwlsjW
         Ae8ZAglxxy5jxOCrfc9wYo54iPfl9FnB1nJL7WhOq1xet0bbgiLh0yQFt+1i/tj+IPZr
         VK0WYjp6pTxIwmYwefY/SI4pJqk/vGVSX1rd6JnUftOCbfWC63I7g9Ts9kLu1OOl/9Ej
         XbS9snDB2F9XtTjb14XyqMybEA4Gqd5fWoSVzWDdrjjZ/OCPqmG9XvsAXVS6Z865nI1N
         eFEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENq3lkKv;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id s8si989256wrn.5.2021.04.24.09.42.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Apr 2021 09:42:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENq3lkKv;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x534.google.com with SMTP id k17so21320811edr.7
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Apr 2021 09:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X3nB2B4pvvUsFa8wxAgDFnWASBskzgD5/+De7g7TAR0=;
        b=ENq3lkKvA2pKrgNcT0EXOqs0N3MQ+JnUK0T4J29tl7pg5XTwHWx0+0CIyT2QOKj5uj
         mm3rA+yXyzsNfFaexj6jBhz8VdZaJO2v2eaHbOFnDetX2C6vnXb/gctIlldtR9ffnxv4
         MMf5aX3kxabScetyRbdq6APTOECqG8q3wmharE8zHMwTPLu99Vwoj5G1gASOS3AJCs1n
         M5Q3Gavi3lPau3yKiLZDpCRE7U0kq/ErztrvwfwZw6+lnxA7+csFKpiYnfxe58I0M3jP
         XZZy5XbUH8PIltOGQZxLKh6plNsn7Y4SbibUVIiQ3aZPw+sAFgB+PUZ92hBhlCHVwIxB
         L3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X3nB2B4pvvUsFa8wxAgDFnWASBskzgD5/+De7g7TAR0=;
        b=d3C5ZHbrmq9zx3OzBAbNOiDF9/aOlyZ0aYC+NkeQtoEfuCXr2VImVtaJepajd7AvVa
         Yph/b9Mh1i187WllxFZ4cpdKxQCLbpXAVN9nbyEPljUcEbhIF2eLt7MM5EgmDK/K0yaX
         qhCBnEEn++pnim651GIReHzkqlzyTh+7fSflUZDxm906sEUqJO3mBYoN/H1HxO9g4Xs9
         KmtmTgWGzQ59HBhU7KsVpxynvKWnkkhLIcHoPDau14Reau+gPBuTQttEh5foGKHTRvFB
         65e5HvfMe+NAkz8azPcwQv/M8D0/jqgKQWPC3pciHwuCxCxtpiRjZCBDsfKsPY55yT1P
         ndtw==
X-Gm-Message-State: AOAM531ApCAP0QfABxDTsxvesl30debDeVqeRS3+XaZM15cAkArFpDOA
	dSFd50Cb/6c0kRcW2VZrnkvJAWKid8yuXxUh
X-Received: by 2002:a50:c44f:: with SMTP id w15mr11178118edf.79.1619282543675;
        Sat, 24 Apr 2021 09:42:23 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id he35sm7251831ejc.2.2021.04.24.09.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Apr 2021 09:42:23 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Evan Quan <evan.quan@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] drm/amd/pm/powerplay/hwmgr/ppatomctrl.c: Fix kerne-doc syntax in comments
Date: Sat, 24 Apr 2021 18:42:18 +0200
Message-Id: <20210424164218.18445-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In the documentation of functions, fixed kernel-doc syntax errors.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c
index b1038d30c8dc..f503e61faa60 100644
--- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c
+++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c
@@ -275,7 +275,7 @@ static const ATOM_VOLTAGE_OBJECT_V3 *atomctrl_lookup_voltage_type_v3(
 }
 
 /**
- * atomctrl_get_memory_pll_dividers_si().
+ * atomctrl_get_memory_pll_dividers_si
  *
  * @hwmgr:           input parameter: pointer to HwMgr
  * @clock_value:     input parameter: memory clock
@@ -328,7 +328,7 @@ int atomctrl_get_memory_pll_dividers_si(
 }
 
 /**
- * atomctrl_get_memory_pll_dividers_vi().
+ * atomctrl_get_memory_pll_dividers_vi
  *
  * @hwmgr:                 input parameter: pointer to HwMgr
  * @clock_value:           input parameter: memory clock
@@ -1104,7 +1104,7 @@ int atomctrl_calculate_voltage_evv_on_sclk(
 }
 
 /**
- * atomctrl_get_voltage_evv_on_sclk gets voltage via call to ATOM COMMAND table.
+ * atomctrl_get_voltage_evv_on_sclk: gets voltage via call to ATOM COMMAND table.
  * @hwmgr:              input: pointer to hwManager
  * @voltage_type:       input: type of EVV voltage VDDC or VDDGFX
  * @sclk:               input: in 10Khz unit. DPM state SCLK frequency
@@ -1144,7 +1144,7 @@ int atomctrl_get_voltage_evv_on_sclk(
 }
 
 /**
- * atomctrl_get_voltage_evv gets voltage via call to ATOM COMMAND table.
+ * atomctrl_get_voltage_evv: gets voltage via call to ATOM COMMAND table.
  * @hwmgr:              input: pointer to hwManager
  * @virtual_voltage_id: input: voltage id which match per voltage DPM state: 0xff01, 0xff02.. 0xff08
  * @voltage: 	       output: real voltage level in unit of mv
-- 
2.31.1


