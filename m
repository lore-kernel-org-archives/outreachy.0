X-GM-THRID: 6615237556487323648
X-Received: by 2002:aca:34c1:: with SMTP id b184-v6mr41380023oia.30.1540313504857;
        Tue, 23 Oct 2018 09:51:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:530f:: with SMTP id g15ls2480046oth.7.gmail; Tue, 23 Oct
 2018 09:51:44 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63BMFE40tVOAFRJuZMtTA/yCK1u9u/ttcjX3PN+D39J0RXk51QY/OC6oewtUM1wz9PtS1Wq
X-Received: by 2002:a9d:542d:: with SMTP id j45mr40689506oth.2.1540313504152;
        Tue, 23 Oct 2018 09:51:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540313504; cv=none;
        d=google.com; s=arc-20160816;
        b=YTEjE6UilPl5834h+rkpl6PHt/8WsPuInqPe6zMgevsz7o328yls4ak7qsmi9Ha55i
         45lHU2hjVNjHuIKTSNtBovXESSYNtcW7HIZkePyuTXwXoHgu4K4GB7zE7n3qog/cecZX
         BB/ZntTmG1TSZjRfGVt2euDG+d2l7INAvFJbSQC9C7dboTvNv8UOVfyrVtJ++7A0QGI9
         /LomWDPzB+Ls3Pixmo82d5HXzgx0sE3wy9duNMsyCbgQ6ZrFW/sN3txF/2XIxMATBPD3
         0uteSmuVaa8cXz0q4+3u8uIxwIqJ4Ovp66KuuR+lauL6wtsU5EuQ6lwvOSIzNIsHhSL2
         a/DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+i5Hyx54bXWZzPjcZi7TZrkEnY2EY4y/Ufs9RTDEbcM=;
        b=Qjwd9gwElBrd9L0bEXO5gRjiZfZdFVT//f4g1hYQl+Hlwhg4YdDdmtycKuAbBrSG2e
         4UcS2ozgzb3+hQYZqTg7hiSqvMVi0vlKngT4S8NLdT9BNQjYFI7Wut9bkYqied7jQXS7
         ot6Sbxz/EOMRvEEH5jrFC4+j5NoeTB6ZB2PsgGvEREgCcmUllmoK4uj6erYoAR2lZs58
         UbzFB8IWowZdly7TIuDryAj5bhAT/FvV6K8T+hhbxajH5fkUG0oM1r4GJwtMdf2ytFo3
         NLpVl3WBCujiIpX+OEqJJuhs89VSbo1/7JJPPU1jgX7f8Vxk++SoL1u/KihuVm26ZhCp
         D4UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ImrSBfCb;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com. [2607:f8b0:4864:20::235])
        by gmr-mx.google.com with ESMTPS id n206-v6si63829oib.4.2018.10.23.09.51.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 09:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) client-ip=2607:f8b0:4864:20::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ImrSBfCb;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x235.google.com with SMTP id j68-v6so1683233oib.7
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 09:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+i5Hyx54bXWZzPjcZi7TZrkEnY2EY4y/Ufs9RTDEbcM=;
        b=ImrSBfCbMwGEaTZ+VHr5F+dinsCtWcl1UcjPMC7PQLOMiANODLfjAMa6bF+m+ebSAu
         mrQd5or9Mo0O4JV8Qqdsz+BFRRX83vrzz2Y8Z/aCFiDwqtvGWSWsqqXXjTvpfFq2bIWZ
         4eYj0zEJN5RMyofLQClwNjmOMD4fzDX9GufAbKq6wahm+L7mjBKUjXXpM2imjrKbcOLW
         u6E3gImLiYCtEkQKIY1764w3Ye0o0xndtSKGeFln9ceTLMJojt6O4Qfw2S91UThSPZBH
         zHtxCt7XBKiJvCRhXIOpzUOWUiURZIV+mterPhUIyayScHzikprpmvu3WFIla75PKHxy
         E5OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+i5Hyx54bXWZzPjcZi7TZrkEnY2EY4y/Ufs9RTDEbcM=;
        b=lmoB2Ebi5tX1k7VHcUrkIyE9Rp0932AMVRz0lnWTgripsI9+D8wLmr41sYAWBEpELM
         D2VZpjzi/yEYd1SgCsVUtwjem0g4azO2xmzzeNscKwdh07faIXQlKcRRaM22atsx0B9z
         niddSiMpmE8X05nWtHf5vNOeHOqux8zLcY9sdw69r22nXrJ+FXnn0xgmKKwqqCKmFHm3
         ZD+z95IzNoGYZjag51E6Xdtb3K6Zmx/7ZE8QIqPYbwSBtpYe/K8KpI44He+PWqo/zD7a
         gLhiwS1trSw9NlAtRSrhjER3aqvSMMrN6Z4m+xY7IllLHakRmbZ1Uz3kKbnKm0lQan65
         tYvw==
X-Gm-Message-State: ABuFfoisVF81Sz6Uxj+rbGDI8y8a+sWDvpibE/w6QZ3IcScBBZeFdehx
	PM0j5awWUZW1A9Exy5XP1THiEf2eMIs=
X-Received: by 2002:aca:f342:: with SMTP id r63-v6mr27400603oih.6.1540313503582;
        Tue, 23 Oct 2018 09:51:43 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id j79-v6sm489823oiy.13.2018.10.23.09.51.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 09:51:42 -0700 (PDT)
Date: Tue, 23 Oct 2018 12:51:40 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/3] staging: rtl8192u: Fix misspellings
Message-ID: <cover.1540311428.git.kimbrownkd@gmail.com>
References: <cover.1540229302.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540229302.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix misspellings in a struct member name, a variable name, and comments.

Changes in v2:
- Changed the subject line for all patches to include a space between
  'staging:' and 'rtl8192u:'.
- Added a Reviewed-by line to all patches.

Kimberly Brown (3):
  staging: rtl8192u: Fix misspelling in struct member name - Style
  staging: rtl8192u: Fix misspelling in variable name - Style
  staging: rtl8192u: Fix misspellings in comments - Style

 drivers/staging/rtl8192u/r8192U.h          |  2 +-
 drivers/staging/rtl8192u/r8192U_dm.c       | 10 +++++-----
 drivers/staging/rtl8192u/r819xU_cmdpkt.c   |  2 +-
 drivers/staging/rtl8192u/r819xU_firmware.c |  4 ++--
 drivers/staging/rtl8192u/r819xU_phyreg.h   |  2 +-
 5 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.17.1


