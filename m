X-GM-THRID: 6670940020392591360
X-Received: by 2002:aed:2307:: with SMTP id h7mr4731268qtc.87.1553199258988;
        Thu, 21 Mar 2019 13:14:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls2896149qvc.1.gmail; Thu, 21 Mar
 2019 13:14:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzJSmZR/t2slj4Nsq6XcoVVfg9TAeDKDoWVCs/eQDt8bmp1INHOaJJ+XAq5Z+0owDQ0LBJ7
X-Received: by 2002:a0c:b168:: with SMTP id r37mr4663020qvc.233.1553199258396;
        Thu, 21 Mar 2019 13:14:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553199258; cv=none;
        d=google.com; s=arc-20160816;
        b=TmxQcizKOoBQlsYsmIVIYVDlQEymduZUiyvzCtf4inq9VGtyKe1GN2SBEfnJrJHxBb
         MvbP9qVPvdn6yDXqoBi5exbg7tPqQzyZZXVD0wrUHgDeqJ9t7c03GHCimAKLoPihiD5t
         xaz+DrjreMNqFSnoeyi7y1129QtrQ8UAxKxIvmfjFxxUuQve0EnEuqYqin0mYOXtQeNn
         2/Q2x2mnhLBljwSb1shYpjMEzLIEjAXfnN5fEcy+XrElR/IVRdRdz/2TsbVvqM1WbvKE
         zr6NvAPZqyjQI3l7+tToeDFoabnJYzKCxDh4wgs/NhDEUEfsdlQ0MdOr/7Mw7ghRyel/
         hc4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FCxlTwwaNaHLZN+52p8UrcZ+qdj8hEbOh3iCRCWJkp4=;
        b=xooI0t5sbzMxYS7Aq2phoEU3dqBT2TahzUttKt3YmsJXuQxND/CIft4/hdtNmuuqBr
         6R8Tu4qLvexf4KypHWpelmj9HWQJzEyx2aaztWC0CIij1G56TUgpdUtYHCpBrR/+rRzH
         r6TRJRzKAth4g+82j2QtYZ6FAEXJLqDjKFBEqrnvyZmnN1pqLrTXFXsNUcO3VwkNfuZM
         zBU1WQWBnccAXqOb55VkggKUjuOmWjIlv/bxATq80EZwnRsKDUYMufy/bhHDnTmDTJNy
         wAirhphKcr2h5P08yi7L017wNof+os8fxMQmkPGoqrSl2enosOpZdh+m8T8qHIFylJfA
         Io8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=qAnpqUV9;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.84 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic305-21.consmr.mail.sg3.yahoo.com (sonic305-21.consmr.mail.sg3.yahoo.com. [106.10.241.84])
        by gmr-mx.google.com with ESMTPS id y1si168264qth.5.2019.03.21.13.14.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 13:14:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.84 as permitted sender) client-ip=106.10.241.84;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=qAnpqUV9;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.84 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553199255; bh=FCxlTwwaNaHLZN+52p8UrcZ+qdj8hEbOh3iCRCWJkp4=; h=From:To:Cc:Subject:Date:From:Subject; b=qAnpqUV95EO51swKrKAev1qAZhQjo7sPfBAFA0E57RGUssrTThOwXtbq998leo8ltdWUTLfDpjXqLjuRQiWNVUmp9ZtgSmERY7qSmyc64K5cG3ed6znjhB19mR3paIs3/9v+i4E7nTGO2PCEJasdAoVivZwPfXPiYxaAnjjiwVG0gYwyNytqyfqoZONncO+UklxAhYkkJeA3woMD2DsiDCwK1f23EBQG8iRasYmT6tMtt9dMczdLbUkBQja8qMm2HaUZ2cbkR/Bk9GpVo790MyJEUeR7iKtmtkPVlhto++/Ee+DTqPjbnMFQka08HQ6PbpsMLaxLaO/2ooXxy11pSQ==
