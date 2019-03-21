X-GM-THRID: 6670748157895245824
X-Received: by 2002:a0c:b8a3:: with SMTP id y35mr697206qvf.25.1553154587267;
        Thu, 21 Mar 2019 00:49:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5dc:: with SMTP id o28ls2117630qvf.0.gmail; Thu, 21 Mar
 2019 00:49:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyB58fvlny19jNgSBjCM9cH4K9+pS7vBpNOEQp7xR9WA8r77Sl4dtGAjB0nSzqFClBXr7q7
X-Received: by 2002:a0c:d95b:: with SMTP id t27mr684330qvj.46.1553154586714;
        Thu, 21 Mar 2019 00:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553154586; cv=none;
        d=google.com; s=arc-20160816;
        b=JP60RvHYgVmdn3iQWZO8PIyDcznod7nh6E6Bpqh8HK6h0k/H6TEMb9Ce7ibiRfCKP6
         4WDb1bDnIAyKQoUFxE8e6HPfnUU2WHV1wDFIOnQFctD5eXvbdQwbBNI8U18+FklIwdsV
         Z+///I+5EwWG1xkARZ3gJzudFKQf8ICLeet+tyJ1D4gBWZAK0GOSog+5uomAX1ffiPEC
         S34ShSt255CXIL0s8QXdVQECc19vv6UP5zqHc7feFHUGAwmgIrjEOZB3XZoG1GDC57Bz
         92SAER84GIVDRC2t8/c64C3F1W6McVC7IiVwzJkyGNCSfA3ZBINMkFr/JPrYbx1P1p/V
         bKew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XnEh5vf3VL6bk9P8YOc/DP4kNIToV7Yn3bKPZZ230XA=;
        b=T+uQsQU8mbyvpfFd8clZhJprfl0wtFJZinzA92jvLcp6ZaOq6CSbHxLPJT1phEKSXo
         kel4EOwfGRn5LLiSCrFOtSLFG08vpfR/+71H1Gz5jnpxNj9xZAFgK/pqhOlbZdGefEhq
         6ZU/QtsB5REr6jsuOFCo/qcFZLUZPddcGZ0CAXlSHAdHcTio7H+duqagkNdwdeOwq2l9
         f2okP1FnkWisX0XqBXeDQ/QbndoocRSSecGTWqD2OVB0HVtxxWyLeWuMwfUH2434DFZv
         V3I7Kd1duAB7fKq5QU+zIzE4W+SM2cEpJF+tPkSnACdmuEN9698hjXj46LQL4H3Tz2pN
         J2tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=EHFiwy8d;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.82 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic301-19.consmr.mail.sg3.yahoo.com (sonic301-19.consmr.mail.sg3.yahoo.com. [106.10.242.82])
        by gmr-mx.google.com with ESMTPS id y1si55716qth.5.2019.03.21.00.49.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:49:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.82 as permitted sender) client-ip=106.10.242.82;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=EHFiwy8d;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.82 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553154583; bh=XnEh5vf3VL6bk9P8YOc/DP4kNIToV7Yn3bKPZZ230XA=; h=From:To:Cc:Subject:Date:From:Subject; b=EHFiwy8dWZekjq9ev6PJ0t50/Kqn801Oa25BBF2FgrqTIAxmaqQdHzkzmrsN1tTWk4/UJTQNyjVk4xVTPLkMFpNcTMf+1rFEs8D7jNN3STOJEa175LTvv+ivLDeOVAkOZLy2ENCmaCcQICNRPEuXR1UtkvLLRa6mc0JNsrMMSSYM8zzZEx63awtGcipsduERZX0M9iYf/JrHsh3cE7bTkKjteNCCRa3xqHVRxEjgRrWUaxMXQwdZie5R2MRYazZ6VR1E/ku5GzlQZ8mxzdoZl2BOHmewyKHJpw7s83B7KAsuCmQ2XIdrYUYY/b2bm9tMgp84aIs9uSFBNN3luHLd7g==
