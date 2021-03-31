X-GM-THRID: 6945912104921595904
X-Received: by 2002:a17:902:c154:b029:e5:e7cf:9627 with SMTP id 20-20020a170902c154b02900e5e7cf9627mr4471775plj.68.1617221186858;
        Wed, 31 Mar 2021 13:06:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2f84:: with SMTP id v126ls467098pgv.2.gmail; Wed, 31 Mar
 2021 13:06:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwtUAXBUpEZDa4hz0YV1qc92GRoORQURevgpLIDTVqHizyINciO6PMF0aNpT5aKrv91ZUxQ
X-Received: by 2002:a63:1022:: with SMTP id f34mr4714166pgl.263.1617221185722;
        Wed, 31 Mar 2021 13:06:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617221185; cv=none;
        d=google.com; s=arc-20160816;
        b=iruW9Ex88yKqoJKSTsJ+y5kJ72o0MLB1ShNsoty8vhmBgthkxgXxZprJEJs1mRFXen
         Ontff7nrt5yWd9R+DL0p57OC3YxsmNu60l/yUm4KhI/ySnYmMG5Ur6N+bQtKIKh34E89
         C+LN5onPUqp14xgnjJKMvvSwdukZ/CtKQqZDJgjzj4qUF0TqhAfwEpA3XQ8BaE5C+ODF
         aJa2CXfgZ2vgQg+Pl4J/wpM5S5cWQy/+kz7OqC+F9UpXoaw+eJhEpQgZ03SDnLzEshjs
         XA5KN0ZnodM00Ee4vk3NAIQqqHfJGSyKO44CgMzj2eyHSqHHnQJ1jof/6WmvuODXLKzJ
         Ukeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=BRuM09+J2aRYPZ9OUTp8R2fLyI9MYToqI7peFMSk8bU=;
        b=oqdOVYAXsyaEfnNfvhTu9TZoBSaFOv4RnqGBEhLZs7gHgwpvbraTJXiiQ6S375il5N
         zh2iIMtw7PimwO27i1QroJh8pLyCjr4NBVqQdq5nfZnUW70UvKTJ3hB+UyyG8ZCxdkjm
         WiAIqX7208vA6js0bc9IpxzVvWWT5AONu2yR/p32eAoAJlaA6ueXwzlOsbcZgo30BZK4
         An7NSe6MM5QnnXCPqvWa6TKevPCyNDqLwDDvzLiMGy2yDZEOSKIWeIv6phQejrQ1xiIU
         qGszVEVrpiObJnPohz+eMfAXo4526OR3WpmzE6VLPMNnWJMspFtegPmVWtD1VZe6omfS
         GLLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lAAjckvz;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id m9si278101pgr.3.2021.03.31.13.06.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:06:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lAAjckvz;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id t20so8476148plr.13
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Mar 2021 13:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BRuM09+J2aRYPZ9OUTp8R2fLyI9MYToqI7peFMSk8bU=;
        b=lAAjckvzUujgug8k3+FTIryj68kvDL02K8IHYw3YEo7xayLfRq29/56j0AleZqRWmO
         MDKvhVMKrTw8/hC2PD8PmBjm6C/hT60ToS4UQQuL+VzFptkWlcTn296vC08QtiRjBzIU
         qTbtF56f0pARvIlV498lLIHWT7wzZk6Xe2Q3xjqKKyGk7ZIWYydCcHsiiJwZxPXu2+3S
         HdagR7njK7ErZ7/pAx7LyjpxBWEu5Sc8KgF5rpqHa3fNdYrHeodE8FEYEa+czQNMgmiW
         kBURRanz0kXdXPa/BOo6lik3yXnAu31YJk7tXGE5xzosh4Sy7JYNFTsatXMMy3SJ+ef/
         JZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BRuM09+J2aRYPZ9OUTp8R2fLyI9MYToqI7peFMSk8bU=;
        b=Dqa3eiTN98lVYUKI+Ja4idlRx4b5YJnnCSp8LOakw/w8mATCXXMDWz8f4mnopXI08X
         5IHacU1bYWWuaF01UJnJRdCbchaT54mUxwYDAfraWzl/DP7l1tWy4paviaLlexhQX5Qt
         JeOaDYiQVSyowp9vIUgkgh2Lk2w4S8dEuhhx+HZOCe6F+slA/7MmAZy2AnK9j+jJVSjV
         W0lpqEQB+q5I4rMQ4BI/j+qJkH/Whd3nDgLuwM1cF73Zz//j3PpK99bizUoBI1C5eO9R
         A1UwzENAO4Pl+7QoLIP+9I28xXmnSUknBCRIu+7aK4OLnANxaiiOlR7INZywwGVuZcVO
         E5gg==
X-Gm-Message-State: AOAM5319wx5Tg2842Tp5vMJPUHpgmZ6BW94leVWbFcyopT4r15Gf2QhL
	rL8OjABgjNUoo1s+/x6Q3Zc=
X-Received: by 2002:a17:90b:2284:: with SMTP id kx4mr4958415pjb.96.1617221185463;
        Wed, 31 Mar 2021 13:06:25 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id d22sm2985668pjx.24.2021.03.31.13.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 13:06:25 -0700 (PDT)
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
Subject: [PATCH 0/3] Fix block comment warnings
Date: Wed, 31 Mar 2021 13:05:34 -0700
Message-Id: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset fixes checkpatch warnings arising
from the block comments

Deborah Brouwer (3):
  staging: rtl8723bs: core: fix repeated word warning
  staging: rtl8723bs: core: fix block comment warning
  staging: rtl8723bs: core: remove empty comment

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 61 +++++++++++------------
 1 file changed, 28 insertions(+), 33 deletions(-)

--
2.17.1


