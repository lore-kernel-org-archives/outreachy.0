X-GM-THRID: 6809913191851622400
X-Received: by 2002:aca:a94a:: with SMTP id s71mr6415454oie.152.1585556471167;
        Mon, 30 Mar 2020 01:21:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:49cc:: with SMTP id w195ls7169729oia.10.gmail; Mon, 30
 Mar 2020 01:21:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvaAwLO3hW3O1mfN8Pp4x4C3iW9JfbGDtoZR3HLUaLjM1tXjaIoEOMbvgFhZbdPvI5qVolW
X-Received: by 2002:aca:de84:: with SMTP id v126mr7055098oig.137.1585556470173;
        Mon, 30 Mar 2020 01:21:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585556470; cv=none;
        d=google.com; s=arc-20160816;
        b=dmIm0a9q3/AmCwEMdqbaf242TJKx+jIeawkwzx7UYb/BYgBZS5NGMwQyhM2215o18z
         IyK49/DmKLePDD4hwt/XWg429uMrbozWxzTIAjqv2PrK0esbr3Swut95vU2sLN2vXV5i
         LdwMua0xYnUSWnrAgKVSWxTWHg7cNVGOFBnE3nma5OztGhfWQyL8SQrwxYC/v2FXzn7o
         JEMoQ5HNWN4CG5dyzED8VqLJ0k49TYom22cAgOSEqN5elCZcxc0+aPieBlJsiuSCUHMA
         4FMrM6QnJYwwUJDWzqP3UhKS3Mi1KojesdFk8kX092ysj5HAOj9FRzag1c9mg4XM+XSs
         ehpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0N5HF7KYMC8hJ1gmjkv8RIEytm61NtNuN+eZIZyJcsI=;
        b=O3GbV2LDLmca+Qu30dkSoznDa+FPZhJC4sFKIlXr6AGlcvfJOYQ5KOxzZ19Eut77Az
         xesduGPAmPvYnGX6hJ0Q3sObCgHo17pUEBdR6/GzbM/wio6vE9l3rSSWnXRATU/9DEzM
         PcwWUYTUNl72qUbKUaMeZwNIXDaqPzZaxeFYNp83f9KaLjlmR2ysUiFqRxLxCySGWowX
         o8msKRDmydu7/wUWGwZrxTIER0klI2jbp7haeEKBWaHDeIPnVT+5FeCCtfx8XLebE/B5
         M57K6/KmB5JL6hFh0k7MkqBjKGYKx1LTGlT1hl4zeeAfYqoqGU2/nT3EnyeAj+dZchfW
         JcPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="aUiQIh/H";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id a3si763864otf.2.2020.03.30.01.21.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 01:21:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="aUiQIh/H";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id g2so6444538plo.3
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 01:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0N5HF7KYMC8hJ1gmjkv8RIEytm61NtNuN+eZIZyJcsI=;
        b=aUiQIh/HjEMu9qWHmzgDhKy6yQgvwvGen4YjkAk0ZhG65B2knNBB5iW3j582VeZDLE
         2f2BEa6eKa5B0qR3e0wK9xJ/oMJZkliujsmvppoQJ13qoXDQr1VfnjMnPDVELNDbCBi1
         brc4ApQbefNu4Mla19vTnWmG90dKH/XLYqONkm+FfzT/Cj3Ee05wYH5MjvJJyWs4zE8A
         xewSMqYfUuBdvR3kK1InicUHK8XqtXo22hbhh4lM50BHQNHIVvyN1rpwL5WOwphhC+cw
         vs+9CLSfmskIfqtdEnVZVsYx3ZWyrTgikEi0wEOZQ+N+Nog2cCPqdkeCtzVebQIkcX1g
         a5UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0N5HF7KYMC8hJ1gmjkv8RIEytm61NtNuN+eZIZyJcsI=;
        b=h/ytrBPIiTKVZ1Cjdav+gHJKGONq1ktSX6KVHDwJrRgpYhpIgCIbSgfMp9EqLAMQP0
         RBTA5VtNLuRs1LDUIOrJww7dquFJQnbiWwZb0lv31XPdHiBigP9eg1yb+wUznZ1RfyZ6
         lNysCOdM/b2Kr7ZT7vf7FCvvr0qmlCzjKJt3Ss9pDvF+1N30CIOj4dzsqFPsaDcy4ikh
         eVod7X7NSOdHysE89uQKIQ7awlJPad2y9ffJlQmXqRvRn0P9IAQQ4OSk8cYITUszJsz1
         aUkeF7y5QsWJYD4oPzfX+vXAE9hZdzd+PshL2UNY3RnP8FwxC/1NwWKSjiJa8ko6LTP6
         ay0w==
X-Gm-Message-State: ANhLgQ2/DpsphiUP4N2o+5HS4JUdud3vcRa6eK4dKiQqHco8hwX2Ao7A
	5783mkuG7ha3jM5OyxoCHKlNGtG45C/KtQ==
X-Received: by 2002:a17:902:8c88:: with SMTP id t8mr11387507plo.176.1585556469292;
        Mon, 30 Mar 2020 01:21:09 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.216.19])
        by smtp.googlemail.com with ESMTPSA id v25sm9238049pgl.55.2020.03.30.01.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 01:21:08 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Larry.Finger@lwfinger.net,
	outreachy-kernel@googlegroups.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 0/2] staging: rtl8188eu: Resolve various warnings reported by checkpatch.pl
Date: Mon, 30 Mar 2020 13:50:34 +0530
Message-Id: <20200330082036.12928-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset resolves coding style and indentation issues reported by
checkpatch.pl
This patchset properly structures a multiline comment by adding "*" at
the start of every line of the comment and also breaks various lines
into multiple lines to respect the 80 character width limit, all for the
same file rtw_ap.c present under drivers/staging/rtl8188eu/core
directory.

Soumyajit Deb (2):
  staging: rtl8188eu: Properly structure the multiline comment
  staging: rtl8188eu: Line over 80 characters

 drivers/staging/rtl8188eu/core/rtw_ap.c | 84 ++++++++++++++++---------
 1 file changed, 53 insertions(+), 31 deletions(-)

-- 
2.17.1