X-YMail-OSG: 3.e5EXoVM1kDX3Y44fg65d2Ht7sB4iVUeg6eOEJGgFvEzIuRf39VMGqb6miGLTe
 dwzEBzgbixwou9Ra7BhSc84eHP5w3hPnmO2p0lNt7gwUb9P3vGUDWOgtFFTPg7KhowIsWalpErxL
 DQ43QbaJS0OMG_DHlUUg5TC5gb_As7kp6QTOA1AOh1kwUhRjCVTejnG0R258wE7R0T32O8XJ.PCY
 EW6aluU3a39PEmI8IW1DE2ZEuGTHES.tcRJDdSQflygzkeGOnfgKGhH8nPTdznGizDt2QctjWM8g
 Eq5moXWd0WF0wh.IdlaaHWPiH9YeqEbRcRDj8D8_R22.LkVdTdjqCeoZvMJJu6A6M3LYmzT0_xYi
 C5wZpLyO0D084ujGB6yD2PvQhp6ntBV7BtnenbuGV8Q1XtcherTLfc1nB9xTJNGRGTL4Hd3idR4C
 rWkGbE5lAqpuZzwYOxHj5Tq_TWmNJJdZ_5vgpzhjzK9i9iHZFb6W.n1csIkkdT8B_ZKYZH.KUF77
 Uv2qQTrW6cA.CWfsX9.vP4D0kb9TCiFOM865bThujbbZbfgZXBNEyMnJ6.VTJu_rZkH2AI0U4dgw
 8FAe7KhEixBfrOULPvd4OXSICV5Og87j.MoySHGuBek1VA74KExZTo9u7Dvmk6W_yKfX_Ek5ksvR
 WlorLU_EsSRHUIKhruBQQiPY1g8MK3NTB42ypiCxDacTTRPLY4B5GXwYS18PjTuHxciHkddbn.OQ
 6mhDQdkSIEQOFS6rIYqVB2Ife6GFva.h6hoOXPnTtyDk6ysgaZRiSLoR0p2uK58u8n25GDykuttZ
 g.u7npabIhVdE0QaGvl5EOlW0iHWpm1y8Jw0SbG7Q1EAqGXhBXofUkiGW6RZbU9avZhhHasUjuVS
 f8bm.yLap9Y85OgRXbcAUcsdUhp9LbUiBrZCfl4Lz2lVTFRiCxkBNMqxCth_GhNS6VtwjLJXbSqk
 wDTWUSHXfzQTYqX7wUh1MTtV0LrcY_WlfwavGaIGAhuhBwzdR7N3YkknJHQC9E.HsJsS1I3shg0H
 LaQLTV89_tkzcs78INCNvcXdoI9WoxHH.IoG2UWGB.y5s0WT0KXotcnYpX3ZyIBond5QkKU0XdJI
 d961v
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 07:49:43 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6bd7950dbdc82c8ccc0604db2a016522;
          Thu, 21 Mar 2019 07:49:39 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v2 0/3] staging: wilc1000: Remove return variables
Date: Thu, 21 Mar 2019 13:19:24 +0530
Message-Id: <20190321074927.2865-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset removes unnecessary local return variables from functions
in the files listed below. All these patches relate to issues found with
Coccinelle using ret.cocci.

Nishka Dasgupta (3):
  staging: wilc1000: Remove return variables in host_interface.c
  staging: wilc1000: Remove return variable in host_interface.c
  staging: wilc1000: Remove return variables in wilc_spi.c

 drivers/staging/wilc1000/host_interface.c | 15 +++++----------
 drivers/staging/wilc1000/wilc_spi.c       | 10 ++++------
 2 files changed, 9 insertions(+), 16 deletions(-)

-- 
Changes in v2:
- Merged some patches relating to the same file into one patch
- Added filenames to individual patch subject lines
- Fixed alignments with parentheses in return statements

2.19.1


