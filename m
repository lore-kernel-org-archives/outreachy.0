X-GM-THRID: 6808259246011973632
X-Received: by 2002:a05:620a:15a9:: with SMTP id f9mr4480389qkk.28.1585171382417;
        Wed, 25 Mar 2020 14:23:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:5084:: with SMTP id e126ls1547307qkb.7.gmail; Wed, 25
 Mar 2020 14:23:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvKrSI7KvKu9KyNjEvCAC128tZHUXemEYaL6b/bbgAyvw6bw1hXOSR5fUJfvZQG+RqKlLGt
X-Received: by 2002:a37:a746:: with SMTP id q67mr5187972qke.215.1585171381090;
        Wed, 25 Mar 2020 14:23:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585171381; cv=none;
        d=google.com; s=arc-20160816;
        b=VfEJrGsItsHZ6B+Nnk42MR/slCuspDRDLB/2YGxfkCWhXEv+b3N8qLeIczobuQa2q/
         wyo7WnKl4omwvoan7ejwhIDaitWk+TVE8J6oH1AbljxRXsI/wWDWR83pw7vBNnHqEsZA
         8PSEZi8IkHOYHD7b5HLrjdQzaY1QR0otiBA2EQp2WkQvvfzlmX+zLF0HXaiHJVOjkaH9
         DUEISzlBdgEYk34uSUPZQJIHJeXX8qjz1X1eTU0oWvD1Y+4pJ24ltNLrL2dGvC+JH9qQ
         T2M63H3WbVmhElbJ2MnJdWyyGqlFmIQUIPgztTZg33otVM3/b2f2yLRo2mPkEgVVUEoT
         nV4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=D50Ea1KkZKi7MRIpZ2tdbEpQFy9vwTNoscFn6swOS/0=;
        b=os9FM0loBoLKug9fD2HqaeOGishySA/4tgE7ACRAiOK+Mepsw1MWUnVIlNl+9L98JD
         J52bVIWCOJ9E0SE3PlDsg7VnkI+t0g7jcYdow1IIymqTK2MWG4lYfCWf6G5zZd5kZh2C
         3wZxiPGotTpFR3i4J+K2VC5ammX8zbQ62Yp9oep4jF21Y+T43BXOZDYVyRnfxMLh8EIr
         U5Z2gv+dOLO43xFFjiYFQlNHH/BP0VIJhu9FU2sq0cXAr6K6xaQvbjkg3ymcyCnsS19w
         9PIqZ8+BPGppERdaiLvGl9ybX2ICe+5aL+G8rZXETwLg0Fg8TnNcPugw1jlgfTKJcm/l
         +eiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EMvoS3tq;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id r14si36907qtc.5.2020.03.25.14.23.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 14:23:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EMvoS3tq;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id h11so1298484plr.11
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 14:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=D50Ea1KkZKi7MRIpZ2tdbEpQFy9vwTNoscFn6swOS/0=;
        b=EMvoS3tq9nhI2rqp5Wg+ogOhZR97+iLl7eEsa2La3ApbUDZFA/dOSiObyzdlJ2ZPXK
         2OPPTjtyXsxvP4+WJXOzeABy4EuHuPtg7ffJfknHfk7CJ4s2GPVTYIiv/7FgypPBNg9L
         farz9a7IOdydKsycs7pw2emyg7iZ9+bz0rx+JjHp96HcmnElRd/TDAI2CzobHLjl+MeH
         BsI92ipo15AxcEp2HM/PsMDE8wRpApQfW5lYPVVqTrhHPOMJbMIoPM7muPZxdvrUDnMK
         c3AX+vGHZe6RcPSJ0IKwA5+oC4JPjL4939SEIbjKj2IDX8h+SDZsfdbw26BRKkmAQu1u
         jYOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=D50Ea1KkZKi7MRIpZ2tdbEpQFy9vwTNoscFn6swOS/0=;
        b=DawQ5iShrVhglg7wNWa61Naj4Iuh74tP7ASwrDA5Xth8yETTuq0zIfOogpV8WRrv1i
         VDirGpSKFCB3uOCAZICn2PRmTfwkV11C3+1eZXTkjsIlsawmPxFMV9ERSIAIW2afxtiC
         YQy3wp6ZTYCrh+jnpTjRvq09S3VCJlf1dNPtx+/DfH6lIeI31AfL1vYcCvYhhJpzJs3O
         Iau/bFq/mPYvDT4CnszCuSNotqguaEo1dbGcZ1XLEh4xn4xEIdG7LYEOwP0hRB0J4VLr
         lC0VZqhAP4O+3SBDXb4ZPEcKjcEL1nuFDwnYDeMyt8eGFIkFuuTdQU//nVp6+tNKRyQ+
         eBEg==
X-Gm-Message-State: ANhLgQ1fiI0sc4LU5NOHMFr8SbO8nMmrNvRH+lMcZXKYpvXxU1Glcqkc
	BidxZBl6dxiWooFmUdJRjy7Prxuos6s=
X-Received: by 2002:a17:902:7008:: with SMTP id y8mr5096140plk.279.1585171379953;
        Wed, 25 Mar 2020 14:22:59 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id s14sm77650pgl.4.2020.03.25.14.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 14:22:58 -0700 (PDT)
Date: Thu, 26 Mar 2020 02:52:53 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: rtw_cmd: Compress lines for immediate
 return
Message-ID: <20200325212253.GA8175@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Compress two lines into a single line if immediate return statement is found.
It also removes variable cmd_obj as it is no longer needed.

It is done using script Coccinelle.
And coccinelle uses following semantic patch for this compression function:

@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 744b40dd4cf0..42b0ea8abd9c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -362,11 +362,7 @@ int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 
 struct	cmd_obj	*rtw_dequeue_cmd(struct cmd_priv *pcmdpriv)
 {
-	struct cmd_obj *cmd_obj;
-
-	cmd_obj = _rtw_dequeue_cmd(&pcmdpriv->cmd_queue);
-
-	return cmd_obj;
+	return _rtw_dequeue_cmd(&pcmdpriv->cmd_queue);
 }
 
 void rtw_free_cmd_obj(struct cmd_obj *pcmd)
-- 
2.17.1


