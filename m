X-GM-THRID: 6659981654376841216
X-Received: by 2002:a24:7381:: with SMTP id y123mr7916176itb.32.1550735254187;
        Wed, 20 Feb 2019 23:47:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:911:: with SMTP id 17ls459350itm.5.gmail; Wed, 20 Feb
 2019 23:47:33 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ib7jeLpHoLTuwFe7Q+RaxEUY71wfttRiQx1LGylEEeJ+k05MclfjHXw8BZcwOdEmd6vW9iy
X-Received: by 2002:a24:75d6:: with SMTP id y205mr8507073itc.36.1550735253318;
        Wed, 20 Feb 2019 23:47:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550735253; cv=none;
        d=google.com; s=arc-20160816;
        b=ZxXXY5fTR9wngeafUAwKmBfUK0Qw7Fi6uUMG7SM9HfE/oGixYnIR48I++6EK7/phjS
         OzGrnfIK6iVkb3e7fSaN9iEWvTETG5RASzKxMGvHwq0tkNGHGLk92T6wIvpqXEN6zvsu
         rE3tP9u4uy5xFS2f/6+awIFKLtZz7MovmBFnLNxVwF2kmlzao9JsvV/HgnV7xvyizuFc
         9thodUrXrn5O58loLFP42bBKxzfThs06uR2v4hyncqtHDI4Uf+EFPc5vKwmvmH7204Ji
         2x1v73I6tFjSANTG37yCmDt8zlcbLtImv7MOiMmDTwesN3nNVj93kwIevdSgB2Vwslf/
         cHKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=g46i7Hl3trQBDg3niKEcEy63ZIt3FNXA0Z1bJOyT15w=;
        b=bDs76rNKlhy5Guh3kdmFeAo9Q9nLl69PY0uLEQxj9AV9X0ByvN5fq47aM0nIEyxf3q
         GbqzGAUPjwfhbB5jHbOf1ryCj3EvL9R64FblpDa3Olmer4a8PlLORM21I5AGbLtne1EC
         ln1oJjwisW/UnyLYWzZ/noI28UdPD4LQdCMTRnUMhG8nkhex9Em7e9LLmY8c172MUipt
         t67BI5aRE8Cn53km5FI6Yi/hDb2y9gsz7XsoFk9+yD4BuLFsNYDJp1ngn7rQO4jfj5zV
         hjlxSYdj5Fc2IU29gNTtci01yMQdzjcbXmwInRBYAbxQQc2dhog3WjkkWNAbF5PYPXLr
         wdLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C6h6REP+;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id e74si318745ite.1.2019.02.20.23.47.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Feb 2019 23:47:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C6h6REP+;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x534.google.com with SMTP id s198so13380561pgs.2
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Feb 2019 23:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=g46i7Hl3trQBDg3niKEcEy63ZIt3FNXA0Z1bJOyT15w=;
        b=C6h6REP+PGqVaON3nhu6ww7+0jFKLLqus1vr++kH8gxdnzRFA7czH0gPmwjZkr22hS
         Mh8sharTYDdUcdkaGI2tH+1mAVHO8KLsVepy4W2VbJaV14100ZdcyG6AtMnyGF/Sf0Ii
         L22OPDMcOS4mk1AO4RzpAhXW3+RO8/GzzpMxUUJKYl66SxXn8TIUJvyTv4Sm3QjscnPB
         +B9UZfBECdjRr5BXH11NBykoxLSCdgi7OH6fbD3dpskbro4Cxg7hC88cZHJsh2SeysZy
         Gn+jKQiG0qBCWKcUlhO1ZOYu/Bzk+EJ8/U0JhPbWKYqDd3JPvAZbskxk7dxqqLwLqSBv
         JzjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=g46i7Hl3trQBDg3niKEcEy63ZIt3FNXA0Z1bJOyT15w=;
        b=RYmuIllTS+tbaiWJlqiYMmToGEQE/qDgYK4DimcpRzWOHnj6t41ga7EGelVliC6qdo
         sRq4SxSH5MDdM+qC3n2G+pzSrC93UoYRcrgv2Qvktrke8hXekdNyPW4rVBscqOduUQk9
         3DvyhOsL/aVuaCVI+j+sQW2SW+PpO/gn1mSAQYmh0ZYT8xgtVqO0SJMTc6R9X3TT8jPm
         8O03s69+e8oGrYjYMiDHX5cI8jaav7Y0fAwufWEwAf5T6VeC2CaH6+mtNnW8CMUwaJOR
         BoWR/+bMNqsyyAUTZJrauMUJubL3sgN+O1a1FwSLDVM6gfpLDjtoLGzPv+HiCSAS2SU2
         80Ng==
X-Gm-Message-State: AHQUAubcp2EcYq5tKrorvMDGGXBkEgywFmUTUKjtMWRgihtfkgMqm7if
	79h647KTNL263Sh/LeeBV65mk9Z0/jc=
X-Received: by 2002:a63:6984:: with SMTP id e126mr33717093pgc.143.1550735252968;
        Wed, 20 Feb 2019 23:47:32 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id g87sm43106620pfe.43.2019.02.20.23.47.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Feb 2019 23:47:32 -0800 (PST)
Date: Thu, 21 Feb 2019 13:17:29 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/2] Staging: rtl8192e: Avoid using bool structure members
Message-ID: <20190221074729.GA27093@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

-Use 'u8' with bitfield instead of 'bool' to preserve space.
-Also bool size can be 1 or sizeof(int) depending on the macro
 definition given to bool
-inorder to avoid alignment issues the u8 bitfield is placed as last
 member of the structure.
-removes checkpatch.pl check:
 CHECK: Avoid using bool structure members because of possible alignment
 issues

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
index 6d2b93acfa43..a1d879d316ed 100644
--- a/drivers/staging/rtl8192e/dot11d.h
+++ b/drivers/staging/rtl8192e/dot11d.h
@@ -33,8 +33,6 @@ enum dot11d_state {
  */
 
 struct rt_dot11d_info {
-	bool enabled;
-
 	u16 country_len;
 	u8  country_buffer[MAX_IE_LEN];
 	u8  country_src_addr[6];
@@ -44,6 +42,7 @@ struct rt_dot11d_info {
 	u8  max_tx_power_list[MAX_CHANNEL_NUMBER + 1];
 
 	enum dot11d_state state;
+	u8 enabled:1;
 };
 
 static inline void copy_mac_addr(unsigned char *des, unsigned char *src)
-- 
2.17.1


