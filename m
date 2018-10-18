X-GM-THRID: 6613499587920396288
X-Received: by 2002:a62:4743:: with SMTP id u64-v6mr14235275pfa.2.1539825365669;
        Wed, 17 Oct 2018 18:16:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:2041:: with SMTP id g62-v6ls5342786pfg.4.gmail; Wed, 17
 Oct 2018 18:16:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60cVU4+TBJxkvcXEk0oupUbI1CHEzVmqVKjox1CtMkz1b607cQMM8u4G4fKL/9Gs57tXKtT
X-Received: by 2002:a62:9c8d:: with SMTP id u13-v6mr13639798pfk.41.1539825364596;
        Wed, 17 Oct 2018 18:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539825364; cv=none;
        d=google.com; s=arc-20160816;
        b=yvM1NQAXlVQkVKiMPO0uax+Ak1Kvioa1oW/sB/V/TH+zAbjK0uz8419PFsXQ3rA0MZ
         sdYlvr8zIH6f/sO4pijuGzw7SUp9NWU71rsuFO74ZQb5uls/U9WYuZR1PIISyavoWyRx
         HJjYW9FDm2alkW+SqvXAtNDnGxnrgJEm+7r9e9QG4nYZZPIWgKoItqz5CfAuTDf4ZAeI
         bwm2umWz8Wgs/LNOeJI3FU45JOkq7zKA3/1oy1+fk8L20K6p2I7Ga0Ur4e1GV0ayemkM
         TgAzSenyJ41zGrvNgmLwN2a9Csw5dbTfZ+GMbVSPiMaL9KhxFhH+46dGYnjtjoKZZjOb
         CUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=dytUX32ZYsTd954lrgGJyjrLZVo2SgI+/j8qBzWI394=;
        b=Z1OW0bGhZdRx5xfbnOjM4qoT5KdrFZsz2GWf0PAEYY0npZUl9Nan5zJVIwbVeKFmxv
         2lFSbSiIUgiC9o+y9pTj00HxR5BIRrpEYsW9oNWNU8JZm/5GXbfFCHw6SytFV6Z1wrTN
         v7H63VKQ74CjaXK0yd08quPHPqE/A+sBBnEzSEIV2BSqZ6iMQAbjkTcfCVsTEbgA4eIU
         mbyGycnQ/t+RZsZClgQef+Ek6xSSo10AI6NGi0Gqxj6mUhMxblrpiCAN3/wpt5WfW4je
         amJ51lyZjIN7nglO0fiO4WFYPLRofBJJvM+ICYgMnJME+BseCnEXABWdD6k1vkWrR70B
         nuPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzvhO0F+;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-it1-x144.google.com (mail-it1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id r130-v6si453012pgr.2.2018.10.17.18.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 18:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzvhO0F+;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x144.google.com with SMTP id i191-v6so5021070iti.5
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Oct 2018 18:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=dytUX32ZYsTd954lrgGJyjrLZVo2SgI+/j8qBzWI394=;
        b=BzvhO0F+QXgqAL8rt+N6FBuJOPyqKsl7SD3Xdp8/IR8To65EkrWSk8d+hR+BIBdPRe
         MOeSadbzIHoh547YVPOQ2X2TcahZ3m/R/WdHF0O7ne0+hctYKLfR2owjh/isL33zwUrb
         lEV5xmEfRxr5JXi6Kp245lccsizWzgt6iHasmJ3Ln8MGc3803ehOZCCOyraIrx+2rNxi
         B8CLBmbUT0A9+hvnEoOuh9K8jPk0vRXfNSD1hzd+4rUnve9qwECdEpuWEKXy+x8iAlOO
         rgrvaj4a0f2/ybUsWbEeBLwJJZNK2QwmXjUKbKIAAmDF+Lw5R3qZ7gcsgB6TRH1zMefw
         6ESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dytUX32ZYsTd954lrgGJyjrLZVo2SgI+/j8qBzWI394=;
        b=e5owuVpbpbREEJEnQ+S/wGpYxQeicjARijtiR8OAw/Dk3MPGZVK1OqZVcx/IHv+XCl
         cl4Sri0HgEjwIxdt8wF9YPvtg1JAI0Z8K+0k0tO1lHLE3G3V4r6Km6RKiiUrpNBkIZp9
         fGLb32DH3bpB0TSy/vjvZSKQedpPMAAf2ZjtGb9bmrdyCeAgSlc68BTMPege9zHK5I9w
         plV7llS6eGHcIaBk08Xyucj0Gu1YT/qbS9JPjXhS1h0ncXenONy5kK6enmd2xaLPPiKw
         Sh4uLWHeYXy99pmkTIjd9rte9ts1zzwQoI4WZ2o4I5nYfi5igpdAKnPqvnXtc/UlP/7+
         Mvww==
X-Gm-Message-State: ABuFfoiR2HnABBGzsWd18WFd3k/o4BM8KR5/9TRflRhtMKVSfV4QA/tr
	vAWMzGqE9FLqN93y+ZDEVRyWaAJK9no=
X-Received: by 2002:a24:140b:: with SMTP id 11-v6mr3372105itg.59.1539825363792;
        Wed, 17 Oct 2018 18:16:03 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id u132-v6sm2427710ita.9.2018.10.17.18.16.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 17 Oct 2018 18:16:03 -0700 (PDT)
Date: Wed, 17 Oct 2018 18:16:00 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Add a pair of braces
Message-ID: <20181018011558.GA2255@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add a pair of braces to make all arms of the if statement consistent.
Issue found by checkpatch.pl.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/speakup/spk_ttyio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index eac63aab8162..979e3ae249c1 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -227,9 +227,9 @@ static int spk_ttyio_out_unicode(struct spk_synth *in_synth, u16 ch)
 {
 	int ret;
 
-	if (ch < 0x80)
+	if (ch < 0x80) {
 		ret = spk_ttyio_out(in_synth, ch);
-	else if (ch < 0x800) {
+	} else if (ch < 0x800) {
 		ret  = spk_ttyio_out(in_synth, 0xc0 | (ch >> 6));
 		ret &= spk_ttyio_out(in_synth, 0x80 | (ch & 0x3f));
 	} else {
-- 
2.17.1


