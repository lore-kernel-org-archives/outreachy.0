X-GM-THRID: 6671224625234444288
X-Received: by 2002:ab0:7087:: with SMTP id m7mr5494303ual.131.1553265523175;
        Fri, 22 Mar 2019 07:38:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:49f3:: with SMTP id f48ls699960uad.4.gmail; Fri, 22 Mar
 2019 07:38:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyBMNLTll43mHgrC5YgHwxLnIgNHAOu5RY6IImciu3Kk+V3R0b+3mHZ6eDU1Deu43Vno4z9
X-Received: by 2002:ab0:6817:: with SMTP id z23mr5772614uar.85.1553265522637;
        Fri, 22 Mar 2019 07:38:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553265522; cv=none;
        d=google.com; s=arc-20160816;
        b=VZ8NwhZYUGXbq1hzNZicBKXrqG8joRMIHurDMowZNuZJvuU8iXT42wfVvIdn3qsuEJ
         ErYXk9PAODAhsHEkfo5PmcUU/OTqkacFouwRwXDsoAxSXgTqS4wNIrNbg+iH6gzO4qAH
         dWxPrf9r314kQRTp1FmShP3g0idruNZWLQyi5bT+06OM45/IBjClK+NFDWIpNDjmHD74
         cguBF5VdITA+Nb4q1wujAphhTkeAxBCoYApGPAXk8pDFxTAGD3J1I3+4xwXc2bVTVLSj
         AaY3OVMUyyojcnHCd9uL1Pb5UwDWsH8e3qDb+t3sxzGyyb3McD/iNEFWGcETXUSkSpWD
         axSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=u60h2kT6VTHftqhOIigUO7m+sFragj7zXLbfDKgb+Zc=;
        b=sq/mgvyszjRwe/Us3p9qldME7OfVa6T5DVbA1rnWLGL0FY8uKBUOIdfd4uay3LZMVI
         DHkJBIMGUbEcVQCOHjua8gzItKOLfhgP7o2vOCTcXc4CiOuktF0kj4l0V1BQdt7MEAhG
         bI3GjQytwv5LvJHePQhKzK3N/yrmNvBibyqa666Cah4iUQ6fZvUFGLJMYmXWy97sMdIW
         gMT/yKu918aKep2dWAFGDu833iImS9dIFjIGRKrSp3MoKVu/8XbH+i2P3AuohlMZB2V5
         qYg0P33NYhGZ/wk8TIfO8w/IrwatlEmKD5hAmbyPHrwF32ZSyQ5TZs4rSiPDFW4qxgAn
         w3kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=N8gl3ixv;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.209 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic312-19.consmr.mail.sg3.yahoo.com (sonic312-19.consmr.mail.sg3.yahoo.com. [106.10.244.209])
        by gmr-mx.google.com with ESMTPS id h13si493796vkf.4.2019.03.22.07.38.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:38:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.209 as permitted sender) client-ip=106.10.244.209;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=N8gl3ixv;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.209 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553265519; bh=u60h2kT6VTHftqhOIigUO7m+sFragj7zXLbfDKgb+Zc=; h=From:To:Cc:Subject:Date:From:Subject; b=N8gl3ixv7kXPRiAu6rHHxu7Pzt68y1dFn3dlDcNenDIdsBZggI0CcNvBQ9egjXXSpaXNI6dxxuHXU8+62NIDUcfNpr2Gse1IrVw/xfmUcOaDQhOnb0dOZFvxogmaoxdiiNsag/xuBc78vFh5oUrYqptID5jPwBdMybv9KKl1Jb789c8SgMAWhLkFA8R4vbc3tvEgUF6lOauajDe2eyjCKFiIZoeAUoEkiTm8L3q9MiPWNrxy/uXQAsO610l1DI4n+MvOsAhsnStUoiQIybTG/z0yc0KdKZ2E/pZ8/HCg6o65xihymMl5KXat48KB6+CiumEm7DPvi9BCU69NF1o3mQ==
