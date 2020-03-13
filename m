X-GM-THRID: 6803797198848917504
X-Received: by 2002:ac8:1e8e:: with SMTP id c14mr13633085qtm.330.1584132481084;
        Fri, 13 Mar 2020 13:48:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1971:: with SMTP id g46ls2695669qtk.7.gmail; Fri, 13 Mar
 2020 13:47:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvquhoLh36DbbbOAq4NZV01lhAhySLoXZJFvDZjOjjf4U0WKOmkZzFlwiisXHmrfOeEmEK3
X-Received: by 2002:ac8:4e25:: with SMTP id d5mr14324694qtw.361.1584132479525;
        Fri, 13 Mar 2020 13:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584132479; cv=none;
        d=google.com; s=arc-20160816;
        b=OWI6WWpRfh52z63RiJ5bedptm42Yl6fcJHdRzAHsWLmvxGW+dV+XaS4kTG5FQA1j46
         HTHlFaSOYI2JN4oQLxIcSkC5P/RGMiV8Yd/Ry4SUnLFE/XJtJML2t9BgbCTZxLn2xrWl
         jNwiFIr861OEbqu5j4bFwHGSB9a5TDM2ip10g7rx/1fD5rtqrR8au8rrK9FU7G6pIjX/
         G4zOn03rY6bapcfUzXtx3Lb0WxMibMMA4icF0qt+JtVhClml5VrN1fbach5JgPcguVwj
         5d7eOvAJFw0xmLxB/aDbz+0xFh9MV6NNanxuOw3Xrm3/NPGnN337nynIgrZ3Qm8LnUOp
         pYxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=DAmqzViTdKvhO97MYd459bKWGVLAq49GGb/jhmPflBU=;
        b=0KmJuF0x7XSjKkOjXV9KsBEYJRXs+cEsAgQrjAkRMVEyJIDpBhwRkgnOJHOgo52eRc
         L70FKpvmFWFv4uiP6TlmffkcczWwyTrFAAz6F0z8aGMlTQsODwFkZku29YHJQBfZlp2Q
         Y5+/L01BlfqBeEVw5OgiVVZKvX29L69Vs3jmGaO2LNGbsPijsi8CtqTk7cugA2oC80QA
         efshwubrQ5JtgOjwQK29PxsqGpbEnpc2kh9f6WcWdZboaep2kPycHgEJlt+PGRVYiZUT
         DcQY1/Qvl6k2NmqBCvHYifOc3iXUBGnzJ0O3unMz44xoXjookzNNhCjpiICi5WuOxk3L
         bFfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=KUFpH1aB;
       spf=neutral (google.com: 2607:f8b0:4864:20::541 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c194si470355qkb.0.2020.03.13.13.47.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:47:58 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::541 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=KUFpH1aB;
       spf=neutral (google.com: 2607:f8b0:4864:20::541 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x541.google.com with SMTP id m5so5672002pgg.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 13:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=DAmqzViTdKvhO97MYd459bKWGVLAq49GGb/jhmPflBU=;
        b=KUFpH1aBSbqkXombK5jcaTjyMvM0wgaQ23673GI94vlOcyMB4bM/TRJb8oeAKyImi0
         NAQOQeD66IH8zprRTEXdvH3tZCcum5wZ0Orf9jEDrwod7TcCF8BFVhbqfqKm72kUPlgj
         VqKWve86NzUA7wppwfMMq3yS2nhqefimoHUZZAjWTk8eLBV8ZQzcYqlAgRqJ2JB9lkyG
         zevxi8mDeIr+nPYAD+7QP+/G4WjXEk3VWarChsdG2L0A/kjyReaUMwYt3A/+K6nopu7z
         q5UzaRUeC/yjjdZ/05yCkUP/8xJDyLDEeZcUt439Q94FbI9WgD2JxUecd6m7Oc53lGOx
         jdSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DAmqzViTdKvhO97MYd459bKWGVLAq49GGb/jhmPflBU=;
        b=gnrPm6iS46+YRPeSZKDr9jp4hpDpfhWwq7xW4fVZrqHQ72QncqSKpTQA14OjjEuakA
         LpoBqJJwvfsQe+3jSeTqTeEZAg/zLFcNm9mn6JOiGJQ3X1Q7qV3sVW+i1Mf2hbgaRbF0
         y3Lj57oA96sctIMT6MtAx4HR7anVF/Z8Ya6fxkPs/h8tlHB5Dvzj3hRHDuQ50rnDhn+/
         KOUsbzs8SkaHfnatiMaFJL2uX2SvM2CvL78ob4p49N0NXMtwq938UZ5bHRXD5D/n2tai
         qfs6Vv372tuxdWExZsqXW5g5Qakr9WlZ6QGSMeZdNo6vfkB42BlLHu0l/F3fFF5ujP1p
         7dNQ==
X-Gm-Message-State: ANhLgQ27ONi2J8G4IedyZYxU3mLbrWb+1Q0ZTNi6/2E1UWwIGX3n1pJE
	q9yWV35mEziCbskpj3kpJWL7gQ==
X-Received: by 2002:a63:91c1:: with SMTP id l184mr14333425pge.341.1584132477219;
        Fri, 13 Mar 2020 13:47:57 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id c1sm3333417pje.24.2020.03.13.13.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 13:47:56 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 0/5] patchset for clean-ups in media
Date: Sat, 14 Mar 2020 02:17:34 +0530
Message-Id: <20200313204739.32676-1-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1

This patchset contains cleanups for staging driver `media`.
It removes a few unnecessary parentheses and temporary variables. It
also aligns lines with open parentheses and adds parentheses around and
argument in a macro to make the macro safe of any precedence issues that
might come.

Kaaira Gupta (5):
  staging: media: allegro: align with parenthesis
  staging: media: imx: remove temporary variable
  staging: media: imx: remove parentheses
  staging: media: hanto: remove parentheses
  staging: media: hantro: add parentheses

 drivers/staging/media/allegro-dvt/allegro-core.c | 12 ++++++------
 drivers/staging/media/hantro/hantro_postproc.c   |  4 ++--
 drivers/staging/media/imx/imx6-mipi-csi2.c       |  9 +++------
 drivers/staging/media/imx/imx7-mipi-csis.c       |  2 +-
 4 files changed, 12 insertions(+), 15 deletions(-)

-- 
2.17.1


