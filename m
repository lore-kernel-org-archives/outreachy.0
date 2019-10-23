X-GM-THRID: 6751148365074923520
X-Received: by 2002:a1c:4045:: with SMTP id n66mr2096111wma.92.1571874300478;
        Wed, 23 Oct 2019 16:45:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:db07:: with SMTP id s7ls2371392wri.6.gmail; Wed, 23 Oct
 2019 16:44:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYQ0RIK7+JzAn64rC2o4Q0GfYcnePGgsZHtGAWxlbLHz2H84e3LnqjUkVoc2tX4Y51O/Lg
X-Received: by 2002:adf:8068:: with SMTP id 95mr1098018wrk.249.1571874299503;
        Wed, 23 Oct 2019 16:44:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571874299; cv=none;
        d=google.com; s=arc-20160816;
        b=JgixQRUQFD5I9hoXW8d6DMgdvefwkb5htGwsI5BonXI/Wb3zBuVWmusFBechzc3zip
         I/qVvJ5INIBNDAicvK9AOf7nVEQpudE+/GOXS4JGyitZzz2zvbd6tWJ09clJxktK6/K0
         ubVVVEHuGPQVagggV7H86yLmXpfYIYX0vIz9hvd0CD38Q6x3A8/tMY53Vv+ENTMk2NkL
         AO4qMVAgGN7D83MDybWjn9RZf6aWM/EWEqQ2dU7U3MonSw0LQW+P+ZwyW3IxPDYBI3NY
         Ft8n0XlfWxNiApvgYLk47vEG+I6ktd4b7oJL4Zc+vEkGTC6rSeT45QNVPF3sijOKPnP+
         T37w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6fVycumgAzIJ8N3KqcoZSy5MygenczBZNdnQ/k6KpMk=;
        b=WkaVPwqT0fLZBj1UEOGeG6t7OD0HcmpRj4ZCqhX6Q9dKHQA0dpWJ6UMxT/4MbDEtVv
         qsKUUn8qBVLGrbvXfKFufwnmKuwzrH9e/j1TqvYI67fDT3tlJQCACnIYiZ7kN3Pi+pFW
         ++oNV43pqNXoNTRqQMbwkbaL371FDlgB+GF1A4fnKaylnwvU+nN+s9Ydqk585qPINGi5
         h1bk/tVXRV4XoQY8SApNYr4N+MBGZ6Y5GuERYpQ+bsp/Wlg5XGxksFYY9dt2EFL6y38V
         mpBRpouUpmWyK8t81sy8nDnX/4k59QRqJ1veUGTyiprLkd+2BFV5AD1KjQQYqMixYhR+
         YkVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ej6YUR0n;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y140si34035wmd.0.2019.10.23.16.44.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 16:44:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ej6YUR0n;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id c22so637801wmd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 16:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6fVycumgAzIJ8N3KqcoZSy5MygenczBZNdnQ/k6KpMk=;
        b=ej6YUR0njhV6/i0Mr8Xl4gD0SfoGarrGwgQRFaBkdJEGly7EJOMarY/ESmL4GJ5ppD
         NUud7ywPxTsyYZ50cwMTGHmUTwcCgBogoXkoxIfENpgS2jX0jaOnq3W4D8RMtOMiBVdq
         KCT3bKlVSLKwTW/+i5Flt7AFN17GMAX1crlftvMYO8pkNCqzrgtN6lH74uWiUXeBUWUS
         kZFfHvmiVSieIcTOBs09BEzbf8DjKXgO8I4s6wNRDctapUIjTfOmvmefY5/9N56ytVJC
         Y2Yy1RdzsBsWuMGCP76uJeHpt/WBU5cFG6A3rmZURewHjuUgYhAPDvolWnKQpGsoUybx
         aGqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6fVycumgAzIJ8N3KqcoZSy5MygenczBZNdnQ/k6KpMk=;
        b=P3zG+PcexSTZvfrY+stuVkiRilAsRH9AiT5GId+jivBJBOVo+lZ7fHu7uW0LZr3jIZ
         0+g/eiF8WYObq4G2awe15XH8eF0PMOACpJwKVRcc2YRlz7CRS2YSKBMXIMQWLVq0D5Yn
         a8AoElkWAVe8TwhR6yXE8Aif54ZpYm/oi5rtvQk1o+0XV6EuO2rVMHEfxuksH9Y60EYf
         SLFUkO4M+M5HIrAM+BTyVjXoXow/mMYbmNq22WgGPl6BmbOyKh/4nL2BIIx3sNbgZ8gd
         rNbVmwvPhZWwZSSctdN0A3+dNBNWpmARG/jMz5RDFIgV5JGJESEhq0UCVk8UevsrIAuF
         OtZw==
X-Gm-Message-State: APjAAAVzIbXaVVcKkG/NX828OLloI7y4gtPn6ujxxnw+3iPfg9+fsiTn
	WNJxV2laPqG62YL0rXnNO4E=
X-Received: by 2002:a05:600c:21d7:: with SMTP id x23mr2099227wmj.6.1571874299157;
        Wed, 23 Oct 2019 16:44:59 -0700 (PDT)
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from ik-ubuntu ([2a00:23c4:7286:6400:9161:6c55:984c:2a0])
        by smtp.gmail.com with ESMTPSA id n205sm633929wmf.22.2019.10.23.16.44.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Oct 2019 16:44:58 -0700 (PDT)
Date: Thu, 24 Oct 2019 00:44:55 +0100
From: Evan Chime <chime.evan.dri.devel@gmail.com>
To: gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com, abbotti@mev.co.uk,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/7] Staging: comedi: Remove wrapper function definition
Message-ID: <20191023234455.GA4636@ik-ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove wrapper function "comedi_buf_map_put" definition as part of remove
all wrappers in drivers/staging/comedi/TODO, and replace reference of the
wrapper function in the file with the wrapped code

Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
---
 drivers/staging/comedi/comedi_buf.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/comedi/comedi_buf.c b/drivers/staging/comedi/comedi_buf.c
index b6a9b5840afb..470eecead7d4 100644
--- a/drivers/staging/comedi/comedi_buf.c
+++ b/drivers/staging/comedi/comedi_buf.c
@@ -68,7 +68,8 @@ static void __comedi_buf_free(struct comedi_device *dev,
 	bm = async->buf_map;
 	async->buf_map = NULL;
 	spin_unlock_irqrestore(&s->spin_lock, flags);
-	comedi_buf_map_put(bm);
+	if (bm)
+		kref_put(&bm->refcount, comedi_buf_map_kref_release);
 }
 
 static struct comedi_buf_map *
@@ -133,7 +134,7 @@ comedi_buf_map_alloc(struct comedi_device *dev, enum dma_data_direction dma_dir,
 	return bm;
 
 err:
-	comedi_buf_map_put(bm);
+	kref_put(&bm->refcount, comedi_buf_map_kref_release);
 	return NULL;
 }
 
@@ -187,13 +188,6 @@ static void __comedi_buf_alloc(struct comedi_device *dev,
 	}
 }
 
-int comedi_buf_map_put(struct comedi_buf_map *bm)
-{
-	if (bm)
-		return kref_put(&bm->refcount, comedi_buf_map_kref_release);
-	return 1;
-}
-
 /* helper for "access" vm operation */
 int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned long offset,
 			  void *buf, int len, int write)
-- 
2.17.1


