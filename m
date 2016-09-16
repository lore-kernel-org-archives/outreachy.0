X-GM-THRID: 6330669960642166784
X-Received: by 10.66.220.69 with SMTP id pu5mr10453029pac.32.1474023423226;
        Fri, 16 Sep 2016 03:57:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.77 with SMTP id p74ls1865703iod.9.gmail; Fri, 16 Sep
 2016 03:57:02 -0700 (PDT)
X-Received: by 10.67.7.233 with SMTP id df9mr10459392pad.4.1474023422630;
        Fri, 16 Sep 2016 03:57:02 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si3944841pfe.0.2016.09.16.03.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 03:57:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so3505698pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 03:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lfC1nmpy2dvFvZEyNOxE7gCRCbnlE6aaaNwsaqA+Qu0=;
        b=IPmgTcB8thvCxUVeaFy0S2uRXONkvPfYsR7qxYqzVBPld2h3+4Yq8/Av0yaUp8DtdX
         HdpcU1C7DbdIhTU2KYGT6/XS3jvRp1wO4McvlR1KNFpQzH5ctr2ZSTnJFCWfwB4RvAa2
         EJBiXf6Y58PaAaWeJ0K2Ee7RYz71fK7JHFbTHr4NKK4AOnbtK5E5mRJWNswmFnogiWx3
         9eBk+hXjnKjjB1j3BokTUsk+WhNyZ4LuwJ63L3tFl4GIMUXkb4Gdwq8rdMHUmn2r+xbb
         lJA7Me2YHg6vR8Mtrb/zbh26DY2sGDXubVB/qBcVjkBLoF+Y5j0ImUqD59GFAFDim8Dy
         q4Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lfC1nmpy2dvFvZEyNOxE7gCRCbnlE6aaaNwsaqA+Qu0=;
        b=PL4X9SgbomygHhaUlLRQP0XPsrWQfcmBs3scIWwDF5aHyWygUqb91yqn73KBfUqTMR
         YgiA1Bwz3PNyE2e1I5Tq2EkCnKZzOHZetl2Y6qDYdmJkInNMEzZcWOb+ON119NEa7XNl
         EGrw006ZDOD79P2RqcLPllLIkIUi38f83aDx9dI/sGKGSeo3qmYG9rV8MIH0cV+FU6hN
         v3v90gshvHEG5gZZ5goc56oo1sDFh2ytuO3hjuysiNEgsNM0ER0ztHZa8ciUDIDQSuxt
         xGK10bGZN/7Z/4NzhUrz+ny6rNRT8mYl8vtrs2YIyJ9ab9ZLR4UZHg+/lQHhRTBwgeNJ
         ZqNg==
X-Gm-Message-State: AE9vXwNkidLCR+dvpYBNGNlBdoFzscM+o4XPf3V5YtHgbtf4EWzD0LyYhVW89Byv9m+tMQ==
X-Received: by 10.98.6.68 with SMTP id 65mr21865709pfg.116.1474023422481;
        Fri, 16 Sep 2016 03:57:02 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id p187sm51436030pfb.5.2016.09.16.03.56.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 03:57:02 -0700 (PDT)
Date: Fri, 16 Sep 2016 16:26:56 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Arnaud Patard <arnaud.patard@rtp-net.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Clifton Barnes <clifton.a.barnes@gmail.com>,
	Geliang Tang <geliangtang@163.com>, Ben Marsh <bmarsh94@gmail.com>,
	Janani Ravichandran <janani.rvchndrn@gmail.com>,
	Benoit Hiller <benoit.hiller@gmail.com>
Subject: [PATCH v2] staging: xgifb: Replace explicit NULL comparison
Message-ID: <20160916105653.GE5686@namrata-HP-Pavilion-g6-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace explicit NULL comparison  with equivalent expression to resolve
checkpatch issue.
- x != NULL => x

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 Changes in v2:
 -sent using plain text mail agent

 drivers/staging/xgifb/XGI_main_26.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

  diff --git a/drivers/staging/xgifb/XGI_main_26.c
  b/drivers/staging/xgifb/XGI_main_26.c
  index d56ef14..23a3bd7 100644
  --- a/drivers/staging/xgifb/XGI_main_26.c
  +++ b/drivers/staging/xgifb/XGI_main_26.c
  @@ -2085,7 +2085,7 @@ static int __init xgifb_init(void)
   {
           char *option = NULL;

	   -       if (forcecrt2type != NULL)
	   +       if (forcecrt2type)
	                   XGIfb_search_crt2type(forcecrt2type);
			           if (fb_get_options("xgifb", &option))
				                   return -ENODEV;

