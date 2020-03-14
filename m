X-GM-THRID: 6804182476850724864
X-Received: by 2002:a25:b16:: with SMTP id 22mr26813167ybl.380.1584222185179;
        Sat, 14 Mar 2020 14:43:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3454:: with SMTP id b81ls20308yba.8.gmail; Sat, 14 Mar
 2020 14:43:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvqEgXUckUvar/ZM7Qgw8XBowOIRA33Gf2Ao43xVSJAkvH+82ofhap6W4niT/OYLuTi04K7
X-Received: by 2002:a25:3612:: with SMTP id d18mr28796225yba.472.1584222183699;
        Sat, 14 Mar 2020 14:43:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584222183; cv=none;
        d=google.com; s=arc-20160816;
        b=IzdVyr2aGKN5ykgzd3x2U4QIWw4XPpD4konIshzmheqv3V5xJeNnQLjPky9Dw7MDEV
         P/jEA41/s5fXhIDsTMW07M3rIQ8mu18liCm1bBb6+Yrgp5RATl+l5xSEHXTsgZb3yzY0
         54JqzRXMPx344hEGmeA6Io3tETRIOmpzuJB1Fo7oZ8vINByxH8CaINbUFfpMD9HripSY
         xDn6pa0Cavw5ozGk9zR0zUU0uNi9O1GMzYEb9I1gEhn/u20X0M4D6rHrwaTLG/fyvSLY
         1crU/TOjxx5Iyp5QQWevnZ9awTrcw9u0xyUlCSNRvB12hxQt0gjazlNWKoiv0GACpPf7
         a2Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=IokMa+LVvVaynUFS05ouZhKcI3VbCh3fDclvC4ZLJzo=;
        b=0JuHiKxpIncwAWtE3hlzeysm8PC9Z53gtS8qBVhzicRSVtkSz1zXkbFLf9YtG5MXBX
         gpaEXBJOxrThDz14KG43RiskIRemKX0lddVTQU3qVOHKeScfM12juDmMcyL8QTTKymJ5
         x/rb3qBOtiLLm7/vutyZHbPG8CuRUIyFo01rkMSucixaf3/txIod3DUXPqSZbiZtpKb9
         WqgmMRfjPgoKuT4d/H6RrnDVo0k7losyCvg1p3xSiv2BIj03phtiFNViA4tZRT8FVcLn
         Bj/SiMiIu1zfe6LvthVI/Cimhe/tCZaRAGiKPilIN8Rjbs1Y8BJA9pqEovlOv003baBm
         4DeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IuhPIQ52;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l1si331063ybt.2.2020.03.14.14.43.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 14:43:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IuhPIQ52;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id b1so7154258pgm.8
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 14:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IokMa+LVvVaynUFS05ouZhKcI3VbCh3fDclvC4ZLJzo=;
        b=IuhPIQ52OvZMBX1xkBV/mojGDO5/4GB/NG0/1wxNhwOfd9s+V2lb5NHNqGifipsl4F
         LVH1+gaAu7ZAEBj/981uZE3SOxTEF/NWrG1RxqnINNRNYhpRpvjyyfegYkJZD/wz0gci
         x930j1VusOk2sWvAyeHDiBvoDgQA7iUy+xyceLHEe6HKKbq9xgtPn06Tk78wmxcFANig
         ur/Dme6dzORLKy2DV3/zvtTQ9sNDitUmQXAOspXjUyn5CXbPcQuPTJGxFHlZrD2m4YZQ
         z9VIHfGPPGorvNazpVrW22UEBTf0YWAKYyif485eW7cuEJo2Hg3NzLur2BiH+kKBRwLE
         t1kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IokMa+LVvVaynUFS05ouZhKcI3VbCh3fDclvC4ZLJzo=;
        b=TtTDEHmS1I3JQ58QaobdQ1hFmdKfm1INAUmb26UIoCyhIMG6sC9+UXk7cuVpKx4hKW
         y5+1lPtOmA8OpC1pW3LJbdNtttBRZgnM50abDGzF/YfO0Tq/OKMqXZL4BLY4LxzEl294
         kMWRYENqohC6oKj9btX9pz9BBivV4y8LM8ziGKWxMsofd05zYPHL05FybquOgBZj5pss
         pbR3z/PfTfNcpCpVJ3bQGT7BOruX1ZHv4wJuF01WCzcXR0sQ9J6+OjceOEJINlilIijE
         huhIrMfmSUPBT0ggnl87gXBv6J9e7/UXnHBd3Hcc0ooD6XbcoBP4ZX9oTG5gX2/WXxWg
         dfvw==
X-Gm-Message-State: ANhLgQ2THGL2Drho71wWLvel+b/VO/v96ptoPmySRI7I8BzLGpb2bOzo
	PCcnw3+h0m0q9guNTRV5n52OiEDH
X-Received: by 2002:a63:d80f:: with SMTP id b15mr18640138pgh.298.1584222182676;
        Sat, 14 Mar 2020 14:43:02 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id i6sm22498465pfe.62.2020.03.14.14.43.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 14:43:02 -0700 (PDT)
Date: Sun, 15 Mar 2020 03:12:57 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com, mh12gx2825@gmail.com
Subject: [PATCH] staging: comedi: ni_tio: Reformat function call arguments
Message-ID: <20200314214254.GA3941@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Reformat function call arguments so that the function call is clearly
visible. Issue detected by checkpatch.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/ni_tio.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_tio.c b/drivers/staging/comedi/drivers/ni_tio.c
index b264db32a411..f6154addaa95 100644
--- a/drivers/staging/comedi/drivers/ni_tio.c
+++ b/drivers/staging/comedi/drivers/ni_tio.c
@@ -1342,8 +1342,8 @@ static int ni_m_gate2_to_generic_gate(unsigned int gate, unsigned int *src)
 
 static inline unsigned int ni_tio_get_gate_mode(struct ni_gpct *counter)
 {
-	unsigned int mode = ni_tio_get_soft_copy(
-		counter, NITIO_MODE_REG(counter->counter_index));
+	unsigned int mode = ni_tio_get_soft_copy(counter,
+				NITIO_MODE_REG(counter->counter_index));
 	unsigned int ret = 0;
 
 	if ((mode & GI_GATING_MODE_MASK) == GI_GATING_DISABLED)
@@ -1358,8 +1358,8 @@ static inline unsigned int ni_tio_get_gate_mode(struct ni_gpct *counter)
 
 static inline unsigned int ni_tio_get_gate2_mode(struct ni_gpct *counter)
 {
-	unsigned int mode = ni_tio_get_soft_copy(
-		counter, NITIO_GATE2_REG(counter->counter_index));
+	unsigned int mode = ni_tio_get_soft_copy(counter,
+				NITIO_GATE2_REG(counter->counter_index));
 	unsigned int ret = 0;
 
 	if (!(mode & GI_GATE2_MODE))
-- 
2.17.1


