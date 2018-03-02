X-GM-THRID: 6528334297317769216
X-Received: by 10.80.200.202 with SMTP id k10mr1893847edh.10.1519996276220;
        Fri, 02 Mar 2018 05:11:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.202.5 with SMTP id d5ls4915966edi.8.gmail; Fri, 02 Mar 2018
 05:11:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELuoj27j4ZCFkFj+WJ5TA4Mfm+TK0zcElRYlg4D1Fkvc4n8HZE3hRJjtho2l59s9oHz5PhEv
X-Received: by 10.80.232.139 with SMTP id f11mr1892097edn.5.1519996274331;
        Fri, 02 Mar 2018 05:11:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519996274; cv=none;
        d=google.com; s=arc-20160816;
        b=rA9TjG+HkrOoyTEZzmDKozyPsaq98nLPp8O0mnHuU97hp454kb51PcyA4mtpQ3xj5i
         4+Sy7O9h/Hgyyjf3HV3J0DoyRrdJUwO3AgZ9GMvW5SbX4UCv/yLZlkJaU1X+0A8U3yZL
         SfPZ/pJsQqhGx/W7LJMm0ZQXIj5EQqLdd2EG+AB1vcZU5VTfrz/xe/CknWl22zw0Mfu3
         vJOpXOl4BXyH02p2J1a+MWOOs9UaziX1MQU97mNzr3ucG7PiQO/bfN1s02hRFK6bm/BL
         V5mD9JCtd7jOnQPbiQBPYI6q3yjpcFli2ORl1Ff3jZ0wBgYhfm36Q4jZjYQG+fVmotAn
         lHgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Chc5clbpSIkJotvirmyL4MsPDrsK6ZRf2azrxcCDmgs=;
        b=p82UCToPh4OawLDuBMRC5sswm5Ie2YwD2wiKEs+vdh97HPHPigJMFyxA+6ksQeTKlE
         VXvMMExYqZxmkvt6YDsOqLUvZ949V5ObC15OYWOMwWzO78FKQAreltdURg5ut7BJX/xn
         vnZXgDLN4C/QJL/E/w+7Gf/rnBmttYEqE2Xzi3sKdetQdbKNwfhAwtgE1yN1lp3neLjl
         3d0ZmnJodVM60iXeY5GNr3bNHY0E1EHaluIq3vWDV7yuYWsQLnOa0bGiV5UG1KXwmCxv
         HqotdOtErqiwyvfi/n3i80FAoI7kr7QIV7n8KdizP3cZoMpDuTPAaX6DUWsc9DLK5LP9
         8cHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D5gUCpW7;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id f20si287377edm.5.2018.03.02.05.11.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 05:11:14 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D5gUCpW7;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id q83so3048524wme.5
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 05:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Chc5clbpSIkJotvirmyL4MsPDrsK6ZRf2azrxcCDmgs=;
        b=D5gUCpW7THUEIwLuA4dhRBD7f8WMsYNBLkYxfKgog8d6Ej/gzylyOfshiJAGXXRFLJ
         gN8PSjpCJOtYR7v6DKPhylCj4wt9tT4atAIezjZ0hP1Tkd7GoXhY6U1cyFseKYeUFLRO
         hPCEZrInWj6ZBwiSniQFVUcLHIVHeGBQP6uTtbTiQNkR96/Rfn1REJF1W5xBBZETykk2
         GMjlpxE09AsKlzUY4tCNT1ZwdNXfJHss+aEZwytTPWTIDlF4PU7EX0lnb/bE4ljiLjI1
         wP3iQcRGGGBpkzLPkEEtFloB46BUpwdhxSnjPM3ZU6XEpFXTmi4vOv/hZVBn0kOP+Afd
         WX6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Chc5clbpSIkJotvirmyL4MsPDrsK6ZRf2azrxcCDmgs=;
        b=BM8DY30NBteN0j4eGa1GNdcC6NDSaqB9ln0WdQ2HnQqpxpXnlaozRQ3OlSqotCPz82
         n/F6WNBIEJQAHUXa9Nr8dzALXxxI6v8LXHEsDycUC1g++ggSLSiYMU8WB9FitVl9wzCO
         u98Wd4MBz+Z5jS5GYk0paVPbd/gOLdAOIaUDg2soF0jl1umYMRxauJD23KeBU5d0q3IM
         ciRugPn0wYEhRd/fbmcnqIzDfaj2RZ0JHphp9L88P7nT8JuYYboerPr6bW/fTR/HZesk
         eWqRSV7KcdGqw8RFDE+4gvvVIBm/M4tUm2FHJc+3URY0hm3wUVEafO4HQXfFUWAZXuU0
         ESVQ==
X-Gm-Message-State: AElRT7F+75LQT6FPBoygs/4HglbwH0Wvom2PLbk6fl4gEaETmcHDmy9b
	uDylaVbBeRBX5433k6ppe0F5nIPk
X-Received: by 10.28.126.20 with SMTP id z20mr1489051wmc.152.1519996274065;
        Fri, 02 Mar 2018 05:11:14 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id 47sm5896815wrb.48.2018.03.02.05.11.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 05:11:13 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] cleanup in staging rtl8192e
Date: Fri,  2 Mar 2018 15:09:55 +0200
Message-Id: <cover.1519995327.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix issues found with checkpatch.pl for the file
drivers/staging/rtl8192e/rtl8192e/rtl_wx.c

Dafna Hirschfeld (3):
  staging: rtl8192e: Fix issues regarding blank lines
  staging: rtl8192e: Remove unnecessary parentheses
  staging: rtl8192e: Add spaces around operators.

 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 51 +++++++-----------------------
 1 file changed, 12 insertions(+), 39 deletions(-)

-- 
2.7.4


