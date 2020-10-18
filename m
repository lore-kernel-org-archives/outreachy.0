X-GM-THRID: 6885028425195585536
X-Received: by 2002:aca:c70b:: with SMTP id x11mr8321540oif.122.1603045599589;
        Sun, 18 Oct 2020 11:26:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:310b:: with SMTP id b11ls1761985ots.10.gmail; Sun,
 18 Oct 2020 11:26:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxJbEU+hqjncb5B1mKuAEbNXN1jHdCfDe4dLA4iidiTxPWG2//jJ0ocJMH03NhaT6+kL1z8
X-Received: by 2002:a9d:1e9:: with SMTP id e96mr9672448ote.220.1603045598414;
        Sun, 18 Oct 2020 11:26:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603045598; cv=none;
        d=google.com; s=arc-20160816;
        b=oOdLO9qETB0kHMRizIYeHK4P9mHG8qpE4unk5uPC8zcA3/4zy2qHH1b6X4dBCVDgTy
         tuUzBnSxU6hb+Ehejgv+yyziTcGkqG/2ZM7PxT4hLXY78Mk1DxKsydP1dTuRVBlL38ET
         Wra/JNh37zyADfuTntnowpF0mieotmlyO0sF8+NOOgBgsli6WcMq9fnsT95OECaZfkgT
         z2o7gz3e3Zd7LOsHE6JcBMN40T6iGyIxwSRj2wsbL9rhxVUV0nWtdX/tVERbepHOuDXv
         KW55XWuvsJbhPOh2mkHzBYaPYkvXMUA9z7S49jicBxD+sottZhPt+3wF6zQlw7AZWHet
         pl1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=gWFz6Mp/buIcIwghig3K/wJarrpJ8t22/aQUycnNlC4=;
        b=wlukxbt4c1irYzMGQtOM5q8HitStdTWiv5N4wRBWiDJEPmuxbtNDDGfvZ32VWx7Zy5
         SL4NOVFyVNrhmpbJExYCs6dFME4SRJx2QdI0pfQEPU+7l0v+kEfOReOHtj2gyTDubwUb
         DSzR750gJtFfH4b0WIQMT3ZChuDkygZ1753eprgXoZnjBG6BQl59GsvxH982xXhPV0BA
         P+3S4wTVJBZLaQ6hqaj/kczXMEU5f9+QIkOFYmNVzBFM8/oeQsPuX9hKLfY6dteLmLgn
         qmvjsIFNi/elTQljZnCPAF4M9bPLRQjgYeNIsS3wH6au67H7LJKjWzdZ6MNsRpDOhm+e
         VwyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EMr9nRRj;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id r6si1182826oth.4.2020.10.18.11.26.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 11:26:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EMr9nRRj;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id o9so3834014plx.10
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 11:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=gWFz6Mp/buIcIwghig3K/wJarrpJ8t22/aQUycnNlC4=;
        b=EMr9nRRjlkToVUXFmJIK0GPK3Qjf9VzEASaVM01o8pRgdqloahVrNf3NpLwvoWpYZU
         hiKLpIV+egueq1OfdIWk3KVXxmPXVcmFBP9jWVgqjHwHHMOioLspxwjM5O5wnd6kimMp
         An4XA2xwvs3wnbG/jkqPqHK+LsXEXUKiPyt1rOOHY0slAlvuu/a23NRYEIk3MCpo+cvl
         FIRL7IIQqfVHC8y0E/bcn/glXbBX6KDL1OvVVeRzFLyJKVTGqavrB1NrHZJmF/+ItksQ
         BDcFbqb9dn78AP4MTpD9JvRtfhVWx3huDfxSj9ZIUZhDACLYT5l1Fs8VdGQf8pZoADxo
         fEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=gWFz6Mp/buIcIwghig3K/wJarrpJ8t22/aQUycnNlC4=;
        b=XFRFvmt01FDLmLjUtvyPz1aQAZvh4lPXGClYYrBx9dZqXPaeKR36pfUeSSf1VAzFf7
         gftk8POBZ/VeoXFPm3QLezwP367tbBi5d/4BfBQ60JzqO6X9WZ3P0j7IAPNRcbZyKiam
         Bpzvp1+CtMnk5me5u0gfONr+04TGHKty0CULDpXTpzjG5X7WV5JEDgevasHC9ysjjS0b
         ZLRJp5EGZLM59dTEUZH4D3HXS8ctoO9uS6uNBPt23j97r5Rmvzh1nsXboYiiWF2qNe+n
         OXwZxtHzVVh5UYCx6hVkU3YcxQ+6qZDsrZy2H9NFR9IvpjZHoOou5chgRQepOQbyo9lq
         wlfw==
X-Gm-Message-State: AOAM5321mfZdG9F3g9E6qOTYdJqrgV0WhdKOra2YAQApHfjrPokn7fFQ
	P3NRDKUN98a5YLuk3eu4DGcGQYk5Bc+CWg==
X-Received: by 2002:a17:902:be0d:b029:d2:8084:cb19 with SMTP id r13-20020a170902be0db02900d28084cb19mr13873631pls.45.1603045597679;
        Sun, 18 Oct 2020 11:26:37 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id v13sm2095533pgl.6.2020.10.18.11.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 11:26:37 -0700 (PDT)
Date: Sun, 18 Oct 2020 23:56:33 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Sven Van Asbroeck <TheSven73@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: mh12gx2825@gmail.com
Subject: [PATCH] staging: fieldbus: Use sysfs_emit for show(device *...)
 functions
Message-ID: <20201018182633.GA46761@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Convert snprintf calls in device show functions to sysfs_emit for
PAGE_SIZE buffer safety.
Warning generated by: scripts/coccinelle/api/device_attr_show.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fieldbus/dev_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fieldbus/dev_core.c b/drivers/staging/fieldbus/dev_core.c
index 1ba0234cc60d..698d7b479270 100644
--- a/drivers/staging/fieldbus/dev_core.c
+++ b/drivers/staging/fieldbus/dev_core.c
@@ -70,7 +70,7 @@ static ssize_t card_name_show(struct device *dev, struct device_attribute *attr,
 	 * card_name was provided by child driver, could potentially be long.
 	 * protect against buffer overrun.
 	 */
-	return snprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
+	return sysfs_emit(buf, "%s\n", fb->card_name);
 }
 static DEVICE_ATTR_RO(card_name);
 
-- 
2.25.1


