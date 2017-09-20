X-GM-THRID: 6467836648401928192
X-Received: by 10.223.168.41 with SMTP id l38mr331353wrc.24.1505910574282;
        Wed, 20 Sep 2017 05:29:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.27 with SMTP id k27ls27840wre.0.gmail; Wed, 20 Sep
 2017 05:29:33 -0700 (PDT)
X-Received: by 10.28.7.196 with SMTP id 187mr398308wmh.7.1505910573693;
        Wed, 20 Sep 2017 05:29:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505910573; cv=none;
        d=google.com; s=arc-20160816;
        b=oosLTvuwcmy2ZwWD2k+2DTj/oObaPIPowTx4Y5HKsXo57FJtZ+yfvRhWpffOx2dnZ2
         GZKmtpBiWtOjoATXAber2FV7caChTo/m1VAvcLELh2FtDVy2xPg9lzd5UQQhR2HifJrw
         YyRjyKgHK/dgeGjhJmXaWEEajyGLuGukn2wgEj0hOHCsetVW8GBkDp5wTe6Uq9xQAVfi
         4owMv7Fy1bWE5dnuQQII9iYI3ohsF39z256F3d+ym0IvNUQucNFppYKjsylotgtDiPXD
         yg5JeGmjaPxY9ERO2ztBBBq+ByD/Y3GooIPRhHOOLIESz3/M/czT/QZFTV7rel/8g0Bg
         6k1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=6WB7yX4s5TN6DlKvXhu94NW9nv010EXR2Ka4ONFxF6o=;
        b=CrbuhTK13NWiGdz6QxbfTW9VmF/DMRvA2l5wc7D02b1uvHcDX0Te8yScJHEWj8w/ze
         aVjLVcEjdCtKEZQAxFm27PTyz6C4uA73hTqs4zpFw3u+Fxm2FEfrx/djVRZ0l/GocPDO
         aerD+PNA6dm61IPqL11vytUwqltn5/3Uhao0VSruVvqdc98y6EhThJEKRkiaB/QtqhF7
         0h2DDOe+WiaYsvkCxvbIw73kvtJOcfCS8FfVr6EZpFHmIBV8t08X86MOcTCzXysJ1P/p
         BTJ+2gnMwvdlvdZ28buE0+CS4r7cNhh0ixD5UMDkVqX5rZYRF+c/8ZXfX5sCgTaAUyn4
         KyFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AU5LwhDz;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id q145si166569wme.4.2017.09.20.05.29.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 05:29:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AU5LwhDz;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id r136so2297516wmf.3
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 05:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=6WB7yX4s5TN6DlKvXhu94NW9nv010EXR2Ka4ONFxF6o=;
        b=AU5LwhDzLfDafEmB5+4nynwbLHYjNaeLjYdVjnWm0d1Er+kShR1bvCbxphvGE4vFvD
         dHk/32bJsb9KDOSnakqtEbJtcVNLR2ojINDZEhMib2xfmnnQrQBko5HW4XEJiAG5HDK3
         afHfy2bzLbHAFIeaOJzN3t4loPCtuIK+3nU5cr8IrRYm8mGsbSxpabd7rSEYEU8cdJFB
         IQPCfETC7W/5EdP7d7J2/9H05k+CtV102AQ3d4wkVj8DrWMX0mKN5Y04QMdtyJLUjCsS
         g6bLIsiigVzwwf9qcqD/Dl7aXfclO1M+BGZLnIV6HjwVOOU7md/OyvM47dRvkwMejTFY
         4shQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=6WB7yX4s5TN6DlKvXhu94NW9nv010EXR2Ka4ONFxF6o=;
        b=eruJb5R/uFBORCGTTLKBS65nsEQLXRu9LLZvwrKcY8b9+nWhD5T6MKyScWdpg6AsI1
         xn63vKRYUugvgDHhCQEZ1aLi70dFIWLZ60SBgdVL7/t8ttw6TWyw1HKq0E86Ha4t4LQ2
         /heo8C6wXDZcFmCJQ9BrpCQqIyhGp27lCMzKNC5fP/v+d+8BkUqZecUs51SbrD5qHMkl
         +UCzu2iZsb55KoTSGaZgHAmWkeMi7dMKODjOr+4wm5hIWbvuHXpLtT1WMPOe5rOhEqTx
         BsI0//miTeVnwb2V10dcqPFsV1ngwCPh4l5aaLofIbGy/t5PBqFyti1HfmWfdbiQoP3/
         xGqg==
X-Gm-Message-State: AHPjjUgT5/BJcW3RZJzNLezM3pgKN1x1ufdIK7oiRGcqi61+ug4KAHjO
	tEn3dhOgMCFO2JJ0xENQmbyVw1iw
X-Google-Smtp-Source: AOwi7QAC52drqOD1jPXkUnyq5nmBCwJd8xVmH/AGHDw1rY2bTEBTc27mieHu3ZDP2oTBxc7aVvp0xw==
X-Received: by 10.28.142.147 with SMTP id q141mr3777713wmd.155.1505910573497;
        Wed, 20 Sep 2017 05:29:33 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id y5sm1578895wmg.6.2017.09.20.05.29.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 05:29:32 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/4] Staging: media: atomisp: pci: Move open brace '{' on the next line
Date: Wed, 20 Sep 2017 05:28:48 -0700
Message-Id: <1f896f4551828c7275dc20d41a20f4241b133e2d.1505909512.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505909511.git.georgiana.chelu93@gmail.com>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1505909511.git.georgiana.chelu93@gmail.com>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>

Fix the following issue found by checkpatch.pl:
ERROR: open brace '{' following function definitions go on the next line

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
index 5551934..520d59b 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
@@ -4474,7 +4474,8 @@ int atomisp_css_load_acc_binary(struct atomisp_sub_device *asd,
 static struct atomisp_sub_device *__get_atomisp_subdev(
 					struct ia_css_pipe *css_pipe,
 					struct atomisp_device *isp,
-					enum atomisp_input_stream_id *stream_id) {
+					enum atomisp_input_stream_id *stream_id)
+{
 	int i, j, k;
 	struct atomisp_sub_device *asd;
 	struct atomisp_stream_env *stream_env;
-- 
2.7.4


