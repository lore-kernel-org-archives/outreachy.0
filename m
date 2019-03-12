X-GM-THRID: 6667435589118197760
X-Received: by 2002:a63:2024:: with SMTP id g36mr3546591pgg.87.1552383319169;
        Tue, 12 Mar 2019 02:35:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:cb48:: with SMTP id m8ls4672941pgi.12.gmail; Tue, 12 Mar
 2019 02:35:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzjw1W208GpWBvNdyV4cRw0qbndFhufUkxcpSCt5UxA3tQianOFiJBum/RMJUYzROYRzbwF
X-Received: by 2002:a65:63d5:: with SMTP id n21mr13823295pgv.97.1552383318431;
        Tue, 12 Mar 2019 02:35:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552383318; cv=none;
        d=google.com; s=arc-20160816;
        b=SsuQTp2U2aEBMyUoJMPdPis5DJZP5u7dSmZeKS9PTx2ryXX20lhdZ0xvu6EsJ5d3r0
         f+LKyB/ftF05hPCASb6xxY2Fcv9JlIJeRanf0Z5E6CM4fk8x6+xdvpNmjb8XEvCT7Es5
         y16b80xxT4dorfFrap+TlneXzH3AbZTyIRjfJjgk6/nYI4RsiV6pt/Hqgv3P/7T2PzSi
         jantCZTSypbn002+m1hmGeYp4uKFit5SqBPCdLKFAeyMDxScKVkyI+DORNd6HaCozFbY
         m8R9SBXo5Jm84Bp/XnTuDysquyapm2W5e3BLm0Hp9SvKVRWjD4+lsrqXYOVCZH2/nm4f
         PkAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0QukRrqdVEOHFDDWrLSyBECuZjmX2ZN9Bq0kPvHrybM=;
        b=kidxLJRntWZY55lHJdbKa7dRWytafrq4j2m3SsGW1Q/03cj9mNGwllswq0+b9nAGkD
         LYGLNzyWLVxqIOZDKVUrgZ/cub8bk9sj3f3rs/IMiEl/g4odG/euMO5Tn+imdkXZbX4K
         3xZ+TTTqG3DJC+FjFh0+dTo9eG1lzYWBuvS51273Be8FzCT/BMRU+fp9poMhw+wQi9oW
         5I/1VzfF401lP9nL7W611+omEj4Rk4XCWFN6OiUtjTSUdd03HljoW/AMfr8fy02HRDiT
         TpqgKYQgruBDvUF00JgGlzdeBz2MDbdMrHKPZ20SL3eUsJDBHXuPReV2s9U786EoF0ED
         EEYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U1I2jK48;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id j8si381741plk.3.2019.03.12.02.35.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 02:35:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U1I2jK48;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id d25so1390225pfn.8
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 02:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0QukRrqdVEOHFDDWrLSyBECuZjmX2ZN9Bq0kPvHrybM=;
        b=U1I2jK48eUUb7imoHma5gRjWhBBfIHJkq4236NLdDyTHxWLqB2pkuvsnUUEeNBvAMy
         eRNZk8ZwghflbweyE9+Zg6QSqwkPpCzIj8CaQmPDdxjKDaTLJU8ipFwEKaKE2mhcqRrg
         /ojF9iAfIwlkqPHiy67g4pBHhn8QdM8lscSI/3/+PUw5zYwx4+g6LG0CaBGYI/m/PL5q
         AyOfxshxh0KR+4cBLr3SCul7z8IfeMU09PpWfRjllWS7hsSn3njqjQbLF0FN1bOE7hmp
         1lDL495sCV/VNOmzctZrko1gdPBihdUSpW2yg/fxsb+uCOXKz3KIlmrGApHqjHLgygYQ
         kDWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0QukRrqdVEOHFDDWrLSyBECuZjmX2ZN9Bq0kPvHrybM=;
        b=Az382Vg3ffKPz2YbznG4m88314TGEd6oTP1lT1j4qg5nVTlrd6/5RnIUy4Q74qhuPx
         9iJJS5peeIZvQD1ojAeBONh0pYELoO0tLIx2cpJP6wTozl9Ho4jjr8yd+qF6IQT1Aj1x
         Dhiiw6i9R0MkKtf7bDtGVOW1Yhv0H8OAlZhcwMxlciGTPM7/qyMszz6Weh5HPCpAVMq8
         GQpoqh4e1fdbs7hZZY22Jupli0zy/X1nX4zAOSb1++7Xcxq/jMACBGUJ7vXeoV6ozO5H
         vXbUVKtIcVsXMxcRFZxDXFovCkVHXrL/oAw4pjZlBa1mPc+kYED0KfFe+Ru+E2CXXlDx
         TGdQ==
X-Gm-Message-State: APjAAAXtFXOpgKaWb34xYt9/5fu52ZwxkkP8dL2pqi4vr2Eigc1MsP+j
	UOs24FncH/A6mEub2UYvJ+8=
X-Received: by 2002:a17:902:968a:: with SMTP id n10mr39196348plp.283.1552383317935;
        Tue, 12 Mar 2019 02:35:17 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id a24sm11084822pfo.160.2019.03.12.02.35.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 02:35:17 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH] Staging: netlogic: Remove unnecessary 'out of memory' message
Date: Tue, 12 Mar 2019 02:35:11 -0700
Message-Id: <20190312093511.3789-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Remove unnecessary 'out of memory' message to silence checkpatch.pl
warning:
WARNING: Possible unnecessary 'out of memory' message

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 8554fcf4321b..10f14a5cf490 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -185,10 +185,8 @@ static int xlr_net_fill_rx_ring(struct net_device *ndev)
 
 	for (i = 0; i < MAX_FRIN_SPILL / 4; i++) {
 		skb_data = xlr_alloc_skb();
-		if (!skb_data) {
-			netdev_err(ndev, "SKB allocation failed\n");
+		if (!skb_data)
 			return -ENOMEM;
-		}
 		send_to_rfr_fifo(priv, skb_data);
 	}
 	netdev_info(ndev, "Rx ring setup done\n");
-- 
2.11.0


