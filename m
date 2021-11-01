X-GM-THRID: 7025609319157596160
X-Received: by 2002:a2e:571d:: with SMTP id l29mr23104610ljb.357.1635777144946;
        Mon, 01 Nov 2021 07:32:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:1253:: with SMTP id h19ls620118ljh.3.gmail; Mon, 01
 Nov 2021 07:32:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxGmvYQjHqmDoZeeUqD6DKmLLv109Wzq1A1oT+VBxW1vhrpe1REI+TTlxjBkz2ECwlN2K5R
X-Received: by 2002:a2e:95d3:: with SMTP id y19mr12135368ljh.356.1635777143403;
        Mon, 01 Nov 2021 07:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635777143; cv=none;
        d=google.com; s=arc-20160816;
        b=OLSiwvwcHheMqZ9Yq4kDC1AORSY2ku4jrjkSUmH/HfH6d4Z2bjxsoL5mxazv+SCOF+
         zXs5RNFmb6Sg7AhHDWNChYP5+DQOaf/3xP0492g36giP9mSZiQVfv5cKTjQCyQkU6mhU
         yl8f5FEBaGg6EsEuLAbu8oHB5HN8PzZGRmfBCZuckgIy0BdiLrpD6OjMSy7JZCTyfIT9
         PeY3wGPHCLEbPO6SSJysced0AW+MNSQ09+3LmtMs9txhsdiErkFUijwm2O2/bcE5pG3I
         BNhyXz/wezvIIVK1cCetIioYLWQkEeNHj5l5RXamkv/gIvY7DRnmQ8ibTYICUybZmekL
         qJOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IGvktVhPA6KMBN53Q9S7sFoN48GUfEwFvixIWYHV+nI=;
        b=A6uZzWbOYtbux+3tXHW7NWYwQFsIztiphhjzH30iUO/ob8bbwS7nQs2XCavjpGpMpk
         B5GAtetwTMdIbF9ZZJgw8Tsxl1h+T5NS2m6ZZFmlLchfbt0H36vkZejevuNv7YqAv0b4
         NZybKl/HdTmUUOC8DjFrTnCjLnwAWfCTeXPYXDYml7nuq+xiQI3H/bSN6m25NUuHEuyt
         EhHrQHIueaQeO48t5bgIECNyL2pmrnN5Bgvby/bioOiPjJFLZW4LzVQRr8kG4tqqv++c
         TML4OIQLf4IXQHFw4cd7mLzb9K0Ja+x9ToLeyGX7OBd6zOlHMwYUAw4vLr0HIYwJJZsK
         Q8ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=QrSVBQO2;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id t1si431844ljg.3.2021.11.01.07.32.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 07:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=QrSVBQO2;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32e.google.com with SMTP id 67-20020a1c1946000000b0030d4c90fa87so79334wmz.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 07:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IGvktVhPA6KMBN53Q9S7sFoN48GUfEwFvixIWYHV+nI=;
        b=QrSVBQO2aEvZdNSzkMa9ZuGKL08XxThQoagtuWQgTesTJCvoQsEqE48/j+Oi5/B83L
         CAtxsju77hrS9XtiBLOLxZcCS8/zgkjnYcyC1PZvHWjt32h+Z5skC74MvTZ/8M+jrski
         22p6QszRKI7EOwtJuvK+KrKWwFhitEc8VePs/pvV3t9tB9hJ6dJ28Gr+NPlLSptzVxAi
         nBhGqNSkPWxpdZTpPWOF6/CBMYg2iZVjLiObHsf6t7IQnsQz2g6ZEiRPDvdeQ+tDb0Y4
         ch0NJkQFe/8anOQ5/1WQvtFNMoJshsu0//egt5Divhi6A8rZ+M2cV8swmaLKG/WQHwzs
         8mqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IGvktVhPA6KMBN53Q9S7sFoN48GUfEwFvixIWYHV+nI=;
        b=COXGZnd6o/8ejoZw/OXk8kqKVScgD5v/uSClGemw5EEAs7J/ZMBZvvL5CALhJUHhj9
         XH8XHGl0ILpfUB98Zd9Y/o9EfumELpP3pGM8sxz4viLjNtC+yxxwa64BDzgi7itqZs03
         U46aCvgKexRrN3kzT4Cj2U7q0ROkeu+9Pmx/JkcP2yaa/YwGYqxYHPiCHi91sxXkkYC1
         YoNPD0upa4bb7KvqU/auJNzNr17cqIQclkT9d5N3+37rk7QmeSP4sXzD7Fo1UJ0qQPCS
         /hhuWqRmZ+nRlN4DTfKq2IxA5WlJJ8RuvOFyPHZaTUxh/KG3oUkI7nYxByWgK5c2k/fR
         AGLQ==
X-Gm-Message-State: AOAM531nvkSTeAv4oLH1eqpOKB6pQ4iVEDs9ZjWAOXRJb+vC2lfoq+DL
	ze4eS8GArwjOUBjXnG4p5Pr91FhVDlJGXw==
X-Received: by 2002:a1c:1f94:: with SMTP id f142mr22652861wmf.192.1635777143199;
        Mon, 01 Nov 2021 07:32:23 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l8sm17157721wry.43.2021.11.01.07.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 07:32:22 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v2 2/8] staging: vt6655: Use incrementation in `idx`
Date: Mon,  1 Nov 2021 14:32:00 +0000
Message-Id: <c569952d92ba51f32679c2fd87fd48ad8e49e3fc.1635773680.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635773679.git.karolinadrobnik@gmail.com>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Increment `idx` in a loop instead of adding the loop counter
`i` to do so. Thanks to this change, the cast to unsigned short
can be removed.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index f195dafb6e63..c07653566d17 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -700,11 +700,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
-			MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_init_table[i]);
+			MACvSetMISCFifo(priv, idx++, al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al2230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al2230_channel_table1[channel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -717,17 +717,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		if (channel <= CB_MAX_CHANNEL_24G) {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table[i]);
+				MACvSetMISCFifo(priv, idx++, al7230_init_table[i]);
 		} else {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table_a_mode[i]);
+				MACvSetMISCFifo(priv, idx++, al7230_init_table_a_mode[i]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al7230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al7230_channel_table1[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table2[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al7230_channel_table2[channel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.30.2


