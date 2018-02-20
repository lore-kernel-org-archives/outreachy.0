X-GM-THRID: 6524431890733072384
X-Received: by 10.46.29.133 with SMTP id w5mr1024907lje.26.1519087688402;
        Mon, 19 Feb 2018 16:48:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.190.21 with SMTP id o21ls938302lff.8.gmail; Mon, 19 Feb
 2018 16:48:06 -0800 (PST)
X-Google-Smtp-Source: AH8x2264fd+6KYEQ5gKUQup9XCP4jcw9UjaB6q7b++CsgRp6UWykHi0EgbOoCW3pve+oLhEFN5IP
X-Received: by 10.25.217.81 with SMTP id q78mr310211lfg.23.1519087686961;
        Mon, 19 Feb 2018 16:48:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519087686; cv=none;
        d=google.com; s=arc-20160816;
        b=BpeWkctj5Eb28zlTggWdzQrldYhoH3agAqicaWgYUHBbExk3oXeR+vdz+XsxY3koaB
         lm2QlYUiqt9XmcrMbOAPnrxCsOpmPssUo2xr5A/oqrxh4VqYPeX84G8y15OGdXMF+MCN
         fMn4HsKdgIdkp44ZJIQxsYr3vDaiE37n4DHne90Ua7n486v+MyHlfqWNAGwLNVAjrE1m
         K1T/OpCkq1f+dKA0YZszIHUi4PgfB2Z/9RU9D0I84ALzqDY3WHm/Uk8trgiTYBwimGi6
         jQOgeWr/yRZdGEDa4SlnEtpS+2xv67ViYbysN3lY1vh70yTX9jK12TcJX4A24rukWhYi
         esgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=CpfSMZY2lM20M+fvVQRXHgsz3w+KH7rzvAoxpI6xSG8=;
        b=KyJUk4jj1kXPgj0ZWcjfc3zMVvrxqv8tXpNHX+HIKpFXZT1sADaNvkv70AvCNaEIvh
         Rb5D0PIgDmMH4cUKZ3kfANWWs676O8N3/kPpGLXYI51cA09dqqWE1ieElip9QA6QBcyq
         FSPeeCSi57Gpf1o3UWmaYOZNKsCbGgE+mpqXrJnDLNyayTqA+qFBqKo1AS8UyFxhNS+p
         quKJDZGxT+b6ZBoB/VzKk0By+P/kIvUuYEOQsIdO5H0EPCaMZgYYKWQNG8jdzmwn6L3b
         N6PSlMBcPbM8WTPFkR71aMml77l7IMl23gtRgr3xJooukqyCh6IWApV1sOe7fBc9trtS
         oeCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tP5nT8fG;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id w29si646235lfc.5.2018.02.19.16.48.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 16:48:06 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tP5nT8fG;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id z12so5249697wrg.4
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 16:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CpfSMZY2lM20M+fvVQRXHgsz3w+KH7rzvAoxpI6xSG8=;
        b=tP5nT8fGPIuvK26lC0/B/Fa2V1Ir5VrDoOiQVXJ1L1XjBxsSr5dzyWvUr0+GzTW1Ts
         Y7JPQiWJbAKotCBOfQkEvZo/XvFniXr6XAVJDBEjrrCFGf2hyp8941Dll4N/K0Sc/fMh
         8yfWJMahVxtA69fNzbkIF+0yh4EGepqkXjr6mGA6gGWI8ZCVXeCHgSDSApqoP8Xjq1cr
         oIXPTjPwqXB7lbAoYz7UljPSgzuVhGonMmrUkLR3+EoaSFsIs4JndQP23gDc5iUZugJl
         Ik1CQ+otSzT5OggSf0qKV2NumGeBEJsUyhH93/YOrAFLpDUwS3F0Nx998fjpgPv3wht1
         U//w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CpfSMZY2lM20M+fvVQRXHgsz3w+KH7rzvAoxpI6xSG8=;
        b=r8FOa8F/Tuz8qmmO4kEdAU3Rf9/pnQT2khT67CpvldSj12+AYy1XPba2E2dPBrYBCV
         hMIcNgUta6MMpNfRys0Gz1qOjooWpClLYcbLvu7pTW50SNasFcLyn9NJHsA/m92ldroS
         drNqixv0+i/h7TL+cBCFfSfHl6Cs1sDbCyTTXVYlYqD1kpTSAr8HtbzUgYZs7n50cDkx
         S9qyTP6oaWtj/bnIdBkoZMSag/z1EkMZu3bVBOKZYLpNmd2WyRvaFaPNXbjK5jr4DgGu
         EM302Q175+FsyhoTD2QZHZVQd8v09o9YWCoemFmPFNMmCED0/BOb7uzi+NuHjdgnrB07
         099w==
X-Gm-Message-State: APf1xPBdfMaw5LkOP/0dl3kX1EqYgMNT9/qCD8jdG5t0nrGeD1ozHTDs
	kAxbxLPhPowPPQqckR7X6Derr1NT/hA=
X-Received: by 10.223.153.215 with SMTP id y81mr14511629wrb.144.1519087686247;
        Mon, 19 Feb 2018 16:48:06 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id d27sm33336876wrd.60.2018.02.19.16.48.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Feb 2018 16:48:05 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH 2/2] staging: pi433: Split subtraction across 2 lines
Date: Tue, 20 Feb 2018 01:47:26 +0100
Message-Id: <20180220004726.9662-3-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180220004726.9662-1-chenyensu0@gmail.com>
References: <20180220004726.9662-1-chenyensu0@gmail.com>

Split a subtraction across 2 lines in order to make these lines
no longer than 80 columns. Problem found with checkpatch.

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 4a8e633a0a1d..e8ddc924bb04 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -528,7 +528,8 @@ pi433_receive(void *data)
 
 		/* need to drop bytes or acquire? */
 		if (dev->rx_bytes_to_drop > dev->rx_bytes_dropped)
-			bytes_to_read = dev->rx_bytes_to_drop - dev->rx_bytes_dropped;
+			bytes_to_read = dev->rx_bytes_to_drop -
+					dev->rx_bytes_dropped;
 		else
 			bytes_to_read = bytes_total - dev->rx_position;
 
-- 
2.14.3


