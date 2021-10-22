X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:620a:444d:: with SMTP id w13mr10025423qkp.10.1634908424495;
        Fri, 22 Oct 2021 06:13:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:4692:: with SMTP id bq18ls2384098qkb.0.gmail; Fri,
 22 Oct 2021 06:13:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy6p09mGDxblx+bm9ijRN5tfRPP8Zzutj0xUs28gydpbEg71pjI9VgTJSAA5fDSEMkTsGls
X-Received: by 2002:a37:9c50:: with SMTP id f77mr9819864qke.221.1634908423623;
        Fri, 22 Oct 2021 06:13:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634908423; cv=none;
        d=google.com; s=arc-20160816;
        b=zGP8IoyCPyfJZbCcTWE3860cttSgEvtqVhlZH1TipcDe3NloRIygfTCN9dMM7ADGNN
         ou5kxTJu7MA6T+ku/nFn9jEBdXpI0TaGqubqhqTgRHibAJI0ICkmRImFtuLs2+BUlI7L
         Jxfvj91xUPb/k2RyT+1BhrI/1C9SCqe27raUP04tuAASt3bKw3TsLvv8Z4P4/ZILeA7U
         bv9d/DlbIAq5sY3CEgHfxcY6bXZXwqsrJO3Bka7w5MpRuA3o6ommNuZ1QQU6CPakCPzT
         PapRtrrxyNFAodnrl6OzCiteANPjenapWnZ4tdb+bNY46nGCJGzxub2I6gT7JoyZpzPy
         cdGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gthT7Vq77opBc/rSgVQR3VqXY4Alj06CFLF17FWMuIY=;
        b=Gqyy3Q6ZAYuP/oce/vV9sf+xtsn4tj/SGywLhMS5J4IMmrqoH4vPEERC04Exio3OBe
         OvtQm+/iFq4y9Roz0wssHLeaYcMrrJLfP2olMOtZO6Etinf3B4I9PGTE9uageXFRev8g
         ys/WNhlddlUeJj1B08FUJbh56YEvBwkYJ5gApnnwVb7vxvD8nobbfTYrRm/DOu9Dh/Ri
         SNFDBLIsyyyaFcc2vxYMj6R3Tlw1ScQbwbwkYBcZ3v6yzIqZvYup53jdGVzbrAKxYXmH
         pJXjsw3CAXD6X9zSqfxVPXRZiJkdcG1yZeMZA5ZP9h3S7xGcSm2/E9HHEGWOTuZxd37b
         oVVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=En2gcfJ9;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id z18si952933qtj.2.2021.10.22.06.13.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 06:13:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=En2gcfJ9;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62e.google.com with SMTP id e10so2657672plh.8;
        Fri, 22 Oct 2021 06:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gthT7Vq77opBc/rSgVQR3VqXY4Alj06CFLF17FWMuIY=;
        b=En2gcfJ9Ru+zVl0TwpHEs5pyKOGRbt1GMa7imWuY4HgR3Yl9auatghwvmBLRFEkmLb
         Sci9S6TlpqOLHMeusZ9UngOP3p7qHuAhKCAIPKZYttR1rQVAv46ZDJ/Y3W/VH9zrZWfK
         cqmB0YpE9d8IdqDwQNstkODz/1kpCcLDt1AhQrCftVBsgyDy2DySzoXP3DhvEtnD9GdG
         Sn9rF/9eTCoPQkF9L4FZG94aWdMyiJnSIIBHtJzWze7/Jo9w/EL3ZRbfoEeBoKwYwT97
         oC5AIjUXacawMexdTVNnjEi2kqUm8csbhKJugHm1EE33AF6spmmtcLQu8ZbzBDHTUipa
         EvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gthT7Vq77opBc/rSgVQR3VqXY4Alj06CFLF17FWMuIY=;
        b=mAOx8g4cBFJTZ1RxLdZlEJdj8l2rwdbPNuI1+LFrhmwvSq6yFGk7beBjThqEY4YCIx
         D3HlcJ0u7zP/Nyb3FVXx7lICzgQ0+0HL9P1dTKeO2kG4blvPBP6iy5PDme5fG7Jr2VKR
         aYv0tmPDEM0XaSlYD5n/K/KzUvLhg4+2qmKTpr9gH3Cg23heloG6uQJ7va2+Yhr9fCiU
         VYjIsH4hWYb27tAhSEbIzY04vdepVrod2JWjwN1EpI49/EZfD8br+Q33I6Pjy46pY7vt
         OyPJwbC+RS95U6cDXBEJglC5eYbRK4Fw9uwovYwrrI/PE2NfD27kUlHqNWGMz/fKKD88
         K7jg==
X-Gm-Message-State: AOAM533DyIT+ZEZERiHdWEyclyQ/aEjEmdriJAfIyor7h7mRVoXS68uy
	upXizHaNpW7XfA+JVhOfE1Q=
X-Received: by 2002:a17:90a:784a:: with SMTP id y10mr6678931pjl.211.1634908423193;
        Fri, 22 Oct 2021 06:13:43 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([115.96.219.100])
        by smtp.googlemail.com with ESMTPSA id mq3sm11932413pjb.33.2021.10.22.06.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 06:13:42 -0700 (PDT)
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
Subject: [PATCH v3 0/4] staging: rtl8723bs: core: Cleanup patchset for style issues in rtw_cmd.c
Date: Fri, 22 Oct 2021 18:43:17 +0530
Message-Id: <cover.1634906059.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These patches make changes to clean up style issues identified
by checkpatch. 

Kushal Kothari (4):
  v3 staging: rtl8723bs: core: Remove true and false comparison
  v3 staging: rtl8723bs: core: Remove unnecessary parentheses
  v3 staging: rtl8723bs: core: Remove unnecessary space after a cast
  v3 staging: rtl8723bs: core: Remove unnecessary blank lines

Changes in v3:
Enclose the version number inside the square bracket in all the subjects

Changes in v2:
[PATCH 1/4]: Moved unnecessary parentheses change in PATCH 2/4
[PATCH 2/4]: Added the extra parentheses change from PATCH 1/4 here.
[PATCH 3/4]: No Changes
[PATCH 4/4]: Fix whitespace error. 

 drivers/staging/rtl8723bs/core/rtw_cmd.c | 94 +++++++++---------------
 1 file changed, 34 insertions(+), 60 deletions(-)

-- 
2.25.1


