X-GM-THRID: 6467514574021066752
X-Received: by 10.99.114.88 with SMTP id c24mr1011510pgn.108.1505835581477;
        Tue, 19 Sep 2017 08:39:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.189.2 with SMTP id x2ls7099205ite.19.canary-gmail; Tue, 19
 Sep 2017 08:39:40 -0700 (PDT)
X-Received: by 10.200.49.25 with SMTP id g25mr831631qtb.30.1505835580658;
        Tue, 19 Sep 2017 08:39:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835580; cv=none;
        d=google.com; s=arc-20160816;
        b=xm4pKLSgi+FsMM5JYdMYhS6DZ/pkcC2sn/P8i31hz7K/eDgirVtcA6r92xyago1BaZ
         ngCr2p84dsKOUr/ziPt7nEaPojFFQyvXKFof4/YDgUJD4MbtHCpF7V8qMAkyqbtfzpTV
         aia1YFiZD6UYKuR3aNLAFmrB+Psaw1hzBfLWJCGdZe7dgHeSZtGpe5nUSWIVf5ptbCpx
         hRX/BcdNita9X1YWZ6TGNIG6LVl1hLUJ4aOeGOQsJr99FjkyAGJJ01B3OrbNM4rsSr67
         6NFcenL5oZrBfzf3YivofHNZ9PPn5I9TUwU87w58NPNaWs0QbjDSoj5P6a5vPr4+MwL7
         mH7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=VI4aXG3DTMiq6kVnm5OKLidT9AUOvGHQ3i1q1gZZ5Kc=;
        b=Q3+A0+yH33PMlIsJOCEaWU11zwkcO+u068NVPzuq/m0WLdNQwooXm79dU2FUTpoJli
         QSB1nM7xKfBqc0o7q9zWheiCUbOBmIgZgPGLvy5/bioEmsdXPAigaz30tmItNZkVsY4E
         iJ3W4p9Qe2VSJzyy3FphQbBpPggl3z7EVLYn/egoOQY8l/Cj8sp4B/d/i+KXhtQZ7vyU
         e3chklFefUN+ZPImAfNhkxWIDEUEynVDsKNkzh02x2XIOgd3qZ6f/ewEU3i4QQdfCGQi
         2Exsc9ZQcSrUJQWhZvsLv+EXZjTZKXrN5QbaNHw2l/so8j77g/h7dZ+dA6CgUpYVA6bP
         bXtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q91bqiD6;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 88si252921pfm.20.2017.09.19.08.39.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:39:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q91bqiD6;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id i130so11775pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Sep 2017 08:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VI4aXG3DTMiq6kVnm5OKLidT9AUOvGHQ3i1q1gZZ5Kc=;
        b=q91bqiD6V+4BwQwWYJQ/1SNKSIP7LiCEK41jGaRNQg5c4/U2NzPi/SpV0cAKNaNM6R
         4NC7YW9Ed7bfI6/2BqGR0Z9U0HR5uRZVdNLxmnkztfLI2Fgu+idCB/tFa+K/312jFyAH
         pItKH1bkN5t2z0Y/HHc4/uCq6hJdb9N+y0U4XBvd/nRXOhBeTwV4bzqdhrDT3GE+ugrs
         cZ8h92zDOPmQiaWr9oGuKtV+kTq/A6T/il/1JxR7sC8ii+RFesSNkjqmB+s0B1MOFj+B
         xyFEax7e9qbn/WZdw75BpoPXDooN5t2Xe9ALh0nL6wmuHh18EwfmT6897w/WBAULznjP
         Xswg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VI4aXG3DTMiq6kVnm5OKLidT9AUOvGHQ3i1q1gZZ5Kc=;
        b=VUNq73A2UAzK385sP3TL4p67mBYzxuc7z/sj+TS5BKs2qkGbBgDkYDkooKbKp5RTcz
         rHWHwoP1RKPWfkbk9tK6nenSER3RsHOIVoMNIVMsLee1fT7Hwy3hIVnoHzFEtpeASltv
         W7J8v3OWR6BbJ+L+wUbIdlOBfXhcZBO55jOKc/VXZszzJNUbmRF9iuyaR/chTmqLMrp5
         6cW7NFnKTx3NCewB64Sd6S8lJja/UhT7eRVqa061Zk6GdfI6npgkdU6pd7WHjDaTHWk1
         EGezMpqMIpFtgkbhQKdaF4MPR3a77T4CcxATqeSALdQWxxWcEdL09xfmnDkdVPlEOkEH
         vsIQ==
