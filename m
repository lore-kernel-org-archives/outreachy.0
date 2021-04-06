X-GM-THRID: 6947995427572547584
X-Received: by 2002:a05:6512:2182:: with SMTP id b2mr2342955lft.284.1617709429693;
        Tue, 06 Apr 2021 04:43:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58f8:: with SMTP id v24ls102740lfo.2.gmail; Tue, 06 Apr
 2021 04:43:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyKfUEhXyhz8saQEEhBzYzifSzwM5+iZxwDazVc1xKUFKDJsfQEG4YIOEe6mJeVhueS7u2Y
X-Received: by 2002:ac2:5bcb:: with SMTP id u11mr19650376lfn.603.1617709428051;
        Tue, 06 Apr 2021 04:43:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617709428; cv=none;
        d=google.com; s=arc-20160816;
        b=hTYkjes+kX1hJBrWFC/ZnF2f68fLbKl1SXTikmC+mv7f2CLTAG/ehfrcm16AM2tiS2
         bJZtpfIo5hDugimNp+hCzTdthoA5+S0pp1P7gKaUaBSvFUAJ055QilU90w0xizS78EME
         qviTol5OQoPLi+CCYzpazQmf50nYKsaw7rij/+Iuu5xboxkdM+KsNZyKs7LZsMi9RQ0v
         fKOESvLnQwd+SKDdkANTGmdEykXpwR/tU9S0XpwPxMBASdJCgOv7H0CraoMmvxwbbj78
         F1/YR1SEeUnjPBv+0nna5iO+ozIXTKZqYdjqg6fGXek2UiSYJ3pIO7bKhzLmk+Jy57VG
         LK3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3IjasWzqLdpd77pS1i7PqF29b9l9kltRxgeNazC6S+A=;
        b=uet1ziul7ovrYQhUDmvluqu0A+vizFc3bzzF8MLzIDzlaPpBlCIiyVYIRwn4TqRQVo
         4d2UlGVE809EMV2JQSwkFS067eabjGzNw/JgZ6n5eXNQJEnAzUT36F2QIyr/XG5wBAFc
         J65b4Ss7o18JmO2ZWX/JGY4CveyIhXJzH28ruukc+B23hyQ3hWvtqXZpzlhdXZCnsxQ3
         c4Ny1IqrpEqIB8TRjQwHh8itbfL7HiKBuquQ8/3kMrmcqVrHJ3LSVhMSYbYE8lQsJrFS
         UDTEVdEqOs2lqgP5BlAWTK/KDduXmpCkS1bEoYwtMXe2jiOCwHt86XaYN8x7xUgYRhwV
         rriQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YRQ2un+x;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id d32si1404764lfv.8.2021.04.06.04.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 04:43:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YRQ2un+x;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x232.google.com with SMTP id u4so16112741ljo.6
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 04:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3IjasWzqLdpd77pS1i7PqF29b9l9kltRxgeNazC6S+A=;
        b=YRQ2un+x1GRDNMpOfchUiLj6wKbHVcJWzYixrzYrHZe5ImoCpFt0V9+4E4+9yMPAa9
         YhGdeofhupjNhFZamryrPcV+7PNYst5gRopw/pGfL91wUOYuCqgCBPw6YznU3MGJ6z5O
         f6IqSg9fw02o2ah6xcK3MJZoY8+ZNddxuED2yQkLCEfwoofHf1TxLaduVd5G5wYUNSNc
         tPz4BufMK2YkMyKZMHTvashRSAwfggcKqj4BBwEr6b4pfO6Ou4kHqQuhhw7yPvPoOWX1
         39YGH2lsKvmfgO9NgF46KWBhCv6jPTUKJe4cr+QXVUK1MB2ZPIRpU1+Wrtz7Nl1pEJUB
         jyGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3IjasWzqLdpd77pS1i7PqF29b9l9kltRxgeNazC6S+A=;
        b=be+EfOQ5qUUQOQi2omcfVT53I+VuFgMOGSse6NfRxpS/qJrBsEv03DjyWLlYcn3ZKn
         jigWP+U9F6D7vAyYw+80SMxqj5yBEaZ3jU8Sv9uDCduV+yx/y9l8v7Aa/pYjfdpeXCie
         /1fscQ/kWofa91FLeK42gNW1u1eo9bWGTnzu+KQJaXag2UT/GIIeGqSGXbL6JE3ZxjFd
         rLrXKGuDVift9njlFO9jZpA+kuZsS9uCViqnFBcKI+4hUMACHP2wSUoKXZcr80hyaM/n
         xtMY/dN0uZadU6x361YssT0Y+A1WZn8NQY1uZ47L+S6VckLqDI83v7b7tR7K6jbOo6NT
         LdtQ==
X-Gm-Message-State: AOAM531rKz5NViPUaUmx/q9FIq2wPT3ev3aECoik3T58RS9WGp4C3qoe
	1cYZKRESQU4EbdEt1wrsDfjoBEmqv4BBcg==
X-Received: by 2002:a05:651c:29a:: with SMTP id b26mr18331006ljo.451.1617709427616;
        Tue, 06 Apr 2021 04:43:47 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id i30sm2132615lfj.206.2021.04.06.04.43.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:43:47 -0700 (PDT)
Date: Tue, 6 Apr 2021 17:43:46 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: rtl8712: Remove extra blank lines
Message-ID: <f61f6d330bc3fa53d4d420754d1d461b6cfcb2de.1617708653.git.zhansayabagdaulet@gmail.com>
References: <cover.1617708653.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617708653.git.zhansayabagdaulet@gmail.com>

Remove extra blank lines after an open brace to adhere to Linux kernel
coding style.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_io.h   | 1 -
 drivers/staging/rtl8712/rtl871x_mlme.h | 1 -
 drivers/staging/rtl8712/rtl871x_recv.h | 1 -
 drivers/staging/rtl8712/sta_info.h     | 1 -
 4 files changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.h b/drivers/staging/rtl8712/rtl871x_io.h
index c20dd5a6bbd1..c5b12f74ebf8 100644
--- a/drivers/staging/rtl8712/rtl871x_io.h
+++ b/drivers/staging/rtl8712/rtl871x_io.h
@@ -123,7 +123,6 @@ struct	intf_hdl {
 };
 
 struct reg_protocol_rd {
-
 #ifdef __LITTLE_ENDIAN
 	/* DW1 */
 	u32		NumOfTrans:4;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.h b/drivers/staging/rtl8712/rtl871x_mlme.h
index 46effb469fd4..d7d25f240111 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.h
+++ b/drivers/staging/rtl8712/rtl871x_mlme.h
@@ -77,7 +77,6 @@ struct sitesurvey_ctrl {
 };
 
 struct mlme_priv {
-
 	spinlock_t lock;
 	spinlock_t lock2;
 	sint	fw_state;	/*shall we protect this variable? */
diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index 4aa39f4f3b84..1c8298bde033 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -37,7 +37,6 @@ struct smooth_rssi_data {
 };
 
 struct rx_pkt_attrib {
-
 	u8	amsdu;
 	u8	order;
 	u8	qos;
diff --git a/drivers/staging/rtl8712/sta_info.h b/drivers/staging/rtl8712/sta_info.h
index d042d900f30c..9b7e5ffa380d 100644
--- a/drivers/staging/rtl8712/sta_info.h
+++ b/drivers/staging/rtl8712/sta_info.h
@@ -36,7 +36,6 @@ struct wlan_acl_pool {
 };
 
 struct	stainfo_stats {
-
 	uint	rx_pkts;
 	uint	rx_bytes;
 	u64	tx_pkts;
-- 
2.25.1


