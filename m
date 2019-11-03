X-GM-THRID: 6755114272133480448
X-Received: by 2002:a19:c354:: with SMTP id t81mr63680lff.179.1572797675127;
        Sun, 03 Nov 2019 08:14:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:93:: with SMTP id 141ls1043868lfa.12.gmail; Sun, 03 Nov
 2019 08:14:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqzf88H/21GNq+tG4jTJvb/3IsUaE1W6pJPmD6ZtZmVczXA26ul+8+9vmsJkDrZL/YAkp1ol
X-Received: by 2002:ac2:46e5:: with SMTP id q5mr14230144lfo.148.1572797674216;
        Sun, 03 Nov 2019 08:14:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572797674; cv=none;
        d=google.com; s=arc-20160816;
        b=Kg5L3S9wu5LuX1X1kgaw6HCrcU74v7HfJ/nssV+fcxd30DgMzvbJZhDIHUiopYX1u6
         8tgSxMrKQvKZnrgmusLP+rcin+OtlMdzJU4HEkcP7E2++oGzstOFthLQTkYZ7Gl2UNw7
         8Q+ZlssyNQ+OfZohy2lhJ1nzPC8IznP8toREBKLuW3XNuT1v/u4vyEK8Dvef/yV2v8CS
         qR77x+YZjP7vUXhv+jcAT4Je22yWORrkpXmWe3THX1tKuUHEI8UoweYdbC7AotXY8xpY
         kazpl0CYfsCoRsHwZf+4FMzcPDcx0s4V1znUYOVqKXBm/dzcsrLAlhw3SBMBpWAbwOtU
         NMUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=g1s2kYYH/V8qGWf7IjHa5ZpOfbsGURVtpkApVsmufN4=;
        b=EFWgxK+5TK1GvODVF1pIH/z5Q0UNHONtT/d2hTLpib1nIDlCBo4zYmcXmoz81NR771
         TyfXlLL1YqdXY+xYFMh1vZEhDY1ex4uIjwHSmSU3LMrWMlKjGeasJV05bR/G2ZQUIPEN
         OsLPCUm9nyeXNc8tJ0qEpf4aXwpH5Gc+9kri22ljHgyl/SKPbwpnulmFrgLN9TtY11YN
         Q9cybQsqjI1yKJS/K4q5wf9cjYOe08IrRbeOAd/3bxUDOGxkzbrYi/9VVSI1ZRSq6FVl
         9DKiuOudtoxyOz2wO1p4Xjz1svRd7wb3qknBfYNJboXywfL1NI1aGWQ3NwRXjaALxVJn
         SN8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dlqqQ1iL;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z18si307275lfh.1.2019.11.03.08.14.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:14:34 -0800 (PST)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dlqqQ1iL;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id e6so12526394wrw.1
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 08:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=g1s2kYYH/V8qGWf7IjHa5ZpOfbsGURVtpkApVsmufN4=;
        b=dlqqQ1iL2lWXSNbfMJpBOyAj+opDAkKZZIcm/NPh3iCSxS5YOipguB3DVJ4CAY2H7r
         tXU5TjHGj7Dxf31++v/HOU67mI6QnvZhknloR/TwEs5/o0nR0Ie1tI/TXLV41N6JcYqi
         fmJZYJXtZ05S3Palu1jcFEYPgX1TAEnOMud2XhWBYT9p5/U2s9DgM6+MwvIAXVeiBKzU
         W0fYYt4HyvGMNFx4n5mlrPM2SY5KIK7vJbIFkkD4WLt4ax4Vm6U/lBgQcylNXwYwtVJz
         NaNcMOBglqsUwZF3rsMbkp27mKqi+SIG/HivLXX/gSRPRag1Ojfs2YZrz0zXGv00f+89
         6Qvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=g1s2kYYH/V8qGWf7IjHa5ZpOfbsGURVtpkApVsmufN4=;
        b=jeox81j7bWi/JbYZy+fPyKe32gCxhr8rtZ7yyGr7oGcIz8/crJUeTeHZuSDD9cpgMS
         h56hFfhJncSI0lorHQ8pocBfFybHBmIZ8agB26adDwbmaZqJDk7LQorOYv+S/mK8FRBr
         zrSI4dmNsNhyHzMhlHKQJHuPsLoxa1+lKQh9CMLleRyCueYL2np8HvDsNLt60dA1rkY7
         u7NlYp7GE1HORg3nz6pApBg8rJKQXXRZnJYTP3uTif53T55LbbNGwn+L7sO2Sapdfwdc
         wk9bUftswPMPm7K9S3VRuMx3CsJ7F/OgiSCk1pKa9xuzn6a+yorvqXXVRJi4D1CugGXT
         bRGg==
X-Gm-Message-State: APjAAAUHDF+ULsjleXubDXZV1dIXdu+j+hUgq4cK4znDg6ydt07lwQDc
	jlv0MQ8+cCESbz1lOgvKY1g=
X-Received: by 2002:a5d:5222:: with SMTP id i2mr19327076wra.271.1572797673717;
        Sun, 03 Nov 2019 08:14:33 -0800 (PST)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:fd8b:953d:f833:bf1a])
        by smtp.gmail.com with ESMTPSA id 189sm18496063wmc.7.2019.11.03.08.14.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Nov 2019 08:14:33 -0800 (PST)
Date: Sun, 3 Nov 2019 16:14:31 +0000
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Subject: [PATCH v2 1/3] Staging: media: omap4iss: Add comment to memory
 barrier
Message-ID: <88ef5bcc4ed24721253636b8dfec74bfdea23039.1572797322.git.chime.evan.dri.devel@gmail.com>
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix "WARNING: memory barrier without comment" from checkpath. Add comment
to memory barrier smp_wmb() on line 635

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 1a966cb2f3a6..5156ad8e4b96 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -632,7 +632,7 @@ int omap4iss_module_sync_idle(struct media_entity *me, wait_queue_head_t *wait,
 	 * scenario. We'll call it here to avoid race conditions.
 	 */
 	atomic_set(stopping, 1);
-	smp_wmb();
+	smp_wmb(); /* Prevents stores from being reordered across the barrier */
 
 	/*
 	 * If module is the last one, it's writing to memory. In this case,
-- 
2.17.1


