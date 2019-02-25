X-GM-THRID: 6661088091510407168
X-Received: by 2002:a24:42c3:: with SMTP id i186mr8075632itb.2.1551108568995;
        Mon, 25 Feb 2019 07:29:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls3536894ita.0.canary-gmail; Mon,
 25 Feb 2019 07:29:28 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbFnqKNSe4XjFIXMmwuXFz7VjNTG1b2NH+Mv9Mbe60jJYK4qsnMTzDuUfXfvktPCtCTwGV6
X-Received: by 2002:a24:5714:: with SMTP id u20mr4440504ita.6.1551108568215;
        Mon, 25 Feb 2019 07:29:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108568; cv=none;
        d=google.com; s=arc-20160816;
        b=anw7IS7T+C34d47kdbvLmeaSYoH4HH9IhdeDtWv+ERZrJHyundnP+JqoAyxtKZfkUt
         zVqEt0PEZ1JDNi0uWl1PUmQaL+1ny5BjiILmorA215Uun/WZrbULY1Ce8NQ0NPRL7HVM
         WRGczSjZ1+gugVBeBIYaVWq54PXYPbpVHLRoMWxyXoz98/xzgZuCcAA2iha7W1qYyxFg
         PnMCIu46xaupDKytm0AGiavN11AwJgqQjjqtRYEkFBYaHuZrF5pLt9krf6Z15gON+qQY
         UA17AqXCHMHGH/RmQZItdXxs5S1+EqHudTiEPVXUwgXnOvQpF2FLLVSxxd3CTJLBIXAF
         n9dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+q109aGsUwyONRPJgOiyXyZk33BLNlLzZvNs7fCR8tw=;
        b=oYsnk3DWlYvKKHqH0Q6cU1rB1tAd1gQFucl9QfvARYkn2N8d2Gq+6hjuFIdNVL+0qN
         qoo6VMTC8iRun29Mtqi7vU5XFx9FGcprvjqJBjizTtWbc7Ig2QR8vieRs2IIKoHPSWV7
         bTutqEJnq9S2m80o1Yn71wgo2eaSy+3XPsKXfi6oBvpRAd2jsxcFmJ7QH/yPxm5f567H
         90KH9rzUENRTTSJFIyPegyzWbcnsOS1T6IdVUCJ6Bz9XWaRr6vzBd0Z4O/OBR3cCzPTS
         xollUFe91lkbxp2ThZ7jB6JQZbb+kolnEZrnN4c2jheFnhQncGQ/OiJi+cn95WyFzJ0I
         /1Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MBXYLl//";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id v63si693500iof.0.2019.02.25.07.29.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:28 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MBXYLl//";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id c4so4643443pls.11
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+q109aGsUwyONRPJgOiyXyZk33BLNlLzZvNs7fCR8tw=;
        b=MBXYLl//9fWaMnyzgBZpiBby9yr167sMWqqWbhoJ3JXHnieCRLAdreAgB8F4pfyGHM
         qa1dVkTO2qFJ3U3aWb+acDyjnIPXsS7YU5gvdCA5qYka0fSTORLuDH3GkcKjLQuk4Cj8
         N+on/2Y85FAnnkEt8KlY5hBngOuCJ/HvZ96t833B1FVwKxJmMLflkApG+kB3kVFJaFne
         hpCEMer36hmQPTUZvmHlVJapMJ7+aZI+fLq2qlEWd3iqvCjuq/Ta2AMEPdXoOiYy5JmB
         GlEI2n1s/Aa3fMTuh6S6IJ6ryMhhKZfRxmJlfxw0uwGDkjDMi037YqJGTSUqwL7SVvYE
         NpYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+q109aGsUwyONRPJgOiyXyZk33BLNlLzZvNs7fCR8tw=;
        b=offmODKpLeylL3GDyCb4bOnTc8ZttcPxTlqcGlC0x8M0I6e7o2pIwIyE1foYJAXMKu
         PAByE1NeCz7kPbc/l2IYPlTYlK/hz5Doy7Hqi0uIuESoHshRLVdHrSBWKQs8uxaRlHhE
         UIEayHVZinS2Dbtq/yBJ2L1uUwqOY+sTAopB2UtTIrR7XGo3Y8bu6EgYEoF+H5DUxJ21
         LCBicUImFyiBr2kyQVfTjMZzeCY3I4dP66H8BxLW5uDlFZlBzvHY4YinXX5S2q//Ogmi
         BboR7SFBs7fwsGPDc7Iq5weIJUjUbTvc+f3rfX8i914knHaaJK4hJba59q0Bp58uRcyS
         BI6Q==
X-Gm-Message-State: AHQUAuYmORVLQH1q9nazoWU+vn54MqAGcbk8MV7T+JBFZChjgMbbtOTg
	epJcjWpWG9zCMlv3zgGFQf/wV2hmCL8=
X-Received: by 2002:a17:902:59c1:: with SMTP id d1mr20612067plj.324.1551108567347;
        Mon, 25 Feb 2019 07:29:27 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f15sm2284515pfa.11.2019.02.25.07.29.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:29:26 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>
Subject: [PATCH v2 0/4] Staging: greybus: Fix various checkpatch.pl issues
Date: Mon, 25 Feb 2019 20:59:08 +0530
Message-Id: <20190225152912.10274-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Staging: greybus: Fix various checkpatch.pl issuesThis patch series cleans various checkpatch.pl issues
CHECK: Alignment should match open parenthesis
CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Please use a blank line after function/struct/union/enum declarations
CHECK: Please don't use multiple blank lines

v2:
   [PATCH 1/4]: Commit log modified
   [PATCH 2/4]: Commit log modified
   [PATCH 3/4]: Commit log modified
   [PATCH 4/4]: Commit log modified

Bhanusree Pola (4):
  Staging: greybus: Alignment should match open paranthesis
  Staging: greybus: Blank lines not required before '}'
  Staging: greybus: Use a blank line after declarations
  Staging: greybus: Do not use multiple blank lines

 drivers/staging/greybus/audio_topology.c | 1 -
 drivers/staging/greybus/bundle.c         | 2 +-
 drivers/staging/greybus/bundle.h         | 1 +
 drivers/staging/greybus/connection.h     | 2 +-
 drivers/staging/greybus/control.c        | 1 -
 drivers/staging/greybus/control.h        | 1 +
 drivers/staging/greybus/core.c           | 2 +-
 7 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.17.1


