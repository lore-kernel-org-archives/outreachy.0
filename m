X-GM-THRID: 6670193586677481472
X-Received: by 2002:a05:6830:164b:: with SMTP id h11mr484589otr.64.1553025481990;
        Tue, 19 Mar 2019 12:58:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6417:: with SMTP id h23ls841243otl.3.gmail; Tue, 19 Mar
 2019 12:58:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqycgBck053Gw91mMMileILDSknTyJEb/HrYtl6lLXtLoIaqnsz4cJAIa2Zuln9NIfTNq7JI
X-Received: by 2002:a9d:7511:: with SMTP id r17mr1307833otk.16.1553025481292;
        Tue, 19 Mar 2019 12:58:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025481; cv=none;
        d=google.com; s=arc-20160816;
        b=wSKaY0jFL/hnk3FFB9fupfjuYgqIYB2PSMG5IQh6/m8subwnpaxX1aHwKQdkKuGTWt
         pHp/9WVI7Jw+DgNeE0lERfSbpM8RXwjOkRwyWdCWep0mE4UPhOaywDiBcGXymFuumCe8
         Hx/rMwqZMXXM8eMtLe9BbMn5IIAkrcPhObUvYdQ+V12xfWa3nQj5/XFtm7v2iZ/qfdi6
         zGTmW/sXkRMyH7YE0xDhqn5K69YMzYcF7HGIGGm1vlR43UgORuDUbRty0joYjBRXBg18
         jYBwjjLZKfOnEmWPYeN9rGJS+sZDEX4UrNceYbIRTof4tvT92ccL/c7L0/YBWsfNABLP
         dZKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kNWPGTXJbdVEUmbuVlGzoY/YvGkYiPafphvlPdAUF9w=;
        b=wEMXrOeWn1+DL7L1cKvm50/yu8HZVoVwTsDOfTeVjIGpg29odjfj2D2g1l+Tm7BUF4
         af9VirUOJrsr5MXQOS7ehB7cqnYkfscEBMOIorIaZPzKiptROxO0D4zOs08srC6GBm+p
         qsJ/snuhp0QgHWCAwYy99htWev0hUdj7olG7uXVJcFfv/HB5l/1pGvG5BUfyi6ERl5R0
         6hsSfWK7g9ia/CDce9qf0AgN1U6wTA6AZaNESZ+5TKdknnpXKebbH72WNQsPqNwNz+es
         UF0MyNGOZGKsTWukaCTeCdKlaXCfq6VJLV7fQSeI4tE4ntQ5icgT2gYV3D5cVur2oyUn
         WKzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=E3Zmzj3e;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.144 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic314-20.consmr.mail.sg3.yahoo.com (sonic314-20.consmr.mail.sg3.yahoo.com. [106.10.240.144])
        by gmr-mx.google.com with ESMTPS id m3si446629otc.3.2019.03.19.12.58.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:58:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.144 as permitted sender) client-ip=106.10.240.144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=E3Zmzj3e;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.144 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553025478; bh=kNWPGTXJbdVEUmbuVlGzoY/YvGkYiPafphvlPdAUF9w=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=E3Zmzj3eMnmerbhS18nanvTOp5SBjm3VqQhSX39avw8Bx6siaKPDP/ElL8FfC7Rg0XdGyVxGukeO1o8m7W332Co3TlMy+ZuxQF4OnoQ5xDF9HkX0BfW9iPz6ylIm+a3ry/yA+ku7rg9hhuPOhsCWKoOPRlt0W91acaAxt3uS6gqVJh/gTo66UAOy+dkQyiqgBro1WfufFTGgx37MsBIOnHYi2xn10lVIp0eiRfkaYxh5+0086byK+Wlcf2XYTzSqHsijkRFbp5gEKwXf0w+DK/T9eUFvhdrNy8RBcqr82i55z6xnG4iBl9HouYwgfkYTs/N1aace7DQzsXCSG2rJAw==
X-YMail-OSG: L1ofd6AVM1nMK07zleZuQ2bUalLoJm_Ps3Glak51D4sdMruTWD2_K1O.ZPlxwoK
 XJiMmft.P_6pAhNswoD7Xtii5Z38_NwKh2ogGO2rq8RJ2aIoHbw8Wa5TVgrSihQ8suQpZQ_oVXTa
 A3GJX1LiepW1XLeJw6O_uS_zD2WX8Mo_tTP8NYekaor3_SAue2z.owRUe7XwBbwffVVBtMJf8d3n
 1MRtsSs.1ADWAFAoWeH5L20s1.KW6Q6_4GnOJyLa4J4A5NISuWpUPCGhHqvv2B8GnATnY2OyUwnu
 9SKm7HbutpzgP3uQ9Pgq918iEwQLZj2bY_n1kPitXZ4sm1h.9Owq2qhoc.ZbuDdso98bP1vbxBrr
 ZgH_Li0_DvYblTUnSo5.MiDLpwXQyRYvF0FRQRHKRKjRO_1xKft16C8bKZ8tqOeSnZjgg.IN6jDO
 bo9k3K29oE5yfycHwlyjrjsS1TGOFzfJ6TbnnlkB2S5tlWVmaWvFaFGf_fltKVouIxFCKcUeAY8X
 J8tGP04eh7j0QlpScWxBfvHD4Pe.eA0xawlrCZ4NSo0f9zrGzRFgxwA72a5HS_.4RY5yYzkUOQJn
 WLO4NAjJUE6LXEPogfPl6p3TX9C4xrgT2wp4HCThAtgiPuE9P3RkVYBVWwbVwj48SVu8lKsxfKck
 5_ShFN0ZkKdq5SrRm1_6DpFqBnI7Vch9K41BzxJvSoij41cJK9SNAvHAAfWkCU6E4GXHyORMmUL4
 vePOkC_s57gr4ZfpZGRzxjRv_V94xYDyyuSn_D9Hi9GwHUVX39toD0KFsj1YbRpPQFb3XOLqNnuQ
 4DJ9QjXg_SAZ1g16ikdcDG24YnOV3Z8xN1iTkYBVnuYOvS49agnwVCGUE8e.96f8U_ZP5T9wQ4ya
 BNzfzeYtJVjwXpDEZnCb4LO05CvPHKvWMGhy3tWMyXFLaYJgyGuBRRrtEQVaGSdqn1J.5ty8g3Gp
 2H4HXxeWfU5gedJApq4iSaG_poo7VzIYyfkynccEGJc.rGb8VBuXC93WkxCSj2rUSEvh1nL0vsph
 5HxeKjld.GJkP9.IRnhK59zjoEYV5nxYjlvcoWUFEfytxhvBcfheVE3gg5T9hrtyEdZ60j9iJFlb
 zdaZYi8xlmQVZ0Ba5viDb_EDMvkZQr5A1naT4Og--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 19:57:58 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp422.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b707d24ec4d48d531001bc1a2a399b3c;
          Tue, 19 Mar 2019 19:57:54 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 5/5] staging: wilc1000: Remove return variable
Date: Wed, 20 Mar 2019 01:27:31 +0530
Message-Id: <030f11edadf6ee01ffbe7d239f8352b8034427af.1553025265.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable and return required value directly. Issue found
with Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 28fdfa269192..9959a794edc7 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -981,9 +981,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 	u32 tbl_ctl;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
+		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
 					 val);
-		return ret;
 	}
 
 	flags = val & (BIT(MAX_NUM_INT) - 1);
-- 
2.19.1


