X-GM-THRID: 6807590102219358208
X-Received: by 2002:ab0:608b:: with SMTP id i11mr10088040ual.94.1585075135052;
        Tue, 24 Mar 2020 11:38:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:6950:: with SMTP id c16ls446364uas.0.gmail; Tue, 24 Mar
 2020 11:38:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv4I+wvU9sVBt0C10HosrYkEU22UMkW2IRRAcpWkZVp1982op67s9aoFsBBPsVK7+FvnXDb
X-Received: by 2002:ab0:20d3:: with SMTP id z19mr18121149ual.17.1585075133603;
        Tue, 24 Mar 2020 11:38:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585075133; cv=none;
        d=google.com; s=arc-20160816;
        b=DPmQJBT6U+CGkmhKsykJ6VEfumQKAiJfY/igxaZTdiFoFO0/LRD8iO/UOGWGWH2zLf
         zT9GjAjh8RUJ/70IydeUNqiKHqMuL/nJGizUiCz/8Mte+4fF7VG59DEgyNBBLz8bk5GC
         l8T4v+JD1tddiYsxdWPBYkT0Y1uB6OkDSDh+VUxGg9yIPW37kmECO1Scv3puoGsYef5W
         irSCUoPc8ec096USu4L58UZ4gBDxqpd3I34v2kIHfgx44dDRw8hoIqYuVhFMEwyMaRE4
         QHWAUFet0nAs4cZpptEf35vjLda91UqVlDap8haYUPOJq6TsxktySrt3SVsi7Wp+nr/r
         t+eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bqo3EoKihxA6vi3duOczvHkFJVsi9TeT/KnTt0/XsAI=;
        b=HieFMwAwTC48PWWfzvZ6sQgpy/714UEmVeWbFP4pczDfNQZdQa3ZNHyuj2ev3QZ/Z7
         ugr/51LVshlupkpK/JXESXK2ySMP2DjNFOHTO+dtLXELL7rztdWqwJmdrDDgzlrsnRRp
         QhvQJVl0foLH/jzHOh7rCdXI9wc8dKx7TVfQndc4esAh/vr57CYRGvEsXzcIMXLbo58F
         k7FgT2o5q8wWy4l56/tDzKrWQvvmXsYjtR6rgF6HCLoyNdGl1BdxGgqSDLExHzhh5jdW
         En7hFkMPFzxA+bpz20mdM+DdsMfFM5nEoxk8DB9lMokmixJ62FQ2llzupaLWxd7pmMre
         NmCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hiHj6PWh;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id h6si805207vko.4.2020.03.24.11.38.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 11:38:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hiHj6PWh;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id v23so3717480ply.10
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 11:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Bqo3EoKihxA6vi3duOczvHkFJVsi9TeT/KnTt0/XsAI=;
        b=hiHj6PWhq5NkE0miJDQUHdmSA8plrEucFhdt3XQGTbxKdF+ahsHqrpKzQVg4p9tB44
         4C4dcoyL3l9xQkZ/UZErmU9G7nKmmbWp22vS7vAbb2gOHVa1n5mltfBIMwYaCEc8IaNU
         Bhp2di8v6DKvqwVYvkE3z8tAx6vxb8nTI2rtJAq0PLaJePwhMi8QU7poJarfGuOgjlod
         ktg/jdZpmKaGHrP8+BeZP/epmKapnSP1UzeJGEV0+/KgqE1z3+JXVpBJtglHsxaJyZKV
         sBRtlUrkYz99DNTgFyrF5MhjizGyGjpLUCeCUhdgMq8hFnis0O4w52f9+IX+ThRg44tt
         vD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Bqo3EoKihxA6vi3duOczvHkFJVsi9TeT/KnTt0/XsAI=;
        b=s+VHe6rwnGp7a2qpXSw6suSTUetfQ2YRas5zAuKVLJFIe2AzqXFP0xPYKTCQdk3Lec
         M9jmsR81vPE/8SASCRTrWNZKE7p3Jn8IR+qKOVWEkOLawm78gk60O9uoBV70O4qUSzKx
         ECOG9nNhTDsTtnA8P3woE7BdDRSoJbmP3ockH14gDOGmWUw5ScCxHoVxWuKzutpU/4t+
         mf4yu+6a+eNE2fC7p7wczjpx88iFJ3qyjS5fKbgUqE0vYcTapNDjanLF8xO+SRsQpzlY
         3zhEJeVdJhWT+SjHs+IF0XWEhG8t/I8IA5+wQmkWSL/JZf9385dPgJlz0kH2djJnL5XY
         yNRQ==
X-Gm-Message-State: ANhLgQ0gupF9sjX3WGEdH9t9a0DnQeVEJpVMfT9KcW/8QVZdTcD5p1QV
	7b5XN068/o7j67kt1zlhwYWEvT33CwE5Ew==
X-Received: by 2002:a17:902:8c88:: with SMTP id t8mr16080877plo.176.1585075132406;
        Tue, 24 Mar 2020 11:38:52 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id x71sm16759353pfd.129.2020.03.24.11.38.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 11:38:51 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [PATCH v2] staging: vt6655: Break up function call with long line.
Date: Tue, 24 Mar 2020 11:38:12 -0700
Message-Id: <20200324183812.79411-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200324113525.GA2286293@kroah.com>
References: <20200324113525.GA2286293@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update matches style found elsewhere in file.
Issue found by checkpatch: line over 80 characters.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 Changes in v2:
	- Move '+' operator to end of line.

 drivers/staging/vt6655/device_main.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 0442f71494b2..5c86cc60eb5c 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -443,7 +443,10 @@ static bool device_init_rings(struct vnt_private *priv)
 
 	/*allocate all RD/TD rings a single pool*/
 	vir_pool = dma_alloc_coherent(&priv->pcid->dev,
-				      priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc) + priv->opts.rx_descs1 * sizeof(struct vnt_rx_desc) + priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc) + priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),
+				      priv->opts.rx_descs0 * sizeof(struct vnt_rx_desc) +
+				      priv->opts.rx_descs1 * sizeof(struct vnt_rx_desc) +
+				      priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc) +
+				      priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),
 				      &priv->pool_dma, GFP_ATOMIC);
 	if (!vir_pool) {
 		dev_err(&priv->pcid->dev, "allocate desc dma memory failed\n");
-- 
2.24.1


