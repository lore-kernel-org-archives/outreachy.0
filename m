X-GM-THRID: 6666119040327483392
X-Received: by 2002:a25:c484:: with SMTP id u126mr9982928ybf.93.1552076786260;
        Fri, 08 Mar 2019 12:26:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls531169yba.0.gmail; Fri, 08 Mar
 2019 12:26:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqzg1RqhRIw+rLLaETQRngmkmsryh/AlsepdClQyq2Yokp1WocsU9z1CJ9a84CXQnEwmuP28
X-Received: by 2002:a25:8010:: with SMTP id m16mr2206587ybk.34.1552076785400;
        Fri, 08 Mar 2019 12:26:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552076785; cv=none;
        d=google.com; s=arc-20160816;
        b=hyGRsWbtdXV5O6Og4VkGAe2QiRyszTuGc516H2ZEu1bxJJdimJi8ADbS29hy6P4BBf
         Qvqyrvf4vQQyC5hQEI9GsYFj3eo2jZs49RNRoP5XeQ34TsRCNocFEZJl3TYFEI6etqnp
         QAK/PIO9Eqp0gTE2CmJSX6X8UmMfdI8E5aW39uXVEX3DPTHU03B9AspwZYqetEPqdNOC
         iDqBPbEn1XNEU/rznJN940xBg7JhEX+JAQ5DXoL/SEaSUVUB94nJ0K51lHuiaddpyXIl
         8ZvJRbrzHEvx+TnWMzBdjScpTAUWXR41UJg5jv/gvuWm0p9jVgDQfi25vP/vZoKxDSwM
         TGtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yVarBfCKFtYMiKzt5oVtr0NUjwx3heXrNJ0xruLn2V4=;
        b=v4u4bvTeY0ts0zv2o2FMRL0eIql7ggEMiyESZK0VYyI8RoKdi5UAgfQQz7Cq7uwXCL
         6BDhlacwu2ga2qjaYyYKibU/2JisA5HnciAhgggUvXOAjkZwkaj0as0+Tq2o4AqBq3Zq
         0y+kDWn7+KcrC0PSogtGZ66Fd8Z5RbOEF9fbM11bRqt9Mf5qnQgbB0R185lSswxueS7W
         njYhRit4/i1503Kb14djuE2tfkN4on+xyOP8M3xwkyArkiuTW0SABkWvUug8Ymg/6cy5
         UIlt1T2jbUTHgfUr6VaAOyqiyJr+mL6x3Ay1dTo/09kKZl2UxOs7lDA4gOKoCocst58L
         VKtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=kDtgdwnH;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic313-20.consmr.mail.sg3.yahoo.com (sonic313-20.consmr.mail.sg3.yahoo.com. [106.10.240.79])
        by gmr-mx.google.com with ESMTPS id l39si487203ywh.5.2019.03.08.12.26.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 12:26:25 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) client-ip=106.10.240.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=kDtgdwnH;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552076782; bh=yVarBfCKFtYMiKzt5oVtr0NUjwx3heXrNJ0xruLn2V4=; h=From:To:Cc:Subject:Date:From:Subject; b=kDtgdwnH6T5I/WHNDQvjh4KfpAaEmLjTiIUBhvKaRFZHzuralvsAp+VNV5TDLzki3sw+QjJAX0wkJvYqKXSTMmN9WlpjnMPryPx5aCfMV4murf4IJs/LuqDlDr24JlbR0VrZuSjxKzkkT3w01UmfiNsKbNFO6eurwap344GilbN2V7eGxwVwQOAyhcxcEyrEdloXwv+jYRiwGG5WZ4Y0dkPi5dE3cHeCbr06kbV7dUdJ+26nGZo+q8ymz5GNUHW4kotucJ99vgZB6hKrUmIl1VZMDilQl422GfEAEeXt3qymiyfih0IeOt+KKjgqkpwvoRUbzvzG6BmxLd0Bm1vUCg==
