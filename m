X-GM-THRID: 6751912583325810688
X-Received: by 2002:a62:5305:: with SMTP id h5mr12585811pfb.121.1572121539260;
        Sat, 26 Oct 2019 13:25:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5844:: with SMTP id m65ls3942075pfb.11.gmail; Sat, 26
 Oct 2019 13:25:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5NlhgcwqnYozvOm1qveKlUgmsruF/h+g7QYZqHZHNpHJ76MDJWi1y74b6XF/m/Px5th7j
X-Received: by 2002:a63:dd11:: with SMTP id t17mr12397107pgg.242.1572121538394;
        Sat, 26 Oct 2019 13:25:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572121538; cv=none;
        d=google.com; s=arc-20160816;
        b=GLn1kwdRuKnVq5rGjcgTQx2THbT0WMcQV50uVzfAyhcZGNB6Up0siqzZ2pZQItkKC7
         EsmkptQOUIfQ+djdsyxpdNhyqoo4SAXv2qTxHVLtFMBNnHXOLq/iTM19Q/WcN0qtx0TI
         gfgKzFx0m+CjS0xzqOUPctBcMEzbN9vJF7Jg12AxzOEmU3VAniWsZChqfw5RWBOcBE5S
         VhWvwXe6blOLbEWMnZ81oDOt0TiXV0qj0oy66adPudh4Dc0crZamaYB0VjhZZgPfknTj
         fKf1vGzCf+4eZiPavqF+csPgHoH7Msml3tEOQb5tUJvmBHSzag+h2xDpBRuolaW9JoUX
         XdNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=SR4ASwG62o34UmHRKLJjsHdvltz31rQ0BDdExf6nznE=;
        b=AL2na3u2t63Wcw5MIVK798R8nkZd3UtJ14XxJBT3PiRfiV2eTFHTvE1PFo1e1yHaCT
         o5nCQU9eWRkZn79p4mhOL83CaiFFygQhfQlpcfV7NHo1imnZofVj4Wbg1k+3OW90AhYW
         LkAI4fxW1cXzaBg56PyjnMya9zZCcqZmiMk0jwNY9Jj948bdmzOMAqZuGBjDLs4xifVs
         mZKLIC4mWkhnpNuN2tsGoVlGQn0Vx7FVDZkCe2KXdKsRfjKo7Art1DkfjA9RVZxVljvx
         mmrvmfdOhNwBrvq7412rVUJWcYp1w+5mkyquvuPgEFqr7NTow6ykaPFXK8ev0KRD4zjD
         3kvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tgqm66Vz;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id 83si199966pfx.4.2019.10.26.13.25.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 13:25:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tgqm66Vz;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id y81so4962722qkb.7
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 13:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SR4ASwG62o34UmHRKLJjsHdvltz31rQ0BDdExf6nznE=;
        b=Tgqm66Vz/U+XwMGx6TUd4V/L+t5I3fdVXAVyUgFQKQFn0WOhJEGaQp3fknp5cjdLbG
         v9HIM/ShcpVOKhMSEPYxAl037BtowhAoaVUwtjqqq75d7EoiL9BU3/bMceG7+1Ei2/k0
         VdeIjSq3ShioRRmcopSz99gdtQxMroxPiY6dYFTN0OZttlC8m3wn/BwkK65PH6KgffpQ
         +uwheuBTVoXNSesao156FB/F/O59Hiq7f1Ah3cxfl0I5nG9mgTnUW6qOW9LArJVnLXcI
         4K2eU6W6F5InMfAp2yh4NZYRFElpW64XhQ1phw1j29vc4uE3tNv0pKmnRhAUx6CQzOQ7
         wf7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SR4ASwG62o34UmHRKLJjsHdvltz31rQ0BDdExf6nznE=;
        b=eo8rZ4Ob1d/7oL437rC2qlmuLnauHchHQWvpuWPw0M/EfoKXW9saHxuKb8gaaq2ar+
         j5p6uNbABSc3eXDqNC65von3k2j7Z2D24GCmlJD5MTO2snpv4xKEGPJ+OdvpnbUnIXyp
         kOlKBCNClVhS1xbEcwrZ1P4T5mcb99/XjcJIYVrUiy/O3A3ZatthqqZ93NAn+Fzmh3xw
         uBg9e+Z5r2RkW86F/EtvZbcSgI11KRgx83mb3Y595StKEzxLQ7qywB1Z4Eajq7btEPHY
         00Yc4wiuNC8oGOHD/1nxZvmNoUbiC2wfhQmBttdqN5srpqTE5wmNp4hG5Q/5aTe+r+jI
         Ujcg==
X-Gm-Message-State: APjAAAWB0zXOQ6KGsrwtaFbIasBWyGM5LaXy8rwkwcuUi0o5EvOGinZE
	6rkclRTXopPBsW2lmtRZEW3cgVnXXGGp1Q==
X-Received: by 2002:ae9:d60f:: with SMTP id r15mr9304383qkk.207.1572121537345;
        Sat, 26 Oct 2019 13:25:37 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id b185sm4070473qkg.45.2019.10.26.13.25.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 13:25:36 -0700 (PDT)
Date: Sat, 26 Oct 2019 17:25:33 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] Cleanup in rtl8712
Message-ID: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Changes in v2:
 - Arranging conflict between author name and signed-off-by.
 - Remove unnecessary parentheses.
 - Change the driver name to rtl8712

Cristiane Naves (3):
  staging: rtl8712: Fix Alignment of open parenthesis
  staging: rtl8712: Remove unnecessary parentheses.
  staging: rtl8712: Remove lines before a close brace

 drivers/staging/rtl8712/rtl8712_recv.c | 32 +++++++++++++++-----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

-- 
2.7.4


