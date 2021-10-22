X-GM-THRID: 7021822549853995008
X-Received: by 2002:a05:600c:1c8e:: with SMTP id k14mr27023674wms.27.1634895463607;
        Fri, 22 Oct 2021 02:37:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:5111:: with SMTP id o17ls1793689wms.3.gmail; Fri,
 22 Oct 2021 02:37:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyNuHLJnxh6OLvCfddF1cxll6ulvnPxAlqrRDGDV0VkEs0HTgJhJwxexYVs4idWlk7OZidd
X-Received: by 2002:a1c:a9d5:: with SMTP id s204mr12983922wme.193.1634895462015;
        Fri, 22 Oct 2021 02:37:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634895462; cv=none;
        d=google.com; s=arc-20160816;
        b=LOzPmgu4yRljhCMK63RsdyNAYDLrBbvflDotB4qL/KKLFHKBjLHoD/OvTI4Ndi0ACc
         WCFRSREQJocVejNSNyab7YxRSeABZecTXmfpu9P9lsVn/raIMTaSbDIvvCBFKeCA1Pph
         +ozI7FXc+v97UUdJQX1TruB1n09IidCAYxwPtXZpkbnvqwbbf4Fc7EC0ocHc3dwFc7UL
         NYUrcl3e18wZGBo54acoqotiDyQIIMg4ZBjsoKyjdAogWvmFqsF8r93QqZ8rOREDqHiX
         SFP9F1zWLnZgOCMBTx6QewHL2S7LKwV3ac335rU5g3tsOQsgMyz/PIHhWNZih2m07CFn
         wRHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TrLGl5J1Fh0jBQ3bl4JSYt92D3B2FEdMHUQ1wG7PfLM=;
        b=aT26KhPHOajBBjmBH8QpTr3ZfygdFb8EVGteacuk2QMw6Qin1zl13WQg88Ke4qOnTo
         MF+W3mjRHTOmQ4L3AcNClm0jOpKST18bhbQTfcoQvk3eDAvn5BKUMCW/OGfeWppnlGnn
         E7q4/GSdTN+a4dJ1Y5nnePGb5EXTMB20i+Dr3Kv/lsv64Dz9fK9zYxbhb+I9mMwVBf/9
         CLFLF21vA0TncfJqk97l6pwbwGNE+JmDI5RZgffxxgmCntlQ4NbTM17+MthkjiIiYg4b
         dveOQtQcI7Ay8i+eI+DV+6rV17wi6iyZR3G+vtjITWnJvn6Lq4kKq10x265tcoaCuy9C
         xS8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=BtXoJwbc;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id g2si767277wmc.4.2021.10.22.02.37.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 02:37:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=BtXoJwbc;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id z14so2843000wrg.6
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Oct 2021 02:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TrLGl5J1Fh0jBQ3bl4JSYt92D3B2FEdMHUQ1wG7PfLM=;
        b=BtXoJwbcssnAYaQiLN8TVnM1N6szpyGOWkHG+klTa3lYOOK7SD3bPMJDQKr6ugldKa
         X/h9RaNBWNhhtyeBkwfFRal8W/0PQ0B1mjP30ce/cPPuEnL+LUG2uZ0BGGd/WpRsvEsz
         xSq4RWDb7IShOmcOz6hISkeHC+11R/RMrUa0JM6YjQ7tSkoiMKzbWaUJMntFOzobl+K9
         Kq/K9KupUqJMp7dGpN9sKIcvsAUSl1s8QTvOvXIKgHAGDYj9wOF1jpQLRR6BBDchJnkF
         ZB+T/8hxFtpE9CB8ICqjQ97sWQ3fZDDTpe8II5D/pzZRslyedOQbrqsWTZ5MXW6eIfuP
         vgfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TrLGl5J1Fh0jBQ3bl4JSYt92D3B2FEdMHUQ1wG7PfLM=;
        b=Ta/eqZ9iO3m+OLAGpB/B4OFItaWUxoEoooUrI0qbL4JH02KAuIWi5U8XAPwhTrgPKt
         kt0YWiz2Sojicc1LO+kTtIN/diA6wzHXgwxhpV8Hjub5A0AJzoHU046WFOSW+OhCndfF
         CzhEtAI6qxvHjbONPzabyiOMJ9C4Yyw7XFvz1Yh0oT3/1zQsG3fDRoAgwHMUlc9KyMrs
         2Mi6zb5te+d52xpZQjQD1TUHM/7JOZKPIqS02UnQwlSdSZCexMD2n8rdX+EE2U3MshdV
         SbIrcmTKeoTIrH18Pg0qls+ZDId19FwD6flFRLeEVPuaTIfPMlR+axJxA4Z7xbtOKebs
         tBWQ==
X-Gm-Message-State: AOAM530rMQs7bPyo5SASnvEe3NMSyM1ws9y7SoztZzle3o9Fdt7tqqRn
	wVeinCpMBsOxu/eF62YMutR4IyLs4OfuFl1h
X-Received: by 2002:a5d:4481:: with SMTP id j1mr15034248wrq.6.1634895461773;
        Fri, 22 Oct 2021 02:37:41 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id r15sm1643602wru.9.2021.10.22.02.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Oct 2021 02:37:41 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 0/5] staging: vt6655: `RFvWriteWakeProgSyn` variables rename
Date: Fri, 22 Oct 2021 10:37:13 +0100
Message-Id: <cover.1634826774.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch set is a preparation work for `RFvWriteWakeProgSyn`
refactoring. It includes removal of Hungarian notation in
local variables and function parameters and changing them
to use snake case.

Karolina Drobnik (5):
  staging: vt6655: Rename `ii` variable
  staging: vt6655: Rename `byInitCount` variable
  staging: vt6655: Rename `bySleepCount` variable
  staging: vt6655: Rename `uChannel` variable
  staging: vt6655: Rename `byRFType` variable

 drivers/staging/vt6655/rf.c | 60 ++++++++++++++++++-------------------
 drivers/staging/vt6655/rf.h |  2 +-
 2 files changed, 31 insertions(+), 31 deletions(-)

-- 
2.30.2


