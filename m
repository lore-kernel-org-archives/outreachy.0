X-GM-THRID: 6671224625234444288
X-Received: by 2002:a81:3b43:: with SMTP id i64mr8925183ywa.168.1553265528049;
        Fri, 22 Mar 2019 07:38:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:e6ce:: with SMTP id p197ls3540656ywe.0.gmail; Fri, 22
 Mar 2019 07:38:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzxHJTNXTBPuxbZgqAej4Gl7yOuGtpFn7vUVy6UEPsb9QYkFspnMkD1UJVRphXgjPwY5+tM
X-Received: by 2002:a81:a4d0:: with SMTP id b199mr8833083ywh.71.1553265527024;
        Fri, 22 Mar 2019 07:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553265527; cv=none;
        d=google.com; s=arc-20160816;
        b=dc019uNq8RgV/tRd0hHIeQH7YWgaWUDt+8F2qUYX58VtAJ3J6vHrsPA3Xh53krNrmX
         46KmqRUrAr2LRGfGHCn89u2g53t9xNnbJDfmZLzR+my0ALNlpL0rTwD/EV6Dxbw7Zw+r
         ybXRXdAsVKZjRS59lmzaUTiSpCkqblf642BQ3LLLCWWfKE9sH1NRnT6y6UMln9ypCVk7
         2G/Jwrt3mnHeRU5udbNA711ZB4YFlYTOi7VZogrsh8YoqbJl4tPy4YpRj2TbFAFzWh5K
         6uIhL2v0Ba0U5cCJrMa0JMGGZIJ7xorjFYaetqvLwRkkx/JFid5cZ3Zx4EbYyV3UVM0u
         rDNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rRUwjyRpz9xbvAnGGAF/uDvA1flqPk9SNMYpr2T3Z+0=;
        b=oqDC4J/C0RaoYhap/q4j9F7vGIxVXeHofjAuwELgDqXF2/XfGGYgGUC6XGqm8vlCaj
         GLrAmuF/MHXnQbE8Hudycxt/gUs7eayTTZEE/WYYPWSXF+JN3snm61r5cxG16/3WfYsw
         btJw7buxiQ4cdpVxixbNqOCZxP7Gz7TKrRvElt8M1VYIQrzQGl1ilC5CPaQl0gMcxOVF
         wDsU/R3k0H8TNWybysKLS17LNyt5SM1BPLpT+57/eF6hOIVPCqURERQAdd7ko8YY8IDU
         3+XR+VsNd2jTX6FhEB1eC4drUD1Vsczy/n0hKaZDBQVuf07I1XOa3AWX9Vi6OLMRD/35
         PMFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=YP+TzBcG;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.78 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic313-19.consmr.mail.sg3.yahoo.com (sonic313-19.consmr.mail.sg3.yahoo.com. [106.10.240.78])
        by gmr-mx.google.com with ESMTPS id r128si713884ywd.0.2019.03.22.07.38.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.78 as permitted sender) client-ip=106.10.240.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=YP+TzBcG;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.78 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553265524; bh=rRUwjyRpz9xbvAnGGAF/uDvA1flqPk9SNMYpr2T3Z+0=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=YP+TzBcG8kuMjj2hPzHnWC9K5WkosbfK5RPjVUlwQ3tzGnKf1IW9kpLqFMpR0WG0ZM4OVTfao3TlPKMPFyQ7JQJ9fLkQGE0ZfQSQOgyskcaB4+MbC23oYU0mXsbXK59Kd+J53zkVHvMTGpWJs2Jre2piAoK/BtsuEIIghjjzMIE7lVYArYtnb9aeM7vtoXHeu31XQtZ3FQUS8zF6MuzMYWviLkZQrNl1JY18WfBZDdEI5mJ0YgQfHB1rXxvQPccq+EtIXnkFOOE0HF/4/+vlb5TsLU9bDWOvmBtWoV4CNa8v4zJ+SeQ7w7j3ywTuHr1lnarppQxlcoXfMF3wU45qMw==
