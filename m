X-GM-THRID: 6948900055812145152
X-Received: by 2002:a65:4382:: with SMTP id m2mr32740687pgp.354.1618331736043;
        Tue, 13 Apr 2021 09:35:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:da91:: with SMTP id j17ls9875057plx.1.gmail; Tue, 13
 Apr 2021 09:35:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwJ7NHKUmtY6tp39Y/6VwPONfC/VvGd+bVJH9+dX3VjCqEtzTBTpp3GaR1lKdszdZXTO2mJ
X-Received: by 2002:a17:90b:515:: with SMTP id r21mr929872pjz.42.1618331734881;
        Tue, 13 Apr 2021 09:35:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618331734; cv=none;
        d=google.com; s=arc-20160816;
        b=h03yaHu8hCj17oikmOVWUzYl3fZ0xTws1sJUBfy2M+ILr0+eynZqEb+iHKvdaQ1i9s
         p87G8BGWzhxzXU3nE2LI0T6O8pmfSoW+Pe5PAWu7ZWxD/U2wJACHIvK7rg9SoEipNgQp
         d0yOX7SzWrnDEZ6YqoAt4Sv/GsdqMN6Q/1kuzwFlsGnRZPa1jJomJkzM8pWnHYpLXTWa
         nok4ez8CCa5rckbWu1JcOGNHT85oXtLYtY9hloquMb17jl3v+hQnpUKPecB1OgfKLIe0
         C0p7YPEwxF0Zm0XI+HBEBLmMEH45wdSIx/bzMC9R8TqayjCujFU3LOyQShn666+owrjQ
         7noA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=dd20NqXtrojKGrBJQbQ2lRtgUmGNTiUlPe1joyxcopU=;
        b=uZEQX49NbbIohxPqHjifuzvcMYCiEMqW5zY7A5/vP2K6znXc4x88Qoq2qehOG5iEzx
         XxRwtv1tj+/gUx95PHeYLc4uoGIobwEtX1UcJ0WcKMACZUYiQqiFvg0AQkY5Flx0SoqR
         AKgKeCAq784WNkaDpgPLxigXKQz4ejsxGEVZQx8OHy94ku0Fymc1TcVgXu4VfoVnJZKE
         40h61OI+fMSCEqI5X+828brEMbF87yuE5Q/VXHjFhx0cUG81V2b3bPHn5E4bs/scoUif
         sAH2aGMtyknw8eFJQkY8g8FIU7fxjRbXCEkdvyz5CDfDOQZ6GaXeClQAQ3YAvr7Z3d02
         A5Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IHFs8FlI;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id 131si903580pfa.2.2021.04.13.09.35.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 09:35:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IHFs8FlI;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id n38so11793439pfv.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 09:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=dd20NqXtrojKGrBJQbQ2lRtgUmGNTiUlPe1joyxcopU=;
        b=IHFs8FlI+E2aYsqYZDA/xjPPjwlgQOduLuWNDf2cgPNWnj3Oy9WLA9fUOhEbATI+PE
         Z4s5GySRJjI8+3wsFsACFI+AcdnjHoxdHuJGFguBUBNb4S/0cVWD4oEVq2WkxB8bNalr
         CxQVY/XPBRxFMXyGtcY0lxV0PiKL62F0c/OCpLIsCbrjA+p55wRTDcwGCOMaebnjSuBr
         tz9qcRrCtQT/Fbau2ZEWyqeyBgfSOSs0B+C3L6Qr3TXfkOhkZ/XGh6CAE7y7k86sj8ah
         Dk8Bv4iuEtHja1ussXG+SeSQSxdHCI2SQcq3izqWyGjp8CU3bwRdheVeHOWT0dEfsnzm
         csbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=dd20NqXtrojKGrBJQbQ2lRtgUmGNTiUlPe1joyxcopU=;
        b=dgmTmEqyY2MKENjEKeGSpNGV26xpDZ8+6JkanOZ8ghH/V5DGe9RUeu6NvobAt62OAZ
         wB3HR1NKSV/57/ea+fYUCuNSmIE2zBRPn14RbFmLqolvc5uECSVe4qqipwT9RFif9839
         sn2A22+xp1X9t9zOrLYTGRRh5yD1gDjLtVWnyZMXINvaTbdjlcTnBDsMvl0s9LQKQqDx
         avNaliscIDAuc+tk0ALh7drrv3w0tzlCqO7AfGMlJr1CaDWBLWIy0Qo0Bn/f4ox9rfAm
         PpKEiePkJSazOmQrUprCPtofDxogpU8JsI4cc1cdpmU1sHdkdpbK3oGExE2AoTDy2B1U
         2pRA==
X-Gm-Message-State: AOAM532RmL95XLXjvraHr0YAqNLPT723NtySsYdvkiSdkMFlky0IWDnZ
	1Et/vJm6zHtzT/D3rPyt3YU=
X-Received: by 2002:a62:824c:0:b029:21b:66f5:c813 with SMTP id w73-20020a62824c0000b029021b66f5c813mr29926041pfd.32.1618331734483;
        Tue, 13 Apr 2021 09:35:34 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id v11sm14904582pgg.68.2021.04.13.09.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 09:35:34 -0700 (PDT)
Date: Tue, 13 Apr 2021 22:05:26 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v3] staging: media: zoran: reduce length of a line
Message-ID: <YHXITpUbYOb2lO/u@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reduced length of a line which exceed the 100 columns limit by splitting
the line into two statements and commenting it with '*' to meet linux
kernel coding style for long(multi-line) comments.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v2:- Rebased this patch and made changes against mainline
code.
Changes from v1:- Made style changes according to linux kernel coding style
for long comments.

 drivers/staging/media/zoran/zr36060.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
index 4f9eb9ff2c42..27eec3446592 100644
--- a/drivers/staging/media/zoran/zr36060.c
+++ b/drivers/staging/media/zoran/zr36060.c
@@ -249,7 +249,11 @@ static const char zr36060_ta[8] = { 0, 1, 1, 0, 0, 0, 0, 0 };	//table idx's AC
 static const char zr36060_decimation_h[8] = { 2, 1, 1, 0, 0, 0, 0, 0 };
 static const char zr36060_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
 
-/* SOF (start of frame) segment depends on width, height and sampling ratio of each color component */
+/*
+ * SOF (start of frame) segment depends on width,
+ * height and sampling ratio of each color component
+ */
+
 static int zr36060_set_sof(struct zr36060 *ptr)
 {
 	char sof_data[34];	// max. size of register set
-- 
2.30.2


