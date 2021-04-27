X-GM-THRID: 6955860329873014784
X-Received: by 2002:a5d:628e:: with SMTP id k14mr30649230wru.150.1619543400270;
        Tue, 27 Apr 2021 10:10:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:11:: with SMTP id g17ls9802679wmc.3.gmail; Tue, 27
 Apr 2021 10:09:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyvN3j1+jxxwn3BOEymSVLOeXcZRLOk0aZGUBNMYgERnGfXZhxXaP7vbge3aM4UUvYYDD3y
X-Received: by 2002:a05:600c:4f96:: with SMTP id n22mr5436706wmq.117.1619543398996;
        Tue, 27 Apr 2021 10:09:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619543398; cv=none;
        d=google.com; s=arc-20160816;
        b=t8Gkb/6r1r7Cs+mwnDcSdpliecS6P3KAStFNYqvu6qPH4i5u4VgEpVsTgWyGtPjNGT
         aCVctlNCWtJCmDA5Rb3UmXsw28b9Rhwfb1BRwC9QKeNV0e7RTTIgHGkCCDAyD8vD2Wwm
         M7N9afOBErlVY1FmHTLKBr+1IN82VWmOBhe4DMDGksIfXQaRCUz4UicW8XJG+fCpiktu
         CjqTvxPj58PiW3Gx9XS9FypIC/1qm2sHUl06b+VKXoAC3CMiTZ4S5NpSPlAWIbLqR87v
         wHcqVZ2gdLLFoeEaOlxjtryjs7bbw8NP1oryFd9QagViLzn+aeCssdAB19xsRUMn73Uk
         Mu8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=uxzDmjx7asR+MB5lYRtLx4BX5j/sKEznXBt9Xuq3jkg=;
        b=JfT5MIJYl1ICVBM1BFbDbUbpw4rIUfQT76Mw5s3khWG0D1By0e3WhsfMtqTSGdHByw
         hwhlJiBgCc0mLp2K44VgNzWgDzkF9i6e0FaRP0KujZM9sEXCeAtGVPiF4lyGuHeydNV5
         Ldk3b5/8C2qnESJizcgYE8GTfovfz1mfv0j2yyWT90MOT+67e2RPYgtBopGLXdpdCPGO
         CPn8Uyu9jICl1CdYkbt2NdrKts6McQAo9nZft2yZCrTpNuiGDunKQt3bPXdtV1BiYgLq
         Vb+Aac/jKdC7V/kfSucBywdW7YBxfYSmRCpO5l82KKYPHp4hYwx9B3FoAh/JK9PVpmZj
         s1WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=esfuHmfS;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id q15si282290wme.1.2021.04.27.10.09.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 10:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=esfuHmfS;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42b.google.com with SMTP id h4so51198502wrt.12
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 10:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uxzDmjx7asR+MB5lYRtLx4BX5j/sKEznXBt9Xuq3jkg=;
        b=esfuHmfSmMJQOUEAFwliaDHrSkwskoAdQCqhhUGQRhD/cTM0YuKZdx4T9gysAt1q2s
         wKgAshvfm617y5fHIUwalSvBe928cwlcTsHxP/Q1/1dIhJBLxpehCVElchclVdVp/a38
         4Fnb03+fYuCSFIMBATgjaD5/2Tfy+lsyEW1ACkj062sFRpH6SioXZ4MO5nuOQMgsO6L1
         hrc9L/FX1pX/21lJMpJGXovyE7fzBnTHKdsFP7meuBYsEYkbHpjNLVJjhd3OE63Iu0iU
         xAEEKZNjClyYxh9FJBkkQTitY85qdU5JdAwPWQcnTve1UK1XVb6SwKNKBYqAf8b9sjlh
         Bm9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uxzDmjx7asR+MB5lYRtLx4BX5j/sKEznXBt9Xuq3jkg=;
        b=K7IQVbYD6FArLTY2WTWQsHNOerAnF+eRcqT+sYxEHULoLQZiDJ32P98cIlidkkS3NX
         Toji15aIXa8aRAyyhbkTrUnqvdShHQLamilkxjpRA7FCe6h/f6Ypj9kQbw+eV8BanzAT
         WLtxsY9MIvF6Ka1vmnqwOaMkpkG5Cu4xFlzZfL/qC2o2mBT9PBTZTrLx4mba9YYKEcLW
         AMXvbcbtal8UR0t7wSzLxWVFApxLWG4UBPC340+QmNPL65uZLh0h7qenOtadhVTlHpBD
         acEY9WLmEZNI/EiB48uW9oUUmi8uWUEQpDD9hraWZMR/NH04+IIGMy9GLHHJPcvpb49v
         DHWg==
X-Gm-Message-State: AOAM533PX+O60+RpmEv0Toil7K4TYGxVzANkjwVrYakiNBIrNxerFLBb
	EfuJk8jsPP1TCSSIXVICKOY=
X-Received: by 2002:adf:9042:: with SMTP id h60mr30369532wrh.362.1619543398761;
        Tue, 27 Apr 2021 10:09:58 -0700 (PDT)
Return-Path: <tawahpeggy98@gmail.com>
Received: from peggy-Lenovo-V130-15IKB ([154.72.153.193])
        by smtp.gmail.com with ESMTPSA id p10sm4902950wre.84.2021.04.27.10.09.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 27 Apr 2021 10:09:58 -0700 (PDT)
Date: Tue, 27 Apr 2021 13:09:52 -0400
From: Tawah Peggy <tawahpeggy98@gmail.com>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging:greybus: Add () around gcam macro.
Message-ID: <20210427170945.GA23366@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

checkpatch.pl suggested to add parenthesis around the gcam macro
variable.

Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>

---
changes in v2:
  - Add parenthesis around other gcam macro in the same paragraph and
    also remove previous parenthesis since it was added in the wrong
    place

 drivers/staging/greybus/camera.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index cdbb42cd413b..324a26430f71 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
 
 #define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
 #define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
-#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
+#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
 
 static int gb_camera_operation_sync_flags(struct gb_connection *connection,
 					  int type, unsigned int flags,
-- 
2.17.1


