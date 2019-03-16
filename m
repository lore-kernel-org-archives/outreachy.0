X-GM-THRID: 6668981360875536384
X-Received: by 2002:a17:902:4ac2:: with SMTP id q2mr3276815plh.112.1552764300668;
        Sat, 16 Mar 2019 12:25:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8a85:: with SMTP id p5ls6503681plo.4.gmail; Sat, 16
 Mar 2019 12:24:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzfuTLeykiQ0Y5ZBRtgLARqRq4B11qUu1lWNFTA9fT3WrsqasZJp4Q/sB11M7GbvxFs0pAc
X-Received: by 2002:a17:902:7d8a:: with SMTP id a10mr3366308plm.10.1552764299883;
        Sat, 16 Mar 2019 12:24:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552764299; cv=none;
        d=google.com; s=arc-20160816;
        b=jqTheeMJ6b0VRyugDlqgxZlmNrZy8NXHh+sDQv+q+TDNgsZLktC6NvVy++VnwVK15K
         Gs8BLp0KredBBYiG621DjiV/euEKaRA44RwYkhMiC5RHdgBrTAu2pULO4CtJDjrd3THs
         DjMS6YChyS6Bo+2pSEJ5f92lp18bbhmZV2px9vruOOPrC//JIoWc1O9khJ3kMmXsWu83
         32YhWPWQeyftcJT3hk+N3EtPrRWzSddQ1WWEvkWTTzH3pg7K+a8qJ2cuFCrEI4jRFMtE
         ak8qsZ2ENNLpmgqw+0AMgO8rxebjAFj8bDyR4GI1TasBE8au8JQh06VPdAi8vW+ckpuC
         Egpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=stToT+nM+IsbkPVK/rZeYbUEclNEQZoEworbtRa/wnQ=;
        b=GAhYqv8zCxjm9qDlDQLl5SQB8aY97vPbngdsWNp9uw2/Kae1tEyKZRCH7NeCPkxEqE
         YGNpPiRvkoiJ93qYwKvBlB/4BWAHZYa4U20lFhesKD2uVehuaxPwP6v8Z1dmorIhTDzD
         EQ0EKUlwJUtvOWpkZHHJMDZcXgf/mMa+lwvzr5YuX92DQx1Zp/mWQjrdNCmTqD4QTK5N
         4Qur9GP96O1LlacJ2xrKRbTNnUqB1W4T6tZrjzAJa+kl2if8rXYBzmagtI8osEq/eL3D
         vKx87e6OFBoPmX1UgB53thyGcgzxwDJjhF9xM4IRBkcM3R60IlWGsdBu87odt4ResOgT
         2sJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DCTgdPN0;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id c12si309941pfc.2.2019.03.16.12.24.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:24:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DCTgdPN0;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52f.google.com with SMTP id u9so8659750pgo.7
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 12:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=stToT+nM+IsbkPVK/rZeYbUEclNEQZoEworbtRa/wnQ=;
        b=DCTgdPN06gVAfevTD/zHy8sSUICT7oRuLrabGdg0edhoT+LWzzy8rWwE06NjyQ+D2+
         OFs3C1E1gSb80IeQuUox+sB8Ex5wEse1hdLtfU8Q3PK2s7BHrNcIhBMIz2X+Vpwt9jc6
         7faacQLPXpeWd5lhQW/oWe27xUDTHGiV12FZDxeSG5074hW+Ho+UR4gjOMl6M6DglnVg
         f9GHOWfxyMDBWrIsPfn2LLTdyemFpFfLdkoZTxOJUk0obYBk5dmNl6uC2toC4JC0qC2V
         rhJXRVfrH1nRRIEajD5zUdunbM7zw7FR7NLjaEIUd9qMLAUfYa/EmJKUhTRgq7k7dmnF
         xlTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=stToT+nM+IsbkPVK/rZeYbUEclNEQZoEworbtRa/wnQ=;
        b=KEMXrhJOLptttLn2UK6hVWKQT5X29dT4haLffWLnRfaLb077Vupc3hEVTjN9C4OhdK
         J1ay9I4luIEHH8jBKwFBgbwec318jzUCwYR2eXy4zd0OoToRScs9f6HEbb/8x3vAzuj4
         8V5An9eANziCW6Xj0h5+J8MGBJYo233U6SK67g3oGbpZod2XbhQ1CG8/md56brDFnlcg
         QCmWATF9bOIM+Ux412Ld11EzU7De4gSAVp4sah3ScE7qRMOCMn1/uWardhvtLXW/JoL4
         FW6DudHumMIGR5NGJZXxkGIov/mvVBxJQx4WYq0jxnbJS8UGy7jSS1aODXzzVIvv9qOU
         O3Yg==
X-Gm-Message-State: APjAAAVf95nRKGRO/ZmnbFfLJ0qy+ABIK5OYVrnp3NY6VfZEoEfEHNeN
	GnYeHvNqAmZnWUHRkMP55z4=
X-Received: by 2002:a17:902:7609:: with SMTP id k9mr11402554pll.305.1552764299638;
        Sat, 16 Mar 2019 12:24:59 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.92])
        by smtp.googlemail.com with ESMTPSA id t23sm10668610pfa.111.2019.03.16.12.24.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 12:24:58 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/3] Staging: rtl8188eu: rtw_recv.c: fix  various warnings and checks in rtw_recv.c.
Date: Sun, 17 Mar 2019 00:54:49 +0530
Message-Id: <20190316192449.23145-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>

This series fix the following warning: 
fix a tab indent issue.

This series fix the following checks.
fix a paranthesis issue around ->
fix a space issue
Changes in v3:
Change the log message from the [PATCH v2 1/3]
Change the subject line from the [PATCH v2 2/3]
Change the log message from the [PATCH v2 2/3]
fix a overflow of 80 characters from the [PATCH v2 3/3]
fix a space issue around '>>' from the [PATCH v3 3/3]
fix a space issue around  '-' from the [PATCH v3 3/3]

Changes in v2:
Remove "From" line from the [PATCH 1/3]
Remove "From" line from the [PATCH 2/3]
Remove "From" line from the [PATCH 3/3]
Change subject line in [PATCH 2/3]
Change subject line in [PATCH 3/3]
Change log message in [PATCH 2/3]
Change log message in [PATCH 3/3]
Sanjana (3):
  Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
  Staging: rtl8188eu: rtw_recv.c: fix a paranthesis issue
  Staging: rtl8188eu: rtw_recv.c: fix a space issue

 drivers/staging/rtl8188eu/core/rtw_recv.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
2.17.1


