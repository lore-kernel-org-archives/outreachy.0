X-GM-THRID: 6947867046648479744
X-Received: by 2002:a17:902:904b:b029:e5:5cc5:877d with SMTP id w11-20020a170902904bb02900e55cc5877dmr27202204plz.50.1617676362168;
        Mon, 05 Apr 2021 19:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:1393:: with SMTP id t19ls7032152pfg.3.gmail; Mon,
 05 Apr 2021 19:32:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxfTYQXI9aWCZgVHWdjdKCXpgRIOlRFhO5B4amO5es0V8szjcIZe+HI68xDnAPuDtrTegw2
X-Received: by 2002:a63:40c1:: with SMTP id n184mr24788730pga.55.1617676361115;
        Mon, 05 Apr 2021 19:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617676361; cv=none;
        d=google.com; s=arc-20160816;
        b=ZTeSIlVaOQ8ASajiK73N+YOxVcFqCW2zzD8JFCGGmzj5r+3MwCxOQqvih4gn9CD/lv
         UfyEqcTtc8anHXp83M1tbSFcl037uX2H4E3GeMRXnslY37GSVR1hrLOqtjuwqTSj3t2D
         fJ+4mmyv17KCEj47SBzohEUiZAKMiWZXaMkRvtxtAAiUSu8vXiBC1yLK0jvwJEU5+8wy
         RBhYM1B0vlDOrLgqEW09caaFIwQNw6/mvdhlSR1azNxKrhwqWpC4fbAL1Vz8QQp1QSGT
         kftgka9yyjRgTBjJt896rvmBBvjEMR43AZIl9rCb1WhtjwgqG/Z8KJ6tj4AOQmt6ioJ0
         VEKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=h8ugM46gCL76gBJzMhTW9CmhyaTuMvOLXXK4q2ofL4c=;
        b=Ea4kN0LGq5ib+F8WdPO/365woTpKoGnuBr+WL1OWTXqX2cNiWAmP0ylWJO8tTCMt2S
         LLX0BlcVJgqhVRE9UvI+xxCAQIRaS0q+LY67JmYhKyCWr+lgwGw68JBqBo2YJY/eJAWw
         XZQy+7RlZlpHS8ihWYFmfyYgsyH8Dmne7/DTPHlK5pIiFrhKRDydvNFZG9QhB8yXz6Uz
         wKm0aee39e027VQF5aa3fhtE/oHwgCRcFz6Y81T2tO8QL+XN5Kz1et4NxDpp8ZnpVTb+
         sXScpdXNxNvptYOlg4h58OZwLQKJQX1a+uuHIbGg7GQdd3SZ+za3x8+Nr8zTRjBwmyLE
         n36A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jhLAfUpX;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id g23si2127405pfu.3.2021.04.05.19.32.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 19:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jhLAfUpX;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id mj7-20020a17090b3687b029014d162a65b6so2911393pjb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 19:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=h8ugM46gCL76gBJzMhTW9CmhyaTuMvOLXXK4q2ofL4c=;
        b=jhLAfUpXkJozGAGaEGwbsNGpRtkiFeKIsZqaOQ1Szd5jb303YibVkasQ67Uag4uDa2
         3OCc/qfp+yHBerCudp+fhlvYhoUtShf8mQ3xKZA8mt+1blFwsChHjXFpvaXo8dt8steU
         dS1HTfZ2lMgDrPz+2xnJF8mHen5EW1R2W/smX8G3rEbMQ7Nudnae8d9iEJ8rSsO6sOIM
         sBU6LuNJd/n5jIIsvy2HFQrq6TVqJrUxyKhy759nOO+Gfr0Byd+ohaA/KrYB9ps8Gl1w
         nousXKJosPQs70z6cxYacA8aJ5Jrlg/JeKVdMdei+vc6IcSoZ9O3+xf6LqS/Lphepj4Y
         IQjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=h8ugM46gCL76gBJzMhTW9CmhyaTuMvOLXXK4q2ofL4c=;
        b=WAUILnUJoOH0GC0tEAuRKpgGriI9SNnh/la54Hz0r4qnuqwyE1Q+FfSHeKnoamb15z
         8Oz4j5Y8mDUo/2wtrST6mEoheA422mGb6Vlew9aoBN8wovPjrDfCKisD5ESf7k82WowA
         Bgo3Y3CRONMxaQObTXSvQ2iblEyRFt1zQCz3oxGQRLFXv6JWq7cuEDSREh7Diw16Y8WV
         w3YORJal/JcU8JtoHGcgGgtgc8AO+fHXLHmsa9ve9XFkSsEMfsN2qOt6RsCtQRunhoer
         14ep1C8NvaIpljRk39sCORZxpU0wTfAEPwkXagOPqiC0pZsbL4KGOJcBM45kdVtFuGj4
         7NMQ==
X-Gm-Message-State: AOAM530ncWI4juSjbez33mbDAL7tJqD5h4bT2bXEkP9zeofYItnRdB37
	VBNC7MKQVhoERS2dzxdLXj8=
X-Received: by 2002:a17:90a:5d10:: with SMTP id s16mr2069094pji.204.1617676360898;
        Mon, 05 Apr 2021 19:32:40 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id e7sm281196pfv.107.2021.04.05.19.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 19:32:40 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH 1/4] staging: rtl8712: add period within a comment
Date: Mon,  5 Apr 2021 19:32:17 -0700
Message-Id: <f9f48ac6e93e814c51a7ed370d0b2988d2e3a602.1617674639.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
References: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
References: <cover.1617674639.git.deborahbrouwer3563@gmail.com>

Add a period to separate repeated words in a comment. The period preserves
the meaning of the comment while also stopping the checkpatch warning:
WARNING: Possible repeated word: 'fw'.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index c247f92207f5..d8a366338a2b 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -507,7 +507,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 
 		/*offset 12*/
 		/* f/w will increase the seqnum by itself, driver pass the
-		 * correct priority to fw
+		 * correct priority to fw.
 		 * fw will check the correct priority for increasing the
 		 * seqnum per tid. about usb using 4-endpoint, qsel points out
 		 * the correct mapping between AC&Endpoint,
@@ -560,7 +560,7 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
 			ptxdesc->txdw2 |= cpu_to_le32(BMC);
 		/* offset 12 */
 		/* f/w will increase the seqnum by itself, driver pass the
-		 * correct priority to fw
+		 * correct priority to fw.
 		 * fw will check the correct priority for increasing the seqnum
 		 * per tid. about usb using 4-endpoint, qsel points out the
 		 * correct mapping between AC&Endpoint,
-- 
2.17.1


