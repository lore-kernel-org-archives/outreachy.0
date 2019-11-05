X-GM-THRID: 6755750343438499840
X-Received: by 2002:a81:7004:: with SMTP id l4mr23583230ywc.462.1572945700203;
        Tue, 05 Nov 2019 01:21:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:af0a:: with SMTP id n10ls2770931ywh.4.gmail; Tue, 05 Nov
 2019 01:21:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqylw7Xas5+uaCisKrOo9pTadALa/ZitGp7bnLlcY089kI1de0AtipaJFXtr2fVQk7PXEnLZ
X-Received: by 2002:a81:784b:: with SMTP id t72mr24455267ywc.118.1572945698094;
        Tue, 05 Nov 2019 01:21:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572945698; cv=none;
        d=google.com; s=arc-20160816;
        b=qsnRNbPQo4l6m41hENA6PYHVe8MusMPHK31np7n3slAJ2LlDhumo0vJL4vijF43qWj
         sZaOJ0ij+pshvs9DGkKh+nzp9RVdZBmuHYoO4gx8S7VmtjvAJ5qrapWkQf089BXc5N0o
         YCobmmtQDuPR7E1H7paoL36+Ka5o86bxzYnbYNkdFfuRIGCqz37r+JnuD0BwHA+8hXAB
         MC5pZM2CziM58pW9JGH3RI6MYj3rhQyjWWQBtq1XKLLV+qX7t7YP8Ns1MW7lmknz2RfV
         6OR9C7Um5s1VQIzofSSXxgSW2yMlZgaMlovJe+akG1C3n5MRqKT/Gjbc6D+jEj1frYmK
         ThnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=sEhVcEV/fh8dk2cYKiDZe3NlFUL6jm/hSJ1tHuXCpRw=;
        b=LPPxBcbaXuCgYxMS8zTU40JCHC5Fyi7OlSlh4rYGF+b0/LeBjVuDEkAQycYFex7Qt5
         tZtRsH684lAw0j8VjKjgSTYSySOOVT9xCR6MO0NVvBGwjlJo7ktsjWz6K0ZsODtg2qdr
         7Th5LOXVlncxNrB8x3ee/13oxE91toUxi5UzAjb6GDs1Rx8st/oU7sTbHpHMpfW1ZAKb
         aNrsGzIpjW0EC19O6ZhK0ofIq1LpSJ66jW3nrOpZraZdgyWH3OLN/DAR3b/Dhby0Mg5e
         wmxcPfyL1zEbDxZUPCtt16pt8HgLnli510fbMX9/6IX0YoKhGljYs0vJguoh1/ooP49r
         dtKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SPKUgP5U;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id f11si598127ybk.5.2019.11.05.01.21.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 01:21:38 -0800 (PST)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SPKUgP5U;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id r22so18309122qtt.2
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 01:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=sEhVcEV/fh8dk2cYKiDZe3NlFUL6jm/hSJ1tHuXCpRw=;
        b=SPKUgP5UGUOtByK/l8URKur3NtmUJTkbMLL8W91qjdBjj8dRKbpg5JVbFJAIJlddpQ
         pPt39RueIvzxHohYfkqysS7hPARUM67FGZLQYB7lrKEaSmDa+XJk5L9g3pWzOiHjmtb6
         A+3BAf85h10fJiz0YWPr+Tw7piLwV2VKZ/WGztxfxhn45OHmgyCNrp6RN/gmM1YosH1W
         pmeYznrEEiywCHLJiGDCdgKFCFBlFpChSsdLT2pyTkFMh4D64gHDAhQhNgbKdxi4iyML
         TbzKnNZqBVcwz1khoA3BOWgcfX/alOTIh0ehK1DlyZpDZvubJ/81j6sHik3EVwG+6oDr
         VQJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=sEhVcEV/fh8dk2cYKiDZe3NlFUL6jm/hSJ1tHuXCpRw=;
        b=si1y/ZESd28+SlJ+IYlV6kOFfbCXVfXfo0/dExoAfKR5Onq+nTKOaEK56UedP8Atd8
         lEgN8OzfYz5leU2BNZJFeKevMcBd4TyFaXOPQnum0d1FyBjgaFjgVl+sAf4VMT+V4GK6
         cnc/I6l1J1Ak1lNm/iDFBCBBuGlkkOd47DFo4MIQK2lDmTmsW+5dKNn65eacoI2jx/px
         lTYsgpynDUB6rfKJHT/weyE8f5xCAPP2uEekTOFpNuSByjoH8MuXCsQtN9iqoErlGs41
         aU21VQ5FBeH43Ol754wH8AFL1Go66XLQtAzncYhRHWIBPMwcZWy+1G/U6ZGM83vSAL5p
         CWcQ==
X-Gm-Message-State: APjAAAU0pom3Hv9wteoDpcIdi42jUn+90mL2LMw/YpTmSYZc8d74HxIl
	h4/by1dEAlSQqkwH+08zeVg=
X-Received: by 2002:ac8:93d:: with SMTP id t58mr16759639qth.217.1572945697594;
        Tue, 05 Nov 2019 01:21:37 -0800 (PST)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id t26sm2976785qta.75.2019.11.05.01.21.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Nov 2019 01:21:36 -0800 (PST)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH v2] staging: wfx: Remove local variable used only in return statement.
Date: Tue,  5 Nov 2019 01:21:31 -0800
Message-Id: <1572945691-109992-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove unnecessary local variable that is used in return statement and
return the expression directly. Issue found using coccinelle.

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
Changes in v2
  - Make the commit message more clearer.

 drivers/staging/wfx/sta.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 93f3739..be22537 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -114,8 +114,6 @@ void wfx_cqm_bssloss_sm(struct wfx_vif *wvif, int init, int good, int bad)
 static int wfx_set_uapsd_param(struct wfx_vif *wvif,
 			   const struct wfx_edca_params *arg)
 {
-	int ret;
-
 	/* Here's the mapping AC [queue, bit]
 	 *  VO [0,3], VI [1, 2], BE [2, 1], BK [3, 0]
 	 */
@@ -148,8 +146,7 @@ static int wfx_set_uapsd_param(struct wfx_vif *wvif,
 	wvif->uapsd_info.max_auto_trigger_interval = 0;
 	wvif->uapsd_info.auto_trigger_step = 0;
 
-	ret = hif_set_uapsd_info(wvif, &wvif->uapsd_info);
-	return ret;
+	return hif_set_uapsd_info(wvif, &wvif->uapsd_info);
 }
 
 int wfx_fwd_probe_req(struct wfx_vif *wvif, bool enable)
-- 
2.7.4


