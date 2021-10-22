X-GM-THRID: 7021853580963348480
X-Received: by 2002:a37:4050:: with SMTP id n77mr9218346qka.267.1634902688438;
        Fri, 22 Oct 2021 04:38:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:e842:: with SMTP id l2ls1443852qvo.3.gmail; Fri, 22 Oct
 2021 04:38:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBKIreB+Osumojkr4Q4w6Jd1ZS6iNLAoyhUMyIdHgl6kRH1k1wR7Cf1xzBoqtVJSOgx67n
X-Received: by 2002:a0c:c784:: with SMTP id k4mr1442367qvj.43.1634902687560;
        Fri, 22 Oct 2021 04:38:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634902687; cv=none;
        d=google.com; s=arc-20160816;
        b=gog9qQ0P4nTC1heU34JBnN0XCM0UfT821kVHtIDsIOO9QOYhE+5dHRTAhq5QnvQYXR
         9ZjAFnUWn//unEFAHoVT4MzaCXuIYuykNgDIsAjV7navsS5JWDVhOpaTeyfdcVbCW0bB
         3BE5iJK+tdR5AQMf1hp4z+F3S4KZZ/8wfPy2NG76GrZP50zGHSbRHGRV0j5REl6db2Lq
         4YsopjOsXVQ5N6zjKCg/sou3GFR0CKmk4r3QFeL39UhGBZHTE3kVYE7Lk7yiHHvKgoyG
         Mqcu2m8kXCM7N37AThGxcz1dMo47VRl4cmHhKlJaqNvEOLLgFTIShgSjNUQDrd8EpRU+
         1X5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jy4A0xld4cnoSeYnYltPRwIoXa2YiW35xmuIijSpqiM=;
        b=dLbGKn9VnNYNNfRhEACQmEbeBQ9acbSRZ2xKYRC1aT0GKozG8+e8AM1akgjN4ka22S
         pHTAg8KuMH7Eus1mZmE5aRYfJHXLs4MsMwL1e+JyCsYWcnbQe8heq42HH79z9CcR3rwQ
         W/rxyYYBhtb5DuUjFBTiSspX18WINXKyxdLmrVU1NCL1CKr+WCzEvJ5ZUe9oGcu8R3HQ
         RpDdxt7s8+Fznsv3UGUD8DV5KOdCtakA35+QKDp02bkzEo5kXMp8sMDyLMWy3TusOODK
         gT3xuMDBBu9oVTNi3D0Yw1KJkh+9x8PAK6qoDJpq2+WHEQ9FfcGYKunsyjzPXsDCBGWX
         0z/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=QtCI5q6l;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id z18si919632qtj.2.2021.10.22.04.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 04:38:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=QtCI5q6l;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1029.google.com with SMTP id kk10so2751035pjb.1;
        Fri, 22 Oct 2021 04:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jy4A0xld4cnoSeYnYltPRwIoXa2YiW35xmuIijSpqiM=;
        b=QtCI5q6lSrZGoZglRRmuMJMG5nwV42u1uVft1BqwOYfEVFeTe8YvuVxHzib5n7ssrJ
         sjGTEGZAO2W83XHupV+epq77AnNI828PmmeE6WczTyN1teSzg84/BGLxgov5bB8vr6Xi
         DQqV25+pGxsTOR9eG4wv8d2kBzvyx3imQOOiuYtMUtrTrR/OBDTV3URIM0aKnwa8isYG
         VfIpcyLvJ4gg+7SzelTseXbVUbGZIHfmP7jEgKm1KR2KbLWiNlkem1KUzWfZLc/mEjse
         bKNgfhgHxF5pmND0FNctzmqt+Bpv8QUPs+9s9hfqpcXNhdjqTMa3K7KHelt30DdPFAI2
         zrSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jy4A0xld4cnoSeYnYltPRwIoXa2YiW35xmuIijSpqiM=;
        b=4uOG/mdgeokx/KFmBBF1wTCsn/2tGPqRNZGx1ZmVJA5lEWapL+3cGgUzqs/NqEA2uI
         4buH1RPOSK5QZ+Mh3MGS2SsnR35OFuK7tcxzFrxYoSKyHlAjHdH2kUhqpeQPuZG065On
         IOF/dVTSqgpJQW0iqi8xDQoceZe+o/zzKOSy2lpmDoD7t5lKbF/sDddYhf/AHGmk3369
         yEnHoKoOHalE9CfHlH3NpBhDyPwsZuz+XBHR64cD+O5YJwYrc3xuFQTyx7DrmUWZrCxd
         2xRqy8YocA0xpKji/j0i2iuH2hUKkZhYi3/9qCigQWU07o1c016IYl60OTVjEC1NOFVl
         Dsaw==
X-Gm-Message-State: AOAM5327KBSE8kXr7VOnlIOYUUKVKbrkJTZjAiPQPOrHz0YEwQGGseW6
	Qu1893UdoQBReqzalVDf5Vs=
X-Received: by 2002:a17:90b:1806:: with SMTP id lw6mr13947074pjb.222.1634902686626;
        Fri, 22 Oct 2021 04:38:06 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id t22sm10946224pfg.148.2021.10.22.04.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 04:38:06 -0700 (PDT)
From: Kushal Kothari <kushalkothari285@gmail.com>
To: gregkh@linuxfoundation.org
Cc: kushalkothari285@gmail.com,
	kush19992810@gmail.com,
	outreachy-kernel@googlegroups.com,
	fabioaiuto83@gmail.com,
	ross.schm.dev@gmail.com,
	fmdefrancesco@gmail.com,
	marcocesati@gmail.com,
	straube.linux@gmail.com,
	philippesdixon@gmail.com,
	manuelpalenzuelamerino@gmail.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	mike.rapoport@gmail.com,
	kushalkotharitest@googlegroups.com
Subject: [PATCH 0/4] v2 staging: rtl8723bs: core: Cleanup patchset for style issues in rtw_cmd.c
Date: Fri, 22 Oct 2021 17:07:34 +0530
Message-Id: <cover.1634899405.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Kushal Kothari (4):
  v2 staging: rtl8723bs: core: Remove true and false comparison
  v2 staging: rtl8723bs: core: Remove unnecessary parentheses
  v2 staging: rtl8723bs: core: Remove unnecessary space after a cast
  v2 staging: rtl8723bs: core: Remove unnecessary blank lines

Changes from v1:
  [PATCH 1/4]: Moved unnecessary parentheses change in PATCH 2/4
  [PATCH 2/4]: Added the extra parentheses change from PATCH 1/4 here.
  [PATCH 3/4]: No Changes
  [PATCH 4/4]: Fix whitespace error.



 drivers/staging/rtl8723bs/core/rtw_cmd.c | 94 +++++++++---------------
 1 file changed, 34 insertions(+), 60 deletions(-)

-- 
2.25.1


