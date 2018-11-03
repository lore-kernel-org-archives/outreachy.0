X-GM-THRID: 6618908371010453504
X-Received: by 2002:a1c:c90d:: with SMTP id f13-v6mr231072wmb.5.1541278237730;
        Sat, 03 Nov 2018 13:50:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:93e1:: with SMTP id 88-v6ls3682124wrp.19.gmail; Sat, 03
 Nov 2018 13:50:36 -0700 (PDT)
X-Google-Smtp-Source: AJdET5frqxOfFZvnBqY9xiDGXMpy28zqvRdgKS9LhQ6QWOkerWVU8AJNnzp1UaRMdyP1XGOe8ITU
X-Received: by 2002:adf:8b56:: with SMTP id v22-v6mr1621887wra.6.1541278236872;
        Sat, 03 Nov 2018 13:50:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541278236; cv=none;
        d=google.com; s=arc-20160816;
        b=G8FJDQvFk2cpFteB9UiAiuGMa+6t8qx+P+/9PIwxZZXObv6Sam39I4QPu5NsghJ9jS
         VoEHGP+zc+0x6AnD/G8bvM7PkNi649dmxFkqDfQbWd2g896EWDg+JqaXtVFlCrfHbwsP
         YNnv6BnRKwKtl9kVj3N5Z4hY/1w3H3yZ8hYPk040D/5Ve08OAh2vH7LU5djpVOrxLXCw
         momefZuxAA2NHnGmNQOHvrNbh6g1RNVbnbL39/noFYzV5KAPyn62XdKoHDEPwihFQ7hv
         1usGvk8TF1YRtsiIt23Oq22Ydz5f2reDUYHSC9CKJ+HkNhNJ4u0WF7xcpOXRzjMjR/t4
         VGhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=AoxV9vCwTbDDXy1+FH9pcuC/HdJxfY6gSEQ3tTN3yEo=;
        b=qC0NMGMYxlDZ9XLOOMnWMM03GGXH6uHqX36vrt6YYNqfldpOh+QuAkc+j9vKPNTdIY
         eI+Ox/lP2JSyCgl6rjWw5snmGl0MooBrDXUxugZo1VsSrxv2Jai/nKIZM3lazcg35bnP
         nwf3u1xeUK64WrAJEK9exCl8EWa2Ow3uwWu4//rbcUsXB5AaqNuf0axExr3fK49wRt7y
         vvO7am870j8ajsR8g4hn3/vvixsXYd34ytHSmE1mhAgyp2BqkhXFTUQcYzv2Gm2ascF7
         +5p8BqNJBF7UNStNSykSpxouQL21/kKzNFswYQthx+TRZseUTEjoHtPPcb6UiCmunNBx
         /SsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EpLBzmZ2;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l15-v6si140961wmc.4.2018.11.03.13.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 13:50:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EpLBzmZ2;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id y3-v6so5042210wrh.10
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 13:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=AoxV9vCwTbDDXy1+FH9pcuC/HdJxfY6gSEQ3tTN3yEo=;
        b=EpLBzmZ2+USpwIBNGyipnSHlxeeMqVb7wyHCQhSTQBOBoDQ6OKA1Fm8potgoLIzDv8
         pE94nSV5tOWM+YfmpVreqaYtkVUaQjhHpUM7j4sB50o+mtZEo4XyFNdBqksLDraBOgxb
         xfgGyE2UawKy8GsgY2bRNdpN0g/42YGpqsOdrsCgK+lvQIYXlZqjDfTbUB9TecqBkfUt
         Au5JZx5Dxpigmi4QFjAfkkdLBkPvKRn2fkO1higzA8uHg/F85qUfasiZzizTANuU9JMG
         lp0t/xnK2P/AebkyX5/R3WoTZO2RK9JV1P9gjhXwyUAxjkeE/PZJ+mcGtJRIR+S3V1hM
         e68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AoxV9vCwTbDDXy1+FH9pcuC/HdJxfY6gSEQ3tTN3yEo=;
        b=siKk9mPBi4oAufkC9qqCjbYyOQxC/Lh7ns41308n1Ab8fuQvnS8gaPNNCGnT6RMpeA
         6ER8UZUJxS8RE6JBFcpEWGrUourv2X6fOXwTbiYeyYi5WOe830Rfcpt/kjGlQe4VujiQ
         mKkPqMU5B+sKAOnuHP0XKoAdiR0XCMKBPjhZ1xpoQQhwd7T1fznRxwgd8cMhgbptmlIp
         xxl2ntqWUo2HExwB7l1shjWvn7y6bJ/yhDx1S6+caKf5bmpctsgrrxyLbWbk28tsvWhi
         8Ibj1frala1WHgb+o3IYVMOQhXYiwa/XzhgAOO1EUnkCM+OOAp09qSg1HPTJuKEQpJ9Q
         q62g==
X-Gm-Message-State: AGRZ1gLVo3cafpZQB9zYOGAXedNmg33nrWFqXTPFkFH30NFB+ZtG1gMh
	gqW+PdQfzNpud/J2ccDh5CUZnqP8Cyg=
X-Received: by 2002:a5d:4e01:: with SMTP id p1-v6mr15123501wrt.320.1541278236331;
        Sat, 03 Nov 2018 13:50:36 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from gurit.home ([77.126.109.255])
        by smtp.gmail.com with ESMTPSA id l67-v6sm66604873wma.20.2018.11.03.13.50.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 13:50:35 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: helen.koike@collabora.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH vicodec v3 0/3] Add support to more pixel formats in vicodec
Date: Sat,  3 Nov 2018 22:50:26 +0200
Message-Id: <cover.1541277502.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

The new supported formats are
V4L2_PIX_FMT_GREY, V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.

The returned encoded format is chaned to support various numbers
of planes instead of assuming 3 planes.

The first patch adds new fields to structs.
The second patch adds support for V4L2_PIX_FMT_GREY.
The third patch adds support for V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.

Changes from v2:

patch 1,3: - no change

patch 2: bug fix - replace a test 'flags | FWHT_FL_COMPONENTS_NUM_BIT[01]'
with the test 'flags & FWHT_FL_COMPONENTS_NUM_BIT[01]'

Dafna Hirschfeld (3):
  media: vicodec: prepare support for various number of planes
  media: vicodec: Add support of greyscale format
  media: vicodec: Add support for 4 planes formats

 drivers/media/platform/vicodec/codec-fwht.c   |  73 +++++++----
 drivers/media/platform/vicodec/codec-fwht.h   |  15 ++-
 .../media/platform/vicodec/codec-v4l2-fwht.c  | 123 +++++++++++++-----
 .../media/platform/vicodec/codec-v4l2-fwht.h  |   3 +-
 drivers/media/platform/vicodec/vicodec-core.c |  35 ++++-
 5 files changed, 182 insertions(+), 67 deletions(-)

-- 
2.17.1


