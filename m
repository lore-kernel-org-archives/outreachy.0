X-GM-THRID: 6746399399110246400
X-Received: by 2002:aa7:9907:: with SMTP id z7mr1301595pff.133.1571284870232;
        Wed, 16 Oct 2019 21:01:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:2766:: with SMTP id o93ls239646pje.4.gmail; Wed, 16
 Oct 2019 21:01:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx8mHSL0OcjtCG2AxD3JH6LWDe31pHUQqM5AmJuupTGMS1fODu9qYib85PYu5pqZHM8/gLL
X-Received: by 2002:a17:90a:a00c:: with SMTP id q12mr1718188pjp.102.1571284869449;
        Wed, 16 Oct 2019 21:01:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571284869; cv=none;
        d=google.com; s=arc-20160816;
        b=fOAsh5ts92za+yW7HehQpwqqv8oGn71Rh7cLICM2c8THaOJxG2rEoUueiokH2kBI+8
         bU8QO5mjTccygnhlhD5hnNWULCwqRMWhYzVbfK6F6IqpWgsZZed+LrzUvSjbnDxJLdId
         8DDpntG3rrce5rG0yEHVUSLRBvyFWQ0pDaerYj3tu6HJfwQxDBEUJ+X3OLzR3/JghFjL
         mDY7ujJK+F8FcETXJQl/8X5xJaD07X7PUyJh8IBmEcw6NVQ6mc2vZbnrG1OLJfgU46FT
         eXL9mCL+JAuFqPqoyjO8B/IxsRXzsYt/EPOTfOjKY3BxRo83Bk04yt7qz0+TVsjqdl2d
         3NNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OxmQ1G5T88TINOUPa3+7UgRhwoa61oK5egeC3+MsMDc=;
        b=adHTYOBwuZLEnuMHC3oCufrFxBd3Pc/JZensl2Ud4joA2EGeFFnCC3UbxexJOdvCou
         L9raOp9rgPXqTgGmzHV20wsNuipZSoWQ+6za+TWYVA4/5Evx5MBcFpQxN7eUwEih/hP/
         gChkQb4ABuGWNI4ovL3rlkCcJ8Zz0Tt69xIEhJMM2+/j2xphgEV/8EJlrxILFUeP/bMV
         OadewIxeUqEJVQ2uDH/Dk/bapTBL9GdeZpE4YrDFYznSqRTn6dHmuDu8UWn1HBMAaQN3
         j50fzEhiTOFr/HFT5y3RhNrBDdxITWuobGNVWBH0m/07R+HmLK0Upc8TU6C93qgUkdiS
         TsIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ON510tBs;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id d3si40342plr.4.2019.10.16.21.01.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 21:01:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ON510tBs;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id z67so595618qkb.12
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 21:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=OxmQ1G5T88TINOUPa3+7UgRhwoa61oK5egeC3+MsMDc=;
        b=ON510tBsbENcGv1JDweR9mtO0ZAAQZVsdyJRgL2JOx4pRSvk4i8FZpMPn2VKOToyUw
         wpiv1h42El0E4xxdX1t6hPQ3m3aAx6uVJnZODfP9oBY0WYSomS2Qt9zwfDlcdDX7fEmI
         7/ZbfN6qWUQxh3/8hnxdd3vEdzstXZu27ZKl+X75vwprxdEmtHZRxZwKmUI6uBVxwqsf
         7CioE7Sy2s6w5MLABQEne8c1FjYigbsSGZCdT6u3ln7NaA4z6gXYILkVzzP61BLlxRP3
         TtHFZ+i8L6IyHdF2z2qGSrhx3t28Y2ij8CpH4mkLyKODH2Qg+eTxBoIPMGmqJ1JdFBiT
         BIsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=OxmQ1G5T88TINOUPa3+7UgRhwoa61oK5egeC3+MsMDc=;
        b=BaotIn2JvEqjXoGlaR5ToZvppWWnomkfQbItImf4UPXyP9unL6Ht6TssDB/4opStPp
         RMKYyMSA5xWet0F1xd3k/brSpypEcSbhhlVGmqvRz6JrO5BWboTfoaQkxqdhNPJBet7z
         N7V8CovBAAmu8DdLWnB80OrQdhw8RGLVzZAh81UAprUKFn0D9XXto/IG09NBBaC5EBoR
         NwPpyoh0cU/uI3IBQgU0UNEuVJzbn1oa5vNrfTvZSZn4hrl2iXUfyUegx2p47vCe1HsR
         YqhEGi+cUE+0F/xuvQCoO3XEz6iYR0wmMaedAXoLUGuNY9vPTeBn4RBO4TkKxE4T9D2Y
         5A/A==
X-Gm-Message-State: APjAAAUyftsHXpV47wy8le9Z6gqnk+4WvHL1k2hB87i//BcM3NmIbVel
	K2H5BXOnyugjW6dF7SbHI3DAtgnSglbZmw==
X-Received: by 2002:a05:620a:12b9:: with SMTP id x25mr1410941qki.4.1571284868576;
        Wed, 16 Oct 2019 21:01:08 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-31-3-221.dynamic.etb.net.co. [186.31.3.221])
        by smtp.gmail.com with ESMTPSA id n65sm545263qkb.19.2019.10.16.21.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 21:01:08 -0700 (PDT)
Date: Wed, 16 Oct 2019 23:01:05 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/7] staging: rtl8723bs: Clean-up in rtw_security.c
Message-ID: <cover.1571284318.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

This patchset would improve the formatting, style and remove
unnecessary code. 

v2: Reworked the "Add spaces between operators" commit to add a missing
    line noticed by Julia Lawall <julia.lawall@lip6.fr>
    Added a commit to change tabs for spaces as suggested by
    Julia Lawall <julia.lawall@lip6.fr>

Javier F. Arias (7):
  staging: rtl8723bs: Replace string with identifier
  staging: rtl8723bs: Fix lines over 80 characters
  staging: rtl8723bs: Add spaces between operators
  staging: rtl8723bs: Remove commented code
  staging: rtl8723bs: Fix indentation warnings
  staging: rtl8723bs: Fix function call format
  staging: rtl8723bs: Change tabs for spaces

 drivers/staging/rtl8723bs/core/rtw_security.c | 135 ++++++++----------
 1 file changed, 57 insertions(+), 78 deletions(-)

-- 
2.20.1