X-YMail-OSG: _2nEsjYVM1mQYGdJqrxiHW4QbGe_K8SKpMAopdrCnXGdTd2F6CmW2KBC_cyfi8C
 LucHBfGO1XryJkxBwznc9JPclKRI8pTAdvT4Mg9s5X7y_dwyBIa49FfSlW9wEa9CsXIMH6ca9TIQ
 J074EgvlA5SqNGbitZNE0_yDxQxy0UWshXBIG8QjrUE5tdqapd.95TYOgAvYU1mrP2AoADcni004
 gXzZYPWp37M.E8ceGJz2nELA6sqTqhh4UyswHgGrrtpkHwZWkys8pYLv_RMf4A68i4scbW5zYbFx
 NeMhc9.7eXogN_IZWaLWPSYOYFJ1ewZSaes7wxASw0WUGCMiGHLcV_iyq.cIGtTysoBZbP.ohkCv
 _9OxgmYx3A7d5A1sHE6F4KrNwUE.m4Vta4WjLwDAPJkcyQYhpdcE8Mm.Q8xwBcTP2gVM1a_cPeUC
 mkAzoTsUcLPX0Szht0bqbHqLZAzp5_Fz.vP9l6DLlN2JdBvE_5vymQnySIYuRnwAvgFS4WYvj4Oi
 hvE9oNAe0xC1tquyrPCXo3xUDyZzq2HYJKTYGLpc4D3nhcd8QgUgPn8uOL._TyhKUCDimW4BS5_K
 3dVo09nJvk6L0TJ64lmG5IJ.305RYtvwBf29kqNPwwfH0iAldHjk8ZkDbNF8Dyt1.fS9RC6p1El6
 yHILsgCvlxzAi.6tUOxLz4zMTOXHSOXW3AcuJwEfuj2CBKo6p1gL0EKlrckmLtOcLisHQC73ipLe
 IGhwLWnSjSvbzauOKa7O1Ajs5LTukmqXgufj7BpB34Tm3IG7cxlB2JtuV9XnoZfa89Cbf04ZkeMp
 U7515xiUdGhWJzZwYl4FCNAaSYLPX1Lcz32IkD5YK71DdlXknaYDYI6g6wqmWFAiY33HgQpl16Pd
 NxNXbZSYk82CyKxYIUAsZ.NcBurNfcrZ.V6eqdN5E74xr1vL2P84txq.06BvZMyU3bE2AGQvhK9l
 JsDzbpAmi9PuYgUkbqmaWrD.F4Am76rR5JoFhgEAki0K0YygQXZlNlBfma1sjKjZo1p78Oz_H_ye
 TplnrGvu0aHwX_tek2QfVE_PsXETGR3714Zv7B.ZB2isjUOqLO8QNAW2OZv7vgWusILwWppRWY8D
 I6WKaudnGaw--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 20:14:15 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp408.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID f52b3467335251bdb2b643b08dda1312;
          Thu, 21 Mar 2019 20:14:13 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 0/4] Remove NULL comparisons and return variables
Date: Fri, 22 Mar 2019 01:43:53 +0530
Message-Id: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove local return variables and change NULL comparisons to Boolean
negation in multiple files in staging/rtl8723bs/core. Issues found with
Coccinelle using ret.cocci and matchnull.cocci.

Nishka Dasgupta (4):
  staging: rtl8723bs: core: Change NULL comparisons to Boolean negation
  staging: rtl8723bs: core: Remove return variables in rtw_mlme_ext.c
  staging: rtl8723bs: core: Remove return variables in rtw_mlme.c
  staging: rtl8723bs: core: Remove return variables in rtw_io.c

 drivers/staging/rtl8723bs/core/rtw_io.c       |  9 ++-------
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 10 ++--------
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 11 ++++-------
 3 files changed, 8 insertions(+), 22 deletions(-)

-- 
2.19.1


