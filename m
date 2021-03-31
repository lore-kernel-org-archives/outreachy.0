X-GM-THRID: 6945952502339600384
X-Received: by 2002:a25:d613:: with SMTP id n19mr7750482ybg.290.1617230591824;
        Wed, 31 Mar 2021 15:43:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:61d0:: with SMTP id v199ls51139ybb.3.gmail; Wed, 31 Mar
 2021 15:43:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz5iCR9Itxd0dU3rucBgKMPS7ChPH9X2TNORYQRDklx4qVCyYpSMoWHwJEPAeARrqthiFW3
X-Received: by 2002:a25:c5c8:: with SMTP id v191mr7513171ybe.142.1617230590774;
        Wed, 31 Mar 2021 15:43:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617230590; cv=none;
        d=google.com; s=arc-20160816;
        b=ohlwrofofami2XvzrT+AKodvFEyBiMqNhC3YrRn3ohSHzF7A2HaOM7+Q8EAPCNwLpg
         +Akyg/JgIo0FF7jPWbn7BbfXpfsRLtEWwDeKDheoh0u6vOVC3N0ZJAZY3JJ5RLdMe8m4
         ew27kcMNEnUNgEzw7DABdGPT5bwkpkXKfvjd0utzA+BNsiKCd2XnsQl5+5gfTMy1XKdX
         1BLdJIopbdv83yuzVDeZlEVY4NhusCPsZXJGMfpzNBHjQI/bT4eEZg18EgayabiQW+70
         nFEcdeA5J13rDDISj1BeYagZRaNTWweyfqO8gA71Lj4y/hdnEUqKWTpKaBMnf98/h8hU
         w2kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ro3je/BBvWF7sM47Lmq+Xq0Jon+ne6ToNQmIFqDmWiY=;
        b=B1EIdnKl9mvbFuooMfXbMTBl+gbql+u1MUSSm6uOiu2H0Av1gvjAxauyG0f2p9lpmx
         hRJM/RG8QFVkHgHBx6XMZtwYNAlkoDLaS0cLAizM6apYt7uTQs8jC6cTWMb5wBAsq7hN
         LP5Hacu7Rvw5s0OxOaZuAHvGQM7Xy14bV8wcjIw2L8UHf8apqxIRMpAbUui9i98c1d/B
         n6cHOPW/lfVYbIptH5WqPWKq/hYcXLuVM+7Qz19db3FeFEGj+gUPC8ggPCg1kIAO3mtC
         x1qD7IwXttv5t3lXpMSCc++0hGfzW6jQ4OrLgXaAFXapyYT+puR4lkp4UR+06/+Y/9Y5
         OLbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hEK+hFyS;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l14si243564ybp.4.2021.03.31.15.43.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 15:43:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hEK+hFyS;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id q5so44944pfh.10
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Mar 2021 15:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ro3je/BBvWF7sM47Lmq+Xq0Jon+ne6ToNQmIFqDmWiY=;
        b=hEK+hFySXLu8+oYIA1hqyF75ZfrVVL6t7J7ceUsg9icsOb09sA2C+DFnpw/xi/0/Pa
         DaVrYEDOjkin5pJJV06x8hslITIFIiLhQMMO2gqHzpXFTCp+heLL0CDGOie63tJEhb5i
         CYc7JNAbLqDUzEfoK+HcClNkufN/eVENTHF21VSJHqj1ZvAGUpGQgzX3Um/JVefiDxHB
         cHN2FRBZRBLCF61HBaQY1uhs7EEHQbZ+LxrdvZBMbXu+lmOLfoiseUd8SXTCr7//mwr+
         MDGH6m+jt8ilsNXHboGO9e3apgifCrNljhMe/Pwq5vvM5IkKPSYGtsPqsBbZIRGLdAh9
         AgOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ro3je/BBvWF7sM47Lmq+Xq0Jon+ne6ToNQmIFqDmWiY=;
        b=NGYwVDFwhCTyfBychgStUN9wIYckHAfQYn3RMqp033H4d+Da0AVqf4LUe0ihJNP524
         u97PQg4oQwk8fmow3C6PZ7OA+MWSygAhj1rbVXlxRQie3ym6hk+xQ3KC+wU5URrYXdi+
         maTyc0rX8QkZeFNAvX9pCjLDqpXMsY4CMPL57Kcs2VpKTNtQ69NVkMdZicSqD9JAHsXe
         mWFPDWCWUA+hRznq4U6uAmiU54eJMwzgcaWWn7Jd1ZljGv7+Sv1kvYm0x+JDoOShiEyH
         ZQSbvd0V35cA8Cqi9bj+cbq1fkvWIfHTsxYj0+x7bs39m/wwSPJnpLEvjnr0MHf4FukL
         EYZA==
X-Gm-Message-State: AOAM532OvqL6dPnZ1Xd+OSbtNZn3X3ObZhfgu48dbBijMZLTrkCzr49S
	zSu9AC88eOYpharWJTUwtJM=
X-Received: by 2002:aa7:94ad:0:b029:1ef:2392:4ee8 with SMTP id a13-20020aa794ad0000b02901ef23924ee8mr4985616pfl.75.1617230590087;
        Wed, 31 Mar 2021 15:43:10 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id h19sm3338830pfc.172.2021.03.31.15.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 15:43:09 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: gregkh@linuxfoundation.org,
	ross.schm.dev@gmail.com,
	marcocesati@gmail.com,
	fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com,
	phil@philpotter.co.uk,
	amarjargal16@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH v2 0/3] block comment style changes
Date: Wed, 31 Mar 2021 15:42:28 -0700
Message-Id: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1

Style changes to block comments.

Changes since v1:
	- all commit messages have changed to be more accurate

Deborah Brouwer (3):
  staging: rtl8723bs: core: add comma within a comment
  staging: rtl8723bs: core: add * to block comments
  staging: rtl8723bs: core: remove empty comment

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 60 ++++++++++-------------
 1 file changed, 27 insertions(+), 33 deletions(-)

--
2.17.1