X-YMail-OSG: P_xhAucVM1lQyaqvAY3PajuD.n5pPd8OzdRJOH5h2LM4Kdbhg1D6Majvi62WfOP
 JvZYZ.fw9WFLvhpNBNkwDbraQtt8ORQFq_9IOCT5mS467oSfPyGHce.v_.zxqGKA5fGZoYjGQrar
 HvwrG0kbubqEcWo4tqJYyfpyA_s4s7q305CCjpMkip3Z1m1qQgx8gYe1GUlJsCmSmxxRPSkk0QJN
 .GzmLDQM1YkuDbedWveBpcjsHVsf06leDM3h8BRtVfGOniBtCBM8Cpg8.68rbOUW.rXmV89jGdGu
 uAKVghmx7PpVolGIh5HADqG74JrhOrJ2Eei_4zxPKwjg0dziERcHNZ4aoq9tRSbq7oa1n3wu2tmo
 ZCwPVWdHdEkPt2rkwIaxYBswJq6UHEkYgl2Jx_k460dZrSw2OYkrwYVep8pB5p2mF0EQ4vEg5Eqn
 pQbdJyPP6.ay8V9VBz0_tuGDenBTw78HHHlXcw34w9c.He71O7ekU1mATsWox2R5GKq2GH1tWzWd
 kpjtf49hgfA.ehNidW9rXBezSsEzz408BzBxqwXQ9yl4rdGCE5n9iPfAT985C.0MdtOfkHwvfBpQ
 UYCAk5nVaa85fzA42M5oAuTDRgGMNkOjzrQHSseFpdBs5dkphp9QpJhcvkpmWZnYYu4pWqWtmk3e
 BdpaeCswUtL2lN12TK7F7rTcGRz8RU.3UK81SGt7f82xDsBafj1M12uZ40uYRR6ZLk0PY_sBV7.d
 sxVqJVJENaTkwnGzU7a0RTVUNuk.xCtlxJoIsqXyXxqL89Q7.Br2mjFAF6gaAJmkq1n03SV.5t1W
 MI_p6jl_hT6It.ja63pp2yYgxwYN6TfP7NOatYHunXBTa6H3FlV0rIM_zbEo3L45J7Db5qkmeMWN
 7pT06FZrKUhu_Jn5t3Vnrhw3K6eupBzN1.wpcV6lm.5qynGl5gBcT58NhUFe.SwYCImMtN9gtZvu
 wTH6V.H5arR4xE4cJinx7W4QkUuk8_6HGzFkJ1wwBvVqsqcKio25.7MJmT_51oyV.F_ySfF53FDS
 46DQdrMCCySsYA4dJzB7_4XSEwpeE7JExV2ZPjsCgCMT5a2RXCQD7VRRUHKj.cUetkXx2i7jj2vo
 wiJQf.7wpCwZOMcruOoGdKggK2w--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.sg3.yahoo.com with HTTP; Fri, 8 Mar 2019 20:26:22 +0000
Received: from 47.15.233.237 (EHLO localhost.localdomain) ([47.15.233.237])
          by smtp432.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 97b59abc1276b5581cd8b807a2758e64;
          Fri, 08 Mar 2019 20:26:20 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 1/4] staging: sm750fb: Edit CamelCase variable names
Date: Sat,  9 Mar 2019 01:56:02 +0530
Message-Id: <20190308202605.4061-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edit variable names that were in CamelCase to make code more readable.
Issue found with Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 4c1f00f551da..90f5480304f4 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -15,14 +15,14 @@ enum logical_chip_type sm750_get_chip_type(void)
 	return chip;
 }
 
-void sm750_set_chip_type(unsigned short devId, u8 revId)
+void sm750_set_chip_type(unsigned short dev_id, u8 rev_id)
 {
-	if (devId == 0x718) {
+	if (dev_id == 0x718) {
 		chip = SM718;
-	} else if (devId == 0x750) {
+	} else if (dev_id == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
-		if (revId == SM750LE_REVISION_ID) {
+		if (rev_id == SM750LE_REVISION_ID) {
 			chip = SM750LE;
 			pr_info("found sm750le\n");
 		}
@@ -321,7 +321,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
 	int mini_diff;
 	unsigned int RN, quo, rem, fl_quo;
 	unsigned int input, request;
-	unsigned int tmpClock, ret;
+	unsigned int tmp_clock, ret;
 	const int max_OD = 3;
 	int max_d = 6;
 
@@ -365,8 +365,8 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
 			if (M < 256 && M > 0) {
 				unsigned int diff;
 
-				tmpClock = pll->inputFreq * M / N / X;
-				diff = abs(tmpClock - request_orig);
+				tmp_clock = pll->inputFreq * M / N / X;
+				diff = abs(tmp_clock - request_orig);
 				if (diff < mini_diff) {
 					pll->M = M;
 					pll->N = N;
@@ -375,7 +375,7 @@ unsigned int sm750_calc_pll_value(unsigned int request_orig,
 						pll->POD = d - max_OD;
 					pll->OD = d - pll->POD;
 					mini_diff = diff;
-					ret = tmpClock;
+					ret = tmp_clock;
 				}
 			}
 		}
-- 
2.19.1


