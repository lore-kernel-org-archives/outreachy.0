X-GM-THRID: 6948530391534796800
X-Received: by 2002:a05:6214:dae:: with SMTP id h14mr5489369qvh.27.1617830803577;
        Wed, 07 Apr 2021 14:26:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:5af:: with SMTP id by15ls740903qvb.1.gmail; Wed, 07
 Apr 2021 14:26:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyK46ZhS4yTDaZALPOo7gkrTg5s66wAZBjl3o9m4HS7RWajxqECV8h77lo6W27TI2QIqNa9
X-Received: by 2002:a05:6214:21e6:: with SMTP id p6mr5658126qvj.5.1617830802798;
        Wed, 07 Apr 2021 14:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617830802; cv=none;
        d=google.com; s=arc-20160816;
        b=GRu1px9Qa1aYo7e8rV32NYJnxWMsLebP+XPvabDeBawqZfwKCG+6kHfnYcHMcexhg6
         jYjrh2cw8OM+bcnpDmT6HG9/aK7hTWIm9v2AXenUXyCjeEYCrpzzzLvastt7hkSOS3ki
         F6XsHzPwdVjfPTEyRxpH4okPOrVh4ywg1Z57b25+qdSX9JBFun+htSX2eGeQJC4U9c1r
         kLZkJqfkYPRXbTN+XAooQup6ObhuHAh79LRsPdEyTXwZ40fKNgDGydP2t/r8go9y9PW4
         wRoWw/41zrGngVNWTWctReYBCw/qRRFerbH2PniQx/TmqC+7GtpNBwaf62NIHKVjBzdR
         iwfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=YmJWVZVCE0nBAIyztMwblyzhG8DMCv0lWyvf1G3l0f8=;
        b=QGYfNapQik2XbwZqytoXotxvr3nxCMdrcASe7rEkV879BH8R0p1++88Y97SkkYfnJw
         7Zmta/FLf4oFeFLjrpty/FwuEQZt54pg6K6ltKoZyrlFxTaGGF3nfmvBr8y5MfXYDKsn
         8gcyegLHdcpI6GN/eYzzvTO1rEH/uDUVQCAmJM8rrLiukbcrf8Qt/81di6A5OkHZAotf
         5TxVOlT0Ab5d27AJPGag9j1ZZ2qXdIykuHtpX2pNFPbRyX+rgyLKprtTVnZ2uYaz5N1W
         LNdOvhQzyVX5VSs+wxqSFv92TpnODpsgaknx1psbuhPKjp+WGYAxKQSG6LQP7iKmyUKo
         biSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tXbIacZh;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com. [2607:f8b0:4864:20::72b])
        by gmr-mx.google.com with ESMTPS id w22si3149325qtt.0.2021.04.07.14.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) client-ip=2607:f8b0:4864:20::72b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tXbIacZh;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72b.google.com with SMTP id c4so129018qkg.3
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 14:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YmJWVZVCE0nBAIyztMwblyzhG8DMCv0lWyvf1G3l0f8=;
        b=tXbIacZhePHp5cOIGIkAz0vDSH59OEMujhAtK+p39NvO0tijLukHQfj07YbwuWf7wW
         Ba3ofjdrbYEsgWq4jeHj8gC6ao7Sh0/Zig+K9/5C7WVqJFE3GjYRFU0PpFqaAYo+y+pV
         F1hIb6wvBc69dwwxk83PhR8cawOjUtz4mCxue4SgAypbQtWH8Ivoa9i2iDs703Ir6UoL
         Gdyf+YNwRMJNRaZdBRoU1j9HfnxYYes0vgw5KGETJPFHas+VOdjCEo9BezhqSmlLtk4L
         x036LpCazyXua/pk5SciE1KBJwE5Fq9wrhUivzerAnUNXBUMgYfz/smDZcG6Sbb6Iet7
         5g6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YmJWVZVCE0nBAIyztMwblyzhG8DMCv0lWyvf1G3l0f8=;
        b=lEk0liXEKYkaNxbIKLYV1AaQhQ6Qi71GlaYcZopwR9tDNEwdL0bWJunMc0IV3dAFdb
         VwV+Zf3hxg1oxfW/dX+Wtmjh3Cw6mT5IDE7RWuQnYkFLYVUERd8u1P+J5xIxABa8l53h
         f3YBccHkz2vkciQYLOGLMQeEK4f35mVnA+UuQYCPn53jNRZAiU448cPQe+5rUooAOgrD
         M8skP5/euQrf/ZAq6GlLaaGDqOvmaEt+WUQxbUwQ+fny/BPco4Guzopqvys9rHrlzPIy
         GS9cCiickS0Eqqd0t4R8fr4fWu9/XIDsjkYuJur4fmJv59IZHgVh+/ZEt2gDaz5ORL1o
         hJRQ==
X-Gm-Message-State: AOAM5303GFbr6fSPtT2Vl83Y5CGl76OihE4m4yoAXYuVpJJOqvFrf6tr
	wKvjUmorYU3i5Sia22skHvE=
X-Received: by 2002:a37:acd:: with SMTP id 196mr5474432qkk.219.1617830802641;
        Wed, 07 Apr 2021 14:26:42 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([2001:1284:f013:b099:91d8:678f:6a0a:466d])
        by smtp.gmail.com with ESMTPSA id b1sm19858992qkk.117.2021.04.07.14.26.41
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 07 Apr 2021 14:26:42 -0700 (PDT)
Date: Wed, 7 Apr 2021 18:26:40 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, alinesantanacordeiro@gmail.com
Subject: [Outreachy kernel][PATCH 0/2] staging: media: hantro: Align line
 break to the open parenthesis
Message-ID: <cover.1617829497.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Aligns line break with the remaining function arguments
to the open parenthesis. Issue found by checkpatch.

Aline Santana Cordeiro (2):
  [PATCH 1/2] staging: media: hantro: Align line break to the open parenthesis
  [PATCH 2/2] staging: media: hantro: Align line break to the open parenthesis

 drivers/staging/media/hantro/hantro_hw.h    | 2 +-
 drivers/staging/media/hantro/hantro_mpeg2.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.7.4


