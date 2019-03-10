X-GM-THRID: 6666820090157072384
X-Received: by 2002:a24:6283:: with SMTP id d125mr18328632itc.14.1552240012329;
        Sun, 10 Mar 2019 10:46:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8c8b:: with SMTP id g11ls5591841ion.4.gmail; Sun, 10 Mar
 2019 10:46:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz5k69kpi7JJRUB6h2MEkQ2gueArxTt/RQpaL4g0R6Am2EwAMPMmShqlDIy4uZg4rZ42+kW
X-Received: by 2002:a5d:914f:: with SMTP id y15mr17293134ioq.18.1552240011561;
        Sun, 10 Mar 2019 10:46:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552240011; cv=none;
        d=google.com; s=arc-20160816;
        b=CyHaYrtk+xm1t0HiMiyxBWPorXKO7Ir0iVcq7z+CzXxbgl5BS2EG3glKS4j+cSvjWW
         fZazQKmc1T/xtNSIonHXhG1f+ijcATT1ha6MlrsbbwkC8Srk76XW+mM8SVanLBmPvob/
         JN7KMGLXwny+EpKX6Kejz1LAGbz0pdrD9zVmlMq8RR8WIDcqnVRQi/4T3LI+VaNnG4jf
         7RBNXLvcxhHLNHqVP4/DyLB/VB+vTDL6N8fF+y7VGSF79rQ7ou5gsfgihMp0uwobO3Qt
         S3EYo3nXmTl+S5r6+2sWTJmAOuT0sCLW/tY43Tsv941OFYvaBeuGO/mzd6xCMNH18gLq
         FKgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SAUMFMJvqNJcBEeGST3Sjq7IOTk+xDEN1U/O7jYg0zo=;
        b=FTL8BPVZ8+9UE1yoj33/R9D/ThCrCUYTx7k98uan0fNwDg++1ckJr6OyUnDRDxByVz
         9uf9qrzpHtGA75j+SxtseYutdKFKvAVyvTdhDLa+1m7ZBfKGdqWefYIvkWzSQStYoddg
         sR5N8lN59godDphzVEz29W112+UPitN+nuQZtvrld4Osx1OqbIcwkt180+WtOSGaXdck
         +VL2ownoVMfkRyPJtlGnR2LFqOGT1rQlohJw81T2eDAhonuHUq8Fg4ZaMrQU1as0OIwP
         kNKofobxCln1HvkAIdKRNkzaNxXb36PpLLAGJW6MGC4bXoasEI5SWWY5ix180CT+cwTo
         vdAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NxLdNccQ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 77si947260ita.2.2019.03.10.10.46.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NxLdNccQ;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id i20so1950899pfo.6
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 10:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SAUMFMJvqNJcBEeGST3Sjq7IOTk+xDEN1U/O7jYg0zo=;
        b=NxLdNccQN+LG5iDwrympwDWBttGQx8ZSM3n1Vf41C8XxUtBJG1PnMeYmqyejYYyeEb
         p2sR3E2dilLguTf3gjpN9jl3e2f9me/5FSmNZ3sJB89r2wTxqK5WQhyQM69tpVyDiVcS
         m/faHhuUHOmakgtt9vwUCIKtUzuzAyyNqbib4FQoX7xS1mVYa+G2RLcoot9djBm8qKBo
         JM3apuINmmOqf3nURTyQ2zOgm+bUkIv7KVVZDOS5lhydqIAYelk8fgoNPgNhZBHSuRuC
         RbwkjbwIjz0QVYBfnP8tEboVNb2PkLL1I9klI1zUanx1ki+JXtXV+gKT2qoRg/BafUXo
         aPVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SAUMFMJvqNJcBEeGST3Sjq7IOTk+xDEN1U/O7jYg0zo=;
        b=Yi2GzHifWl5yD4+2t3s5uqqOj5nA45TDRqXP7YZMFGbNkXDvnjoNZDjzJUX+AMaUKp
         vA4QzoubFfP25j2Js3BWrGuFeK/YbgdDFpjp2zjTCwe1+JFwvt6SStFaBTuCFxkgSNIe
         4v3tu6aFtDexNpTiHOnWQxMzilwxgb0+oaNTBJcvY+SeJvgaSvwtzQGRxWnuRIrQuy10
         CTvhPcmMIdtwFuhk/9MD8SlV12A8G4EsFyX0ng/2niw8QEm+eGXwO/AZ7D4LJBzrdrwr
         WUncOELEzvmK34P5i+8+eSLwpEDHXt+siO6YR0ZE2Y3R9J14qEyK8jKjx900+Xux9vvZ
         ctBA==
X-Gm-Message-State: APjAAAV7gnYAfVKM3XT5yBvICkSsv+UHYn99qKFKhaMAtn3rq0F1yLt1
	FEEEoLQ/3Zom/hmMaeYUCR+ciAxWjgE=
X-Received: by 2002:aa7:8243:: with SMTP id e3mr29766024pfn.40.1552240010642;
        Sun, 10 Mar 2019 10:46:50 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id h184sm7340275pfc.78.2019.03.10.10.46.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 10:46:50 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/5] Staging: rtl8192u: Avoid typedefs for structure
Date: Sun, 10 Mar 2019 23:16:30 +0530
Message-Id: <20190310174635.16923-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series removes typedefs for various structure types.

v2: 
 -Modify the driver such that kernel should compile at all times.
 -typedef is removed and then updated the uses in the same patch.
 -Struct names chosen according to Linux Kernel Coding Style.
 -Series with one patch per structure is done.

Bhanusree Pola (5):
  Staging: rtl8192u: Remove typedef for struct _bandwidth_autoswitch
  Staging: rtl8192u: Remove typedef for struct _IbssParms
  Staging: rtl8192u: Remove typedef for struct _RT_POWER_SAVE_CONTROL
  Staging: rtl8192u: Remove typedef for struct _RT_LINK_DETECT_T
  Staging: rtl8192u: Remove typedef for struct _RX_REORDER_ENTRY

 .../staging/rtl8192u/ieee80211/ieee80211.h    | 30 +++++++++----------
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 12 ++++----
 .../rtl8192u/ieee80211/rtl819x_TSProc.c       | 10 +++----
 3 files changed, 26 insertions(+), 26 deletions(-)

-- 
2.17.1


