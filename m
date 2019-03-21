X-GM-THRID: 6670815133562830848
X-Received: by 2002:a6b:c995:: with SMTP id z143mr1786149iof.74.1553192077615;
        Thu, 21 Mar 2019 11:14:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a0a:: with SMTP id v10ls1990545ita.2.gmail; Thu, 21 Mar
 2019 11:14:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqztofm2bBgZlGSmFkymJafQQs9QkLiiADQ/aUW3ZLHbgbiozD2czIfdHu9FuVjoTcv7+EqM
X-Received: by 2002:a24:4750:: with SMTP id t77mr73468itb.107.1553192076614;
        Thu, 21 Mar 2019 11:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553192076; cv=none;
        d=google.com; s=arc-20160816;
        b=T3QSvbhunwAN6Iy9966GdLIVfOpt5wAITMEpZUcZnbRNnJDnoFS3zUpCTcdRptj8b6
         5myKoQSDTRKishNjGD1uZ5Z1+xvsDELVYoSTZ56GQPvEsaK3EURpy/UtyRixIDGomzF+
         4pG9ERvuvRQsltRWWXZ/x+xXB9SSx8j6vJ2I+nPw+U3IIWtF64fQNnEOAOIbfyGMjxkG
         1QvVXggJXX0Ao3Ir7FEZc7hcvCxDUFieA8O3mmHt07pbM5a6pWZc2HnttxYqNbw4/prM
         50rb7AulsQEK09/oyHNNNBGXUmqNrKnfm7UsAoW/8o1tCHAlsEbnlKupeFjt0rYgo2Ex
         NSPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=iZxHczEySNeUCnhpLyNN8oaHuxM+r6KogiqSW5uBP0s=;
        b=NupIhmXxS18K5EguH0imI+dnoP6OQW1sHNNeHiB4ONGiAODGw11sjeXvukqvcZAeaT
         FgEoTJ4zcv4rnVMX1Qt81t3/sjb4GcYxoCFT4xrgbbu+OAewnvtr8oGN2L39vIZz7nVt
         ZXGxVxtNn86B0xSv7Yp1CkQqnFaNxwk3IZAAerTiBkQpeEejOzYqcmfQHl8GFUurz0xk
         JNYw5EYes1VRVk5E+g24QiSylpcLadQ93Pfw7K7r+cjz6Q6wahRJwDn37FhbWhGMetma
         DTzMwB1w2ZS+yFKl3sq2FtiBjhBuo4oUl1ywtWZQe52z7SQTwSWfqT2JfrcSU0SB+6VT
         8V7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKQq0lQn;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id j196si558836itb.0.2019.03.21.11.14.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:14:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKQq0lQn;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 9so4567073pfj.13
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 11:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=iZxHczEySNeUCnhpLyNN8oaHuxM+r6KogiqSW5uBP0s=;
        b=jKQq0lQngYI3PCjBSogbIw+D1J8cE3myJau3lsB7chxTclqzOM5fUfVqcgJ0mgZlbe
         2ndr4p24VEwJE1HQ0/llzGdMSLXTBX3UKSYXiTsbqaocqEhuyj1oEMfYe6hTsmL/IGdb
         Ed8AV03n9eHqR2e1GOfEaPpiVD2VkdrFKT1KcxLdRuJrYZUfmrEbyzBfTnnpLMSFT9iO
         ubmipRZWgJVqIS4Qu5OUOb45rLNntN2MP6pfJ2NM/sRvQziwKKmpH/yd/ITd43eKCv2x
         fF+2gT7DSVxoVaEU7bMKijgRJubP+MSae/qYmWapbEnWTpe69ZvoJlvMiWz2SLM8LHSI
         TvuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iZxHczEySNeUCnhpLyNN8oaHuxM+r6KogiqSW5uBP0s=;
        b=ezCGP35i98UgT1FcqkGwK08w9aA9ugcY1e8iViWX6Y1F4bVNOcYBSyFKuobE84Bk2Q
         FRLqI6OXivdL3bNj0wMSyLgdkfI+9dWPmFo2m9JV9Jzhfo6yxulJd4tZkMRJkZSqqZus
         uSJuN1dCZDybAJF8oX7UMs2AhlzwhNdz5d61sxXx0CWYJT36yiijcGRKHadajp1oy2Km
         8mquqMdpY6usdvGnYaY6RWHjCO/w5UrPxz46kzDPA/Y2fbSS5eiCI1rlRQMbue+gjBgW
         OwRICiaZwGQHVwrzQmKHYOaj0rELmre9Jk88rPcpq0rwyo8/dCqgLOP9JfM3YDEm6ICo
         LhKA==
X-Gm-Message-State: APjAAAU23pf4TBHOaJnt9qbd6Bxjtqijceo3TB1bCJ0UwE5/DlDd0/9j
	TqxoI4ffn4UXEayJTgNOiro=
X-Received: by 2002:a17:902:2c83:: with SMTP id n3mr5010637plb.281.1553192075810;
        Thu, 21 Mar 2019 11:14:35 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.112.101])
        by smtp.gmail.com with ESMTPSA id v6sm7296251pgi.90.2019.03.21.11.14.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:14:35 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 0/5] staging: rtl8723bs: include: remove typedef of
Date: Thu, 21 Mar 2019 23:44:00 +0530
Message-Id: <20190321181405.6219-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset removes typedef from various structures defined in
/staging/rtl8723bs/include/rtw_pwrctl.h as
the linux kernel coding style guidelines discourage the use of typedef
for struct types.

V2:
- Remove extra whitespaces

Himadri Pandya (5):
  staging: rtl8723bs: include: remove typedef for struct pno_nlo_info
  staging: rtl8723bs: include: remove typedef for struct pno_ssid
  staging: rtl8723bs: include: remove typedef for struct pno_ssid_list
  staging: rtl8723bs: include: remove typedef for struct
    pno_scan_channel_info
  staging: rtl8723bs: include: remove typedef for struct pno_scan_info

 .../staging/rtl8723bs/include/rtw_pwrctrl.h   | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

-- 
2.17.1


