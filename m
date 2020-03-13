X-GM-THRID: 6803797661564534784
X-Received: by 2002:a2e:8e90:: with SMTP id z16mr5918337ljk.202.1584132588873;
        Fri, 13 Mar 2020 13:49:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls960069ljk.8.gmail; Fri, 13 Mar
 2020 13:49:47 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvy8EkXJ8XTF9Lyvr9fm4y5U0X5KQNl8WxJNtBd7vuiXzhh8PyUwYLciljXdJbYvcO8IUYZ
X-Received: by 2002:a2e:9a01:: with SMTP id o1mr9414215lji.247.1584132587494;
        Fri, 13 Mar 2020 13:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584132587; cv=none;
        d=google.com; s=arc-20160816;
        b=zYypnhp2JGPBsEBAIp76dhueV40rfzz+kWaE8e63eo2cMSvYRq36ITAh+bJNFrJVtR
         XLMyfxYHreXZaChlxIkzipeRgYGmxp9I+m/0O/kSzxtD92ylloSVJk4L2+Fz/i/v2mJS
         g4IwNz6Caq8cdjws5Ax/kQJyKKTaAMn3IMC1eUf6Pm+TvY6e3mAviItemwmYnPorUJRF
         9iEYNmjGffLBEUXNR57kEA+H92FmGbIkoMY0Fzx+V/MN1iLhl29NknYpDlS0XPtySBkz
         sz96mlYQ0helIjwGk+SWqtZ3BtmOuXejVZNthEfXNt9EubXacuDoI7GCnCCMHMW7Kvnn
         gnzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=be9QgeR25kDB/BCVlDEzrKrJJiE+gNaBcBp65RY/UK4=;
        b=QYHvDMUa6AQwHN+7XKJWxXd+iQ+UveKgs3uJlAOKxUuFHYf73dygYhfkNZm3ZZcQQz
         GvruglSuHeZkH3JxOMkjtBijwY0st/V8JwSx91BdDGbYlS8JORHCU+dEl0MZWkRu6fBD
         w2dhYxStbZ80Ml7stQr4qQPXYJ2tOMCS4I/A3ANAm81L+e8WVkHUl9QO2e0sRwrBLqO+
         Aa+8gFUF0FcFyrucamckOUERbldP9YgQL+pIBNA7Cxxn6gmqAno05+BhTxOhFtUTXYAG
         oeS4KnYmr8ku97QDenyV06iab7iDWEMORXC51X4OihB8IwEGyxm1+HZ9FCXKI4WFI7WI
         khBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="WX2Y1L/X";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w6si464980lfa.1.2020.03.13.13.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="WX2Y1L/X";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x343.google.com with SMTP id a5so11372086wmb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 13:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id;
        bh=be9QgeR25kDB/BCVlDEzrKrJJiE+gNaBcBp65RY/UK4=;
        b=WX2Y1L/XxqDS55UC3FFoLIaF7N4UmhxCAmIn0sDdhtEweinQu+TpmnRhi8LqrnfVKb
         L0Iv8WMppkQepL5tvMygHzMYSDR0Uz1ZTnD9fGLnbUYkjaLP/sAws/QkZxS5eT5qlEfo
         q0OeCNyGpJOsTFbsIRVJUelLxNIJ99qZLMKkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=be9QgeR25kDB/BCVlDEzrKrJJiE+gNaBcBp65RY/UK4=;
        b=cEkjVytJb23z6++8Xw10/3laTqFy7oE4fpkgYokJq+PHZZnQ3XRomqdRjSiCG2M8lJ
         VwiOqk378WqzRYegH/XYUGAjARCIyhxaoigMX2fDE6dnMuIRlxhoqVCdwlS8IRCRnVW0
         tKABqJr4wIziyFl+VmasTpo3vtFq9BYCscZgCcfbLIJaWzKkdqFdxVPlMLgST12NdTm1
         gICUpioKCTYGSW5z1N/+JWWP6ufAErwK+QbilW8SzO3GMfDkwtYaN0eg1qAnTg+EmtWu
         BDMb0oxy8nv0yYopaktMiA7rZwBCcNJRSjsTOzkNYCqbcPJoq9Izi31HMIxOfvymi6dJ
         hAjg==
X-Gm-Message-State: ANhLgQ0/PSpWo/5fIIFd7bYuacjWlz2vsiREGA8ehVK2m7lJItGfrIEp
	QEPIrvspzek/PqvOmSildscSHvP3z8t6Zg==
X-Received: by 2002:a1c:b60b:: with SMTP id g11mr12995215wmf.175.1584132585579;
        Fri, 13 Mar 2020 13:49:45 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id 61sm32240149wrd.58.2020.03.13.13.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 13:49:44 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	rmfrfs@gmail.com,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	vireshk@kernel.org
Subject: [PATCH 0/2] staging: greybus: simple formatting cleanup
Date: Fri, 13 Mar 2020 21:49:35 +0100
Message-Id: <cover.1584131593.git.lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Patchset that performs simple code cleanup in greybus driver.
Issues found with checkpatch.

Lourdes Pedrajas (2):
  staging: greybus: gpio: improve bit fields formatting.
  staging: greybus: hid: remove unneded braces

 drivers/staging/greybus/gpio.c | 4 ++--
 drivers/staging/greybus/hid.c  | 3 +--
 2 files changed, 3 insertions(+), 4 deletions(-)

-- 
2.17.1


