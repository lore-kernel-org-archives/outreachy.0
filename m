X-GM-THRID: 6950309311564218368
X-Received: by 2002:a5d:414c:: with SMTP id c12mr6141489wrq.392.1618244990357;
        Mon, 12 Apr 2021 09:29:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls8290366wmk.0.canary-gmail;
 Mon, 12 Apr 2021 09:29:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxjYkO+mBOBPM0HhmYU6Hp10yEUp50islQGE6fELQX566BNG6jO6MWjGIZHO0DxIN0lYrmU
X-Received: by 2002:a05:600c:224e:: with SMTP id a14mr27363304wmm.57.1618244989028;
        Mon, 12 Apr 2021 09:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244989; cv=none;
        d=google.com; s=arc-20160816;
        b=jZ0UuHdQBox/waujhCH/+PGEUsuy9gZz44zLGIChNbRzo9Oha3uEGmEnqEaAkpRdwP
         SOaOXHo50pAoN+hioWQHlXImj+OvDqK26pwHEZWyQMfB4PIYyOo0iQ3cREH1iejbLS+s
         nHu40F03dUuW91oNAe89E6tlnRtuX0VVzuBNg1dGbv/jqsKnxog/UpTTl5UfeQv7tBiT
         iUlQQ6KpXFn3ZVVjyXwgFgeqlR1EIWZDDTNNf7XKwkD3T++bJlBTSscANAq5AyaIVLCB
         pK+8LZyg5wNgIYdfEu+eYG4WtRuktq1o5WbCSmPnZTwYBb9FBl4uU/rp6jOaKd3TZNf5
         dmkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=F5yY5T3qXbRwDZwbWFp204Mh6qLEwM+ac+6A7HNtQQE=;
        b=u3U3aXWLwfvvyaTJB1o2sd1W3LptX92jYf2tt/I4UcnKhVwE3S9itud3yNrfP9mLHg
         oAKr+G3/sYaZbhxGlPERSrfFTrbkkBwXL3e7G5QY1XzuOCOj8pf/ad4lhGlmc8STM5uY
         4nAvKZymkIg/kHclzY4/INUwMlT0HHcSk5KnK+lpbRR6WDk/yUoW+u+CXMg81M6lMIwk
         Aa7xICDhF1wP05riNXXmg40+uaiMMIPF2TX//vF16hFRh5LgPCyT/Wx+0w8Dexi22D55
         n8o4Qm/eTTzwk1P1Ch1PwNfC3qLjzXoWCW0iGTHBsU9YFZSNPbLjDroFi1JUin0nZQ4J
         yL3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nda4l2RV;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id t124si15357wmb.3.2021.04.12.09.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nda4l2RV;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id w7-20020a1cdf070000b0290125f388fb34so6564367wmg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 09:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F5yY5T3qXbRwDZwbWFp204Mh6qLEwM+ac+6A7HNtQQE=;
        b=nda4l2RVT64ALFuoKZJlYYidK5Nu9fX9bhaY2jQrnycCcOituFOY+qkIXOXgujWgUV
         Ac+WazIcisX71wBu+bcgbYE545Z6dGP7VDto9Wa4d/VRt18Y4J6HkVZqjX/FNtR2G5IE
         G4pVUwXredBR2co8Mjigy2n+biy7SLYFqdGqxmqt6U/w35F+EwLwV+44L/Gsoq0s2Eot
         vabj4ZzD4pdaati330+S7cLfCl+8vsjDkeBZa3rf4zdqJV4hSdfZKV9bkkV/fhOAum+p
         3dzjTtkA43IEO+LPoxG5gtEmpSLBP9zJguuZy9LlZK9pVglNiZRmVt0xDn9jcGSwDoLG
         mEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F5yY5T3qXbRwDZwbWFp204Mh6qLEwM+ac+6A7HNtQQE=;
        b=Q6Z2UYLCbwjhJjM+7swUXoBJ/WKdSHlPPZNEYBY2CfwSdX2RP+qQVGLlhSc/DD9a7W
         REASZymBwrw5MmVelorWgjF7LmVW6glfReQkhBNs03GzhPT9OuCQJJoMCI1neA4RLYcR
         J8mtU/awdrTj2Y5B0Vnok9A/xsH5ObXaVqNqFJiHda4OiiY8qAJgBPX04ANqlFpJNSzm
         nKApvU8B5x+OqDQsy8SpFOsXpAKcEnY7r3d91CqldkRFNxqeGXQlzjXbw9VvDulxPLAk
         ac/KfFVrpfTSPR70pvY+d1NdWnxRKevg9HkYSY0NulvPGOpzemgpCeRq2LrygMvmTnqE
         Z0cQ==
X-Gm-Message-State: AOAM530JBRkzSkjrVm6jIjpiV/RkwV+Kj+O2xyRf/dV40Lrfx9X3EVRF
	L+Ek6A+Bxk5xvt3AjgLJeL8=
X-Received: by 2002:a1c:4d19:: with SMTP id o25mr27580464wmh.137.1618244988757;
        Mon, 12 Apr 2021 09:29:48 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:813f:b20e:675a:834d])
        by smtp.gmail.com with ESMTPSA id b5sm16786524wri.57.2021.04.12.09.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 09:29:48 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Subject: [PATCH 0/3] staging: rtl8723bs: hal: Rectify with Linux kernel coding style
Date: Mon, 12 Apr 2021 17:29:35 +0100
Message-Id: <cover.1618243073.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset rectifies the file Hal8723BReg.h with Linux kernel coding style.
The issues were:
	- Space before tabs;
	- Extra blank line;
	- Indentation problem.
 

Beatriz Martins de Carvalho (3):
  staging: rtl8723bs: hal: remove space before tabs
  staging: rtl8723bs: hal: Remove extra blank line
  staging: rtl8723bs: hal: Correct indentation

 drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 421 ++++++++++----------
 1 file changed, 208 insertions(+), 213 deletions(-)

-- 
2.25.1


