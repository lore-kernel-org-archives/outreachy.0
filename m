X-GM-THRID: 6808044843867045888
X-Received: by 2002:a17:90a:7182:: with SMTP id i2mr1792817pjk.74.1585121463113;
        Wed, 25 Mar 2020 00:31:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls919268pfy.11.gmail; Wed, 25 Mar
 2020 00:31:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvqxJDqSulfgxkWFCGkjQcn99CqrSwSzHqAeB4KjHvNLt6iw/vzld/KRRGTHOGR/IwdiBut
X-Received: by 2002:a65:4081:: with SMTP id t1mr1928282pgp.134.1585121461341;
        Wed, 25 Mar 2020 00:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121461; cv=none;
        d=google.com; s=arc-20160816;
        b=FmMJlB81ELOcStkpnbndF0twoAv5J33EVN+rJz93T41vpydyX3e7eyA7sVxk0a1YzR
         fqajf4kbjwB/saicza0DFxzPvH4q4xb/Pz2YRX6lKzpnnge55q8Ej9CVbmDKL+YbdDNi
         XO3JaSEbkGf7Y8NrkFLJnWfQCeo6cY8YJ0DlLumi5GiOz4nIQbsftjy4ntYYNVtj4Nwr
         BWcBh9FTCPFQomk+v35luSqeTOF4jma1SxOlcM9gRqD8Yss/GyVlmvQZMyN21n46lPqz
         rMUzta0OZogOmd1IXNZBojCL6O8caIcZSOGvlX9VRkBmPRjkh70BU/UQSaqIz/M4mC01
         O54Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=I+3yqbTV58Mhx/4oyhMJJep+cvPGOp5j2CMrv4j4VQE=;
        b=Q6XdA7bZ4TT5C3Se8pl/GKjqvyTspbwnEyyWn1uWtsxps25X56iokrwfSpKzou01jX
         lP5WNnAgAYsX1X4LfFiWL7w6YEZZB51BEYiHtrkks7XbuWRAqKA3eY+JvdHp5CDbIUV2
         FCEXsm+Wm7kw1FuHV9se/GamNqE3YWNGovSxMDZM6GQhOZhc0nopf+Esrism1m7CsQlB
         +CyO8qWAXfbVrok37jA4QuBcZGi6meh0AMPUkfbu+pqFpLEKVV95RXdEMAvPfpaaG2IM
         pgcgp2L2ABYTqt427/s/mcLqEY6ZCEQH4NMNybEDbgi8YYgVw8/1mG36puKiym0coxlJ
         2Uyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SkpAI/mz";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id f8si337452pjw.3.2020.03.25.00.31.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:31:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SkpAI/mz";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id d37so236673pgl.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 00:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=I+3yqbTV58Mhx/4oyhMJJep+cvPGOp5j2CMrv4j4VQE=;
        b=SkpAI/mzUDKmCmiQoV+HRAy8NFxcbWo8yxrnmI9kgLsjaBwj0xpbIyevOR6QT/y2dk
         mu/34Lyz4nUb4g9LpnVccylAKYJGneNoDhA2ZfiLU0BV9UB57cOUR8/sFz309rUBrvk+
         Qb6Ia2eZVM+E2/Vm/IiMdKL9JN3f64zwadKOvMvT68o3Nol2aEqKTCUbFag9HmclFhRD
         MTQinjrbDhytfUoMMGYEVGEUcI6RRjopOCZ1OOMLnB/CR9QYFew/9ZCJncLel1LqO1zz
         /Z3W6rQFKzl8+qeKm5iPxCPshnDZfwjAU4+tz8TuagRfmhy70gdConUvkIY4QA5j1HdI
         ob7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=I+3yqbTV58Mhx/4oyhMJJep+cvPGOp5j2CMrv4j4VQE=;
        b=hosoJTErBUZdX8/gn09IYJwJUWpybA5URcQgNSvhNWE5z6uPoHG2C7m43QIemE1DHH
         TkBJz6H6RN1bMNCpu39QSRHBKOe6V6BQ/q+be/zH9i4TXYlqsOcLMGyjGND/6ixcK5Rv
         vffb0qyhDFQbIbVJChes9XhYC2FTU2Ae77xqFQV1UcByC7vqDkzTy4FBEP50PafS2mm6
         37i1i/vune1PUoclAnL/frDO5uXxn1RgIhPDRrJHsGcOONJh0OGA9ULlxRANc68gF8L9
         oe5RHIewOIKd9HbhSxIsRj9gsTSr7NdOEH1MVw1ZZRBwDDjDVQBeJBWzcieDPqVyzT4l
         MpCA==
X-Gm-Message-State: ANhLgQ2DVdujzrRfOkph/Hl86iuNixbOirPz5nhrJ38h98URExsluH5U
	9DGhgMS4RVL0Nmgw+6eI69fdi7bZTP8P0qjD
X-Received: by 2002:a63:1d7:: with SMTP id 206mr1598400pgb.99.1585121460198;
        Wed, 25 Mar 2020 00:31:00 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.229.149])
        by smtp.googlemail.com with ESMTPSA id m11sm3896670pjl.18.2020.03.25.00.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 00:30:59 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 0/6] staging: hp100: Remove spaces and extra blank lines
Date: Wed, 25 Mar 2020 12:58:59 +0530
Message-Id: <20200325072905.29066-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset properly indents the multiline comments, add blank line
between end of multiline comment "*/" and function definition, correct
typo in comment,remove space after * in pointer declarations,add space
after "," in function arguments and remove space after opening
parenthesis "(" in if statement for the same file hp100.c present under 
drivers/staging/hp directory.

Soumyajit Deb (6):
  staging: hp100: Properly indent the multiline comment
  staging: hp100: Add blank line between end of comment and function
    definition
  Correct typo in the comment
  staging: hp100: Remove space after * in pointer declaration.
  Staging: hp100: Add space after "," in function arguments.
  staging: hp100: Remove space after opening parenthesis "("

 drivers/staging/hp/hp100.c | 33 +++++++++++++++++++++++----------
 1 file changed, 23 insertions(+), 10 deletions(-)

-- 
2.17.1