X-Gm-Message-State: AHPjjUg/GTN1W1UEVppVMf1qIQLBZf214xWqBw1OS/OtDiNdTnwlJdZ8
	T1UwJtbWD6f9PBRrqVkMmFo=
X-Google-Smtp-Source: AOwi7QBCYIZv1JxU8rDeRFR/I01L5BA3fSgli2scrJH8sR2GfgkcNJ8U0OTSjoaDAFy5eoX4nBsEpA==
X-Received: by 10.101.81.77 with SMTP id g13mr1678386pgq.78.1505835579817;
        Tue, 19 Sep 2017 08:39:39 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([2405:204:300f:5ad2:74dd:e91f:361a:e01e])
        by smtp.gmail.com with ESMTPSA id q73sm5968409pfl.147.2017.09.19.08.39.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Sep 2017 08:39:39 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 00/12] staging: lustre: fix code styling issues and remove macros without users
Date: Tue, 19 Sep 2017 21:09:12 +0530
Message-Id: <cover.1505834825.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix: 
- multi line comment styling 
- line over 80 characters 
- macro definitions warnings by checkpatch.pl 
- drops macros without any users 
- Comparisons should place the constant on the right side

This patch series includes all the patches I sent for this driver to
show the correct order.

Aastha Gupta (12):
  staging: lustre: fix incorrect multi-line comment style
  staging: lustre: fix comparisons should place the constant on the
    right side
  staging: lustre: fix macro definitions warnings
  staging: lustre: drop macro that has no uses
  staging: lustre: put trailing */ on separate line
  staging: lustre: fid: fix line over 80 characters
  staging: lustre: fld: fix line over 80 characters
  staging: lustre: ldlm: fix lines over 80 characters in ldlm files
  staging: lustre: llite: fix lines over 80 characters in llite files
  staging: lustre: llite: fix identation in dir
  staging: lustre: lllite: fix multi line comments alignment in file
  staging: lustre: llite: fix multi line comments style

 drivers/staging/lustre/lustre/fid/fid_request.c    |  3 +-
 drivers/staging/lustre/lustre/fld/fld_request.c    |  3 +-
 drivers/staging/lustre/lustre/include/lu_object.h  | 18 ++++----
 .../lustre/lustre/include/lustre_dlm_flags.h       |  6 ++-
 .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++++++++--------
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 +-
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++-----
 drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++-
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++-------
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
 drivers/staging/lustre/lustre/llite/dcache.c       |  9 ++--
 drivers/staging/lustre/lustre/llite/dir.c          | 24 ++++++----
 drivers/staging/lustre/lustre/llite/file.c         | 16 ++++---
 .../staging/lustre/lustre/llite/llite_internal.h   | 25 +++++++----
 drivers/staging/lustre/lustre/llite/llite_lib.c    | 45 ++++++++++++-------
 drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 +-
 drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 +-
 drivers/staging/lustre/lustre/llite/namei.c        | 24 ++++++----
 drivers/staging/lustre/lustre/llite/rw.c           | 15 ++++---
 drivers/staging/lustre/lustre/llite/rw26.c         |  3 +-
 drivers/staging/lustre/lustre/llite/statahead.c    | 18 +++++---
 drivers/staging/lustre/lustre/llite/super25.c      |  3 +-
 drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 +-
 26 files changed, 242 insertions(+), 132 deletions(-)

-- 
2.7.4


