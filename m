X-GM-THRID: 7021611435626070016
X-Received: by 2002:aa7:8882:0:b0:44c:9270:1cba with SMTP id z2-20020aa78882000000b0044c92701cbamr5058037pfe.26.1634974635222;
        Sat, 23 Oct 2021 00:37:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:a81:: with SMTP id b1ls4844305pfl.3.gmail; Sat, 23
 Oct 2021 00:37:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxX/ReinASYF3bhST+MAFJZVhU/S95ayLgCtO4no1BFn6gwt6uylaCvRClUXN0XZEYO2g/M
X-Received: by 2002:a63:7119:: with SMTP id m25mr3502243pgc.253.1634974634003;
        Sat, 23 Oct 2021 00:37:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634974634; cv=none;
        d=google.com; s=arc-20160816;
        b=D5Jwm4/qY+lrr8KWUDk5mT+dBmLyFcWvw283ewjMGM3vs23sweTwiXGzKj8/GGgI0p
         UIgdZa20UwvWfAMWMw/LghIH+dTHR/pd+5MhvUaY5P7PgANHoWvaS1ssBc8w9zg2wxcI
         zx0E0n8VPPO5Amh+erV9S9Hr+y0z8vUbXW34c+XqQRFNq0AEPDHeyB1fgOMATvr5aFbE
         xE5Yb3krq8n/jM5dN3tAsyyQQKv+IU9dbxrE//SES9tvxxFrO/1OQ8r+vcTTgw6EpK+B
         2vfsSQxlN57T00C5TJsWVM40nCNX+y5wPJF8xDdoH/gDmCuUR1+sO6rsij9Fj3I+qejT
         l3Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=P+5ziw6NsyhF53DNCK8sntvKXOSlWURctQDb8KvB3dQ=;
        b=IygWikJEulx4/CRKcWJOjj2aZ31XlGcRzc+OvW7uZtEhGhPsrXHHAUwGvx7cmJgClK
         cjoXh94H6M9gvpfbY71pgYH00TnSnztJWA03sTAO80b8xqbDPjKhXMhIbWRZSNYs/YSa
         cnyuQK5kVkBreLBLQNi8Hctx8ekLleCtr5dZgMiwrshi6uBeGUuYCBHijT8f4WZYVkx2
         4KMv4BxogyDMd4BHNEzkvVpXGMKRa4CUn4vWsOKSr9xjPwFnRPBrCmdz6lgstp+kvKKf
         SM8SwDMdon9HAHGmukgjhAK57UVfYxfbE7rDECcpRZoi9MXti+e9mHzrC+byWEgk/x6Z
         PWvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=m9lRHPRy;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kushalkothari285@gmail.com>
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id w9si841867plq.0.2021.10.23.00.37.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Oct 2021 00:37:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=m9lRHPRy;
       spf=pass (google.com: domain of kushalkothari285@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=kushalkothari285@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52d.google.com with SMTP id t7so5462886pgl.9;
        Sat, 23 Oct 2021 00:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P+5ziw6NsyhF53DNCK8sntvKXOSlWURctQDb8KvB3dQ=;
        b=m9lRHPRyDfHhdaCjSgkwRrfTDVO1ixInKtfSwv2eH2tCgk8kmaAzxnUlw8xzYdYBZu
         eMMkbLD0EZRIgWK9IeZSfPWMM8wKV1XGYot0HLPpP3AFny7nCR3ZggzUKy9x4K4MJoel
         LxB3+xCZKSIpsNiDTmx2A5TupFhUDD37tjNJe51qP9tR0V38mLjHbIPkC+wPGy2OdoW/
         wRjSbIZhWmsTsIVnA4lEdOHGLTV4Brg9aTmDPYoHzLs5SoxiLhCjLNQ4jLAgoEfCvXpv
         qH+tWIYM6NxwAcNA6lfZS3dTYW8SNbraPmN6sd7+VDgTzH1WtaMTa/1AzblWZAjiJkOt
         8lyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=P+5ziw6NsyhF53DNCK8sntvKXOSlWURctQDb8KvB3dQ=;
        b=m3s4YlrCjhgrEESG9PB+VqWfGXF8HNmyH7Tw2wl2Ic/ODCAn/WLhu/KcFp3ANhI/WP
         Ksq0gN/09sIZqADXBbyQrMZX9ktfVP3e9KunlIksjYCbGNKyLSRqIHntWTGUayDd767q
         I+PQDH12PlHsCNRlqYm6g1icjLUW7lPfThgHE48lgisfYfHUgHFtGfLEt5GeR0yOh/s8
         CqmwM6lPTdEUwoRB6YWOaKH8Rkp6zobcDLMiND6kxxXYpwEsfXlBP44nMdzg1E1gQbTD
         U9ML5MukqbHDwbFWVyvKn9f02J6xtG+qrCUa43hLEE7/QnlPQ1nNruJ0PXkgp/OXPWax
         qywg==
X-Gm-Message-State: AOAM533JTQabQbpqLcVQ9xBVQFr324m7Q0me4L8Ridm8rc5hMKBIToOB
	C2UL5fLa+LKO859s+lBQHP0mS4bFz+nwPQ==
X-Received: by 2002:a05:6a00:1148:b0:47b:c0c6:75da with SMTP id b8-20020a056a00114800b0047bc0c675damr3649320pfm.61.1634974633691;
        Sat, 23 Oct 2021 00:37:13 -0700 (PDT)
Return-Path: <kushalkothari285@gmail.com>
Received: from localhost.localdomain ([2401:4900:5173:67c9:d8e4:2819:8ee8:8de4])
        by smtp.googlemail.com with ESMTPSA id c4sm13949791pfv.144.2021.10.23.00.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Oct 2021 00:37:13 -0700 (PDT)
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
Subject: [PATCH v4 0/4] staging: rtl8723bs: core: Cleanup patchset for style issues in rtw_cmd.c
Date: Sat, 23 Oct 2021 13:05:46 +0530
Message-Id: <cover.1634967010.git.kushalkothari285@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These patches make changes to clean up style issues identified
by checkpatch.

Kushal Kothari (4):
  staging: rtl8723bs: core: Remove true and false comparison
  staging: rtl8723bs: core: Remove unnecessary parentheses
  staging: rtl8723bs: core: Remove unnecessary space after a cast
  staging: rtl8723bs: core: Remove unnecessary blank lines

 drivers/staging/rtl8723bs/core/rtw_cmd.c | 94 +++++++++---------------
 1 file changed, 34 insertions(+), 60 deletions(-)

-- 
2.25.1

Changes in v4:
move version notes below the cutoff

Changes in v3:
Enclose the version number inside the square bracket in the subject.

Changes in v2:
[PATCH 1/4]: Moved unnecessary parentheses change in PATCH 2/4
[PATCH 2/4]: Added the extra parentheses change from PATCH 1/4 here.
[PATCH 3/4]: No Changes
[PATCH 4/4]: Fix whitespace error.


