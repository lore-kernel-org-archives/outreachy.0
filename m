X-GM-THRID: 6664934799750201344
X-Received: by 2002:a17:906:1d16:: with SMTP id n22mr180455ejh.14.1551801059196;
        Tue, 05 Mar 2019 07:50:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls5847631edf.1.gmail; Tue, 05 Mar
 2019 07:50:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqwHMD87jbDot7ZwR+3uJqTOWXMLW6/743Qc9S/rJjusVomFgu3k4Gvza6v06IpvrBgnedFX
X-Received: by 2002:a50:915d:: with SMTP id f29mr3465348eda.12.1551801058267;
        Tue, 05 Mar 2019 07:50:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551801058; cv=none;
        d=google.com; s=arc-20160816;
        b=R2QtgLXGoubgGejii0u3zwsB9LbFa8TEuky8+SxFL++g8laSyGYI5pYU0RT1id9Zqg
         GkQQJuAF6/5VqAhcJCCXP8Aj2SXZOeSy5g0bpZBLpbt0/EKVKzVDC4QZh4fyrJ2wRYgM
         8tS+WuOogcYo3HyahDahi/zxf6jDqRJwGTPIwhR4Gz0jQk4YCrDAlvKxuSjZxC9nNQkK
         IJR19gXvlR1H3OQxWQTC9AZFU4C7aPu0HouHSlS3z172qgxzm/u9bHATE3ksVX9Cis11
         5NvIJxZnsTyYf9yYxGJWJuep0C6vr/xd753G5PAd3hPHoj2YRryvGOu28ZvH6ZO3NHbP
         4N+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=iHBHtWY6v9ZrUvXFg+Gg6WVYqt3fKpgMXAPzmcMAte8=;
        b=kJ4kV7N9ZkDxoAVTgdVc0Wv1WTNDStT/UzmSJIOyxfv3+lyK0HbxFsejnFw3mA3vvT
         T3iDU5kY4RefXeVT/QPuTLDHWtIaqOEmKuN5fj5OoDgB4PkApwiQ87xHSHJLA6BE1XKe
         nYci8pRsXhejdl4kZNAokkZ67ffnxp86y8NJCGL1+qoGSo+sNz5o0eqyUQDoIBedUKPu
         2P+KiPPK/eIOvC31pR8ausiRpszDTaLdBkIh3mb5XnSnwsM9mmHN4IYtp5Hwf8k8azQU
         Ji31Vxz3uykDHzgigttv3nWQcu5K+K7l7YMlEuzzznNZVYdwFVJRAjf289PrrKGaM+Ik
         Am7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oLqpMEgg;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z19si435439edd.3.2019.03.05.07.50.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 07:50:58 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oLqpMEgg;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id w2so10002770wrt.11
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 07:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iHBHtWY6v9ZrUvXFg+Gg6WVYqt3fKpgMXAPzmcMAte8=;
        b=oLqpMEggD4hFncsKM2ZfyXoXd7b6I0U894qrCaNlIRdDCN1Ji8V0ZP68BHGjyzkC6U
         5Hq40aYFCsX0qJ10g+4lnbDFEktOldx+TlSNsvSTBR8t9VJjd7v4ouBUqNeIq2pogTAY
         +VxRBNwle+Xr88XazL57tRBxkIlEwZPMTDTjtm8LypM0afPm3hBxJKJwgOb7BP3vIcNs
         va7engovsnfjywaGXy2H9U0WBtMcE7M6nWlf4rpNztW6oqxOIjoBBPjBr6NMua8Yv3QG
         pjsx4wT2bxLvsF4XMkvbRDXnQ5dfTfzL/FqdRuDPjW932k6ol8G05Pe4/J3YuFSGolB+
         hE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iHBHtWY6v9ZrUvXFg+Gg6WVYqt3fKpgMXAPzmcMAte8=;
        b=tmXHpAYsxa2dx4E3eqyBxpIbvpKg+OLlYyiVEnRSKRfgHpi6FrB0TwFrKE9X3TH+WO
         B73zoYfkbtZPYESVlfoDiINYx6TwlU7sargcg3caLm6d0uoQcyJ5jvwhzOvNKS83U6+X
         cVe7Ywog6ErmZw1lb0xYiUDR1HcxVKgb683TIjJuyfnqqXnovf1DaAXoCMy8SRAAxfQO
         2VKCWv3s6x5VSFcDeW+F6e6nMdC0nL2rlv9QybsdiZc6Bk2YAzrPO8FcaGPC/O6wPKwU
         Ssa0zUrs306BGKiT62qs+xTBM9FZywADgwzPcNLPzING/u0F2FQyYwewSnROx0e4Kbfq
         DBkQ==
X-Gm-Message-State: APjAAAWYQphNuD3q/A2kQ64oMqEQ1Xba6JF79qL3FjJEO9sWmw2omrhX
	M450UfPDitc59UnGUfVp5EmPD/tE
X-Received: by 2002:adf:eb89:: with SMTP id t9mr7708572wrn.21.1551801057691;
        Tue, 05 Mar 2019 07:50:57 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.105])
        by smtp.gmail.com with ESMTPSA id t3sm20147945wmc.20.2019.03.05.07.50.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 07:50:57 -0800 (PST)
Date: Tue, 5 Mar 2019 17:50:55 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04-services: bcm2835-audio:  Fix alignment issues
Message-ID: <20190305155055.GA22992@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix all the alignment with open parenthesis issues
detected by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index a6ec72a..4c2cae9 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
@@ -68,7 +68,7 @@ static int snd_bcm2835_ctl_get(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
-				struct snd_ctl_elem_value *ucontrol)
+			       struct snd_ctl_elem_value *ucontrol)
 {
 	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
 	int val, *valp;
@@ -129,7 +129,7 @@ static const struct snd_kcontrol_new snd_bcm2835_ctl[] = {
 };
 
 static int snd_bcm2835_spdif_default_info(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_info *uinfo)
+					  struct snd_ctl_elem_info *uinfo)
 {
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_IEC958;
 	uinfo->count = 1;
@@ -137,7 +137,7 @@ static int snd_bcm2835_spdif_default_info(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_default_get(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+					 struct snd_ctl_elem_value *ucontrol)
 {
 	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
 	int i;
@@ -153,7 +153,7 @@ static int snd_bcm2835_spdif_default_get(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_default_put(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+					 struct snd_ctl_elem_value *ucontrol)
 {
 	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
 	unsigned int val = 0;
@@ -172,7 +172,7 @@ static int snd_bcm2835_spdif_default_put(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_mask_info(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_info *uinfo)
+				       struct snd_ctl_elem_info *uinfo)
 {
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_IEC958;
 	uinfo->count = 1;
@@ -180,7 +180,7 @@ static int snd_bcm2835_spdif_mask_info(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_spdif_mask_get(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+				      struct snd_ctl_elem_value *ucontrol)
 {
 	/*
 	 * bcm2835 supports only consumer mode and sets all other format flags
-- 
2.7.4


