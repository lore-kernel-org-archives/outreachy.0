X-GM-THRID: 6660473635314073600
X-Received: by 2002:a37:7cc6:: with SMTP id x189mr10895225qkc.48.1551103347313;
        Mon, 25 Feb 2019 06:02:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls6127712qvc.1.gmail; Mon, 25 Feb
 2019 06:02:26 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaSJ30y9KnikOsT0XWDTIcnUpIrLEe/285YUlSRl13L7j/5ehjAgbfs5n0gymCo0Pj5rulN
X-Received: by 2002:a0c:ba93:: with SMTP id x19mr10800563qvf.39.1551103346768;
        Mon, 25 Feb 2019 06:02:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551103346; cv=none;
        d=google.com; s=arc-20160816;
        b=Qns57Q8cUl2OwUi5Gr2Q1t1pQTruz+bndbnfgQYgVP/gI9P2MGwB0G7+bKk/YmNEW1
         rWprRhygELUc1867BndBBNLZrgYRphA6AeHpt8yQNFcj1dceo5FKO7RMi/nMm+vVyWJE
         DBFoFJX+RE/nrZkMGfK9UZiCwx2WJxUP4Ruv7m+n58vPPLYrf+gSJQB5k4QxlnI6gJ9l
         +FeT1+qITj4iEUAbJpY4NNyljhlBX3+prNETuEYLJUKNO4yFcYO3n6uPIOkgRxYZvTRG
         0SVNpj90Y6TXyanWRU3UQz/H1n02vxG84S0ZSWDZxVpcUOitp1dgoQLjbTBjacIJPKV6
         GPuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=HoRaFueCIqjX63Fe3BjIejUqVz2aeNv2F5XoCcl2z+4=;
        b=Q1PmfuKsjA5LKK17oqNcKHRSu4cot8UK2fIDCT5VRN5gnia6BnN3rX4Apg6pm8tcgg
         6eXBzWsdemWRB6ZlrNTopiAgWKJJdxFLedW1jKwddA/Ec7aMt71waWFBo5MGnk0jlewd
         V6cy69XOZENsfXi07levMqxk0uYuVMrUEhkOn5XQFvSYACa7c2NDhQ7jpDdsgrCLK5qD
         0Mcp3+HQVDxMaBbnpDxibBgFvUbfmpFQPRKj5O/v4fq/QMHo1pz+Z44mLpeVJkJJ6kHi
         XYlgYDeGqkbnE+yD6+TkQzzgE7bFa6Hx7heN+bpuD7psjjm34v/ffci04MuUzd3xrgMJ
         LUdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NZHVa6si;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a3si467677qtc.0.2019.02.25.06.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:02:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NZHVa6si;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id v21so4534950pfm.12
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HoRaFueCIqjX63Fe3BjIejUqVz2aeNv2F5XoCcl2z+4=;
        b=NZHVa6siI6AVU1cEy/8t/PStpMVrpU/jFyZjibWDr5ijViMONgiUMt5Uc9T8Zs31N5
         6Fr/GKp2DyQUHNmlN5PbyI2qA3ZRJRZqntaQNJ08t+8uvzmh/ev4DbZBtr4O5Ru8SCzC
         CHu9ZTo/A0v673RX+Jhb2yimEH6a8Fpf2eAkUd/UfSKVLbV5SKXq3AukQcZVa+Gy4AUD
         o8hWl+/AdQ/eqXA0wUf/MG38u9jNASgFW9ZjSeq3VVuYCnKuCcRn09MSOBgwKBGu6lpX
         mD1/bLvjLl0jgIBjD4VsMOHd1jlPxwFkTfW183pcRnGwBlEbOkdkDc9mC474c1yKi/2U
         6B9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HoRaFueCIqjX63Fe3BjIejUqVz2aeNv2F5XoCcl2z+4=;
        b=KESyU6dutOQt7RlnPJQ0cxmZirKYQ7D/heJiGVU8IKhdjUmAbNfa/HgVrFDeUx4S1G
         XVfZnpZplnzY/D7/iFZtNHLk3EPzPZg7pvMr0jOg/si/jKW8k5YDPxiUr5inufWPb5qx
         9kvsqIymZv8x5ciVf4liYlUcYvc7HwMZgIlptw96b6UzA8z3Ko44Jz71P2+jKh7nQcju
         mC3oo8J7zMFF6IPHS8GOMWS7ZIa+3A5BNkkNpgTwB5MfDzNilwMCs6k9oYPIpw/JqQcK
         CxIx/UwLBynA+SL5rBbq24xH3mWBD6+UwhzgMQXiI/DFDVYaUJWbjYuybj/mpd2IIcUW
         SYng==
X-Gm-Message-State: AHQUAua/JHvNqhjaJ2l+BsfkyAGgMlw+ghfKnk7FnF6ATP7vpKq4wexN
	sSFP1VIHaJAyyPOFFFqt0uUBdschb4M=
X-Received: by 2002:a63:80c7:: with SMTP id j190mr18547960pgd.357.1551103345499;
        Mon, 25 Feb 2019 06:02:25 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id t23sm6681139pfa.111.2019.02.25.06.02.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:02:24 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/2] Staging: fbtft: Fix Various Checkpatch issues
Date: Mon, 25 Feb 2019 19:32:07 +0530
Message-Id: <20190225140209.5955-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This series cleans the following checkpatch.pl issues:

CHECK: Extra blank line not required before closing brace '}'
WARNING:line over 80 characters

v2:
 [PATCH 1/2]: Commit log is made imperative
 [PATCH 2/2]: Commit log is made imperative

Bhanusree Pola (2):
  Staging: fbtft: Extra blank line not required before '}'
  Staging: fbtft: Fix line over 80 characters

 drivers/staging/fbtft/fbtft-core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

-- 
2.17.1


