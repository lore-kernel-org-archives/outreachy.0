X-GM-THRID: 6809913191851622400
X-Received: by 2002:a17:902:9a03:: with SMTP id v3mr3995952plp.272.1585852027371;
        Thu, 02 Apr 2020 11:27:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8ac8:: with SMTP id b8ls3246305pfd.2.gmail; Thu, 02 Apr
 2020 11:27:06 -0700 (PDT)
X-Google-Smtp-Source: APiQypLwBYWq5Cc9OquAk3bSneJJ5TPFg0V/6mJIdj58aFzQlQWj9TIWB5MKh63yH9Y2is1NZu2b
X-Received: by 2002:aa7:8685:: with SMTP id d5mr4510080pfo.3.1585852026032;
        Thu, 02 Apr 2020 11:27:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585852026; cv=none;
        d=google.com; s=arc-20160816;
        b=uaS6EGMuGRycJC1fa/9FJTwCA0+wkIP+4kJO7rqADG/5vJnyculdMpjQMxEqPLBipu
         u9xslC0FOCVao+0mSaDbPcyCF3fUzjPa+gKxpR2FTdpiQKAlNMIjaDC1xN7TjmpPJG6B
         Z1RKgI8cFbjhKV/mqxjTt3V2rp0iIJJXULGlmS1ormNGVhd8k2dONXFMvUt3IUORTF6H
         zKQ/niLa/MzG173gdHzjN1zF8s1ftPMMgDqwvD3VuAY21ktAIxXK76MBfy9ipE3SFRSf
         T/KKc/969cGwh0qG8BwxM4b/FeObEd43NC9iSQsgS6OrrztZGnrK046MJnaAj7As0zmh
         jfeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=M6y3Amonkh8FVi/JjjTU8BA4ZsQcbxD7+qUKDHGs5Z4=;
        b=E4ql/gHnV1IHz8r7Q4YpRrqF2rl4DlatlEyA+XGmaIkV2IklU3FuctNYDxjJ2GhaJt
         mGXg9BxETc7VODMWllOYM4R0qLdHJrHKOS+yg/fdWbKBFbR60NPbgVEHyaATWzZWJC6k
         VLnr1llJA9cPgZjf2nuNs4CGuILqTadIHMoliLRHMaR8C8Z/Feg7rIu1/EZckRBEXAAU
         tM/KuOdIHphP50yLXfB2t9Zo0G5iyZ+iheP6nPnGjf2P1ktVtNukmlzCgR0tbXSyy8Fa
         Z+h1hngV2ttxJyxlqSKiHu1ThmnUdKdI2gL//e7P+IqYN7Sa5qdk9i942d7uJciJcnrc
         4tFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LXsT+bLc;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id c3si638844pje.1.2020.04.02.11.27.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 11:27:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LXsT+bLc;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id k18so1656359pll.6
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 11:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=M6y3Amonkh8FVi/JjjTU8BA4ZsQcbxD7+qUKDHGs5Z4=;
        b=LXsT+bLcPQPtcLjxnpipSP5jTTraeM989aAWJ3ddL9XXabefgJDaaUgnIoSjo+BVOa
         5K+r2qgpi4/5kYSMD5LeInbyPueYoCrZf2tHid4Exd4MI5OibTfzj9BISvAJ428arP9J
         HZzknZFccVPeqDA5OIc5MaO+J0gTNBSLvLkr36ueXML9O5mMgXv9JZeGckFdx7WiAjsQ
         ct5SoxRwAb+N8WbgtSV2K4oMcvoq4aSaL0LQMjCZHLzaHukbmwO0l+uFcIO+2B6aT/D+
         KWP8CDzluy9Qhq6kbp8zQzbqsCe3EIsrkmaVWMScVb7Ogf+5QcCQhzj1LWJ4h31Kkp6z
         AQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=M6y3Amonkh8FVi/JjjTU8BA4ZsQcbxD7+qUKDHGs5Z4=;
        b=tbcp0oP+MINjIgPQlHBi+2CYhUzWLTyRN7vNm0ilHwjoIan2HzIwkr0kxroZ1vQJr+
         P4vFlS4Tc6vlx8pQBK8PGMoI9iEuugWgGSZAo/7x9T3LzYI+pv4qlj2SmYplaFT4qtuJ
         YrHzMsEZr43M58BBe1czIOvSC+BCrhfA4+B0+GHeWFnakFPHkptZElxFklkW4gpfYjOa
         qjKKmjIypz2btApk5o+zhfTeg75De/Zm+yGsTYewzEU9ZAyEa3YAF30/c8u69uLGN7kl
         UxmLttK9szipRM+MnUuixIkl7WU28tx/0q184qCrbRRQFpbpQRQjiAzHm2h93O3Iq26j
         iF4A==
X-Gm-Message-State: AGi0PuaRRG23Lvu5/Z8aiGZBl/kf7DJ3rlKNiGIg9ztajm2I3AnhlxmQ
	rypt7Fkf/CUx2lL3/9wjOoQ=
X-Received: by 2002:a17:90b:438a:: with SMTP id in10mr5274907pjb.178.1585852025585;
        Thu, 02 Apr 2020 11:27:05 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([2409:4065:11f:6885:4516:34fe:f4bf:419b])
        by smtp.googlemail.com with ESMTPSA id x189sm4195398pfb.1.2020.04.02.11.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 11:27:04 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	julia.lawall@inria.fr,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v3 0/3] staging: rtl8188eu: Resolve various warnings reported by checkpatch.pl
Date: Thu,  2 Apr 2020 23:56:18 +0530
Message-Id: <20200402182621.61694-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset resolves coding style and indentation issues reported by
checkpatch.pl
This patchset properly structures a multiline comment by adding "*" at
the start of every line of the comment and also break lines into
mulitple lines to respect the 80 character width limit. Also, as
suggested by Stefano Brivio <sbrivio@redhat.com>, this patchset also
removes extra unnecessary parentheses to improve code readability, all
for the same file rtw_ap.c present under drivers/staging/rtl8188eu/core
directory.

Changes in v3:
  -PATCH 1/3: No change
  -PATCH 2/3: replace PATCH 2/3 with PATCH 3/3, as suggested by Stefano
	      Brivio <sbrivio@redhat.com>.
  -PATCH 3/3: replace PATCH 3/3 with PATCH 2/3 as suggested by Stefano
	      Brivio <sbrivio@redhat.com>. Also, align 0x3f below the
	      left end of function call as suggested by Julia Lawall
	      <julia.lawall@inria.fr>

Changes in v2:
  -PATCH 1/3: No change
  -PATCH 2/3: Add curly brackets in conditional statements to improve
	      code readability and properly align the lines of a
	      function call as suggested by Stefano Brivio.
  -PATCH 3/3: Remove extra unnecessary parentheses to improve code
	      readability as suggested by Stefano Brivio
	      <sbrivio@redhat.com>


Soumyajit Deb (3):
  staging: rtl8188eu: Properly structure the multiline comment
  staging: rtl8188eu: Remove unnecessary extra parentheses
  staging: rtl8188eu: Line over 80 characters

 drivers/staging/rtl8188eu/core/rtw_ap.c | 93 +++++++++++++++----------
 1 file changed, 58 insertions(+), 35 deletions(-)

-- 
2.17.1


