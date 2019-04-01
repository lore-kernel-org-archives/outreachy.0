X-GM-THRID: 6675008112137601024
X-Received: by 2002:a24:4204:: with SMTP id i4mr7070733itb.0.1554146435028;
        Mon, 01 Apr 2019 12:20:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:b:: with SMTP id 11ls178843ita.0.gmail; Mon, 01 Apr 2019
 12:20:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw0pxpxpGPBagKekMTiM71hT7WXNKyd2oHfCCb9ckPxrYRYsXmf5m2jK+lO2dsRf1PtFXcu
X-Received: by 2002:a24:5ed3:: with SMTP id h202mr6906694itb.17.1554146434005;
        Mon, 01 Apr 2019 12:20:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554146434; cv=none;
        d=google.com; s=arc-20160816;
        b=bk/I8vdvSj4RUmDxYUak2d28Ljxe3A0AT79fNcpMDsOygCiLJFujf7SA8YJq0wTVRK
         U0FsnLOuoSsJRH/1JZv1Txv55DTU2hfdM8SLUwwHN8Cbh+7wVw8hHU1mccfryC3tBkDp
         pTSBr0S2jsLwBbGYITinYpLbisnG0vu3MbVqccF1HOO9nur3ZSqmipzYCPeMjt1mcdyH
         nKoz2Q3tMlkQgDg1KZnMqKWOWJpC38DnYwlIRQercwTiJi2Fr7HZbD/ndv0rzrjd/Etv
         jhLbtcFUfedq7Qq/aE8u+oWVL1K7O1kpEvc5bROty8FgrakhANW897nMOY9xpvdls4Ej
         2qXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=51ldBCtD0i1+BfxNxt9qjCtddk+22VLNLmAkNwKJGh4=;
        b=j2n/xsu2MGALvJj4HWCcgIdxxj6jGTOUwgaCTEvA9INgXm7JYIakPR8lLqGU7pR184
         dXj/WvgJ4EciZ8qnqmoCgTRSTzIMjd4PIw/nkIf4yDkhJ9UF8CcEkG3HZWjbyL0cKC0o
         udTTwNv1nW4xZqjgd5I+dFG1r681yT5qzdpigOYaXqfChZEfVGEVXNEO9p+EIBEm/G38
         xrsPIPPAx6zd8w4uT3/WCuHC24Ea3hldbQ+FB41BsMxTrtjR15h2smTO15wKzMeM4qvh
         BRAXgLKi59unu97xaycix94ARfRXmIBcnbP2dhuOqAkZrS417zzFZVw6RBdKo/5aqgfC
         lMzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="h2A8BO/G";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 196si1471254itw.0.2019.04.01.12.20.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 12:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="h2A8BO/G";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id c207so5052559pfc.7
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 12:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=51ldBCtD0i1+BfxNxt9qjCtddk+22VLNLmAkNwKJGh4=;
        b=h2A8BO/GirEHNtLOsmMJ/nxeqhE/U7YzoBEzN2bgENk47rPfRX3VT6awGNswfNnCLe
         +uZjhSsZiKrGoh/2SsJXdTiiuwlBwtSoD97PLfAEIXPuNFTIvxV+gyLwGanH9h2nAeh9
         hSpElMmCl08Gl+QRmkT4/hHBo41AY4nvVD0A29M1uUfkEdjKHk8JeGPrkkQbnPdV9zdg
         1SQVntV0+EJ0fcvDEdosAqGfyy0F4KmhlKFtAlpKJmiXwY4rdcZJWEew/Ch9s+t+g/Fa
         mOauHweK/Qs9cTBcQAXMc33UMzLlj3wJTp0BxClqj3q80o4SoDtszf82/N/3zGbguTWu
         b+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=51ldBCtD0i1+BfxNxt9qjCtddk+22VLNLmAkNwKJGh4=;
        b=H1FTVn9MSpS6/nfdebLBw5Q/HLx+WednuyOn/yF91w63ANEC6NKSzDDaIy/65yHBw4
         qJgC2F6ESyA6OPBE0/6ais6BLDoKfOQx8L4PsLNmH1xtXeJZQb09ic8PnaiuYChXme2q
         Ydm4iIswOGUnpMC9LBk7OXjB6J3TuRIsmKIVxOSzhPQP8NKoZY1jyPw0UqQCaHFBZ0Za
         HU34ERInD6JPqT3iVvzbUIug+XgDYcvNOSibvOuOl9g5ETRGZW7zNgLwbdPWSOTokMz5
         AvA1ZSzInShC9jxWG5vdhbwxHeYdrFn21R47iZRSk50NvGUzw0j6SGZ9lNKnKJYLmz59
         4Sjg==
X-Gm-Message-State: APjAAAWuMR4l0BT1Ez68mkBLolLAZKRwEw9oYsE09mzuR2OmzLYzNKMz
	VSHtZhhTH3f3eCr8JMZ4IaI=
X-Received: by 2002:a62:b602:: with SMTP id j2mr51127568pff.68.1554146432704;
        Mon, 01 Apr 2019 12:20:32 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id c1sm14246172pgk.44.2019.04.01.12.20.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 12:20:31 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 0/2] staging: media: omap4iss: redefine and use to_iss_buffer
Date: Tue,  2 Apr 2019 00:50:13 +0530
Message-Id: <20190401192015.96166-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

These patches 
- redefines an unused macro to_iss_buffer into an inline
function
- uses that inline function in suitable functions

Himadri Pandya (2):
  staging: media: omap4iss: redefine to_iss_buffer()
  staging: media: omap4iss: use to_iss_buffer instead of container_of

 drivers/staging/media/omap4iss/iss_video.c | 9 +++------
 drivers/staging/media/omap4iss/iss_video.h | 7 ++++++-
 2 files changed, 9 insertions(+), 7 deletions(-)

-- 
2.17.1


