X-GM-THRID: 6670935352020041728
X-Received: by 2002:a62:1882:: with SMTP id 124mr5125377pfy.101.1553198175904;
        Thu, 21 Mar 2019 12:56:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6c81:: with SMTP id h123ls2454018pgc.5.gmail; Thu, 21
 Mar 2019 12:56:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1ljmx8aoKCNPy14tUvFf7mLZLzk8mizRvvEMok4f9kU4ueiAlZIAZmhlmKzuRpWRazviq
X-Received: by 2002:a62:448d:: with SMTP id m13mr5262246pfi.182.1553198175325;
        Thu, 21 Mar 2019 12:56:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553198175; cv=none;
        d=google.com; s=arc-20160816;
        b=OfSYVJ2nhC4qxcuI2x+/zQN/onprmJm3NXenIty/bFR6nQ2UP80E2dq6cYduewowY5
         I4mpQqSbSofXlPEVi6Lr8EzjVYK33pRkWtpzB+3XzPcrvweyE2yvyGn4hevtbs2pEy8S
         h+9DIQknwVxo3oQl68wsWY4ViU4HzJ+gDAWsFTM468DxVVUw+xh6m22HxXTDY6y3wH65
         Mm1yEABmHoEFY/BTDKVlIv2xPvsPhrCAva2SvrcWjo+lN3UQFBhwyeNJzFJ4Zg8J0GCw
         B5C7rbZGPZwJqklhZhfJjjgPN49CzCYxsMhLeZqXBCoA9f/mepqscHHUCbAGo6asoZtx
         Aoxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aRnif9jJ8/jwoqpz9ytJghYXerO93eT+ehwwIRrPtbg=;
        b=deU9FiZgDumwGXSwQ5N3kxDi0z9CeiwFhGN2JDMvzREmJf2Ktd024YlHmNQIM5OGS+
         p/uo1WKTRxYxx39/sg+oFKLjSPalPaO51bAp5gwTiIBNvpyfHAgk7RDx1yfAVVu5OYBc
         P/xfiZOCa3Jlv0cpZYUuYin3VzHjIGpRiZpG6X01YBrEZ/+oB/qvhgxZGF53RZh8CbJw
         ikWwtZvokWbru6IuZ9OVf1/IqtXIQgMXPV2igJslfvaIcMpFER4Zql83xTvDVQw/af7i
         YoPBmTYRr1jWL7aFmzadVIjROjHHOaXTufsyZYMUX6Ge7dGtt5oTPOb0gTGHpqgZmO5G
         KZsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=JPu12qyd;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.39 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic303-22.consmr.mail.sg3.yahoo.com (sonic303-22.consmr.mail.sg3.yahoo.com. [106.10.242.39])
        by gmr-mx.google.com with ESMTPS id c12si366659pfc.2.2019.03.21.12.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:56:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.39 as permitted sender) client-ip=106.10.242.39;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=JPu12qyd;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.39 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553198173; bh=aRnif9jJ8/jwoqpz9ytJghYXerO93eT+ehwwIRrPtbg=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=JPu12qydGpDvT1eiJmg2uycH2chdYf1XoS3vOzm1sT1w+hw7go3kfriJiCjTv+nZG3f5byYCqNtNUI9G2G+pNQ6reNkqBUQxnLnBB/GoNWOJPkbfdgVZ16u0pH2OQBcyaSvBSjciXFxzc2ml08oPXPhNihrmNp1OEWGgdlJQ3s6ov9q/06Imy1lCyP5zGmI6sIBRi3UEB14f1flWy2FXz2RGOfzzoP45aAIuCqTL8zSRlGtlrL6EnsRY8VKUOrU4paKHpg/mM+HGnmBY+uC+lK/HsbWvsQI4/aohz2bfvvB4qPJ2DOSBhqWSBM0H5g5/FzqsEn6ZqO3qNG3nhkJwKA==
