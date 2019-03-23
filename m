X-GM-THRID: 6671548221790093312
X-Received: by 2002:a5d:8b42:: with SMTP id c2mr2505623iot.192.1553340866166;
        Sat, 23 Mar 2019 04:34:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls3424064itk.4.canary-gmail; Sat,
 23 Mar 2019 04:34:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxNZuXKIR+VVR1Puk15pUoLWf+/x6dXzvM8p69GyqmVsLBdmFCpQEODs3cDexNLmtWR/Tdl
X-Received: by 2002:a05:660c:4ca:: with SMTP id v10mr5166006itk.115.1553340865260;
        Sat, 23 Mar 2019 04:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553340865; cv=none;
        d=google.com; s=arc-20160816;
        b=TeBSwKOOfcIGr8c1qfPlix6sO+psS91ITLQvjtx3D0dNSeIDjLeVcTklCnraIczVMB
         ICeQIFUzHv6gRFfxDUhsvf4YbZap9U1xNnYSPNoZgaWVc9z2EGi1O1aDooVAYuS4yGPl
         UEWznfSYRmdgVbLzorVyDcu7OiHe54TLrkvqz8SDPZeEijQbMOTgI0o1hYjVjoT9g46Z
         qDWZ7AGmWzjUOE6I6IaErTVr9fwcKFsV4hhMguaP1STgnuD3uLlw9LrqWWu73G/PhUuz
         S2FwFJ3RIXrq3rQoCfMBYH2IBCUnJw7oL5Dx78WTWQz1AW+XkErQrQEh80w3xBieFyIP
         w1Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=C7fc3fDjJ90jdlLZKycZqSFJWXUsQKBgu5Z4F1PkbUM=;
        b=JOHrMcHJbMmBDTRyoy/KUjFeklO60Mcl8mueASjFGxiq5gH9lyWLRDaOXGXATUSOtu
         /8AleAuxbsKFwJETueeUt/tvuWq0BlCy3OxNhUxWnoWoBDQuDVEVv8HAtDRli+LkDKh5
         cwL1Ap+eRMipJE+8EtaZQDJLHLnvqXwJeMjd9o5uOWBG/R1ItbsMAhbb1A/CvBmXFqwY
         z/mepjyRqhM/QNP1vgnTZYleUEc7KhzytYiVX92sHKAwqP0Z3m41mQOudO1nX8peukjf
         IOIsp7rNAng1Um1sIYIqIvh4YFeXhJhfzLTyLJ8+NeID1IPoP5SQKlOkNqDwbNgqfKH0
         Y1yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sHWKRvP0;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 65si950679itx.1.2019.03.23.04.34.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 04:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sHWKRvP0;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i17so3263229pfo.6
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 04:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=C7fc3fDjJ90jdlLZKycZqSFJWXUsQKBgu5Z4F1PkbUM=;
        b=sHWKRvP0tSiGJ0RiG0d+dvVFcvOmzcHIIyuWbOpbbjlsklCTpvJVIM/h7PG8taomZI
         KhsEOmpR4HlectYaekutMUp7fHW8HT+H+zybWZU9FXw+Zgx9PyMfplLXPdWZB9m/WtjZ
         7JaJo319DlMeN4CWuLCin77TRgujMpWAhopam/enzyG7fD7osq3UkXAz8oycKtrNq9hl
         ks/EqyldVhlvvAWWGAnCxWQeIyXoO+EFbB9bmim+4D3BeIuxpZ4+ulW9HDulXafqUe78
         ex8r0kmHKl6U7ndkuDR5mKu3FzP07Orv66QT4/LP6M/z3aZviVuYZgOofNZAi4XJ4oo/
         p5tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=C7fc3fDjJ90jdlLZKycZqSFJWXUsQKBgu5Z4F1PkbUM=;
        b=XamG5XrwOcjtWtuPxu8wVqxeLvC6Vbynxrh1aRIajSMUvYb1WSQYGJV1hJj9RzcRwy
         WZhtQFxrDD3KmC9YLvqo6jtc+bOeqAVhQ5nLyqXWhZMZ8q5LRZTTznqV/GFhad47pjWv
         asEiJYuKeNQXLQIimv92LFMZUquFQTb6HJbsjvUzSfBglOsiL0rkbIm22gx0mGzT4/nC
         RuUCBOZzkUuQAOhJNWA3eEsVcHxeZa5JxaQjG/a+r3Fs6/wk7nQCJl59sPQVmNYtPOh6
         Vt4OSWCMZiMio6XOH/2jRDnBKJgP7/41K2ny1CNviQM+INZuOQwXLrftsdgCzBTzosuP
         HJ2g==
X-Gm-Message-State: APjAAAUNIzpge/G7py8dkkAlHn2OpP7nMzgtfe2jh4XRH/4CrlKgry30
	W/lz9Xmo/J6veaOPDziX2g4=
X-Received: by 2002:a63:5405:: with SMTP id i5mr9709861pgb.212.1553340864536;
        Sat, 23 Mar 2019 04:34:24 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from localhost.localdomain ([42.110.231.40])
        by smtp.gmail.com with ESMTPSA id e8sm13604828pfn.103.2019.03.23.04.34.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 04:34:23 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [PATCH] Staging: rts5208: sd.c: fix line over 80 characters
Date: Sat, 23 Mar 2019 17:04:13 +0530
Message-Id: <20190323113413.8040-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

Rearrange code to fix line over 80 characters

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/rts5208/sd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index c256a2398651..7853ef9ca372 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -4513,7 +4513,8 @@ int sd_execute_write_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 		if (sd_lock_state ^ (sd_card->sd_lock_status & SD_LOCKED)) {
 			sd_card->sd_lock_notify = 1;
 			if (sd_lock_state) {
-				if (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE) {
+				if (sd_card->sd_lock_status &
+				    SD_LOCK_1BIT_MODE) {
 					sd_card->sd_lock_status |= (
 						SD_UNLOCK_POW_ON | SD_SDR_RST);
 					if (CHK_SD(sd_card)) {
-- 
2.17.1