X-YMail-OSG: UViPpwEVM1lU8awvLwCvu8BgQZQkZXDbtm2YgpEVwEHAFsxfAJ5zPKFX63kv4Ah
 DfhkVbD6_3_190pnbvEUZFW8WQW_AJV2Ty5i9Xcnle_VlwqeWgIBxhjlH5SJ2O9pbFjbWtJzCQER
 ypkUEexQMrfnVknvabVyiYj7kw4EwTrfLfGURVwEzf3Ba9yKw3y60hYh1dkh6LA7LmlEg7VbSXNX
 3JL_21fDyPmPKooGjRsHNO_TvpOmukLUjhJmTwxeJVspAic_of6dh1HP3ObOjEXIs.y8w9IBlblA
 Qq2T.svwqS9bTL4gm__88Aa40St8Nk2aNbKGaQEWaysMzY5rFPQU6EYno2hRB_yDShKn5lDwWvsK
 6O1er67V_8I27aattqPD0bGmUcUJhZgOBi1nzpSrx4bog9I0DKnhRv9v7C2JeHKsPNYR8xQm9lgy
 tcA0rNrczmJaCxTiDiotSfTGra4HAnvbfdASwBYYcbKkt6wDrCGtyWhVihNw0IQewb3GBqPAjOqH
 e2B8yFWr1tv..MwuSfc84z1GQgLdgDpncp0jM8epFZI7igu3PqGD1C9s4qzP20Zt2blqBU7Ms7zf
 vDYjhNzacCRE81QqH7I48gEmvGT39R.Dxu6d0qCbqO5G6Ns3SN3R0AyGlsGsVpqdpah5SQm5.tCg
 VwzncXpEP9WMUia4j3BrgxLU7ArnYQ9GdlywQJTMEDFFpGsp.NQxGTUA.cXQJQ2wcTDJxhhJ38mW
 jPhnJcECgtLxrjkvmLtl87HYy8epfmDkL6qhSYt64gKI5FEA54hq5Vyr6O38z4UZBOU6KsRxEBge
 WzwBmNTylppQ7fK20aQkotCTPbOeWFKINqOkIFe9chMzMg9KFMIxzaTtlPSabY1xKaw8jCEQrIUc
 .z7V7YYVzpy0jJYuRPYgGZZTEhkuHyO3iaXiYPV_hRq0RiFP_9skfh1F11fLJzn0otgMsLPOVP22
 w.VWgfjkLK0RA0LrUf0lNtwO4sr9iPDc8jAzDXR4o_b59DR2b_Xnw7Ju__be6Zzn4rRhUIxnzhSU
 9BQ06lfw6W9aCqGHfYjxIwTCGJHkp0pIdY2sGxJEmFl1ebah_LkyNddfDquY2DWQaproWoY6GCv6
 YExu1rKfeHPQd_fhOUSkVKlvzuaDHJuLwgw--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.sg3.yahoo.com with HTTP; Fri, 22 Mar 2019 14:38:44 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp412.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID d1d8be53419bbc2dc6b4659a7081bd03;
          Fri, 22 Mar 2019 14:38:40 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 2/5] staging: rtl8723bs: core: Change datatype from sint to int
Date: Fri, 22 Mar 2019 20:08:24 +0530
Message-Id: <20190322143827.24480-3-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
References: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change datatype of local variable from sint to int.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v2:
- Add this patch to the patch series.

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 8f1defdd47f0..599958819d2d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -15,7 +15,7 @@ extern u8 rtw_do_join(struct adapter *padapter);
 
 int	rtw_init_mlme_priv(struct adapter *padapter)
 {
-	sint	i;
+	int	i;
 	u8 *pbuf;
 	struct wlan_network	*pnetwork;
 	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
-- 
2.19.1


