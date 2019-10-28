X-GM-THRID: 6752952386493349888
X-Received: by 2002:aca:1e0c:: with SMTP id m12mr990071oic.18.1572294250303;
        Mon, 28 Oct 2019 13:24:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:68d7:: with SMTP id i23ls153007oto.5.gmail; Mon, 28 Oct
 2019 13:24:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqySfrnOwQxiPhNcdqnAZsFv0lQ7l2rYxoBj3a9LgFnHTtcFw2OIcKJHONcZkBCjJgpidLNf
X-Received: by 2002:a9d:730e:: with SMTP id e14mr2399392otk.127.1572294249352;
        Mon, 28 Oct 2019 13:24:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572294249; cv=none;
        d=google.com; s=arc-20160816;
        b=X1p/9FPA4suSZrHEpTvSYLfXBp7uaH7kawLADJXV6Ecxmir4GRb+TYF36VJfXDxa1Q
         GCNLqCkD9g3g2xkdoy3qrU66w6nJzDRnCUNmDK4bAPVhnf5fovAMIvnTgH5E7frQqRJ8
         tCg8EfiwRwV9NyNeQKZQgRsVtnri97MOZCFPq0KmktUFmDpXfI188pRc5GoYHAvh4A+B
         RKshB8o6jG1oXP9U7Ea+KDZHaPWGVAy+se4EIZShcGeTLn1MSPWNG3WpJR7STZ3s476c
         5wNzo6k3+k5pphBDBBZd6bk9+9BxWrN0mvE/qvIv8zKoW+GLCHWKTJCNwE3Pyj5+6FcP
         vBzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=VCk05+7E1vB+3vyTt/2CYhsflK2/l1JT1EqTf6oGIbc=;
        b=gcNiUCkmQPC0fwGPXccRvSL92rOtRIVM+dh5XYNHE00LID0Ey3MZn5RWZDwu+wMend
         2r69yK5K9mSfq4/vo5R5PAr3yY30pKywIgDtHYbwhYJRb0ZehabFExV4qV0e2UcS/AQ2
         YKNSl676f0FxhS2ep8vk9g1tQ9q1hyr/EIsDmWDcQf1qOVSy+qv4zvfWT/zevtE8O+kp
         SWouk/nTag417QG344I0TSketUSuiLEzINuhI9yXgh77L+xbibjbmdveRrYR8wJ5u274
         SC95Msr7rM8MfLivOJS9unmkWE1QrUF4iNC3Ka+SitkBB6ivVgu+ybGu2UMLPDzXri0t
         v2NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k0rFSgmh;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w205si463049oib.2.2019.10.28.13.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 13:24:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k0rFSgmh;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id b25so7661767pfi.13
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 13:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VCk05+7E1vB+3vyTt/2CYhsflK2/l1JT1EqTf6oGIbc=;
        b=k0rFSgmhUujAp5U71YEWflYlzs9eXvtLIh0WS7JybK/wGFC8247D6P4aW5bke9WY7F
         HerlbG9s9Ne9eU0FgthD+umoq20nCqkqKwwUF6Et1jqWuHBR3X5ufG+3o/kZhA4tT/ip
         dihLeab+ZBnbglqNQ3wUKKyHVlMGQAIrytHQUupw6+B5/0VU0TDmVKgO4wBeRXvxO55Q
         yG00cLemFSqdNNroMb9XNCgaVRbdXsLJw8eb+bWwaVUA79u/RJkX59291vGHpFNOeTiI
         QD4RYl5s0mNyZPtbdzenw1wyItr3nXdsC1NkjhFyxNiSiuqrJSX4hl39sBl5DIiNzx8/
         QIYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VCk05+7E1vB+3vyTt/2CYhsflK2/l1JT1EqTf6oGIbc=;
        b=OeCm4XaAw08pJpTzGo04sF00K/PdJInBDgfuYlAWASZ7m/o4J5DGUP/xWpzwBRFFcN
         l1Nro0BgaVPdLLJIsYDV+bhSVgXxumnNL2LRmQ2TraDH3e0CFj8R204WSciGRtgm5EcC
         k0Kqq5BNiM69oQvBO9BqAoly6Px5xuobvvtkhUfKAwvTKA6cWkCopAZ5rikPImBVk5Ly
         /eJ0GG+kG4PdXhq4h1aksWjY622I4/+GtvtQoX8aDlvFZcxmAGxTHWSPqDN4TvGQ6UiU
         knF1/3NJw3S24Ra/NlPPlo/1cUCXkCrNHTpjyMRNYxiQDhnAOmy9rK7xlJoqOO3/gBzY
         daEA==
X-Gm-Message-State: APjAAAVdo4cXfONYFjFSE8+1/E10M1s91qAt/tKfEH1VHkxQMxnbzJqt
	yE6QpOBdGD7HXVuJt7ibIFk=
X-Received: by 2002:a17:90a:6583:: with SMTP id k3mr1487994pjj.50.1572294248572;
        Mon, 28 Oct 2019 13:24:08 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id g24sm12264011pfi.81.2019.10.28.13.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 13:24:07 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 0/2] staging: kpc2000_i2c cleanup
Date: Mon, 28 Oct 2019 13:24:02 -0700
Message-Id: <cover.1572293975.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch addresses checkpatch cleanup and general cleanup per the TODO

Patch 1 fixes line over 80 character warnings found by checkpatch.

Patch 2 Removes some commented out code but currently a few commented
out code remains for reference.

Changes in v3:
 Patch 1:
 - Adjusted indentation for STATUS_FLAGS macro for better
   readability
 - Place SMBus dev_err string and status variable on same line
   for readibility.
Changes in v2:
 Patch 1:
 - Indent code with preceeding left parenthesis.
 - Remove extra parenthesis in while statement.
 - Place related code on the same line where possible.

Jamal Shareef (2):
  staging: kpc2000: kpc_i2c: Fix lines over 80 chars
  staging: kpc2000: kpc_i2c: Remove commented code

 drivers/staging/kpc2000/kpc2000_i2c.c | 204 +++++++++++++++++---------
 1 file changed, 137 insertions(+), 67 deletions(-)

-- 
2.17.1


