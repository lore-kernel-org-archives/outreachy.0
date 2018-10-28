X-GM-THRID: 6617471709084647424
X-Received: by 2002:a9d:44ac:: with SMTP id v44mr9402749ote.42.1540750197656;
        Sun, 28 Oct 2018 11:09:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:542:: with SMTP id 60ls2490442otw.14.gmail; Sun, 28 Oct
 2018 11:09:56 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cmhs5H1Ls5GdSnWt8X3mIs7mjcDlHuf1zQpGZIr3BZNtw3Gt7/pPeNLffhWhRfgBiNR5YB
X-Received: by 2002:a9d:523:: with SMTP id 32mr9023470otw.3.1540750196900;
        Sun, 28 Oct 2018 11:09:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540750196; cv=none;
        d=google.com; s=arc-20160816;
        b=xeWbdLInHSPeeWACqlVIrtdcznxFVmWJmoXU0sQJdoXDMGJW94J1ayY2gkQLhagUAU
         xfgvGa4wlvd486o9pX7NRTvqqxJtYe2vPvzGEUbIJlOO3ryxuD1ELe9gI8vNLolfZFG8
         kDqkMX/STSBt/zWHRF6BFPhT1eNKVNqr1yEsSCewd76NInFraSYBdUIiu4BUHdCVR3lW
         p1xn3H6MYcqNU88CXrmFHr94hJswF63kJbzoaTrPGLUUpqwkLQJ4o4gC40ACCDH2qBbB
         s1lthkAZJyROA9uX4F/mWTwyCk8+mDCyYs5LcWEeZw1arrHvHBPbbWNSaI22wS/xbQga
         fhuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=Q83tiDA+BP7GfktsBlvKATVv5qIeUR212n2C2wZu53M=;
        b=ftX9+WJxHQGsqc3KSI+6jxVpemXglMJZzlnOZzQQm17FjD7/t07Hi8EtsodZ+k7oG2
         4h3DF5zGvejGoMLVj4XP7C+6WTEorJrer8+z/+OHaaFeho+zNawBWF9UZo/E/OBVO8Ra
         UktHJwvaUnkJIbolI5eJShUe0Pvlkuz6Uams+MBgxWTq0atCrHYOzIciJNdrnj4r9ZFb
         6ezS3PN3QUCnS7RLvDZi/DTbfX/nU0zCHQm6bWvrRURcq7xrNqHr7qW+gPZ+Ld42Qw3S
         l9xin4qVPPBy6uX26hUyCN+p63szE7dZOk4tHBTVDdIOCx2W6oTfdUKS/TK0O3VqIFtV
         azoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BLWgwVq4;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-it1-x12f.google.com (mail-it1-x12f.google.com. [2607:f8b0:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id a84-v6si1035943oii.1.2018.10.28.11.09.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 11:09:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) client-ip=2607:f8b0:4864:20::12f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BLWgwVq4;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x12f.google.com with SMTP id y123-v6so747260itc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Oct 2018 11:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q83tiDA+BP7GfktsBlvKATVv5qIeUR212n2C2wZu53M=;
        b=BLWgwVq4yuDduFiQDjpVAksyAEABNs3yo4lfP6wPqSfqttsGjwRFyO3pw6RBme8y1I
         mE4Rmuh+XgRPxxs69TPouHK4qef1AWD3QzzF4ZMYNo1k8RUcNZOLVLARLwk/sswug9/I
         NV90+J0Jb3cJxyante6OzYaNKn0acgb2jkMG1zrJhOR0E8fN3acObmhwd2QlygGx4ywC
         /SgQk6kHKv8D+B8MIoFX80EwCuAHy9XF62kuo38YIeBB+7MzDY66HA7kBKApb/tBparK
         d2Bey8ixvg8ytyi1rL5R0oRvYQR3OeK4Ajv+8fHoohtQwF3czBvKlxH6MtgmnZZosQ2T
         BcCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q83tiDA+BP7GfktsBlvKATVv5qIeUR212n2C2wZu53M=;
        b=Z4UO8lsanW2mA0DBNlo53MFIR6jPXlBVfG0wBedDsxDcV9O8ykI3ikQDjQJaV7Cgr6
         2+Tgk7YkK9WRe3V1Uhz1ZVifbxLIrz5ZNbCx7RxlOkeVLB3CoOpez0vj/Kx10P+g7cno
         diQWcv6nhDQOGzgaQJZXiv7fYroS+EUe0P/Qs+mOT5iVFMWQDGooyEybd1xyXS8aWRm1
         C867dY0IVwVVthS/J6Tznscbn0iQ00b4m8R14EQ0Zgv0wQth4IPANOU9ShJVS4gta0Q2
         q4NRr4YRgcSHjsEc8kS4lL5i2G2hr1zg0v6OImSbOE8667gRfLL/AQMbc2FL/xK6UepU
         3+vA==
X-Gm-Message-State: AGRZ1gKhrXALNNjsYtgSVB+VpmnOCd3APsEwIGfMIk4KC89s7TmGsb0+
	Pz0rLx+vF14iuD17X9wOkdjPOXxlU+Q=
X-Received: by 2002:a24:d204:: with SMTP id z4-v6mr6955318itf.11.1540750196448;
        Sun, 28 Oct 2018 11:09:56 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from ubu-Virtual-Machine (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id w124-v6sm5902818ita.0.2018.10.28.11.09.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 28 Oct 2018 11:09:55 -0700 (PDT)
Date: Sun, 28 Oct 2018 14:09:53 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] staging: xgifb: vb_setmode: fix multiple line
 dereference and indentations
Message-ID: <cover.1540749179.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patchset fixes a multiple line dereference and adjusts indentations
to comply with the Linux kernel coding style.

Kimberly Brown (2):
  staging: xgifb: vb_setmode: fix multiple line dereference
  staging: xgifb: vb_setmode: adjust descendant indentation to right

 drivers/staging/xgifb/vb_setmode.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

-- 
2.17.1


