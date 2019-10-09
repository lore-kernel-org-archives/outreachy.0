X-GM-THRID: 6745851004285091840
X-Received: by 2002:a50:d556:: with SMTP id f22mr3917525edj.248.1570640831832;
        Wed, 09 Oct 2019 10:07:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9796:: with SMTP id e22ls261959edb.14.gmail; Wed, 09 Oct
 2019 10:07:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxf+9xAbNaM6VHuQGSsXwvP2fFDO1R3rzDcDyrWLy0ISdb58PfyLIRHGFIkzIqWQqjbBo0W
X-Received: by 2002:a50:e409:: with SMTP id d9mr3921771edm.254.1570640830400;
        Wed, 09 Oct 2019 10:07:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570640830; cv=none;
        d=google.com; s=arc-20160816;
        b=mK4vKXuB4AuF2hidH/16mYXfFxWk2us1Kz+F/DyFDe+Z211oiDKskFdC6X8bEBAwjt
         lDoTCBTaPgeablygFCuqAV4ZHUuu9t8rq2cj2rtV/5gyeBy4xw9lyVzL4VQa08QZWfyS
         M9F5piUTDTamYhZiFw4oWyn9ywJAVZKGKJWQfWHWFrVjHSnQK6NXzwZvlpQPQn65sX49
         22NCy+FgQRuWEEmzZtIjiMhdltQW6LBiFQjqzN8WRJWk+AjhG9qKMM0skakTrhTgRAG7
         qXqiEwJ/sa6MkyZvR9cJTYr3Z1UaCd+VwJyvwdym3i7y/OEfxkOnptLJRnw3w+DftkTH
         DrcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=wMt/20RYp2D24CkBqBwCHIn8mXh3zufzv+vPas0B+0k=;
        b=tuPqG+hH8fY1wGbiL48NQOrMlS/axOxV8uwQ8H0Rq/GCVRHEEv8bBXRE357txGA73X
         8Sse7ZqzrmQfkEsCDFmHwI5kRnbgMvOlgkhodyhPqnMKk7OFd2si1wxHxcw2YYft/i9z
         MctjnvDvZF2xA8HYt+AFjdBXGAHbl2QU02AQYmg6MgJg4asoiymBtkEYOyi64NsTFbFp
         noOemRHD1lzGK2fFaf687AFx1Jo4giKKQqDfQZzZV5kp0dhrhRwYsmoy5Btxvrsl8bGi
         FbJDJ6+ICz+YYN9e12+MoglomXdkTMHehDdZ0hSF7/nsTXbTQgul+PAEESvwMGxKLRFZ
         Zmdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GjStgMNm;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id y11si62052edq.1.2019.10.09.10.07.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 10:07:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GjStgMNm;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id 7so3455430wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 10:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wMt/20RYp2D24CkBqBwCHIn8mXh3zufzv+vPas0B+0k=;
        b=GjStgMNmlQcql2h79zEjsgzRpSMp111EWYQQpRfavS0uctuUzoLjyUfnFgBSKp1s41
         lmkJ0opea5nMrr8eKVZIiKs5eoiFx7LerCbgeIbLwLB3PZvsaNQQQAFtfGE1165AUyT5
         bD0A/PlgiavK3Ww4Z2KmvSyVSOjTG1gYevA/crgqjGL9N5zAxBoaSZmZGO6+iXSybp/L
         5oJruPPhUq9a9TPXzkCVLbC5N2mV1kV0O1YsZfkUKlXi9zr+nX3ohY9bXxkiyv5kJhJX
         8j+Kx/Z+WkQPgud1ZuEarSz+WU4Llh6+7X3M/6tVXUqVDE55FDhAILwOZl9rFzcJ11oG
         yDyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wMt/20RYp2D24CkBqBwCHIn8mXh3zufzv+vPas0B+0k=;
        b=GLH3ZihhzD8UHTNIj+715K9tOLzIMdSeI+Zq8tC0/E9GPnQa1BoL2/b5lSXm/uIsUd
         vKj7lnmuyq61ZXxsU3LMepFJnB8HELWHjQwBbbZxucZkuX0EFoMaCEnrgvlA/IqojLa9
         diKSyhZzq+eAR83NiZ7F3V8IwFuf6JdbVGq+N3YOlJvrekxc/FvutPFkgwPoU3OX7lOn
         NJFMHbvCFbLC3Bq9u/UkWwI0hyOYUeVp9w9viNsiUw9PqRUKqoY7ZFiLcL0pDqs6m6xr
         NX0tyt+g0vh+ljjDnTQaz4BY5Dbx2QmpIClV/R/EBigpxejfabBBpvz0eek7ltXJQlG2
         TrzQ==
X-Gm-Message-State: APjAAAUPIH6yQFV+iHZUp+LVg0gH93VOLdTdtmFDPxl0GRvl5cDzwUvC
	y2BFkb/LjWWEEA6+soO3k9Ojv9zMvdHjmA==
X-Received: by 2002:a1c:c90c:: with SMTP id f12mr3304633wmb.97.1570640829812;
        Wed, 09 Oct 2019 10:07:09 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.237.61.225])
        by smtp.gmail.com with ESMTPSA id y14sm4020193wrd.84.2019.10.09.10.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 10:07:09 -0700 (PDT)
Date: Wed, 9 Oct 2019 20:07:03 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: kpc2000: Remove unnecessary return variable
Message-ID: <20191009170703.GA2869@wambui>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)

Remove unnecessary variable `val` in kp_spi_read_reg() that only holds
the return value from readq().
Issue found by coccinelle using the script:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 3be33c450cab..6ba94b0131da 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -162,14 +162,12 @@ union kp_spi_ffctrl {
 kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
 {
 	u64 __iomem *addr = cs->base;
-	u64 val;
 
 	addr += idx;
 	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0))
 		return cs->conf_cache;
 
-	val = readq(addr);
-	return val;
+	return readq(addr);
 }
 
 	static inline void
-- 
2.23.0


