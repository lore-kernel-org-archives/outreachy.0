X-GM-THRID: 6663618170330284032
X-Received: by 2002:a67:f3c9:: with SMTP id j9mr2083070vsn.24.1551803530691;
        Tue, 05 Mar 2019 08:32:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls4343410vsc.3.gmail; Tue, 05 Mar
 2019 08:32:10 -0800 (PST)
X-Google-Smtp-Source: APXvYqwXl4Kg5eykIbEcM9cWHs7uxImRZibyVW89Qzn25sy+VWLOtKgalCOX1uOqzkldONvErqGm
X-Received: by 2002:a67:ca8e:: with SMTP id a14mr2083985vsl.44.1551803529993;
        Tue, 05 Mar 2019 08:32:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551803529; cv=none;
        d=google.com; s=arc-20160816;
        b=C2PZbibDFMn1OKcWH+pissMwFNzYQkc2oOBDFRL/mPLR8DBBJMU19vDjbBa1J730/U
         0rSTFEYzNjCXojtnKdDM2WO6YC7jLXiontxU7xmhofa92/PEg3XG4HhD4u0B5GATomlG
         gVCRxvTuJEg64mL4gHA8HrEdhEpqenJVZcXfOWEO0oK47IxtaRBkv6sK8FHRbQ72//do
         GF2W7Z0+uHdUGEpxisYgB9nPB76nDfuUhktmizwZtg0dPrTbB1h/vPq21u38NZzIOiVE
         M9F1kWbBjqzx2INJj31HsVXED19qR9oxeBkoapIaf9pQlnRoPCGn6ZBfbF1JOGAwSyQ7
         +GAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=yJlEhQ4Ji0jLR+ktg4iwTTPZQfFOnccv7tJQKTva9G8=;
        b=yj82gZ8qnn0krBpTSusB1MUy4pbfDk1YLwVI3u8AWmiX03+AzxYIscH8BcVD4nU21b
         IorIub7WkwNFmnQIQ0W7PdMj22So3+2waEOaF6xGHAGDo0S56gsmvgZAKWk/kj5DTfEU
         NyFO2weaVgZYclAEg2qvVtkV/UXO0570EJY2ZXpTnfIm/5u5Db9xEAuGheJThGaNeirt
         onRceh50YpkNxaDDZ336L1V1RXqXhyM9nzDrvSa7S4yvfRW1RGjNMK5c4i+UQAWNkzf1
         NBJovNRmOnOe2cMI3ksSHeYN9PkQRJlUnHCiQ3jgChj8klyqIG4rxoLH8xBXs/2Uy+pI
         kC/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HlGRzxAV;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id s73si598334vkd.1.2019.03.05.08.32.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:32:09 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HlGRzxAV;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id a81so7295333oii.11
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yJlEhQ4Ji0jLR+ktg4iwTTPZQfFOnccv7tJQKTva9G8=;
        b=HlGRzxAVs2i3ZSpcK35e9KFQG3wFuDg+m3Y94sgPGvDlselbxq0R9zcudVsnC3Qxlk
         QvDUF8xHnX731umBLlv3WwmCsmXmZtqloHBdE2ESNn1xNOx2jlAFXZBHaF5d+psm7wyw
         0n9AW7mgU3dr5CFhE1PFP+y2o34AiM3MJ2GpFgHdyo5QhuRPpm5rPdL8SsgGylGTVVYC
         Dgl7sprBnaQKD5gI3dUhUu6EZJZaReprllnNh05GNQGRK1ASmOCHXj0bGF5TaNzd3U40
         1qydWYfyLdE/j0D6mfCNNo4MyTV9mRldAh65VrifeZNYKEKdPYRDw+uqbz50CvL6O/gL
         o7+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=yJlEhQ4Ji0jLR+ktg4iwTTPZQfFOnccv7tJQKTva9G8=;
        b=qnFCMDF6GuHbJT5CH3gFG86r/IOmZ/7eaaGcYX84fBMI6cmnLvOZQH/hs+MHdZHB8Q
         017oOneaxnS25vEPvNtp9lt751SrxBqT3EYSKSw999tS7vbhrSkO6vBG6mwvlvPx7GUH
         lD+B4JkrAD7ngdTNxAgBbIGDWQFTYbS10IGf5T/6QdKJqd3WMR6NUvQvZksBMK6AzOlC
         8SqURrPZxGX8KuzkFhMpMSao8R6KUcYvMII6+oSW16nwsAUCiBpKmlJ1icl8CeNuS34I
         bqZumtyv7zr0noayg05Ap69/aC+aOsYO8+mrGB4nvk0JPswJfvY3jPKyMc4rT/Uhrb0i
         NQkw==
X-Gm-Message-State: APjAAAUa5e8Ei7VM6w/xNnwGsr5AWNjy1RFDrZVyOAAxqcWK9zqTPBC+
	aM0DQ3vDpQdJRLLM1nIjQnQ=
X-Received: by 2002:aca:3709:: with SMTP id e9mr15935607oia.58.1551803529626;
        Tue, 05 Mar 2019 08:32:09 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id z6sm3644967otq.68.2019.03.05.08.32.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 08:32:09 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 3/4] Staging: vt6655: Fix spelling mistake
Date: Tue,  5 Mar 2019 10:31:57 -0600
Message-Id: <2a05700ec22d14969bd0b55245ab140496592bb6.1551803156.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551803156.git.madhumithabiw@gmail.com>
References: <cover.1551803156.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551803156.git.madhumithabiw@gmail.com>
References: <cover.1551803156.git.madhumithabiw@gmail.com>

Fix the check for spelling mistake
CHECK: 'Regsiter' may be misspelled - perhaps 'Register'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/rf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 03b0d56dbe9e..825b6ab5c0de 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -163,7 +163,7 @@ static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
 	0x841FF200 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 451FE2 */
 	0x3FDFA300 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 5FDFA3 */
 	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* 11b/g    // Need modify for 11a */
-	/* RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
+	/* RoberYu:20050113, Rev0.47 Register Setting Guide */
 	0x802B5500 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 8D1B55 */
 	0x56AF3600 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0xCE020700 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 860207 */
-- 
2.17.1


