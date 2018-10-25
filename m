X-GM-THRID: 6616097415299596288
X-Received: by 2002:ae9:f312:: with SMTP id p18-v6mr3850490qkg.26.1540430219654;
        Wed, 24 Oct 2018 18:16:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:251a:: with SMTP id 26-v6ls4147084qtm.10.gmail; Wed, 24
 Oct 2018 18:16:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dtEPElIUF53yiEcbrTbyrxtAb+k0mmEFvX7OS/4Xme9e3/Zm87ClTQN5vqxPUJ2K2qsrLx
X-Received: by 2002:ac8:23f5:: with SMTP id r50-v6mr3852528qtr.53.1540430218999;
        Wed, 24 Oct 2018 18:16:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540430218; cv=none;
        d=google.com; s=arc-20160816;
        b=OIjL2nZHCQFMEUpVQcFo7SmKHz0rD21PeFitSjlOPSSofPUbJESa5dNapyoIiElBz7
         KlUD371C+bssx5tk+fk5dGPs1o4+pN5WyqfN9jG+YPELyEX4Ld6cVbjnTJT5C7tXbtR1
         cGXT6Y7PpEWq8Jhl+hSLsg0ddGv10MNJBvj83evyfwW9qLSAmkSsaJ1oC6qUfOWgY2+u
         IAtWAs0zbfQV7o0X6W4AP7OpAM4vLqTdVzEZcXfhHHGrndcWrKyZBarTmgs1wQzaEE8A
         /OX4c1cOdlshc7RhorOJ5Afz85F4pa+Lid10TpcGYyYBKRQtNbsMeiHhUG8KAMcj1yzw
         cAVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=TARUacjQSDCpwWCudYUmW4uNEqQziAcydYmBqEYdQ6k=;
        b=aEb0oVwak017+IZP4XUggr0vwd0lj4ZEq9O5YnniMbS2pVDJPAx6vSlk/eoASfDd85
         l35OMWIuE2BznzZ1E9TugtJoyFH1I92NAKli5EqiRT+fAnhlQxALNY7IXV9rHkSXv6Fd
         aTeJebCEy17pPmAMytpn4g6WBxDwZyu5vv4yCbaKvUnC5XJLO2um2ujv7GRxJSA+5m6Q
         xWzBC9j8OMEZNaFDEVKnTo010tQ+RmwX/5k/imokteFEk2WiP19roI9OsdlsrblcpoRt
         tGwQ7eGPPh0U4Vqld+WQqbIFimITLr2XddC3Pks4AyHORcB/ljij6yqnAE4iwMWeTGZK
         mnqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DrtvnvRR;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id r25-v6si308909qtb.0.2018.10.24.18.16.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 18:16:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DrtvnvRR;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id a19-v6so3314667pfo.8
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 18:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=TARUacjQSDCpwWCudYUmW4uNEqQziAcydYmBqEYdQ6k=;
        b=DrtvnvRRgDFFpx3nWORdupDf+9TOa3zX1nCcm4FXNxlr0/KRSA1t1efUvel1tGvrIB
         hLrssKjzxVxmKvtIAZDL0B7T3b20bR6ROglZi5+zVAogANwpiZI+LfrlecOJbVzQZm9e
         tRq8xR/endG+qMPJ1iUgMsgI6e70EXu6hkqse/ytug0e2n3nu+L8mUvVnIahb/ofZe7l
         fhy7uQu6iatrewCPXL9h5YucnlblLN1OSzy56/5PrfTaspsByPLIKnAE1ag2LojYIcvH
         rENQSr6yp5MqfcGDsvRpwwLrZPnYVO3VqL1LaCVRmtJYeu27EHZ4pQmI/5sofErAuVLz
         +GQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TARUacjQSDCpwWCudYUmW4uNEqQziAcydYmBqEYdQ6k=;
        b=A/xrECPKtGOvQ5bZSWODafvtw4EXWPkaTAC/3bJXbEfviadaF8hvPnb5jKnUM3yfmH
         cxzfo5I/RhlKaal2exUajtULygLS6+L1pd8CL0tSmAHvejgk79AadN22IviJbPHBUzHq
         mr5oWb7aOMotaAguKU55dKfvfkDjAVzMmasYsPOs0qXkE7iOmgLtZNlJzYFlSyk95zK+
         4gjGaAEEWaH1bwDzo/U3hg6u9LaUGb9SJgGGCPFA7LSSD43PzzNRWPEqYIssCbl+Oor0
         T9NNRmSUKXrVBsXnkoWzqKqyZGh7ns1t2bGxYKCxG3XmXV2xeoWsPsCYe8Xhusg/wcvs
         x2qA==
X-Gm-Message-State: AGRZ1gJMKNK+KBaO773X9elpwpN1tUaCps7VlgOvK4G588h6WW8Ge2gF
	KDReRueOelqSSkt+RQZxV1gDA5KO
X-Received: by 2002:a62:204a:: with SMTP id g71-v6mr4804914pfg.28.1540430218514;
        Wed, 24 Oct 2018 18:16:58 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id b19-v6sm6622538pfo.50.2018.10.24.18.16.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Oct 2018 18:16:57 -0700 (PDT)
Date: Wed, 24 Oct 2018 18:16:55 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: rtlwifi: Remove unnecessary functions
Message-ID: <cover.1540428705.git.m.maya.nakamura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patchset removes functions that only return zero or the second
argument. It also removes the functions that are not used at all.

Maya Nakamura (3):
  staging: rtlwifi: Remove function that only returns the second
    argument
  staging: rtlwifi: Remove function that only returns zero
  staging: rtlwifi: Remove unused functions

 .../staging/rtlwifi/phydm/phydm_hwconfig.c    | 73 ++-----------------
 .../staging/rtlwifi/phydm/phydm_hwconfig.h    | 12 ---
 2 files changed, 6 insertions(+), 79 deletions(-)

-- 
2.17.1


