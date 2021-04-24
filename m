X-GM-THRID: 6954852340804354048
X-Received: by 2002:a17:906:250d:: with SMTP id i13mr11071110ejb.474.1619302747154;
        Sat, 24 Apr 2021 15:19:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:db59:: with SMTP id n25ls4016746edt.1.gmail; Sat, 24 Apr
 2021 15:19:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwMDsWsR3IRteWwL5kEcINqeXArxhwPkj/4QgX3nbFjaIxJBRnqMUuIyVRyGxdCc/5hEtVv
X-Received: by 2002:a50:fd13:: with SMTP id i19mr11779953eds.375.1619302745840;
        Sat, 24 Apr 2021 15:19:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619302745; cv=none;
        d=google.com; s=arc-20160816;
        b=0UpSWCU3TViFpJALOOy1WhfkPVsi6THFk1YZGfHDphfuoPYm8eJC4wtZigpzWFx671
         4XmOAG4L8e6TjnbxPhKnR2CY5IfALAjetr+kUo3kZB4YgkE+MuLgtd/yFxWRFytIQm0C
         XgLWzq1VS10Zf5ErWh3WC6h0kIbXGpd5EWaedTPWCgZAxIrqi06S7b/Q5KcOcQ7WMXJi
         2b1E+aufO7ItAt6wr2whT5tPjbk8YKP4wzfIlV/P1eUdYK4UnYH2x43L7DNvZ2XUDHA8
         n/9MKcpfLiVkF8lWJAYHPojUUug+50RKHHAlsRjN5JiZocCLV+MnMmXEqRUUFaP8pyjy
         3PPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=CNbQioG3qs9D9OD75FT58Wt8V8Q+f0usZXn7Mlw1T00=;
        b=sUpxDy9sh43tdPK7tqO1F9YAF6p2fG+wIyCiZ0RKetH5xXoh4DOu7CukDsHVJtsLNg
         YhCp7EiZ3OD4/jv100fveJWZ7vh002NFRDBbWYp7JekFZZB46FatH+tdg8NhLnCtX+cn
         yDtev3rtK5eYSrFVoVAtOgzKLrQLXgYoF0IT2j9o6RbNBjPUjMca10IzRT6Yc/baVR9P
         SYqe2xGvWCUxBh4mt1uq4ISGbBPh/HpxqHgVRYtl/0GvLRxv1gLZ658mTakTLslrVSOw
         qJuI64SrTgK90xXHUd5iTUhaXhyoronETHxayRwWAcVlEsqKKctdzkSlIE8doK6xFQW2
         GMqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dutWPL1l;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id h1si854991edw.3.2021.04.24.15.19.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Apr 2021 15:19:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dutWPL1l;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x634.google.com with SMTP id n2so78827859ejy.7
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Apr 2021 15:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CNbQioG3qs9D9OD75FT58Wt8V8Q+f0usZXn7Mlw1T00=;
        b=dutWPL1lmY20INeIjwre/cBIbiaNwWZnrDZOcfBloksKj/qwutiAZNL/runJriVpvQ
         1oyKXw0RiPYWRssPOc3Rdkz9gDovIEqbNYw00DGxAaqyEWEMqu6fdS8JTdmHzyU7qSes
         kTh+UtHxXA/eUL1eXuS8FwlFte6ZU29/rdlll/rqlL7EHJA6LHaQY1vlo/9tRvdUG5Iu
         72rFCrU9udp5NrTluio2HGWK8V82umYCt1xqwG5aDbhnL5MVW6zVK2wPElhcuSdRRQZ3
         ZNsZL9519xvna0Pr6Ai57S9G6VtyWATF907vOSMs4ebUyxM1XQn4zkNF0slWexh7MjIG
         lmOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CNbQioG3qs9D9OD75FT58Wt8V8Q+f0usZXn7Mlw1T00=;
        b=mkfCIXc/PuSrO3e1La8Mwz1Dy9L+qupnpu6OkqhT136vwQZW/xW6wTxPUeZa2FStVC
         4B5id5crd3dLHWYJ5a5pY8ehwU1lZNoMWscf4fk1TxYpl/IlK3+7lxKfDbYTsxVl9Erc
         4QKLG3rRY2oN1H2oc4ToDup+z265vhAQ9pG0dFSsf4z+BVYofI1+5mWX7J7xoeEi7Rsb
         zUgUKORe1/Z80IcP/ZcUdhdLeFACU0V/W/jNk8c64WrQdmcWXtrNJyG0kbU7NUS2/gyV
         JHS38/DFQS4bckQuMTOcrBpKNuv4LIN+q3WhgasLSx7oD2WpJ9+T055SaWm1MpKIYXqN
         iPTA==
X-Gm-Message-State: AOAM530rhl+n5pY7ewTJuPuSLhfbTmsukYs+iLdWOJ0BY+AsCI96juKC
	E9ugFOdOWTwr5axHVrExtaciF8V/E6OGN9je
X-Received: by 2002:a17:906:c099:: with SMTP id f25mr10653101ejz.499.1619302745368;
        Sat, 24 Apr 2021 15:19:05 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id f19sm10034174edu.12.2021.04.24.15.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Apr 2021 15:19:04 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org,
	Evan Quan <evan.quan@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v2] drm/amd/pm/powerplay/hwmgr: Fix kernel-doc syntax in documentation
Date: Sun, 25 Apr 2021 00:19:00 +0200
Message-Id: <20210424221900.9725-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixed kernel-doc syntax errors in documentation of functions.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: Reword both the subject and the log message

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


