X-GM-THRID: 6529093465723109376
X-Received: by 10.98.139.71 with SMTP id j68mr1243501pfe.1.1520173034055;
        Sun, 04 Mar 2018 06:17:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.13.6 with SMTP id v6ls4197364pfi.12.gmail; Sun, 04 Mar 2018
 06:17:12 -0800 (PST)
X-Google-Smtp-Source: AG47ELvXkpf/ypHQyJKlfqsHbrYFNKsz/AIbXoY2mGAS+L2dFF0AcV4Bc1jEIlGzDF3Af8WlkvUU
X-Received: by 10.101.81.200 with SMTP id i8mr2286728pgq.103.1520173032694;
        Sun, 04 Mar 2018 06:17:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520173032; cv=none;
        d=google.com; s=arc-20160816;
        b=FsLLAMpES84NwhBvaueu5tFtSiCU6Oc0DgO5Na23Qz3POWYuddCbi/Qiv9mDdn6oIh
         fQsoddVYKvaliIWGjWhbykpdyBUN10nFbbtwFB4ewt/iWRza7d2dDI2JNfn5XsUhi1Aq
         GsaNm9sCziuRyi8YHmqbsc1zsVvxsdVzFprHUlLtTVMfOLpEPf6tAohx241SR1eSAiIb
         BZVLrWtIU+hkCIQr2lSJQhvqWI6N38BcJomoJVeg83+RQBLC5NK9Tcf2UnLAcow6d8WC
         oNd/UmQ7vZpo4X3dhexAEqaMyMrCA8O681uqmQxSl865/bBApQhZp9ul8nYIjMSvSiDC
         8TmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=yXv4kGwkMed3L2JQx6/SWcx+WqalZFXiNVnyYNhEhPg=;
        b=lMQUrlRYaVLHN/4ZU9ji4Q7NRuuhO330VGnD/x+69DFmCCo6L5ne5+6JJCtgqnJYPP
         E9Ee2Gg7lz5hCkIczDB/eNr3K9YL5jI5WthdoD7K5KMtrxYEu5B2JlRHiMO+efKiCXbX
         qsioexdPBR6d8qZQjgewyVGuEP4ZSL0A9OyX/FA7WAlMU1ITPGw12d8/vSujY5I2kwIs
         TCDRzFLaKsQSLn2XXxw+wvuFslRWhXN73c4OThe6k5mcEeJnomsuSR0daS/01NMd0RFK
         dR7GMpwQGEUkcP8ATyoy4GbRCrW5QaNROTFOd+GFs+ge19MlyF+B/TDR88RXFzB6T7nC
         5Gdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BN9r3qvc;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s21-v6si564708plr.1.2018.03.04.06.17.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 06:17:12 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BN9r3qvc;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id m19so5792997pgn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 06:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yXv4kGwkMed3L2JQx6/SWcx+WqalZFXiNVnyYNhEhPg=;
        b=BN9r3qvcAVqHrn5lYAZ7sHlY4wzmRP4svv6mJcj5wV276yBvRTQqoLxtB/d6V+rUSD
         m07U5Hk9aIuIreydZYSfWitzz50ejSccRs7DWncQu2MkkdfGV0VJDo3MH9w+eW75WEe1
         qJhQZEhWEKMliFLnPVcnN8Zv2YQoAJf72CIV6x2EEcftmp+kwEzraYzgrTEK5V1VZ0bf
         CRbI8LjYpMAfham8trkuH++1uWimvGnBtPsaNCMETuLvJ4VQYYajsONY3PgUuDLJa4U9
         GLL8xoyftevu8nYUJVsiCA2UFkwWZY71x04PaGL4AtowI6zJQakUPMDfeUzCbRVuazK3
         BN+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yXv4kGwkMed3L2JQx6/SWcx+WqalZFXiNVnyYNhEhPg=;
        b=SCzcoTG7uCUEdkFs+RkwBPyef1245sHiM5QVx2mm7oaVi2mhMcAIjsDmqqJzu0ENuh
         ChMkAg/QNPmAvv7p3yelE3rxmJET2f0EYvcuYXMcZAwWbDfOxZSmMrVsgOn2opKcloxZ
         XyrwrQKBP4kcSj9QwwDj4FOWIWwgbIys2vw5+Hnm2sMNm6RU3HVxT/wZGYrSXi1nDyln
         ggvGPHFZ1Uir7flaAaSkhbf+DX9u7QhImUARB9K9UrhbDU50VUhfjNZUlf83o+MBCYdt
         oAym20X6+5GxoA9/4Nt94ged4fXtD+Uwvvkrib/3YjLBzdOvQdfuYAYNsGGo0v4Jt/5C
         +KrQ==
X-Gm-Message-State: APf1xPDR+ljT/LsYbS12rIvXlHJHgEqRtP3oScD1pbGiprRSKFLdgLIr
	PPMbZpkZQwFqfnL1Gjg9iV7MyYUm
X-Received: by 10.98.156.148 with SMTP id u20mr12062177pfk.167.1520173032140;
        Sun, 04 Mar 2018 06:17:12 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m3sm16041826pgd.3.2018.03.04.06.17.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 06:17:10 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/3] staging: lustre: cleanup
Date: Sun,  4 Mar 2018 19:46:05 +0530
Message-Id: <1520172968-17448-1-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4

Spellcheck the comments. 
Remove the repeated, consecutive words with single word.

Arushi Singhal (3):
  staging: lustre: Replace "be be" with "be"
  staging: lustre: Replace "to to" with "to"
  staging: lustre: Replace "dont" with "don't"

 drivers/staging/lustre/lnet/libcfs/debug.c             | 2 +-
 drivers/staging/lustre/lustre/fld/fld_cache.c          | 2 +-
 drivers/staging/lustre/lustre/include/cl_object.h      | 2 +-
 drivers/staging/lustre/lustre/include/lprocfs_status.h | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.7.4


