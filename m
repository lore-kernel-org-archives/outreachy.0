X-GM-THRID: 6660410187282644992
X-Received: by 2002:a67:ca8e:: with SMTP id a14mr16162505vsl.44.1550747590793;
        Thu, 21 Feb 2019 03:13:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:810a:: with SMTP id c10ls465369vsd.4.gmail; Thu, 21 Feb
 2019 03:13:09 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbDYU0QFt95warB79qkB5y6ExZ0ITTpUBzJa1DAtGAp3HIFAwBMDhXkDsF4VXORb+q4Yfjn
X-Received: by 2002:a05:6102:3cd:: with SMTP id n13mr4156984vsq.19.1550747589841;
        Thu, 21 Feb 2019 03:13:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550747589; cv=none;
        d=google.com; s=arc-20160816;
        b=OMyHoSOIhnY4gQwJzcNtg+XYIaLZh9AiU8yxw7Ksm0HMWqQqF0oBzCChnGQcp+Dmsd
         qk8UOxLdF48UyUds1rfvAOd2xu/NVqSmM5mRpImtuwsHt5uJLOMxtoIk1cq3KWswTyg6
         EdAQhGBQ8Y5UXjKt1FDhOSmSdyD+pInkCmA9BNOQS9L1kDcOS3NMUr7q1BjPelwBn4a1
         7AjHqeWj/5YZePIsJDFTloV4uTlI7Y2zj1fO23KEGGBCtem0pji2q8W5KaDi54XrYy/A
         7eA/60I/iQxR3JxSzhMvb8oeHn4mLa9UNay4RWpp0J0yrTkcoQdXHDDD2yry466dtvqg
         pCrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=G2u/uED3mttMBrQvMnapkRxoSiRcHkcOohb32bkzLuU=;
        b=vL08ZzUCBZ7UyAIf1Jt8hdZ5qvTtalUff/xeCIx5YlPI5dBpzgcwG8CKOzcNCQqxYM
         iqa8XXNVX03j6zybg5uxorPfXQJgGb2+mc44dhs+SNKgob25rTdgb6YN3CSsS6viR3SV
         Qztranb7p1LKSQ6GhDbm9K8/crSECRZkhe7cdo5LWasOWhb9ufsVZWISuVO+1w9oWZT0
         ntwWQsk3Z2bwPEPZgg0QPoyji5MtzvBAxiPt8NyAXOevtGIpYQTeKJJoMOzX3IN2vxLf
         1OuI1jl5+8MWqPj4RNZbDwr+e1Zj0UeE9e981xhO81ZLfvvX83dVqkOqgss2s8IGXbps
         HSBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0P2prmn;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s73si392205vkd.1.2019.02.21.03.13.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:13:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0P2prmn;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id y1so13627527pgk.11
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 03:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=G2u/uED3mttMBrQvMnapkRxoSiRcHkcOohb32bkzLuU=;
        b=L0P2prmndrTO8Ni3SgmztK/2HwPxwxX64zuikmhQhYkiPjBHAJ3kbE6TuwshKtOWAN
         iPK/kUE0dQKlIt3wQs4MkJeNpLoGGJbTfAVI07RoUbqgPGTGR39N3TtZScOIaNftOOJu
         83KAEi+HuElrWSqSi+PuaYfIi2dEBXSDxlSwg8N22w8wUkrI0jhpxYoi5akE+tbGhRsV
         4yNmy6KcsjyNLxSmuFwr7I7GDKLmcOwgq4MWsEtf0//W8omhDJfg7XQT9BoKsmDsWEfF
         CEE918e3Mr+jEtSOQVeEKIUX+E124FJ4Cof+IxNuhljAJimhQpc8shM9S177Lp7K1byu
         bS5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=G2u/uED3mttMBrQvMnapkRxoSiRcHkcOohb32bkzLuU=;
        b=YTPxtooZ5YC1iHi+O/45/qr9uyaMzrAEJ7cSh0WufndAOMx0FZE28BnGCizZ84+S8/
         gm+zXoGaU+YYwwWGbbtf8vQkGvs62oDjGGxbgQ+iMSbNsk09GFhAwRMa0x9BjCHKDYpt
         p2sR/Sx+jSrvGKTPvDbCFuocPLLbNukoMEcs010VwFyxyCK6JbuhHnMEzJ+Z5+PB3+xr
         UOmhoKe3aGvkBDwLy6dkqiWhVivuZqbB3kV9sq4rkyVd3ygUQ/PYHu2W71qc0gx5I7Fu
         U6RFRONJrge2Slh8ApAORGVPo4R4YQWo3mH8yJzJ0nVUVSEFyBVTl35Hlbx4nvdO1xHm
         Xtmw==
X-Gm-Message-State: AHQUAuYqZuy9sCiXUnEOpKg9c5HJwkwxLEWqQYd3HXs3UBh5iOtZ0YT6
	SdxwlKVKMMrh//XL+ripShv14NjSOp4=
X-Received: by 2002:aa7:8042:: with SMTP id y2mr39799876pfm.39.1550747588330;
        Thu, 21 Feb 2019 03:13:08 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id x1sm25213603pge.73.2019.02.21.03.13.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 03:13:07 -0800 (PST)
Date: Thu, 21 Feb 2019 16:43:04 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/4] Add SPDX License Identifiers
Message-ID: <20190221111304.GA29010@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This series cleans the following checkpatch.pl issues in various files:

"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Bhanusree Pola (4):
  staging: netlogic: Add SPDX license Identifier
  Staging: netlogic: Add SPDX License Identifier
  Staging: netlogic: Add SPDX License Identifier
  Staging: netlogic: Add SPDX License Identifier

 drivers/staging/netlogic/platform_net.c | 1 +
 drivers/staging/netlogic/platform_net.h | 1 +
 drivers/staging/netlogic/xlr_net.c      | 1 +
 drivers/staging/netlogic/xlr_net.h      | 1 +
 4 files changed, 4 insertions(+)

-- 
2.17.1


