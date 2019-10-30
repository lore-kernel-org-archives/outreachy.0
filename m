X-GM-THRID: 6749323707377778688
X-Received: by 2002:a17:90a:730a:: with SMTP id m10mr10464992pjk.78.1572395993558;
        Tue, 29 Oct 2019 17:39:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:620d:: with SMTP id d13ls7182800pgv.8.gmail; Tue, 29 Oct
 2019 17:39:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxpOgU9PxOKdBeJxVKb28xDKIpu6n/dxu8C6nZY5ygyhzxTlQ7E0u1vz0nn4rvi3jLboc1c
X-Received: by 2002:a62:7911:: with SMTP id u17mr15415196pfc.115.1572395992016;
        Tue, 29 Oct 2019 17:39:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572395992; cv=none;
        d=google.com; s=arc-20160816;
        b=unhUkZlCfqdiWDt6Dt7pvLf9NKTbNdsNPEzcteQhqfdu6gQSgMTXQVFtO7ubdueOT1
         feqlrUlykskc/TvBU9o6dPnBG7kbGojM0eYTZN/PtKYvW/UqKUGWJI3IUBRTcYKX4fvk
         V8sOAMKvhPiKhN3TVRHanj1NfBPdPjqh7ZgmtBcKdfz2dFFukcZ4BFJ3WXu/RXgVCDIE
         hpHXIwtVHI1WhssXw2CSHi6aFzGiLyq9M7FqwEC/utBk8UXzKAhqyv7XmBhZNzmNVCAq
         yGtjr0NVEmVlizfNaj7N8WcR/sSB3jHCp8HWwUj53BU//RGQmxa9PFjxJ3so70oM89LO
         xjUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JccAJSzmr+LaQbnoYw8txl5RyePYYhhrgS70TrvpVQ0=;
        b=SsZUIv5DtePeW7RP/FO1Cwi3YvlZiANSElQHRyV8nST9jtoKkkLFPFSuaZ/jX4xfOU
         pkNwaKbs9g+df/6sgMaAr3an9g3BjGJQu6v+hTJeTpYBvdTAqcaCPuLNTyn9W1kVnTkv
         Hu+BWHN0t18380AO5KiU49iBzDGalBP33Oq1j+xHgH3+Or//M3o1L7feOBFwCk/CINVE
         hzQm/c3AcL171OEBzqEAFIgvUu/wLc35u/iCzflUSWghL3/Ug46yVbtSW9n5D7IWDf6+
         5ayRVQZCZ7f2g2a0Fv3rJdSmPbXA02UvqFGu2ktk5RPfE12FjnNVwfbnzBEnFEt8AZRl
         JHVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPqn7JLe;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id f17si20432pgk.3.2019.10.29.17.39.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 17:39:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TPqn7JLe;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id y129so526230vsc.6
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 17:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=JccAJSzmr+LaQbnoYw8txl5RyePYYhhrgS70TrvpVQ0=;
        b=TPqn7JLesYgCO3Ip5EMh6PZx2hsK1D9uh3CdFjUvpUESVFImUTKw6J4gZmYM5ao9Pz
         xkrWZ/oPtsIozKbz1N4WNgYp4YNDur9BQxqlovzVsjgNRZaED+Z7/l6AcVttsKLeLk4m
         mDJ9gCh/5JjvXfDQQ7Pjy+aoHrIiuW0DOzEJzb/yPzWgd1N+gwIyep8rjezgWhETodck
         1pYrDo9l6M2bcLIht4IbdR0e9+e0dokeFJba4Ls8WlZ8jKWNUROUHcwFvXej0MdvbvJP
         WosTfMWxdVFJKHIwr+0spj1YBBt1qu6UjFTObzNwBAioaRT+ARb9IIlqwzsk2s5r0+BR
         WDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=JccAJSzmr+LaQbnoYw8txl5RyePYYhhrgS70TrvpVQ0=;
        b=C6pICw+/UcKEqXRfeAZnbTHReCTPY9pmKZLQDymsObXc0MYCY2ure6ZKvjl6uM1WRw
         CK/JO+kkPb73k+Efh1to8l2FC0WRm2kVU3nSpIa2cqcF6y+So4zu04uzoeCvkTBEXoPt
         IR8B6eDlmbfcUv7MogUHiiYa7Qv4Ty7C8lkGyEOVkGboCxvzEVXOPhs7w2TgCEWF9dEt
         k9J0hN0vEOKDxAWOdanC/c8MwTbEvP91dFg0hVY7O4v2+C6nziQrp0YqbMww1MKofaZb
         ivXn43VJTp0/Nm2Sjy2T87+tMN0kN6xly/vHvevK3//r9NvRm7sFP7a6M/dJnqHgFJ2M
         ONEA==
X-Gm-Message-State: APjAAAU12+lN5l0XS7AMAXvBxLzFDt1ooxGCksPv4px8Ru2pC6xJfkMN
	R3cp+1FljC4+hc4pIk21xZeiq6Npmx0oEA==
X-Received: by 2002:a05:6102:310d:: with SMTP id e13mr3404879vsh.91.1572395991192;
        Tue, 29 Oct 2019 17:39:51 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([138.59.18.103])
        by smtp.gmail.com with ESMTPSA id i129sm375321vkc.9.2019.10.29.17.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 17:39:50 -0700 (PDT)
Date: Tue, 29 Oct 2019 19:39:47 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH v4 0/2] Adjustments in function call
Message-ID: <cover.1572395770.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset fixes a warning and simplify a boolean expression in a
function call.

V2: Update the message of the second commit to include the updated
    patch version and to use the Suggested-By tag.
V3: Update the first commit to include the Suggested-By tag and
    the second commit to update the patch version.
V4: Correct the format of the first commit to use the Suggested-by
    tag properly.

Javier F. Arias (2):
  staging: rtl8723bs: Fix line over 80 characters
  staging: rtl8723bs: Simplify boolean expression

 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.20.1