X-YMail-OSG: OjNzABwVM1nI8k1YrUQV0LWS1cmHjOKRSXiHoaD31Vv_R2qnA.Ej2xKedboIsLp
 cWsbNoVJKUzrrLqpMoLUh1sb23E0frnLmz4xZxEl8Znv9Onsn9yqpGVjxkHdIo5qqHTpZK2Wo3xv
 5jSaSZk.XOWaADccrWH_ZQ6FhzlMued3Irx6_KQ2_CLJe.FhRWULZ5MePo9aQtXW2.PLLSSYYasg
 YBgyMHrhU6ZbNOI9ZHpbhsrLBn3moGAiU_myoWrzUweqp3JLI.cGesg7EF6D.ZBrJImVaj9Lwyjl
 IMnrnlKvtZ9bMiOQ2y.iacjimBkoW2e_4KOBQG.cmb5Y0Z7awrXp4lraFjKN_n.9YK7wlET3pkNt
 b.zJ_z5wudPGrr5ezXiad_DRnfs_Zc35pyYT2ri1XyfUZlGJrt4zTXP7vZ7F8yJ9r6Uu0zsAY8uu
 qZIaN.rMwUHNfnP_E6pdRQTw.Mgot2bBeUG0rc.fl25Sn6rJhzMC.jePzK3T7W8WxTuT0.BU8Ayu
 udWQ3JmuXHw45qKjv.ot2BQrnJuXk3vTUBj9HxoApMd9r7O.GIUR1EL_724Dej5aPTc8hrV8gMv.
 t_Gl6qMKBwU1wU9MFooXFrbhD.reNaA6mALyQlNKasay4kM1PnLa9a2euMAY1N5kjbaHS6ChKRwt
 7RRRA8T1ouXEfIKBVW8yxtmzn9ZT.LcYdDWaBXK_twWJdO1wiV1t.S9xN9sBblXXvvMtwigz5y7C
 E_G_1PYfe25MDKuGXiVLZ507tH3MhfzGqlJDQtczLQ1RSlKODf3D5lGsSErm4gmcrEa0jE1vLhQ5
 xNZa1ZgM1SAxgnZqWZEfJB.xSRaHurFVXQBtMFUfnXXXob19qOOn8M.4qREYoDDyZvmgPrxuo6Lc
 IsoWUDb5UH7cMqLymc.0FeK5MFzumxXdTGnnle.69npps4GHAPQlsPMe2iXCz2o3f3e3y2wvahzW
 MXd_Ef5B4sLaT0h1ZlFms5.vDLYmMhaCj.ESRJ5I0AcpHIaN0pgdc_W6GGLVjXHqfZztNCYJlxD8
 zihedYQNEkdwm7OuDIRuqwSM6KhTgQRE.K6KiZklZq.zqY7d_oDW7gV3h2VUdmVMzeXgczER7gO8
 dSUgP.D.mTvE91gk7LO1bnpwc39y6gQk6dNr.vVTPJV0RY1ApP_E-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 19:56:13 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp425.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 04ac275525472a2e4b5c80b6b2590191;
          Thu, 21 Mar 2019 19:56:13 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v4 2/2] staging: wilc1000: Remove return variables from wilc_spi.c
Date: Fri, 22 Mar 2019 01:25:56 +0530
Message-Id: <20190321195556.4802-3-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321195556.4802-1-nishka.dasgupta@yahoo.com>
References: <20190321195556.4802-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variables from wilc_spi.c. Issue found with Coccinelle
using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v4:
- Remove braces around single-statement if-block.

 drivers/staging/wilc1000/wilc_spi.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 4a1be9e60d74..d8910bf9cb75 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -933,11 +933,9 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 	u32 irq_flags;
 	int k = IRG_FLAGS_OFFSET + 5;
 
-	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
-					int_status);
-		return ret;
-	}
+	if (spi_priv->has_thrpt_enh)
+		return spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
+					 int_status);
 	ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE, &byte_cnt);
 	if (!ret) {
 		dev_err(&spi->dev,
@@ -982,9 +980,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 	u32 tbl_ctl;
 
 	if (spi_priv->has_thrpt_enh) {
-		ret = spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
-					 val);
-		return ret;
+		return spi_internal_write(wilc, 0xe844 - WILC_SPI_REG_BASE,
+					  val);
 	}
 
 	flags = val & (BIT(MAX_NUM_INT) - 1);
-- 
2.19.1


