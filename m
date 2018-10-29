X-GM-THRID: 6616189865324183552
X-Received: by 2002:a19:e307:: with SMTP id a7-v6mr1075558lfh.3.1540809510668;
        Mon, 29 Oct 2018 03:38:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4411:: with SMTP id r17-v6ls9560lja.17.gmail; Mon, 29
 Oct 2018 03:38:29 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f+V7zf6CCQWwu1ZQHOtNgMxuHWgIeoJRDM4gIXd7jf4NvCcySA8vgRzTHKzPnmaHZ2ipCa
X-Received: by 2002:a2e:9597:: with SMTP id w23-v6mr1240845ljh.25.1540809509399;
        Mon, 29 Oct 2018 03:38:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540809509; cv=none;
        d=google.com; s=arc-20160816;
        b=O4V4qoW1o9RZEitfopNmTOx+EfF3UWfoYU0MsB9F6gS4N0IVWDxZadlVl/NDQBgCsS
         q5tpWkrDrnBveR7FjV12yrTuBIMqwgHJ+voonQ0EPjEcZi5KCablNiwey2LgaCsVvxdQ
         8Qz+4sn900W/f9EbqBMUgYSWvg3AS8+lduR0UJGfV8XWIJgBSf6klQsVxhd4TsawTeEs
         CSK0REbXqRRMCR6zdqJHSGYb9nALvalCi9q7rfcAIy1KOYtdaenHmJKPG3QhdqQ8K5Tp
         9DWpIBFfegRZD9/1lDiR1rUGpRREPjNUcnjg5X4k7T7StuSf0SnelS4Uc3GKpbbcbarG
         TSMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=WRD2W+u+xcZIDKOP+6eNWnASgiq4x/xAKrRKveH/Ys8=;
        b=L7YWUNdmhy/FUqAcOG0JVOIA1irQv9hwLSZ65Cotlk0xdEnEGvSMzTS5D5L9fjEQzl
         qlvVchrQr1CIsTChw+DQDBX7EZu9W1j9C1ouPpxJ28QmqkeUNzqaOY2F0G17vf77RNq0
         6XbEyHAWVW77v5Bo+T4qsucCJCS8fVSYjPMaoWQuC9FrDStx2n6uRkIv5APGxywASxqA
         O4JjWWuOMo1qQIKPffSG3lDw/Ig6GepTO2YFzyw7CFkvpp9qNLhKe2cnSN5Me3syxlPO
         Nsb7wzzq3vflMEEklvA2lTKQdea1FC1d8KAA4ZOeOwLphWAqbomDCVRssJmXQ0G4h1wW
         JYbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQia39wm;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id w13-v6si700755lfe.3.2018.10.29.03.38.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 03:38:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQia39wm;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x430.google.com with SMTP id n5-v6so8041975wrw.12
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Oct 2018 03:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WRD2W+u+xcZIDKOP+6eNWnASgiq4x/xAKrRKveH/Ys8=;
        b=pQia39wmQ2dPa+wMKCf7O98dbD8oIiSTdExw8u1u0UJQRPkeP6e7InH5P8mR59pIOF
         mn+IhlOL368kCaLQG8QxwZTUY73uCluOQvDSohbvauZ5nDx/RRt+5DxsA1qACGmaFwPT
         R+Fo25WdNYfonlREIZ8q+BGQg/XKnpYTEItxQdAHc3HUuC6H1GZm5F/DSJeWPnIQhXeT
         fOrvSHbcByEswPyCWxBMQ7WiLCpokjaX63/5GwLhIsuvh+/1TYdaLHT89LiBQc04ZxPp
         a/G8jlubAJ585wB1bvi4bockqsKbhtukLA0BMSUv3ZQgHvdomPhzHXHNGlZ5RRuK5n58
         Xe4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WRD2W+u+xcZIDKOP+6eNWnASgiq4x/xAKrRKveH/Ys8=;
        b=jW2WauNi0YWLch+/tSnhbj3m3Y9RdSiPBiF2UK3/dRvg7JjTvqt0B7tISSvnmxO0fo
         hMWqotAmlapcfOYPV0xbkx0OCmuvOLAgFeddyTctpzj6aMAZ4AUKS0wStWmg6Owmktk5
         RKMNtidIAMZuA0gbLuJBDRj0PBUxqJiV0TQXuwL3X55v3QgHrXpx9h/iFWOLi8sbLq8o
         GmGlmy+UwmaL10q9UWnZzu5LGNaTwkhyAlsjCDUWFy/qhpo9wINpIuwi7aAX0ZYuBMbm
         3pPIy8LDsRVhcfT3BVFy2mWg3tu6kDi2kxIzJVN02KX0LsrDoDcAPfwFWJDU6NR7QqM7
         gM3A==
X-Gm-Message-State: AGRZ1gIr3huxHfxNjSC4P088oyobGPssn2ObkOwP/ey+UQLecm6h8OTW
	vat1nXvpKXTq1HKpb0Z4VyuF1HOBebI=
X-Received: by 2002:adf:8989:: with SMTP id x9-v6mr11642044wrx.184.1540809508294;
        Mon, 29 Oct 2018 03:38:28 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from xubuntu-vm ([90.192.37.239])
        by smtp.gmail.com with ESMTPSA id r131-v6sm13886210wmb.32.2018.10.29.03.38.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Oct 2018 03:38:27 -0700 (PDT)
Date: Mon, 29 Oct 2018 10:38:25 +0000
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCHv2] Staging: rts5208: Capitalise preprocessor variable names
Message-ID: <20181029103817.GA7719@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Capitalise header preprocesser variable names (and all
occurences) to remove checkpatch camelcase warnings.

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
v2: Left some camel-case uses (namely xD) - they may refer to
xD picture cards, as suggested by Julia Lawall <julia.lawall@lip6.fr>

 drivers/staging/rts5208/xd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index bf21bf0d1616..57b94129b26f 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -90,7 +90,7 @@
 #define	NO_OFFSET			0x0
 #define	WITH_OFFSET			0x1
 
-#define	Sect_Per_Page			4
+#define	SECT_PER_PAGE			4
 #define	XD_ADDR_MODE_2C			XD_ADDR_MODE_2A
 
 #define ZONE0_BAD_BLOCK			23
-- 
2.19.1


