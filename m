X-GM-THRID: 6803435195586314240
X-Received: by 2002:ab0:1c05:: with SMTP id a5mr8374822uaj.123.1584106939674;
        Fri, 13 Mar 2020 06:42:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:dc15:: with SMTP id x21ls1238129vsj.2.gmail; Fri, 13 Mar
 2020 06:42:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvFzCaOpRs/eLTTJ6G4UPAgnxt3XEAoW6oXuxcw4SEqkcDZVBt4TcbvpR1ggUyXzkoyasml
X-Received: by 2002:a67:ee4e:: with SMTP id g14mr8725195vsp.223.1584106938476;
        Fri, 13 Mar 2020 06:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584106938; cv=none;
        d=google.com; s=arc-20160816;
        b=OC7uCPOFC7Va3QgZtZxBKkYJOfgM4oPKSSufWzEwGUmFYlnDC151Tvr3gmo+4Udjnt
         R/YsTlXv3lAORoA0gOaLRhrbnTQj2qtSCS2yLvodcuyDUYYIuaeJznHPQ6MQKrsLEcDA
         vT4JPOo0Kz4mNsQjeXpeKcHAUbYhbDukyKMtS90d6FK/Gu4eT/nyIkRWGgqMR/f4ETsf
         6Wi9Lw1scmjuSdQdux7E8KPSIR+wgb4Dp5GeXhYh9yLdqkEQUJ7C5ZWISZQCOHYRvqEs
         9bcRInBIh4Je/l3jecBCmOJ5UAWA0fBz6rUmfhTKlkK9wwb1msInUEMXFPhFkg+DWz/j
         KGbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NywvUS+KLKJGSiGL+Vu5zQt431tiBqJdMP+a4EDwGTQ=;
        b=Ti99/GtCIYKonuJVi0eeb2XWtBqhtt81G/DFrNKYpvSbIxUfHYUW9L9r6b3PjQdAlf
         sHWgPtPbuT83PKQNGHJbATAG4Kr+923I4jhEYid5fIZcfEVSbr1dl62tOXin6T4dsr/b
         UG1Tzk8Nh7X3DsRI8MqJGJQOQsOiGHTN6jSUzWo9FFYBi6/YKdj9UBKR0aDbMS6rHXT4
         ZIUJtgUAv05vASrIvG392KNIvSg506KedWx7ad/vGAxTENPS9wnMv7dEe9SQzsPcxbEe
         fo7vnSzxXMiy94LWGT8mSS0K+6XXIjEzODrg45Pa8uwSs+S1OP+PeaAo9V1UXGTcetBT
         Ur6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iwq1Ku+S;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w4si514573vse.2.2020.03.13.06.42.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 06:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iwq1Ku+S;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id j20so4268055pll.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 06:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NywvUS+KLKJGSiGL+Vu5zQt431tiBqJdMP+a4EDwGTQ=;
        b=Iwq1Ku+SZf2uJYLZ+1z2FCFhGEfJ5vCpUbmVO8UZoP5GlQsZ4vuzkCA+EPj7MK9kL0
         Yu8zQtEdfvWMxd2w0DrLhIU08hrQcRIRBXQ2tv7Rdv29pYVt0KRp1ehoQeYHT6YveOX6
         NkNLvEKAMmmLIWhCYHfQTL4QKDf/FVmiRQA19wuVXMxVbVvSWaOlOFYsLZ+AgkCtr3VR
         C65ZbOUfrq2/TcZzgFJUrON9dDB1hjd0ejM3+Tj+3Z4CEMZ1tTj3iWGeY9v1943ykQm0
         XceFkFo4AW4TdcAkYjGGzQcPeHwCT4g+ZUTKxrrw067AFnJ9AeQ8MIEcNJUBEhyr8FHj
         OIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NywvUS+KLKJGSiGL+Vu5zQt431tiBqJdMP+a4EDwGTQ=;
        b=lgj4PH71QiLLja1w98gjm/66vcDgWkGrdyo+PHkv2tmYt8h8lLDywN6G2luhaeOy4e
         xnCK0W0R5eyo90DNmbo1jzN25k51XiIKXWjyns59660Cvmc44Hjg3br7X9XAoHKuMIAI
         dkW8GYNjfog5LxPIVwPNCNelb42EHO0CfMwvDvpw3bTnp1uyDcV2p4QWsl3svvwlBawp
         HY6ShcmRKwu2f1gE1AZ2u8Pn9Sv/w/Foq9kEynMu70F2Go4UxDIMv2HsGrMqjwthON+M
         OIEF6Aw2ysYVKlO1RCv3Ev2fAdeywB5f3o0PLPEegRkmSvuUIxgeEiIBKm376O/c6R20
         n6EQ==
X-Gm-Message-State: ANhLgQ1uv5fyxUkyoSODS9DSw5xLszo9dL5yPcvBMXXemlxq4Z/M9h8L
	Dh4TIcA4HqTQeySjS9n8c71klNQ3
X-Received: by 2002:a17:90b:4d07:: with SMTP id mw7mr9814624pjb.94.1584106937298;
        Fri, 13 Mar 2020 06:42:17 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id y9sm21537086pgo.80.2020.03.13.06.42.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 06:42:16 -0700 (PDT)
Date: Fri, 13 Mar 2020 19:12:13 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH v2 1/4] staging: fbtft: Reformat line over 80 characters
Message-ID: <0fbcf3ff3a2b31a643293c0098d70f54e994a405.1584105606.git.mh12gx2825@gmail.com>
References: <cover.1584105606.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584105606.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

A long variable name beyond 80 characters gets exended into the next
line. Reformating the line makes it more readable. Also adding an extra
line for the next instruction following current if block helps
understand it better.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index d3e098b41b1a..4f362dad4436 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -1186,7 +1186,9 @@ static struct fbtft_platform_data *fbtft_properties_read(struct device *dev)
 	if (device_property_present(dev, "led-gpios"))
 		pdata->display.backlight = 1;
 	if (device_property_present(dev, "init"))
-		pdata->display.fbtftops.init_display = fbtft_init_display_from_property;
+		pdata->display.fbtftops.init_display =
+			fbtft_init_display_from_property;
+
 	pdata->display.fbtftops.request_gpios = fbtft_request_gpios;
 
 	return pdata;
-- 
2.17.1


