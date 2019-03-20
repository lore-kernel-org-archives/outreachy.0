X-GM-THRID: 6670460287922995200
X-Received: by 2002:ac8:2f98:: with SMTP id l24mr14639995qta.8.1553087562122;
        Wed, 20 Mar 2019 06:12:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4ad6:: with SMTP id x205ls922825qka.5.gmail; Wed, 20 Mar
 2019 06:12:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlo08+WBJhJ38gDWdwCQf3K5nc7puG2GQ7XJhcOysk9T+P2hSm0jSnO0kft3aQCsNFY8RY
X-Received: by 2002:a37:b241:: with SMTP id b62mr14689156qkf.14.1553087561494;
        Wed, 20 Mar 2019 06:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553087561; cv=none;
        d=google.com; s=arc-20160816;
        b=ERg3LjwZkd/XgTv0Prtr3z9YhYZA7b7PEJnBBGTIeGUU+LRMhG06U6lrUI1CjFY/3S
         Cf1q13cu9JuIsASeUfQcoIWK1/lvojVxczwOKF9cOb2sXMc3flfMP0exe/GY+nlRrwVo
         fvFxxaIvIHHT6iVG1UgQYSRsPeOa+drVj4L5dMTj0RHDUfVdXCMkbNC6DjxnDOycqSX3
         6f+o9k0trXaYXSgVutW6FUlA0FKchEA0r74nVTdjjJQ1RbaN0DuB+T52iB9TlyXvWTow
         9Y3MJvcYQhDydm/l6fBRkBW5sHXFOc/ZXjDgiccgnuy2g98mnnbVTZe4d5SYH0rxyLOu
         ixbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=3L6Szrf+zegzGpCmXWO/YGR3RCkUNaAcKhnv1pP89u8=;
        b=oNrkBea/YhlX6EgSsO2P11IbfsWnmxq3eijLCY/HNM6ma7YEZB2hsCKsLptzbPQWcU
         xZccC4ZfreqbcLklHTBn+lI0oncC1r81szlU5JZGDGKH0ViMU3C8FRy6o0E+4OqIRG9p
         gU6kAgZK60QxBnlaOluxMpVIYZ7eXTpY/j8IEGmP1lLiqjljT8BmfkBZekjGYCt6J8dN
         GOWPvE4lOAWN0hRFHcZvhoG4lEoym0mlCzHnNzoJRIu1oKYb0fqjXzSMAFwRVaVusLEP
         wzoau/Krv+nqM3+mMc7nHJ57+tjD3hOl/xzGevofw3yzRU0NLcYLHmMejI1OkSM6b8Ot
         o9oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JKNrdo8g;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y202si107078qka.2.2019.03.20.06.12.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:12:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JKNrdo8g;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b12so1809818pgk.0
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 06:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3L6Szrf+zegzGpCmXWO/YGR3RCkUNaAcKhnv1pP89u8=;
        b=JKNrdo8gxbIwYuSiXKrzQNvZtpEXi/nu8LW49GT7DJS4Spe1GcVgIshryV7PdNp15o
         TLAIkdzrTBdGc3Ezd5cQ8/OIk0lke6XFqILyqNoJ1W7AhfPfeR3fNdlikcMl83mxyuHq
         1oK7jYn4SZV7XH+01cGeRYp1IbhzsWqRUb1lWYlNdAWM56kJ/B+s5LPvkr8o296CQPKC
         HZPHjnUS2S3vxRhUaQ8Qa5yImbTvnHnuJv6hltkhVfhd+wvE++oq3vDGxDcXLtqBxG5Y
         G5RajXwZrwEqsADTQ0aoSNh8Z6fRFZHbwOpwJIvlA+JrxqR19UBg5KOa6RQNwpedFaU5
         tJXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3L6Szrf+zegzGpCmXWO/YGR3RCkUNaAcKhnv1pP89u8=;
        b=TD0Opxc2/faLd1xT9id3QCXtO7plvlC7ZfkkspotlhmT5uaAdQAMJG7AmUIqdbK7o7
         NwTgEuTfOswPvrYcQomIcNa0NApB8JvgBrVh7EhaTQoDkNp022aiiO4yax8cinBuNYLB
         1vVQyuSxt7vsX1S6WP0vMCclEUI4BwDMv3Nzcj7SxEEew2r7YhZpjkFGI4s+QQbUy3nq
         IgfIOYchf/S7WMZXl8y9W76qYvQPPKC/XB0WPVMwu5zK1huaew+6iZTmgRy9MPaOl75f
         ivgaj2gP3coFZ8xceqk3Za06nMrRH44RjRfP7zGcpaf8lSHQIx07+Q/7QPViDWCX+oao
         0cDA==
X-Gm-Message-State: APjAAAVq7j1kUOUv1dhhUJzQ7MRW3Gcx50Txu3U5836TPUcU1H0CfuAc
	Mczm60kh9m9NPczh5xUxkLrTfuTp
X-Received: by 2002:a63:2045:: with SMTP id r5mr1152873pgm.394.1553087560129;
        Wed, 20 Mar 2019 06:12:40 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.44.145])
        by smtp.gmail.com with ESMTPSA id d5sm2297246pgv.20.2019.03.20.06.12.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Mar 2019 06:12:39 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: greybus: alignment should match open parenthesis
Date: Wed, 20 Mar 2019 18:42:21 +0530
Message-Id: <1553087541-4396-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Aligning to open parenthesis

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/greybus/audio_codec.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 08746c8..d62f91f 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -70,7 +70,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_register_cport(data->connection,
-						i2s_port, cportid,
+							i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_TX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -160,7 +160,7 @@ static int gbaudio_module_disable_tx(struct gbaudio_module_info *module, int id)
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_unregister_cport(data->connection,
-						i2s_port, cportid,
+							  i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_TX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -205,7 +205,7 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_register_cport(data->connection,
-						i2s_port, cportid,
+							i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_RX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -295,7 +295,7 @@ static int gbaudio_module_disable_rx(struct gbaudio_module_info *module, int id)
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_unregister_cport(data->connection,
-						i2s_port, cportid,
+							  i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_RX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
-- 
2.7.4