X-YMail-OSG: P0vE0LIVM1kbWZV3SGTzvo6h6bgnPBkMGezfd5dCL7bstYwC7A4X4ReoRJGK4I1
 Ac6Cfktht729z95LhljnR6KjwITz.d04.kbkzIP359U9nDD1omupcClTGXkBiBJJI3cn3AbaCpFf
 3e5aznyqN6K5Pk7IU.qvWXMXxjShCQ0KBwSW8O7qTevXQMK5g8J5NzdJa3enoxAxbbwUWFu_esSJ
 D7BZ_Fk3Rkkyw1J5D1rtD6maKVpzKdmvBkqFKIvQLaU62EEephiNSZbn0Qm2HIe1unLr8HiaNPvi
 xWzXUJpZCKexaYHY0pUDDZHy3dVsJJYPhn1uSSVHbMo_3HmibRpkg62DtbyVeEfVWIbrS39qii_t
 dTJP8NAYlhtPIx1N2qtY4qxS2k1dKxA9v3gmUUCe5OcYo7NsUWYTi38hmck_MXfweRxy5SfYPZgN
 gp0hDS2SIEhMwlRbGictLhQILQ33ahH37qriDFr0UyOhiyheV8vcskIf6R1mcpXLkE8Ng0JYlUS0
 8pa2HzA1LS3gTMgnpniV6npMfh_r3bGIhJL8p6NBKVb9Z6mljzSi5qzn.D7qDmukRKMwnjgpEvaB
 NOSZ4qwQnc_pUcJCWaz79887ngLRBh8fMOalETBUsWnXDNa3VFxf80fQIp5hbUk26D4.rtwH0b1r
 X6xk3w0ERYWD8MXB0cxwpGff.t0zRv.WttguYj9xjICywKBMdlFwHSQqeo3zMjaeQik6M7xs2NW3
 klVLmgcZNwZzz4o1MNuIYMhpiFRb2PEj6ihMt1nYl_q_IkfnWFcNPFbffr439z4JKhAbeKMdcwKH
 Dao9Ka4AtyO0nyBQpzIz5TBZ2J5PmHAy.CqL1eITpdc7uAVaM4PUbHakeCfENl4bI5PYN.ueOzTh
 iO1xAyM6JhYUcAMeL.Mn2l4Mtm6ZMaaRUoP86bnKza4a3sZ_thu4Mv8l7ifMGsfNGB9WNhTvnZbK
 9Ge4IDZ.ThjBNOsgf3.LX338YuMZsbX0tSAfhX29Z3OUf2MvZC.mFW9kOA.ByBjcTKIA2uUKyhJa
 feATFhBTh4GM0q8AQALfAOeReb6wKdMso3OB2bjfc92MQ8Kn7z2gXq7qyybu7lUqB0V51Oy33j5H
 6
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.sg3.yahoo.com with HTTP; Fri, 22 Mar 2019 14:38:39 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp412.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID d1d8be53419bbc2dc6b4659a7081bd03;
          Fri, 22 Mar 2019 14:38:37 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 0/5] Remove unnecessary functions and return
Date: Fri, 22 Mar 2019 20:08:22 +0530
Message-Id: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary functions and return variables in the driver
rtl8723bs. Issues found while using ret.cocci and Coccinelle.

Nishka Dasgupta (5):
  staging; rtl8723bs: Remove unnecessary function rtw_init_mlme_priv()
  staging: rtl8723bs: core: Change datatype from sint to int
  staging: rtl8723bs: core: Remove parentheses
  staging: rtl8723bs: Remove function rtw_alloc_network()
  staging: rtl8723bs: core: Remove return variable in rtw_io.c

 drivers/staging/rtl8723bs/core/rtw_cmd.c     |  2 +-
 drivers/staging/rtl8723bs/core/rtw_io.c      |  3 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c    | 39 ++++++--------------
 drivers/staging/rtl8723bs/include/rtw_mlme.h |  4 +-
 4 files changed, 14 insertions(+), 34 deletions(-)

-- 
Changes in v2:
- Drop Patches 1 and 2 from series as they have already been accepted.
- Remove functions that now consist of only one return statement.
- Remove trailing whitespace.
- Change function datatypes and names.
2.19.1


