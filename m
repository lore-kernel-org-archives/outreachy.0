X-GM-THRID: 6949862244544937984
X-Received: by 2002:a05:620a:cf4:: with SMTP id c20mr21926322qkj.134.1618140899309;
        Sun, 11 Apr 2021 04:34:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4f10:: with SMTP id b16ls5874827qte.7.gmail; Sun, 11 Apr
 2021 04:34:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxrfoFvqBNNxMarwCt6Rvi1vQOyh+Yz8E5yXiEXEYLEuh/5qOgzmjsGyJMwzf+FyrVUy8i
X-Received: by 2002:ac8:458c:: with SMTP id l12mr21065309qtn.296.1618140898362;
        Sun, 11 Apr 2021 04:34:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618140898; cv=none;
        d=google.com; s=arc-20160816;
        b=VCn7VNQKMQ/rYtJSUzSXOgUHDl45timPO6IXeHkT1nQyWKv/ffw5nc9UcbOQYM5hfu
         XxSRC599TTCiq8I8jGf7D84TV6sd9E6saB1p7vSWYRWgx3T9gM/xhon9mfzyink7Krbu
         E8kGTfcGhX8n2+onsrNt0oJHyAffuM9E7D4sTuLpO+54hDZnF9Nk3avmAMoorF+sm+vF
         6WS3gxrH1UWHb1scCEdQ8IaBQ8wF0x3oMSo7ZW4iMfxaurqgtHxAOMhSCqwG4C54zUmv
         zUPanMBt8dSFOHewKTQWpStdogswstCSHjqyKoMu6VA7TbJpFxAPm43VaJ1E4cvtARof
         CsvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=eAzRDo314DwpqSCtRrPdwq25STQ7t6umx171HFgVOI0=;
        b=yR1l+w/4Icg+13VB2kljPo1A7+hF2aOOlE0gHQh29GZAdR8eCVhxWf27V5bOoKTJLX
         TqOaGIi5Gb3gcrbSk/9utt96FUuU7PIpV9k1uxXGhKoQl45qQDHgdkq2ZfPL41ghN9U8
         PLY4SCJUZ0O+UqSniN/kVtmbNHSOJx3o8OaP2RxEONCq82MrPJAJ+35LLd9gOYv008km
         MYe8dgRyXaV8VT3vaw4q75Xd/dLSDS4mD9rohf7RPwk5GiguAsQEPbTSAzONf3DQYaeU
         NGkyB6SXx/MwoyYrn5Isfsz+GLDd7iUDH4gqX5LNG+V5UpME7FPwKeLMsKTKMW4em4FL
         65lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=orIBLZrC;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id c22si820758qtg.5.2021.04.11.04.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 04:34:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=orIBLZrC;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id h20so4868624plr.4
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 04:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=eAzRDo314DwpqSCtRrPdwq25STQ7t6umx171HFgVOI0=;
        b=orIBLZrCQ1yR8fZVZ7PQqeOKJ0Eh3FJXa4s/ZtA6pN7GmzdapVBnOESR7Tf9piSq1L
         HX22/DvkFoWAFpKhQcw3Xh42PfGo9v9RqxvPlfg8AFb3O17WTpjL408y6ftl312Ln9Xx
         56F59aEg0XRs+Py05UVo+TZC9Rl7xBwHkRibynOi/gu0jxqbKt7MPMDgkCM3G9Rm2Unu
         AwwotyDjP2tHM004yf5T4dtCsDRikzntsl/iJx4Lki2q3aLFtKAvYbj/78TqqcGf+SKs
         qgguSvKpcdGWb0M4Rlljlrz38EJ1+txy/R4gSqOmWaKDYBkO+JxBhNHfxhwzDmTAl8lp
         ToeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=eAzRDo314DwpqSCtRrPdwq25STQ7t6umx171HFgVOI0=;
        b=bFhy9dbGSGgcYam/wiO8PtdOmXnO8iq2Oe6miDz4AX38zSfTYgMmB0rM+SFb5tavcD
         67rwld4TfYA9CxI7N0CsI25aMtnvIJEOxSb2Pq30n1zw4PMQsmOOp5ejX0W5GG0lFgUo
         tezA6wsYODJJbXGAS1/r9pSuB61zGCvYsCYfO6Gk8X2WVaXZBzoU6JPdLtyGIznFmBZ8
         uO0LIMjUmycrRvjSQMIgay3vEn4Iu0ArEOZlJZDK/1MPog16JMiSbNgzMP26kVClAnqC
         9RQH1Aw/A7SUP0TYDG/dMJdult3ufB0ej+vHR7DamImMQ4mypBLOm8EKuHVcdlvKMWrQ
         qjaQ==
X-Gm-Message-State: AOAM530rc85B3MDSLWG4avl0kLYMGzVwWLUPrzSgd5OAYwzRW7z2TJjv
	d5b1k/JbZWA3ULbMieHTsJ0=
X-Received: by 2002:a17:90a:bb86:: with SMTP id v6mr23601738pjr.37.1618140897928;
        Sun, 11 Apr 2021 04:34:57 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id 129sm5120429pgi.76.2021.04.11.04.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 04:34:57 -0700 (PDT)
Date: Sun, 11 Apr 2021 17:04:46 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v4 0/3] staging: rtl8192e: modified log message
Message-ID: <cover.1618139271.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes style issues
Changes from v3:-
[PATCH v3 1/3]:- Modified log message.
[PATCH V3 2/3]:- No changes.
[PATCH v3 3/3]:- No changes

Changes from v2:-
[PATCH v2 1/3]:- Modified subject description.
[PATCH V2 2/3]:- No changes.
[PATCH v2 3/3]:- Rectified spelling mistake in subject description.

Changes from v1:-
[PATCH 1/3]:- Removed unnecessary parentheses around boolean expression.
Changes has been made in v2.
[PATCH 2/3]:- No changes.
[PATCH 3/3]:- No changes.

Mitali Borkar (3):
staging: rtl8192e: remove parentheses around boolean expression
staging: rtl8192e: remove unnecessary ftrace-like logging
staging: rtl8192e: remove unnecessary parentheses

drivers/staging/rtl8192e/rtl819x_HTProc.c | 18 ++-
1 files changed, 7 insertions(+), 11 deletions(-)


-- 
2.30.2


