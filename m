X-GM-THRID: 6949836539406843904
X-Received: by 2002:a63:525c:: with SMTP id s28mr21256677pgl.317.1618134914357;
        Sun, 11 Apr 2021 02:55:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7c11:: with SMTP id x17ls4783046pfc.6.gmail; Sun, 11 Apr
 2021 02:55:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx7+aCLVTZXkaPVptolqZDi9T8O0MYBa/6oob4XlzbriWpQrCbZAY0kXY7wU9X38paV72UE
X-Received: by 2002:a65:48c5:: with SMTP id o5mr21466167pgs.101.1618134913138;
        Sun, 11 Apr 2021 02:55:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618134913; cv=none;
        d=google.com; s=arc-20160816;
        b=DBz9S8/1aIhXJOQ2mFq9+iwp8xNeKBvMw7sovEdbWivbnvAbmOtVWVCQIOiwBjp3X3
         9AzCk0Wku4epsJgopDDGm+Qo0GGzqg9mXDUwpXk98bNRTmJGWwKEBp+JNnhc4TQ06XB0
         A5vnuk5AbKuSzRHmHwaEqsa2Qf51WbYztkGwMCmHrC/5bXeOMn3JBiqRM5kSqA0OHv6e
         D5MTXsoBnKa8GnRlBMdtAcXK5JGO/Q3i43pKE3g+6KkMxzWsm7yhQ5SnZJg2vlGeoIJp
         8w+a/P+dMcW/g5Uju2R0g4OVZoUGN/sf6Xgw45vQOrvVNDmOd9rrA25cxvG2I99E8/EB
         Skng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=7F1O+bCAJeRId7kUZbXaUrQs1QzWOIovw5IMYAIBgIw=;
        b=Z7OIqPNnPxO5jxJz3UCLntBEo+xtEln/mlXC9kP2BhquBPzqBgY4aPgsQ+ntz7xYJ3
         oLe1RtO3kx6k4zEMWnw5edoKM8g6eGLC/ti+dbn30jnV5qRAqV74UpcXlbGP+X/Lon+K
         E6Q2BgB9C3szfxvsw6ztS2jdAh0uHB4d9aEip+Xzc+N7UXjga3jbpX2t25dN9VL6Vo4T
         YPXHCgzU2S13YS2QZsPFfpiATJVYw3b13BZsoSlfxyNXUOxkEq7MAR0F90J/0XYjKvAV
         7qSZm17ovpgiKAVO4WeWYrVL1jHVu5W0aVZdsTCNRDlxSGTeXZ//PTLk55IuGYicnbk/
         7IgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UZ+wMFzb;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id mz7si267994pjb.0.2021.04.11.02.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 02:55:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UZ+wMFzb;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id o123so7226755pfb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 02:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=7F1O+bCAJeRId7kUZbXaUrQs1QzWOIovw5IMYAIBgIw=;
        b=UZ+wMFzbIft4Q+ZPHh+UzuG7t5OLjaylBYvANNTU7gwLwVLA3oRYBuV0tOKBGacoxs
         6r4W+CUcReefrZ/pkkNuabslafThVW7DWR+g3XE4NSM/K8B0YOgSFqnSvWtPCSHlwKM/
         2q7AUthsPhAZOwp6jWHIGQ+wR+pjFWh3ebafGPcExTU8RzYn0PDkSZTCfvWvD/ZUZeo5
         gd+wGHtVpKsM3g0I6Yr+Krt13ZAT/j6FJYg0yq85qRx3SL4aU4Ydd1DhfzKm++CO1dFZ
         wpHE911647Q5rIdYYR9Oel3rpdqsMHaPwkI5i/sLl7bOZT2cqkacAshmG8Td+MczeMKn
         OotQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=7F1O+bCAJeRId7kUZbXaUrQs1QzWOIovw5IMYAIBgIw=;
        b=e138EPPMh0ncSMrq4htNjhmUmgR3/GuVceOdjF0/KGFlqO++hK4NnjMkV4HJujy2XO
         aCij/WW1Lwc/3uciIMETWKP0LF7NEHU7Uj2yoHIfD2R1SLXuJQp03atCyoLAYkvfODP+
         7MSfLNaRizpUe9Q32iaNNhqmqwESzVlPJSHjRwRPLMSfjad4y6rjXI/IvaQCyXaVqdi/
         vQEzsRmxxj0xmGoTnrtrVwnmmWZgvWltnrOxntsYl7hxr54TZqw2fXinfQQtxCkt6eyw
         a7DUwrM4Wxml/okFlAQbBLg/KjGQNYLvq3Af+CeZqYnbEVlL6AV0GGprdbLlNQKLOrKI
         imzw==
X-Gm-Message-State: AOAM532gUmQVTDdlKIrq3bvjzReYqyu6vP0RpBgKShjxxdhoV93haHSQ
	Evdi+fZPWPLtV9WFQI32F5wq/PIm5fdwZA==
X-Received: by 2002:a63:7e51:: with SMTP id o17mr21501048pgn.281.1618134912802;
        Sun, 11 Apr 2021 02:55:12 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id g3sm6734435pfi.31.2021.04.11.02.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 02:55:12 -0700 (PDT)
Date: Sun, 11 Apr 2021 15:25:05 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v3 0/3] Modify subject description and rectify spelling
 mistake.
Message-ID: <cover.1618133351.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes style issues
Changes from v2:-
[PATCH v2 1/3]:- Modified subject description.
[PATCH V2 2/3]:- No changes.
[PATCH v2 3/3]:- Rectified spelling mistake in subject description.

Changes from v1:- 
[PATCH 1/3]:- Removed unnecessary parentheses around boolean expression.
Changes has been made in v2.
[PATCH 2/3]:- No changes.
[PATCH 3/3]:- No changes.

Mitali Borkar (3):
  staging: rtl8192e: remove parentheses around boolean expression
  staging: rtl8192e: remove unnecessary ftrace-like logging
  staging: rtl8192e: remove unnecessary parentheses

 drivers/staging/rtl8192e/rtl819x_HTProc.c     |  18 ++-
 1 files changed, 7 insertions(+), 11 deletions(-)

-- 
2.30.2


