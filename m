X-GM-THRID: 6607095314902941696
X-Received: by 2002:adf:ad4a:: with SMTP id p68-v6mr724644wrc.8.1538334254142;
        Sun, 30 Sep 2018 12:04:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f2ce:: with SMTP id d14-v6ls6141187wrp.14.gmail; Sun, 30
 Sep 2018 12:04:13 -0700 (PDT)
X-Google-Smtp-Source: ACcGV634T2CZAeRoV1lj3SgHtM+LQn+myUTdCPeeok+ZlUfcydLiRpsR4uiDxP5bTKs1Kj3m1s47
X-Received: by 2002:a5d:5201:: with SMTP id j1-v6mr789365wrv.30.1538334253004;
        Sun, 30 Sep 2018 12:04:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538334252; cv=none;
        d=google.com; s=arc-20160816;
        b=LvfkddsanY5PMtpHghX4Btc52wwal3ulerTXiraBOeqq6zQ8vDM7WZSXExZunhkQ3V
         V5yv+2daIAy0ERtgPepinbwUYHVPuCdeoLvUPeDha6nr08pif0v8/PusmhxOnnKTfrAl
         uGpYaMoPC0jWPPnoI0WdC/u/Y7gC+dp1LE/zhXx+TCiO0ZD6IbetuGEU9V7IKNEMldUg
         A7ghCwGSpoJfsKDOPWMk4eCgqUq2aOjejK55Hv26tx7B16YHicIQsa6vmMHKt1QN53sO
         b8iUqzoKgAG9xCtJKce33u3c9xyJfjm75OVAc2SgEQjWOzJw6kV5f5JMKzMASz/7IaVO
         AZ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=GHlq1lA1cwK7WaPMa8q75tnpw0JDV5jvKBbrgfUdI3Q=;
        b=lITjD8bNSD2/9L0GtibddvlkxxxVVcmmBY5I5nUV7WklBwx1Ixmb96WBytd7VkRCw0
         jZHzjUKuvevFdFZ9+fFmc9CnrkRbn8fGE2LEHLzEO9ECMLjJNsDcNy0R3U9n11iq4YX+
         7OuTJR/BiAN2PvhHQ7y3vS+mmclHeVfOsK5/mNvH0LojcS9vx5q0v0r8FOBob/rIeQBM
         e+0YftcOR9ceQsCetnpBc1pwzoo7yfxZDnywucAjfPsCmsPpzuxfUvodfmD9tiH0Mmuk
         3bAFCPeJnewK1R+PqGEj/TizVws+/RdNcjWlN7go0w1B+W5uQYubCAq/BU9Bz6Euv4Te
         dFtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rKMIFSST;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h188-v6si312448wmg.2.2018.09.30.12.04.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 Sep 2018 12:04:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rKMIFSST;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id 63-v6so4162716wra.11
        for <outreachy-kernel@googlegroups.com>; Sun, 30 Sep 2018 12:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GHlq1lA1cwK7WaPMa8q75tnpw0JDV5jvKBbrgfUdI3Q=;
        b=rKMIFSSTX3sHYOLn5QYspxFPicP7ReXB2zdzLNMpwea3XKxfYQjZI9EaBsYIn0ebuI
         LgaLwECznV6qQ9Pnf2YRc6Zbycop84fI5B2kqpe/4q+j8qGYnmUN3KgDDO1d+VaHKWAo
         BECpLc2gPByRE4Y4bHwAuAqohM7vH1v2wEEVcbEYxi8iNZTM5idILL5baqQFmEch6ulH
         z0OLmOxXgQQp9uZsQSEKyi7dbipayIEoEzYXUE5rPa2hrSNCgiScr8w9Eberz0eW6xer
         Eb9pgAFn9aneQ/aqOxoJYXenjV/8yX4FmpVNnt7JmfG1BEhIKeYGVrXlWsWB+yBc1/iv
         J7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GHlq1lA1cwK7WaPMa8q75tnpw0JDV5jvKBbrgfUdI3Q=;
        b=G7D+OjKpf3XHVCfzdTVUYFA+jMbJe1zMGchYW7eP9g8WZLZ9qh1/2ToUgYsezOB8AE
         4HrsqhsIuQCsl9LNJn1/fersX3o6OhFh73FRVFVf3wdqbVYLqC5JvLx1Ohm3nclwNoMN
         r95oeVa9K1uVNon5yMk7MwbpR9D02WhGL1yMR5aqs49w8FNJdCaG1dDZkrXVfxuXAOqs
         b525ioQjhbFrXsRmcgP8db8UQMv4tGhs0+Y+l7Z7m5xHsBmEUWrn7G0vvhVHRcZ+4JF/
         cQHn4ZV5KP9dSowOHxR/DtXzbku4r6t4bJ6Dl425rZWFilto76t+8oqVedlDIJWbw8cL
         YOBQ==
X-Gm-Message-State: ABuFfoj19AmYhxNeYEfFJKt0jBLc6YT2oAPx7sN7TR36JmFy6pQLFb/3
	T87zBHFRm4XCMyiG85HRxfQsB1vGjq0=
X-Received: by 2002:adf:a925:: with SMTP id u34-v6mr4506438wrc.175.1538334252431;
        Sun, 30 Sep 2018 12:04:12 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.home ([77.127.1.188])
        by smtp.gmail.com with ESMTPSA id n4-v6sm10657610wrr.21.2018.09.30.12.04.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 Sep 2018 12:04:11 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	dafna3@gmail.com
Subject: [PATCH 0/3] *** Cleanup patches for mt7621-mmc staging driver ***
Date: Sun, 30 Sep 2018 22:04:01 +0300
Message-Id: <cover.1538333858.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

3 Cleanup patches, all issues found with checkpatch.pl

Dafna Hirschfeld (3):
  staging: mt7621-mmc: remove unnecessary braces from 'if' statements
  staging: mt7621-mmc: Fix comparison to NULL
  staging: mt7621-mmc: replace `printk` with preferred API

 drivers/staging/mt7621-mmc/sd.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

-- 
2.17.1


