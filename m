X-GM-THRID: 6478086724175003648
X-Received: by 10.98.147.79 with SMTP id b76mr3545920pfe.54.1508297101105;
        Tue, 17 Oct 2017 20:25:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.234.74 with SMTP id c10ls870634plr.12.gmail; Tue, 17 Oct
 2017 20:25:00 -0700 (PDT)
X-Received: by 10.101.77.15 with SMTP id i15mr3477722pgt.29.1508297100141;
        Tue, 17 Oct 2017 20:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508297100; cv=none;
        d=google.com; s=arc-20160816;
        b=mkzLRfoHRnDR/2w3AtERi2CA4fGJ/EEjeVgfMFKbYKqh5Ig0C+A5pxEntVnoWlkAu8
         VSprYKFrp0W98wddrXhqVpcbdIji+Jpzr1Chgw7WLTGJLTWK3wyEIJ8kYn+HIUUf6WWS
         /LKJ1ZMK6uoXsZRTC5N+jk9cPw/eWFgDjeCCFhPKnWf3J8Zc7efRRWs+/0UGDn031bdy
         yZeyGI8e7C52VWVOAy94e4bVusQSe6ACXIY6Vlxp4yRSo+/n/eLt830V1y9PWq5SdS6w
         wUrJR7jwcxCOmPgTKdiqt05lY2XYoNXO3PUIMo7YvKAh3Ib5fDDYn90MnmHAxmeXJhe+
         p5dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=bKubcbYve9lbyzwTgTaMrJUXam5VMPkSWx/AQJ6/048=;
        b=pvPdSXMlc6rsxxY3ztKL4VMf5tpkjTuY76Ro7Gsr0JQ/XajLgHCWUf7/gKHtXUiV0m
         iiI8CNhVGjMhQi9aqjrVAtEblaiTGSZc6y77iBBIgtmbk3VAmV0Ow4rxy6Umh/X7P33c
         H1mZFXl+NmfJmyudpWQLg1HaA1kVQXnYQ8eaugK2Xg15BnufX2tTYrC46T6O04maudPR
         jC2v2K1TCUsvYBK4lZEtf29rCQUzhsYROsQZQVUgy98nH1VER0O9gXkoDNwSkTCQTE5k
         HXg7sFyj572+elozDbmFRZzusZSw5ifTUZ8M7kj1AUwmDR2q76834ktatHC9uxP5sLvm
         GYRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=RfOB/o9F;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::236 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x236.google.com (mail-ua0-x236.google.com. [2607:f8b0:400c:c08::236])
        by gmr-mx.google.com with ESMTPS id l10si498009pgp.3.2017.10.17.20.24.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 20:24:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::236 as permitted sender) client-ip=2607:f8b0:400c:c08::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=RfOB/o9F;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::236 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x236.google.com with SMTP id 47so2618682uas.8
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 20:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bKubcbYve9lbyzwTgTaMrJUXam5VMPkSWx/AQJ6/048=;
        b=RfOB/o9FlRvGEmoOqgGRk3ewf02AO90AMAgGmsVddKiMILkUMMav7QHiu44IMmDeqH
         G5hq9WJT6MRMvkL44Wr1NfnOcQelsb8b2XSlslVz9lDvOtq8BZ//2zVq0g20ZCTvesKo
         JunOVvmEp9Z0oO9KozZC6nvRgg4w9rLc7GUI+jCLekj2qUGSahuGA2Sv8fFKyJEJDrXm
         rErQM3Dqn0mye41YGiS3sDMkWExvIEP15NLUVYc4UKm/wciiL2777DjWMJEr/xUhHTQO
         XjQwc0rhLZe0nqBsllFA1xkNyaeZw+itDCMboTezKHiJBgzAkxcKiDfCJVYY0UUqdDXF
         oT9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bKubcbYve9lbyzwTgTaMrJUXam5VMPkSWx/AQJ6/048=;
        b=bADqtpL3Kb4O4nBc0/d8u8/fva3NiAUZsZmwXMChqS7Rcs0d3GiTRAzjSnIeYj3CCN
         f4JV3rNLIX1a2B0L/CNdJLNOxltgk3CIKYWAFM7/+7Oq7VwBc3ACxilEaZJnfJU8SCBI
         q39uXGofYsawM1yLOxwtt3aAm8KJrhUi/KaXEaggpHsQHRoUsXq0fkp9v3/tYp3atPYO
         YgBKkCbnxebwzx/ERygXnO7phVwpIWUdl+JBrzOGeKxfOxy9uso7rXH1Wi7SvmSaCzwX
         SW1NQMH58BvD0aGLDGJxJjNxF6Suql/MVrxJjGr4py7SuooVdLYtUTH+EBUo8Ug9kKF6
         8ArQ==
X-Gm-Message-State: AMCzsaVUgr8DMm6UHYfnWxOKQ3vL4a6OjE+/+lJv0nBnjP7Igh5+w/Ov
	oIJR7ej3LbVDkvEWjS4s4v9HlHsF
X-Google-Smtp-Source: AOwi7QC/dSzNseYO7IXyj2AOdL6Ol40jUkRRxTletWwqrI6jaBjn45+/NgaxC3RxuP5GCKQjz1nqrA==
X-Received: by 10.176.19.103 with SMTP id h36mr12152698uae.7.1508297098850;
        Tue, 17 Oct 2017 20:24:58 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.206.125.129])
        by smtp.gmail.com with ESMTPSA id k11sm3008321vka.17.2017.10.17.20.24.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 20:24:58 -0700 (PDT)
Date: Tue, 17 Oct 2017 23:24:55 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: rtlwifi: rtl8822be: Fix code styling issues and
 the hardcode of a func name
Message-ID: <cover.1508295702.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset address code style issues with braces, parentheses and 
comments. Beside it include a fix to a hardcoded function's name. 

This is my first patchset ever, so I decided to keep it small to make it easy
to correct or apply if it is OK.

Frank A. Cancio Bello (4):
  staging: rtlwifi: rtl8822be: Balance else statement braces
  staging: rtlwifi: rtl8822be: Use __func__ instead of hardcoded name
  staging: rtlwifi: rtl8822be: Remove useless parentheses
  staging: rtlwifi: rtl8822be: Align the * in block comment

 drivers/staging/rtlwifi/rtl8822be/fw.c  |  7 ++++---
 drivers/staging/rtlwifi/rtl8822be/led.c |  2 +-
 drivers/staging/rtlwifi/rtl8822be/phy.c | 19 ++++++++++---------
 drivers/staging/rtlwifi/rtl8822be/trx.c | 24 ++++++++++++------------
 4 files changed, 27 insertions(+), 25 deletions(-)

-- 
2.7.4


