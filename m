X-GM-THRID: 6663286701018841088
X-Received: by 2002:a6b:9145:: with SMTP id t66mr2443642iod.2.1551436433304;
        Fri, 01 Mar 2019 02:33:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls2335397itc.5.canary-gmail;
 Fri, 01 Mar 2019 02:33:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqyZYAP2xSkq956acC6vis90P2j2qm0qe3S/NELWKT6Sj1Tk6FQ7dZtufoVXO+/1xnp2uZqw
X-Received: by 2002:a24:5714:: with SMTP id u20mr2746249ita.6.1551436432468;
        Fri, 01 Mar 2019 02:33:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551436432; cv=none;
        d=google.com; s=arc-20160816;
        b=l6OS/GG4KF4cm8KzeYgbAZIrTMRJ9U8lo//JvyONua9G7Mo3vn7sGEW3SG840rcezV
         Ao36N32nwlK7QPN36+eTZFGn6r212Sx7msmDtZXCxfLaQfuKQNnY4QIC1SMxpYOGfk17
         0IXhxf9aVAtxDIyZVJa/eR1DRGGcRD2az4kx4AKM0aeWCnQ6Kv7A4ig7kWuqkDiWE6kV
         OwNYfAohA+vKCxRDX08rRlgLnSw2cXmsR8hU7o/g/sCZ8y8hrOFjOBoFRNXhV5mwMg1H
         IpYInhAvNjyVSWkSA7HVnoFbK6I1cQ3UD/EgsFaffk3Dat3WVbhn74NtaxKheBW2p3p8
         kZYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=axrRKLctIytZ4kr+Olg08wMS6aE+CgRJIgSq6bDKaTg=;
        b=y66/5f3AtqJL8z8pF+fzesJxzHpAi8r5wiNUTnw2YNsdTaU05CsFnACaXOycZ/4hj2
         wkwp4GtqiDQPIgT2ITu7YV48ab4xI0of20K6f6yvVM7586lzNotHm7X9/akLQ7Ro9vHh
         mUdSVdvoEpTwOuHdGccxo/2Y6Ly2obCQ5fDWuzsjHH1Hg754lerNG27pQ5BGJt0sAUXa
         f9Raa3fuSLM0tVvlMeOFSc+MB9yOCCs75wg5aUtCVlw1YF64at/odnIMh+WURceEkIY9
         5E0AZKCV8ye+4goZDTgEGtunf7p4HbGQXuMPwUdM3Uh7Fi+zRWHGG927ULDgfCuUa/Or
         34rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qqTJVSvQ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 184si1183418iou.3.2019.03.01.02.33.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 02:33:52 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qqTJVSvQ;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id i20so11234791pfo.6
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 02:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=axrRKLctIytZ4kr+Olg08wMS6aE+CgRJIgSq6bDKaTg=;
        b=qqTJVSvQSKdLLiX3YLafffywwJffMwUzozP+modwD/8zrOPfAMxx0DuOrJ38Z2pApz
         ktTM9Px/0W1Z4EPa96MGIz+PCpdIqjQ5CXLiE0z8CeOK5QTmANb5jGaafQWit8iRDk3r
         jIqL2PATdhs0yRTc7yNk4oro6VdkCFHm6YpiuEmhHNB+vIRei6d/wwPJ35vyQ+VVjULu
         1IcK0a9EpSc/3rO8OkX7i4uj3rEHs9A/dTPSK2VvXwwsgWNQJxeWNs4hfTZdwrjtDYvm
         4O8Qolg/4+oizLO91HikdzZ69lX9mhxARm2Zm+fJNnAzmHpRIQklZ3YX2XLcUuQDgpCv
         Vf2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=axrRKLctIytZ4kr+Olg08wMS6aE+CgRJIgSq6bDKaTg=;
        b=V74Sh23nE4cjFdRIsFYqNkuf6kXRmMX3ww3JCyxDRGTPB+PFJdxHPhGzLTaMhUTXHB
         gQyq7CCBjgfTSjVstYBn0uZaLFDNybtF8Z2vdmDTzYwXeHYvQ6j1SpxmjLDmEhC7KT7E
         D7gnRAxGI31amni8BaZtyyIoF2TSJDofPfTmcT0W6DpISUWQvtDfycI5rM0hyqzrgsb3
         r+eMTKGfmGJKXymGK5THrRgqac4veJnX/hSXl3QonHyKe75ImK725L/vY480JvfIFlIc
         OXzVMNAnVDS77cpQioWWIapVPU5DbPl8iGQMgnwfFaJTeUmE9XZ4KeBT1qfBMUjgCsbr
         ZSZw==
X-Gm-Message-State: APjAAAXxx4S+VkspJKAhKTkCU4fQt9gcvhAuYHrreGNGZeDlptB3JJPG
	3xJCe7/CCNriVSZDAtGfuzg=
X-Received: by 2002:a63:ea52:: with SMTP id l18mr4169275pgk.317.1551436431655;
        Fri, 01 Mar 2019 02:33:51 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx.daiict.ac.in. [220.225.53.35])
        by smtp.googlemail.com with ESMTPSA id f193sm40054440pgc.3.2019.03.01.02.33.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 02:33:50 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: lwfinger@lip6.fr,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 0/3] rename variables of struct _adapter and change
Date: Fri,  1 Mar 2019 16:03:19 +0530
Message-Id: <20190301103322.73367-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190301051505.55407-1-himadri18.07@gmail.com>
References: <20190301051505.55407-1-himadri18.07@gmail.com>

This patchset renames following three variables of struct _adapter to
fix checkpatch warning: Avoid CamelCase
 - bDriverStopped -> driver_stopped
 - bSurpriseRemoved -> surprise_removed
 - bSuspended -> suspended

v2:
 - Change types of these variable to bool as they are used as boolean
 - Change the patch subject lines accordingly 

*** BLURB HERE ***

Himadri Pandya (3):
  staging: rtl8712: rename bDriverStopped to driver_stopped and change
    type to bool
  staging: rtl8712: rename bSurpriseRemoved to surprise_removed and
    change type to bool
  staging: rtl8712: rename bSuspended to suspended and change type to
    bool

 drivers/staging/rtl8712/drv_types.h           |  6 ++---
 drivers/staging/rtl8712/os_intfs.c            |  4 +--
 drivers/staging/rtl8712/rtl8712_cmd.c         |  6 ++---
 drivers/staging/rtl8712/rtl8712_io.c          |  4 +--
 drivers/staging/rtl8712/rtl8712_led.c         |  6 ++---
 drivers/staging/rtl8712/rtl8712_recv.c        | 16 ++++++------
 drivers/staging/rtl8712/rtl871x_eeprom.c      | 23 ++++++++--------
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++------
 drivers/staging/rtl8712/rtl871x_mlme.c        |  6 ++---
 drivers/staging/rtl8712/rtl871x_pwrctrl.c     |  4 +--
 drivers/staging/rtl8712/usb_intf.c            | 12 ++++-----
 drivers/staging/rtl8712/usb_ops_linux.c       | 26 +++++++++----------
 12 files changed, 64 insertions(+), 65 deletions(-)

-- 
2.17.1


