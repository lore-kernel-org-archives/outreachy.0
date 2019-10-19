X-GM-THRID: 6749515623301120000
X-Received: by 2002:ac2:5209:: with SMTP id a9mr4763550lfl.104.1571494066756;
        Sat, 19 Oct 2019 07:07:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:1043:: with SMTP id x3ls1069225ljm.14.gmail; Sat,
 19 Oct 2019 07:07:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy77pAUtWSqMlLJrMO9pblJoT2405f6TixoeXGIMue8K8YypwudV9GPdOxoXkvqlMY9ghY1
X-Received: by 2002:a2e:207:: with SMTP id 7mr9243616ljc.248.1571494065485;
        Sat, 19 Oct 2019 07:07:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571494065; cv=none;
        d=google.com; s=arc-20160816;
        b=mp5ZbD6sNjZHNrVfiljC+RoSD6j3bo/MXaGhzdRXqdS2MljkXvXHv4R69UncE0i3Hk
         P1l7gIvokzMRREg3j7/Q0Qoys6eDQsmK96WdsQMilGK6F6kheBnoWCQeRx6oQlK9faWY
         4ZTOa8MTvmU4w27BS1EJxbaV+z5w6cK8q7Y30Tz9ufkuRLajXheGD0MTJGE0O3hpQxp8
         MWePXb0rtyuIo6h9wSKTxWvFXftOlFcJxo81g+FRJC1tiNhcCuvQNsdkwN2fUxHq1vXF
         qAtwwVN27xS4FKdMwzRPBcGrYci3pCYQOZe/BS98GYigzJHHOwbM0CbHxRDVMhgfP7wM
         u8LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=p7Q5YgxIlsTOJ6RN4Gx4aIi4gFkJcajKi+6SvF9kn/0=;
        b=CfzOBLP5KrWQc9flQs09jrN/f8JXHqT0UXeDRnfBup+D3d0MP16KSYN9/LGjnLkpYx
         EHwicz0SKYs52Q+lkP2MdQbMxViPBUeA+B2TzlfWM1WHuJgBnqDSGCf1/FWsVjhPWcex
         WDqu6lYMKin7uL684hVr0H6X5nVblPXg/p6E2pfQ4ucHiaZqXDiA533FPC6cVtSP0zTR
         XIIETaY1giF1mHJ5CyEFg0FRBW5/gu/Emn943ioO0YbchzfJlypwpQOszNzS8qdVkrnx
         CvYNctLLLkLrYAnLx01KYopNKjaqOfk8bwVz6t0M69xCN2gOj7OFfZRwCZDdUcbnCJti
         s5dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2z5pF25;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id h9si133927lfp.5.2019.10.19.07.07.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Oct 2019 07:07:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2z5pF25;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id f22so8632406wmc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Oct 2019 07:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p7Q5YgxIlsTOJ6RN4Gx4aIi4gFkJcajKi+6SvF9kn/0=;
        b=u2z5pF250EIkte8lyu3Ud+41Bfg4Xea7dGxk3D+jBXT0gHXPBYH9VVaD3TxBHfA881
         Cd3V9utv9g4a1wc56H+4/cEQp8oNWsXiuBmMF3YB92lffUuFSi2qRO1Euq3z7s0prnSk
         Y1NACEZccO7vIpybvASZjcVifQ8NVXMB6U/ngK8IsG7dOS8nYgCyMjeWC2zDy5XWwf9v
         mRBTngY0mj5t6SOMIhPBske3Z/mReI+wmSmd70MlXkVxd3MNeQibNq3MizisP2SPKrVf
         tpvns7yRRNyx5+vxyhoHMx/yeQcEsi476a7sYwhE7/apT8tocqn6hBM+9cnc50eHu0Cm
         VhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p7Q5YgxIlsTOJ6RN4Gx4aIi4gFkJcajKi+6SvF9kn/0=;
        b=fY5CQIb6/h+3Yi1/zUZvrQGBN6flkudENgpe4+ggfswLIIIMRNbXCp3DJNlGhAoNmZ
         a6S5d8t4tIRDK/Wdl2x3Xk/KF64LLFE9Z91LfjvbjZO5C+1WEJrxCiEQoQIUDztnDw97
         hY+E3aeWYYvuottxCBs+/VjsBZvXAZNOGJNURoU0nYmcGTXXGX/vBbhOiAcf5r9fFBfs
         bDt1e0R60ChEjq9AtMJkvIhI4SZidnHFwLK8diWnyOLVCrK1rB0yI52fLXfoR7QmR+IF
         auqYnqEpsNFXwYKa31hLWPxnkfjENfcrbe+mhL3SwYwHWGssDbrnrM7uouC64fIUk4rG
         dpUg==
X-Gm-Message-State: APjAAAXs8U+RCEWWoWN3yi8trYsomrTX3xnbiPlhyGKZ2DFBpf8TREGa
	tbQOm+U+qCW+EynohLi8ltWZV8cEdEB4
X-Received: by 2002:a1c:1bc5:: with SMTP id b188mr12424365wmb.88.1571494064634;
        Sat, 19 Oct 2019 07:07:44 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
        by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2019 07:07:43 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	jerome.pouiller@silabs.com,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v1 0/5]  staging: wfx: fix checkpatch warnings
Date: Sat, 19 Oct 2019 15:07:14 +0100
Message-Id: <20191019140719.2542-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix checkpatch warnings.

Jules Irenge (5):
  staging: wfx: fix warnings of no space is necessary
  staging: wfx: fix warning of line over 80 characters
  staging: wfx: fix warnings of logical continuation
  staging: wfx: correct misspelled words
  staging: wfx: fix warnings of alignment should match open parenthesis

 drivers/staging/wfx/bh.c       |  25 ++++---
 drivers/staging/wfx/bus.h      |   6 +-
 drivers/staging/wfx/bus_sdio.c |   9 +--
 drivers/staging/wfx/bus_spi.c  |  11 +--
 drivers/staging/wfx/data_rx.c  |  35 +++++----
 drivers/staging/wfx/data_tx.c  | 127 +++++++++++++++++++++------------
 drivers/staging/wfx/data_tx.h  |   4 +-
 drivers/staging/wfx/debug.c    |  14 ++--
 8 files changed, 143 insertions(+), 88 deletions(-)

-- 
2.21.0


