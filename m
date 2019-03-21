X-GM-THRID: 6670930948020764672
X-Received: by 2002:a0c:ba9d:: with SMTP id x29mr4632225qvf.112.1553197146937;
        Thu, 21 Mar 2019 12:39:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:c583:: with SMTP id a3ls2858962qvj.4.gmail; Thu, 21 Mar
 2019 12:39:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx0wSy9oGFCS6jgUqpGtXDZORHeK8O5crLSOevmlQYwvVjgfEPq0pbqQIY5tHLJ54ITAb7s
X-Received: by 2002:a0c:ac93:: with SMTP id m19mr4618943qvc.27.1553197146379;
        Thu, 21 Mar 2019 12:39:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553197146; cv=none;
        d=google.com; s=arc-20160816;
        b=fZ/sq6A1Dmx7tz7vJRMZwQTpMzr7Hcdqk6AIrCvjqgeTCoKq5pmDfMS27tAVbVnr4l
         6r2vIQSGkCuvWGQK3eOoYOHHgSDBcn9ebgS5glyr0FWz7bL64Y5QStp2cZED2yAk8SKr
         HI+eh27b3pRtE6k8M5Du1ndsMngi1YG0KN3lc+B8/ddGmK7L9c1mO01NMi6MZt14ffXi
         dguAgIO2mZ5wJiCM3M6wtd+0NI48tFE76kss7ez9V0ywdkQfj4BmZf32SJQtQYkJiWbh
         iN9FDK3G1kObgvN/7USMnNoWCVvRoNBrYP2bn9pGxaI4U/dI+S8N7e9a8fF6YWlh/hPP
         BQrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9NNSoUSqBPtf10oa+1FrJ8QHST7x5Gy2sBNXUk152Uk=;
        b=vhYjiA6LRwFlr8h2MuKMHHqKmr1BZWVmGi7IyuX9BC7b96SeJpTqUBSb+6Zt7y4SCz
         E3cghVs5THGnUUfHdM2UFYCsiUGBXUI6nocV/UKfEXxMZrS25mHY7wzZxgTOO8KqnayC
         lRs8A0N5rXoE55s54QmsXAp9ktxaPxQZW4joZrh0jaxpnrHADZlT7CGzEpkVr5RcJBBY
         mlJ7Bm25O+3o7A9w+Bn3qrdpUvt0AH99OVCN/vl/6LxyK59++xImPdR0rb2+UunJrKSC
         qRSDAeXHSGa1guEmXHfJCWkZmUAzlY5Td6gxksgHk1UIqoma2loMFjEbsLj0iZU4MMkg
         jLzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=oBH1G4Lp;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic311-21.consmr.mail.sg3.yahoo.com (sonic311-21.consmr.mail.sg3.yahoo.com. [106.10.244.38])
        by gmr-mx.google.com with ESMTPS id p1si410725qkg.3.2019.03.21.12.39.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:39:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.38 as permitted sender) client-ip=106.10.244.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=oBH1G4Lp;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553197143; bh=9NNSoUSqBPtf10oa+1FrJ8QHST7x5Gy2sBNXUk152Uk=; h=From:To:Cc:Subject:Date:From:Subject; b=oBH1G4LpHSVXFnhwMfFLuMazN+Mkk1zQ9TXmNgLt674f/w98Dne2iOXm8tLlNu309GWiWb23+WSHH+aNCup6l51nYeULDlGx7uDa9cud69aaR62XqS1zbMRoQ8ESCSg+Jd9ozLUBzXI8wQETjyRIWM4dspIu5vC/MoUEsWMKVZWlH7xiZhnKNLrq+Z3TLlXDxq/Kz7h2zPlUTaybKegV91e/q9SCktOBfytPBdOkEFIBlFW6p6mvZzzvp5rgMJqzSC0lGDJfk9YogyG7Ap6YGAFyGmndQGxjeBPa/7fYgIXddim4CNV7eeiakjVAO+pLd/YtBXMkzc8snQXq2zZwMg==
