X-GM-THRID: 6754760383787958272
X-Received: by 2002:adf:8527:: with SMTP id 36mr15308092wrh.144.1572715207137;
        Sat, 02 Nov 2019 10:20:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e8cc:: with SMTP id k12ls10182199wrn.9.gmail; Sat, 02
 Nov 2019 10:20:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxMRRq01UiOK/IdZwU5/lCzybKDLakKli/v56PFde40u9W1wRjIblGGLslSSKa8P1tLxQ7m
X-Received: by 2002:a05:6000:1601:: with SMTP id u1mr15658270wrb.214.1572715205939;
        Sat, 02 Nov 2019 10:20:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572715205; cv=none;
        d=google.com; s=arc-20160816;
        b=RXFRH3Tlqvihh0xMYn4ZgNSnuwp4/1sQUJ7cq+YULyjoRwZ4IV5zpeqcNYdAdPtal7
         NrNRhgbDhtjg2+/NsVlSI4RT+qHUTauqOyymYJucCtwlHhePv019oxrQkERjT0FRrvvo
         KKMIeKo/OCNXrZZxWYi6UbBnnrWXc3tH3rCS/5qdMwQwcyvIkALxPOv/3mKnYJ7Pnji4
         XHDWwPCm2lDs59t6hHDay0O1ruuRKh1CY65DyKnEHkVYXktLFaXkDEmAdofGocfQGco1
         aWuEpnLCr3A1bIDJ6GIgePiHoSPKGB4Ax6XBlLEqU9ChX3qtQLEqSkYpM6+UsFU563et
         z75A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1qIFrGSARHFoyOlIwz35OMs69rVxVVWPPvXtZzMurUA=;
        b=IxCyl3jAWJnfaYXSuySYBjbh78GusueKMimQuesJitm+BD4WGrWI22q4BUXfq0ITWb
         fyUlv4payKwNqUEDjXBkxeRZFyZNpiNOC3FVgv4GbpFr6hkAfvF4FpH5szGFrzFxjqHI
         xZqj1//oqkwXNgf7OGNZgATlV05psBMhdlPO/JdycQAwt74EoZsTqn6EnSkRbWDYXKW1
         dsPyG1HCiju7LaNY3gDCPc68Mcra85NfqqMsdECJLrNCACmcYWt9k5cacP1AE0i8VnU3
         JVLd1L6GToQ3SP2y2OwoTZaqJ3tAwZTHWb6Tecfczn1/g2JlSwX+lsfk93PSxP9Dcdn1
         9ttw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LcNwpWqk;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q3si671611wrp.5.2019.11.02.10.20.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 10:20:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LcNwpWqk;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id p4so12664386wrm.8
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 10:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1qIFrGSARHFoyOlIwz35OMs69rVxVVWPPvXtZzMurUA=;
        b=LcNwpWqkRiskRIFEzSCAOjzgpLI8kyk7skDt0SOBcsrC8TYjdwArZRmbZLzSRPX+tf
         YrTt2CNtwNSskOeFLmieyASVJz0ATfuvCxs5l8VphYMTOsMg4dyDKa1Lo0Sae+UPFbvM
         zO8Bt+FOwbhllURwuTsXXP9LWOxmautVkuY7NIZF+ziBCVNkZUfxBNxlQhrDpofiv1bd
         2YLohCD6SLX0fzKFmD5euUqeYibD90bpPVmXR1QLdXnCYm0SQpEi3D/AA/MnbDYaO3Nj
         +XnYHmiybR9h/R6QAEn0m4t39pl+5LChhXfYuHNDKBk/b6ECgImoHLeGJVcNpnLOODRA
         mhGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1qIFrGSARHFoyOlIwz35OMs69rVxVVWPPvXtZzMurUA=;
        b=dZNhXebiHpdTpDNAp4GBUKQlds6Sdi//D/wvIQmAyyJpbRlKyX2YZlS8H1rieqQ9GT
         2RZFxJnFcqDgwkykqksoKeyJzBC4NUFzBwzWfqZmAmJPLleNrxBZYjOYDSpXf72A6aMX
         MhEW6YgR8p26c6FSG4pK5DkY6oDHkTpXB5T8E4yNZP4AcBqFFOByjPqEWzF5c5SwX/Yc
         WUGIRnHDrxrWq0GWWqI7HW/lCOI+6Nc5R8qCr1H0MjZUMPEPY1vh6D8LQS526FDVyxfB
         8QgLkn5xXLMI/idgFQ7cd9qnj26OYV2HUBuWPM3BlY5ntYqv2TCS9lj+r/1WuX8DnPtD
         iQvg==
X-Gm-Message-State: APjAAAUlWAoN+cgLv91Ph4Bo4+emQb5f01WJwiJKVNgtxjD0ieIROrkB
	WDx07j2MLlWWJKyxf16LWeezPm1J/PKr
X-Received: by 2002:a5d:526a:: with SMTP id l10mr12734035wrc.72.1572715205331;
        Sat, 02 Nov 2019 10:20:05 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id r3sm23504042wre.29.2019.11.02.10.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 10:20:04 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2 0/2] staging: wfx: cleanups
Date: Sat,  2 Nov 2019 17:19:48 +0000
Message-Id: <20191102171950.24950-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes since v2
- includes previously sent into a patch series as per suggestion
- merge 2 patches solving same issues into a single one. 
- improve on log message : used replace instead of fixing as per 
  coccinnelle recommendation.

Jules Irenge (2):
  staging: wfx: fix warning of using plain integer
  staging: wfx: replace integer assignment to bool value

 drivers/staging/wfx/queue.c | 4 ++--
 drivers/staging/wfx/sta.c   | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.21.0


