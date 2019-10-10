X-GM-THRID: 6746031998697996288
X-Received: by 2002:a62:38d5:: with SMTP id f204mr10358111pfa.75.1570713360937;
        Thu, 10 Oct 2019 06:16:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8bca:: with SMTP id r10ls1229439plo.13.gmail; Thu,
 10 Oct 2019 06:15:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyJI0otgYPououFbBKrNU1D6hv143fDuL6dBcuGeEZXjU9UOqH5sVJgkOdgzHwPBl88o/Fv
X-Received: by 2002:a17:90a:8a04:: with SMTP id w4mr9862381pjn.135.1570713359567;
        Thu, 10 Oct 2019 06:15:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570713359; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9AbY5HJOljg814lAz6McAoqQPQM8Bq1qtrtM9rKvEe27OexER7VLciIDkEtI8MBRu
         tBqFXEhokJLung6AHHSzf9Azv8VaM3hlYfddO05MM+jp9L7shRwn5EFiXQOlk1YoHoZt
         VCNT7ZmPn1v8qg6tVa80EFYwj+pCkqFyiQtZznsTmM0PgqGMZeGguFGldPnWvaZda4Qm
         jNT2fnOL5wCXob4V/Yt0FVAs+B+hSfkuanNRYrrxgvPBgpGHtgP/ph/Sk06A5ypMJUrF
         QlgynIbJagLwFMWDKlZPVffuW86WRXQSBarBkdSZecmFDZ9Vqc3BdSoxC8WYacQ61TAW
         PAUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=5R0PLgqaQt/LlyIHo4fMN0uBOe621ivStxyy9BRN30w=;
        b=Tkpyzask6oezbUx3Corwd3qQdQng1vDGel9U8pA89YOJ1yp0nKpIeIrySm+9jJALjr
         lwjZuXXKohPkr7bfX2vRzI4048iEh6l+zh976nBH94DQs+KBAMmk4+yjkdjz6m5sCHT+
         rECH2ngBiQIEZKJp8so/5ooLVgJUcQaT3kENoUvcYv46kY1vSHn6e6JetccLk79adNIq
         94U3T+uAi4wFl5M5JAA6BR2FxTjiYHSEX2e9UvFYVSWENODdytq8jlc8wQojf5nWSULg
         JdWAYfCPk9qBHvIzAuxs5SX3KrcWDCtwlGWCKV6CzoMstZ88V8Xb8hpBlux/5jA5Vgd6
         gYJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kqyqbxRR;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q141si522070pfc.4.2019.10.10.06.15.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 06:15:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kqyqbxRR;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id t3so3646449pga.8
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 06:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5R0PLgqaQt/LlyIHo4fMN0uBOe621ivStxyy9BRN30w=;
        b=kqyqbxRRk40GY6BtvCZiSHUTKQ6DamrPeD9RxeaGQVsSyTGqqUJw/1uIK2k7B6rYnU
         LFHnCczr2Ne15BuewzuUndNP5PkpnzsyX1qJGHBst1DrhfrYa/I0Z22Ry5RYhn0JAoev
         YZ8KbYsSQUQYB42d2JsZ+bRhYUGpL3SCsnA07nZNiEZH6PFsyEaYCJjHKUl5nlRBHtG7
         DVk5EG43gjztJR677j6qVUY4LwvZUuutwAXXl1MYhJL1FBrMn8p4BJHc5ejtU7I823+H
         TKIA17DlA4nx/uYSNqA0dLkZoZWu2qPeXPDi6z/SeX7dAGp68OxgwoaTLEVxeClublyV
         ac9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5R0PLgqaQt/LlyIHo4fMN0uBOe621ivStxyy9BRN30w=;
        b=DvwN7bfwzgJdKenpy/mmvugLmAKEWSYEpN5jlCloRrrCLF3pi7waZraRYfSrnjGvsv
         SFO8t0++rWt/tUwdGmeUvllpogLGD8/4muJRzpFS+oe8fOJiSYLRJJB20GXMD4g4dWrB
         KE8/dtbzvbF4JvaY13VwS7rzD9yX5aG0VR6oDMUslfCx9kaig4e6auUFs+2L9j1xmdOU
         NCvGxZeSR8gHcb+vcaI65U97kjxgn74FhBbM7drYNQjDQIE1sfNonHlv/ADCUz7s6YtA
         fuJe2vhVy030629KRn/KlkV6R/5kSTzceiW/0Q0VHznfjK5fFHuHzQeYRiwRK5wJLeYu
         7Jqw==
X-Gm-Message-State: APjAAAXzNSpD7jsK708/QWKTF8uC0cuYy1Wzu3Tvsq/c167wCPS53/xq
	F2Ex5qc2Lji0QtaYNj+dCjk+tCffhdiwiQ==
X-Received: by 2002:a65:6205:: with SMTP id d5mr11340562pgv.424.1570713358872;
        Thu, 10 Oct 2019 06:15:58 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui.brck.local ([197.254.95.158])
        by smtp.googlemail.com with ESMTPSA id 2sm8707720pfa.43.2019.10.10.06.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 06:15:58 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH v3 0/4] staging: rtl8723bs: Style clean-up in rtw_mlme.c
Date: Thu, 10 Oct 2019 16:15:28 +0300
Message-Id: <cover.1570712632.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset addresses multiple style and formatting issues reported by
checkpatch.pl in drivers/staging/rtl8723bs/core/rtw_mlme.c

PATCH v2 of the series corrects the "patchest" mispelling in the
original cover letter and provides a clearer subject line.

PATCH v3 of the series incorporates newer changes in rtw_mlme.c
on staging-testing.

Wambui Karuga (4):
  staging: rtl8723bs: Remove comparisons to NULL in conditionals
  staging: rtl8723bs: Remove unnecessary braces for single statements
  staging: rtl8723bs: Remove comparisons to booleans in conditionals.
  staging: rtl8723bs: Remove unnecessary blank lines

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 161 +++++++---------------
 1 file changed, 50 insertions(+), 111 deletions(-)

-- 
2.23.0


