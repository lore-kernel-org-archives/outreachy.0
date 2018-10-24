X-GM-THRID: 6615995606614671360
X-Received: by 2002:a50:ac29:: with SMTP id v38-v6mr5985058edc.2.1540406515693;
        Wed, 24 Oct 2018 11:41:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a924:: with SMTP id l33-v6ls2007966edc.8.gmail; Wed, 24
 Oct 2018 11:41:54 -0700 (PDT)
X-Google-Smtp-Source: ACcGV615YgVcfPuRaZjjKWAlxkKNyYxoO2120kSUJgIuXZY5qqj7Hxnz6v9ypubroFPlF85MtKay
X-Received: by 2002:a50:ac29:: with SMTP id v38-v6mr5985053edc.2.1540406514977;
        Wed, 24 Oct 2018 11:41:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540406514; cv=none;
        d=google.com; s=arc-20160816;
        b=SRMjHjJtlMqm6fQsEug0TVN+Yi0s5n13eNoS/kz6w4inVwhopIWIyRS1NNcSC53ySO
         tkm6SPPc1vQM4VaIrfmr9kcaPGXqhm6ScVLpwoVJ8R+a2NEm4/4oLnHVjwWxsvzs7Pis
         M3zN4WWZJm09cvXp+2nBnSHk6zc4kITLPiN4qNc+/irdYswAa306bumNvAdqmXObP678
         lgckkPQxmP144KNySHUh5+JA7y3xhWb29kpwyf2Cj3AgfBQpahsw/roC1thRxyQkBRne
         YoZHwP/lHkY9mIUZOJaUIxzZVZzqMLdrSVOY2pE7mFZwrCYXfX1BX/P/kEd+W4beUlT8
         k8sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0t/azEX5nfgkYvQO2BIukLrQ5OZp1XAKtmHOtvO2RZ4=;
        b=bjmay8bNWyvCuwPLI2aR+iYXGLunX+J5dUYVT+xCwL1lc0pZBHBxvijUebKr5/ZjCm
         CxatnZz8fLJAEE7YvpupC7DbxdE2Jd0DZ98FigWEHkqC0VHaDFstKB+8c+8dKYNss2PO
         fK7Cc4ZnJF487Gz51TC6VWgj8tlZkWCwACIN58iCHO3DozcnhSoZ1AiE8VvkrbyA+316
         ljtwVjLi+80CwRBrWDw2etFm4MSCx5tQXASDG637KpEtt1fjiWT3TSV65v0bT2yXVyhP
         ujfMifSWV1K9V0xRa4rxyPORTezc256GoiFnZnq0cNDaISLXU4Nr3FHWV3PF2b7ILlKc
         blTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0+9sWCg;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id w53-v6si191490edc.4.2018.10.24.11.41.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 11:41:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0+9sWCg;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x335.google.com with SMTP id i8-v6so6431757wmg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 11:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0t/azEX5nfgkYvQO2BIukLrQ5OZp1XAKtmHOtvO2RZ4=;
        b=L0+9sWCgC6c3ICPt2vyrazYom3bW0WtorUj+tXfenshGne86+oLzJ5yNbjHmPYiSxs
         KeoPEDKoGJZI0OzoINDC7/lBAbkgNavG2onWfb0rLtBoZ3wfO4qWG1KcH4GIfLFrz5L+
         xysdAO+W9iH7hHGEJBSbjmSNZzPEwGB2s/wPMkT/ZjBShCSwDTSwDNnPNFXT3J/Nvpt6
         1e3r5gzxdGaf/ZOr65eDoIZGbqY1giGbhcMlpnYRULZJ5ATc6ud5fkFoj43K7P8YrAKk
         Mc110zR7R1vloO2Z4MDvmIfgD3s0lkArxq7fpV/UtVBbMrwYbbfir08AwXS6y0rf0hzu
         Kbug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0t/azEX5nfgkYvQO2BIukLrQ5OZp1XAKtmHOtvO2RZ4=;
        b=ofaXj8vF7B0jWbuuNcF5X5PHBdfPfJ1GHk0TU6nlkplYgPjqFZxpeGP7b9akyTzR/I
         MYNvM6yeiOt8hLV+KFc2WGWKiXBYy0n5xKlIi+IUlGfBner0xSBWsMYSPRwvNZ4+kTAy
         0lK3va0xYdSXXo3IRrJVHzkuHYpBFfSdXDUfq88UrfFAvEbVTf5BlGuESWL4/40zyRWA
         WY6UL3Ny7hW74gh/BiB3QtPKRlDfNcSEKElSSwJjZRq/Mwsag89VBJ3Vvi2ocWHuvp/V
         l9mC00CJTMYk6PFQ5S/+lobX+JAqxQac/EHwe4G49uJBCdDbb8QYfrhV/hqLy4SdMb1h
         kfGw==
X-Gm-Message-State: AGRZ1gK7UZLByP3vo67HJt3HBGPaR5+ItPuVsAZVXGUU9XkJM5Ozv5mz
	MPN/w/sLP/uNbueNpxDP2rA=
X-Received: by 2002:a1c:790:: with SMTP id 138-v6mr3950650wmh.122.1540406514583;
        Wed, 24 Oct 2018 11:41:54 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.wework.com ([82.166.68.50])
        by smtp.gmail.com with ESMTPSA id t66-v6sm3282377wmt.5.2018.10.24.11.41.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 11:41:54 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: mchehab@kernel.org,
	helen.koike@collabora.com,
	hverkuil@xs4all.nl
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Add support to more pixel formats in vicodec.
Date: Wed, 24 Oct 2018 21:41:46 +0300
Message-Id: <cover.1540404892.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

The new supported formats are
V4L2_PIX_FMT_GREY, V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.

The returned encoded format is chaned to support various numbers
of planes instead of assuming 3 planes.

The first patch adds new fields to structs.
The second patch adds support for V4L2_PIX_FMT_GREY.
The third patch adds support for V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.

Dafna Hirschfeld (3):
  media: vicodec: prepare support for various number of planes
  media: vicodec: Add support of greyscale format
  media: vicodec: Add support for 4 planes formats

 drivers/media/platform/vicodec/codec-fwht.c   | 73 ++++++++++-----
 drivers/media/platform/vicodec/codec-fwht.h   | 15 ++-
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 93 ++++++++++++++-----
 .../media/platform/vicodec/codec-v4l2-fwht.h  |  1 +
 drivers/media/platform/vicodec/vicodec-core.c | 33 +++++--
 5 files changed, 157 insertions(+), 58 deletions(-)

-- 
2.17.1


