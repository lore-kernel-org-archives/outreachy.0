X-GM-THRID: 6664861839759769600
X-Received: by 2002:a17:906:938b:: with SMTP id l11mr688369ejx.8.1551784072759;
        Tue, 05 Mar 2019 03:07:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:18b2:: with SMTP id c18ls4139767ejf.1.gmail; Tue, 05
 Mar 2019 03:07:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqzuOo1mWrYRGVZuDcKGsXHGvrLKViHWxkof00siKNeez/kEMCtv5y/ynhRuunXVY5Ps+Ion
X-Received: by 2002:a17:906:7f0a:: with SMTP id d10mr1170631ejr.15.1551784071964;
        Tue, 05 Mar 2019 03:07:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551784071; cv=none;
        d=google.com; s=arc-20160816;
        b=XBDIY3Di8iBIkiVQ/BcTQjbvfRd2Pl+HCdHVuaKwWt8X6jm76W89/jtBV0NrLoJoBN
         52Ng0OdfrE6M5YEwd1P+gp1ZYPf+5Py8fWy99jKXl4Oi7ENt5d6AmXMr4q1vx2/ij9J4
         gvB054n2V5NPGKWMhSs+HrqCNw51+VohMmnt09xgshSKbVBO/B1pyUHL5TwiwJTJloCh
         m3U1ADDUp5llr42UxW62DH/4g/bnITJsIyBsaWImn5pyJr2/5TIw/Xr4E8KpxLP+qXEa
         86LCNCr8BgScdYD7SljWkUya1xGZrYrnuew+0UIVjpqZPFPnvDPcodzM1KL1naNJDLyj
         CAsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=hL7mX8bu7KsckM/k86alCzRlJTfrs30qFMRtwoKT1GM=;
        b=tnTGGEP+NmlFvoj3EBdunvCgwCmRDTXj1Ehd+rgB3/5QIdONSIzMJLeEYVSWasqvYl
         Zo5DexPehj/RQIV5YbVUH5kLHyA3lGFTeDvjYJbt+nhGuODOnT4o2HgVqJHvcovI2cuI
         e51ydK/KTBbdvwdiG5fQCpmPqw4GJhjY1X82KsTSj0Bk/l2f4niRsc+AFu0WYeoF2uDI
         D7SG+fm9Jaeo3ZGfaUW3zf3E5XLlbOmIdILR2ZZ+G0m8jSi9VTFVzaUvS0ezi30G0fJ7
         T4NlSTpE504ouNBE+mGo7jD/X/4khRucvEsOsU4Ms8KGE6CwpRXwyK7BsEmMLrrDUBQ1
         oygA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HGPWt5/c";
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id z19si403608edd.3.2019.03.05.03.07.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 03:07:51 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HGPWt5/c";
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x331.google.com with SMTP id e74so2117182wmg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 03:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hL7mX8bu7KsckM/k86alCzRlJTfrs30qFMRtwoKT1GM=;
        b=HGPWt5/cMvJmvanIFsj88aju5cayCynkBea0I01kXZnvOcdlzb41JGsTu7CRLLKoFx
         4lAf3210sS7Hswo4RlHS4LDs+BhsZIDZFcZsOFmAL19xu/8pzju5A4+WKpIMcHgaxrIJ
         h/g86eVHTv3MLgexMskIk/y4wIaS75iHxONZzDhZZsNmRNYyX6gWu6W6NWx5hPCY/nGP
         J8GEu6Y6p4emLHm3ukAMUi+ccqyAM2i/ouUiwSua65H5N3v98zHi+BuM2KVwkDV1/Exw
         3TiqpX485Z5xRuGB14PTSIMECwVaUsTNby9TowIHyBANCsylLjrYGABSrsK3s5NF8YaF
         qjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hL7mX8bu7KsckM/k86alCzRlJTfrs30qFMRtwoKT1GM=;
        b=ZWGBM2GXwcbsOzPGGc9OYJIRG4/+xGWQonqEkgiPZSx9qGFL/HOYwHAL7TCDhr3jyM
         CNZvu9g7klLo6k0nWatO61WEG4yWfv49Vamn4scbjPkdC2t9Ch0V/2h8agFdsZRV9EpN
         aBQVBAb7Gg9jqmkscr2Q0+4R0z9ITAQKqHK87507fz4rTRO0ajbGxINbH64NaUOlrUhC
         KMR4JxicfIniHCi9woQZzL3gaNZLvgwfHX/JFkVpswTg1Nl+vnpxlo+N0xlJlEdsV0Gu
         wGzsMebYYpoC5zZcKtqweU+Bp9nuF7ASWI3T4kKVLzCbDM3ewRqhvoMf7EoN7NrcFKaz
         5CGQ==
X-Gm-Message-State: APjAAAXSTGOrNsCaGi5WqKtJ5sUOjCCffKHnrJuQEtHtyKTwrnvme3Ip
	3H8i3acGiFRQbhC6+MpYzDQzpG4G
X-Received: by 2002:a7b:c14a:: with SMTP id z10mr2168809wmi.99.1551784071457;
        Tue, 05 Mar 2019 03:07:51 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id q5sm11016823wrn.43.2019.03.05.03.07.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 03:07:51 -0800 (PST)
Date: Tue, 5 Mar 2019 13:07:50 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ralink-gdma: Fix type warning
Message-ID: <20190305110750.GA15879@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Complete unsigned int type as indicated by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index d78042e..7dada05 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -164,7 +164,7 @@ static inline uint32_t gdma_dma_read(struct gdma_dma_dev *dma_dev,
 }
 
 static inline void gdma_dma_write(struct gdma_dma_dev *dma_dev,
-				  unsigned reg, uint32_t val)
+				  unsigned int reg, uint32_t val)
 {
 	writel(val, dma_dev->base + reg);
 }
-- 
2.7.4


