X-GM-THRID: 6663863789016842240
X-Received: by 2002:a63:c545:: with SMTP id g5mr7494552pgd.9.1551718864365;
        Mon, 04 Mar 2019 09:01:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:8f45:: with SMTP id r5ls6431672pgn.8.gmail; Mon, 04 Mar
 2019 09:01:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqzonxAkqNrILHNqu70u4IlkoEhwdxwm70xph6+TJMzIdr1yl6kPYt/I0DXyPjvBbdNeiLOq
X-Received: by 2002:a63:618b:: with SMTP id v133mr7595164pgb.34.1551718863597;
        Mon, 04 Mar 2019 09:01:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551718863; cv=none;
        d=google.com; s=arc-20160816;
        b=f6I4izNdVnrG8laPsDCUheSsAe4wH5nqCn8lX8n4Mbk/oTvMKk7nzw84AttV3K27/q
         MiEfTPv+iKdmWGNEBD1whdr8SV1tMajlXnNQxfplBdPH3msojmtgBuufHV1h8xBlo9+X
         UJVgC/ehCQ0vh6vMLJEsNjo1eYG1Mu0LdIs3pKdv/pfZU1YAKVihi/Dy1+k5QlI+jT2y
         0BaQqR/s9M3SLcQB7sB80WSPMeg6okzF7pY5g1aR1qemqY1g5t4kiFyy4b8lXREnOfOC
         95DKOVDkw806VVVHBp68gMnWrStw/AXyXhuBIv1/nMNpaJYXNVMh9BbYDzCWbwigmwMF
         gsDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=RXgNHCMuIULvcESBcipuiV8GE/nuFM2/A6kdHoLy308=;
        b=Kip6xKw7Maxn1oP/n9TV8mq9TFErzSHwzT70Z8wLsZEigSrkL3GluMzsb80BpQ6VUf
         BUXqCm0MSFLQhZPSdCoDYdToFVoxXTNZmrSX9w3eH6dT65g8BlXaI/PUfvu8OZn/ps83
         8/64HbEGYZjUaizQ8do5sBjzs3wPV1TFV0BWd140rFB0pjk/mGcL6X/oKBXVkYbEzukG
         HjBdY/n9LuVXHX35LO6RYTnv7hDFU4DRibD1Akr6Crm46bebC5GDfz5Y25jMGdfIvUkz
         8tsjbLKioZRXJ5AvQQbQUi70ZYY36EThCgKzjokkPN9l2GcrNd3nvStMc4GlNJ/80/S5
         kWhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pPOjx1Z1;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id u20si306973pfj.3.2019.03.04.09.01.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:01:03 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pPOjx1Z1;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x335.google.com with SMTP id c18so4781896otl.13
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 09:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RXgNHCMuIULvcESBcipuiV8GE/nuFM2/A6kdHoLy308=;
        b=pPOjx1Z1KTp5nfnKpkWV6wXPe4H1YVIHKSSYvvbdzA31xFvKzPR4x0A9vJD6uv4v+G
         op1LW481g5/JHktlR8gse5+/VPWOMnmU4QejRFJpIR+7Gt1m+OwcY1bOi+FipScPtAnT
         5MMQde7eyxPHvI7VfnzIr7zeZsxQIOtzJNQ39oqsKfv+ABWJJB+PYTI28MJlrH4fFvrW
         1F39G29P0Ru1IfWUTOpVTYMIkZznuOPnDKZkqdTwEc7NYrYzAxGGhacMkxiidnArrNVq
         OkiEkmaIhEzt8waibvOjGAtZ+rTd3QlJA9b3F/l0eusi5y+tY4qpkiZaR2t60RZ2Wqwu
         2oOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RXgNHCMuIULvcESBcipuiV8GE/nuFM2/A6kdHoLy308=;
        b=hB7+8BvonTPPFGFkOBhuoyVmV9sOPnc2i/c84GJDwhPABkE+SnNdIQ9TyRyDYCnlG6
         tVNhHgogZXMx+UsemkWrXIFZXhVKoCn7U3RWMODpA7dXgugPaqmXu3dkAn2C/tzKRJge
         Ajstl1l88zhIymq/PKuakYmgqZIupYexvYG8n+PSNv6lzA/DP4pWK5TdAtWu2xB/SnMT
         4NnzNf/N7/zyvLHwfMdwLzrvXxf13RRgmfpYjuc25KA6diOyBFqosdrFj3qIWV44XCyA
         ozY2Vw9Kpia7AlXaI8llkuPDSOX7mZuhbl7neY6NBbM3okW3l3FB3aJ3q0sJxO6nkJOV
         RdGQ==
X-Gm-Message-State: APjAAAUeWqy+8Jt9/kZCNpXiuFkkt4JB7IBKtxnApcEgEq4XJPDCD3pi
	gZT+xC8qbn8PvbjYhxGzodQ=
X-Received: by 2002:a9d:67d2:: with SMTP id c18mr13410528otn.339.1551718863208;
        Mon, 04 Mar 2019 09:01:03 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id y124sm2597039oie.57.2019.03.04.09.01.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 09:01:02 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v5 0/2] Fix checkpatch.pl issues
Date: Mon,  4 Mar 2019 11:00:51 -0600
Message-Id: <cover.1551718323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551718323.git.madhumithabiw@gmail.com>
References: <cover.1551718323.git.madhumithabiw@gmail.com>

This patchset fixes the comment styles of SPDX-License Identifier based
on License Identifier syntax.

Madhumitha Prabakaran (2):
  Staging: vt6655: channel.h: Fix comment style of SPDX License
    Identifier
  Staging: vt6655: desc.h: Fix comment style of SPDX-License Identifier

---
Changes in v5-
- Fixed subject lines for individual patches and versioned the patches

Changes in v4-
-Fixed matches in subject lines of the patches

Changes in v3-
- Fixed commit log and version number

Changes in v2-
-Included cover letter in patch set

 drivers/staging/vt6655/channel.h | 2 +-
 drivers/staging/vt6655/desc.h    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.17.1