X-YMail-OSG: tXwZczkVM1lYSkTyTc81gs4SeQHwQkvDw9CiIPNCUcss6BnIigMerfxrc7Kwju8
 ItM5RE95ui5U2cgeWOOgRZEzJoeVme.TeKEgpQrfx4XOiao4yXDr8E_LRw4FQTkXsS64esv5Z7mF
 IrLZpA63SjUp7iSJeBEmf9Q9QzpSeqLPzzEEFfcYET8LR2wkW2gNuvnL0GxIl0RJ67qcOoz8_ZLz
 9WKTtIj3MRQX9gSlEiylyRIwulkMqdOaE7QkGvjyhs8dy_6nkWnSy4jtZAl_14.fAwVXL7kDDrrg
 GUI.guLD1sAv1rkLOe5ynPBY2SlpW9IcrtcKSZyjqCPlQQQqr5LqaNTbT4QU3LTb_tKdiW6ADmNB
 bF2EYeB.nQNF0p8x8hq4R_bHm1aWhItgFTT_lrR15i3iN2krhpbud602GNYvl6q84n04.m1vOeau
 bbhGrYxo0PcBf6KjYS9w4eaB2bxfya7hH4knRKTBFKfSoQwafMRB1Cf00zkSK2NflOA5ej1u87MU
 oI7P3dvF9gFe10pvP4x6XGeCyuqpqGeIQh7pF_iktRC_uvksfO_mVgD6zD6rK845eaZOG24TIBfy
 DZe7Zgl3m9HhKVmzfC0RB_111wl7q7eDL2DOCES2c.jqEVwNMj9WoNY0qDU40MtbgTIvqpqwjaPV
 iX6NpUzIZj9mO7AcbsLaidxD3JrSAmWjb0ZG_FEBDW._YfncctnTujOVOUozV505Y4jig.GV_zLy
 m_oV1ZOqusUO7bDY060STIh2826nEd4_qSuN6UxBT4rLWdRQiTR8DaW_5haZBEddUPMx2baJrUxj
 hqn4sWTb4vbrHAkoOxDsrIPe.TOR0LJ6v2QFLwLeTLh5v0QV4LZ2BT3E4.aAEkzl6YWAAHy6K0AN
 OhrNdRuDVh90_FU4y_Je_Ljx00CpPw99t8PNWZDUA8ImADlOW9._XpPArWwZOG.tiWsDSOGNbL4V
 8YWz4h5pw85SCwKpC8y0zPqUPuWRK1.9X0pvevXNIPXR8whB30Z6qp_t.6fHpzykmXlUKh5m1j_X
 pVXaNjmZkPFH2R7AzGKYUCxMG0wkgyBKw3ZmyjboNj8j95NNDn14DJfSyF3MK2jFiF9rqhgX_5we
 tW4GcZXjMdujO18tsNtyHzNKymNey
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 19:39:03 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b64ca48adecac070043993237cf92324;
          Thu, 21 Mar 2019 19:38:59 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v3 0/2] Remove return variables in wilc1000
Date: Fri, 22 Mar 2019 01:08:40 +0530
Message-Id: <20190321193842.4327-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary local variables in wilc1000 and return required
values directly. Issues found with Coccinelle using ret.cocci.

Nishka Dasgupta (2):
  staging: wilc1000: Remove return variable from host_interface.c
  staging: wilc1000: Remove return variable in wilc_spi.c

 drivers/staging/wilc1000/host_interface.c | 20 ++++++--------------
 drivers/staging/wilc1000/wilc_spi.c       | 10 ++++------
 2 files changed, 10 insertions(+), 20 deletions(-)

-- 
Changes in v3:
- Remove declarations of now-unused return variables
- Remove trailing whitespace
- Merge Patch 1/3 and Patch 2/3 (Acked-by Julia Lawall
  <julia.lawall@lip6.fr>) into one patch
2.19.1


